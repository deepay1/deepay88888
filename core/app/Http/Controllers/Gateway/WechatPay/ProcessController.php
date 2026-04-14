<?php

namespace App\Http\Controllers\Gateway\WechatPay;

use App\Constants\Status;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Gateway\PaymentController;
use App\Lib\CurlRequest;
use App\Models\Deposit;
use App\Models\Gateway;
use Illuminate\Http\Request;

class ProcessController extends Controller
{
    public static function process($deposit)
    {
        $config = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        $nonceStr = bin2hex(random_bytes(16));

        $params = [
            'appid'            => $config->app_id ?? '',
            'mch_id'           => $config->mch_id ?? '',
            'nonce_str'        => $nonceStr,
            'body'             => 'Deposit ' . $deposit->trx,
            'out_trade_no'     => $deposit->trx,
            'total_fee'        => (int) round($deposit->final_amount * 100),
            'spbill_create_ip' => request()->ip() ?? '127.0.0.1',
            'notify_url'       => route('ipn.WechatPay'),
            'trade_type'       => 'NATIVE',
        ];

        $params['sign'] = self::makeSign($params, $config->mch_key ?? '');
        $xml = self::arrayToXml($params);
        $response = CurlRequest::curlPostContent('https://api.mch.weixin.qq.com/pay/unifiedorder', $xml, ['Content-Type: text/xml']);
        $result = self::xmlToArray($response);

        if (($result['return_code'] ?? '') === 'SUCCESS' && ($result['result_code'] ?? '') === 'SUCCESS' && !empty($result['code_url'])) {
            $send['view']   = 'user.payment.WechatPay';
            $send['method'] = 'get';
            $send['url']    = '';
            $send['qr_url'] = $result['code_url'];
            return json_encode($send);
        }

        $send['error']   = true;
        $send['message'] = $result['return_msg'] ?? $result['err_code_des'] ?? 'WeChatPay request failed';
        return json_encode($send);
    }

    public function ipn(Request $request)
    {
        $xml = file_get_contents('php://input');
        $data = self::xmlToArray($xml);

        if (($data['return_code'] ?? '') !== 'SUCCESS') {
            return response(self::replyXml('FAIL', 'RETURN_FAIL'))->header('Content-Type', 'text/xml');
        }

        $outTradeNo = $data['out_trade_no'] ?? '';
        $deposit = Deposit::where('trx', $outTradeNo)->where('status', Status::PAYMENT_INITIATE)->orderBy('id', 'DESC')->first();
        if (!$deposit) {
            return response(self::replyXml('SUCCESS', 'OK'))->header('Content-Type', 'text/xml');
        }

        $config = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        $sign = $data['sign'] ?? '';
        $checkData = $data;
        unset($checkData['sign']);
        $localSign = self::makeSign($checkData, $config->mch_key ?? '');

        $paid = ($data['result_code'] ?? '') === 'SUCCESS';
        $amount = (int) ($data['total_fee'] ?? 0);
        $expected = (int) round($deposit->final_amount * 100);

        if ($sign === $localSign && $paid && $amount === $expected) {
            PaymentController::userDataUpdate($deposit);
            return response(self::replyXml('SUCCESS', 'OK'))->header('Content-Type', 'text/xml');
        }

        return response(self::replyXml('FAIL', 'SIGN_OR_AMOUNT_FAIL'))->header('Content-Type', 'text/xml');
    }

    public function query()
    {
        $gateway = Gateway::where('alias', 'WechatPay')->first();
        if (!$gateway) {
            return response()->json(['status' => 'error', 'message' => 'Gateway not found'], 404);
        }

        $query = Deposit::query()->initiated()
            ->where('method_code', $gateway->code)
            ->where('created_at', '>=', now()->subHours(24))
            ->orderBy('last_cron');

        $checked = (clone $query)->count();
        $updated = 0;
        $query->limit(20)->get()->each(function (Deposit $deposit) use (&$updated) {
            $deposit->last_cron = time();
            $deposit->save();
            if (self::syncByDeposit($deposit)) {
                $updated++;
            }
        });

        return response()->json(['status' => 'success', 'checked' => $checked, 'updated' => $updated]);
    }

    public static function syncByDeposit(Deposit $deposit): bool
    {
        if ($deposit->status == Status::PAYMENT_SUCCESS) {
            return true;
        }

        $config = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        $params = [
            'appid'        => $config->app_id ?? '',
            'mch_id'       => $config->mch_id ?? '',
            'nonce_str'    => bin2hex(random_bytes(16)),
            'out_trade_no' => $deposit->trx,
        ];
        $params['sign'] = self::makeSign($params, $config->mch_key ?? '');
        $xml = self::arrayToXml($params);

        $response = CurlRequest::curlPostContent('https://api.mch.weixin.qq.com/pay/orderquery', $xml, ['Content-Type: text/xml']);
        $result = self::xmlToArray($response);

        $paid = ($result['return_code'] ?? '') === 'SUCCESS' && ($result['result_code'] ?? '') === 'SUCCESS' && ($result['trade_state'] ?? '') === 'SUCCESS';
        $amount = (int) ($result['total_fee'] ?? 0);
        $expected = (int) round($deposit->final_amount * 100);

        if ($paid && $amount === $expected) {
            PaymentController::userDataUpdate($deposit);
            return true;
        }

        return false;
    }

    protected static function makeSign(array $params, string $key): string
    {
        ksort($params);
        $pairs = [];
        foreach ($params as $k => $v) {
            if ($v !== '' && $v !== null && $k !== 'sign') {
                $pairs[] = $k . '=' . $v;
            }
        }
        $string = implode('&', $pairs) . '&key=' . $key;
        return strtoupper(md5($string));
    }

    protected static function arrayToXml(array $data): string
    {
        $xml = "<xml>";
        foreach ($data as $key => $val) {
            if (is_numeric($val)) {
                $xml .= "<{$key}>{$val}</{$key}>";
            } else {
                $xml .= "<{$key}><![CDATA[{$val}]]></{$key}>";
            }
        }
        $xml .= "</xml>";
        return $xml;
    }

    protected static function xmlToArray(string $xml): array
    {
        if (!$xml) {
            return [];
        }
        $obj = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);
        return json_decode(json_encode($obj), true) ?: [];
    }

    protected static function replyXml(string $code, string $msg): string
    {
        return "<xml><return_code><![CDATA[{$code}]]></return_code><return_msg><![CDATA[{$msg}]]></return_msg></xml>";
    }
}
