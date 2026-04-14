<?php

namespace App\Http\Controllers\Gateway\Alipay;

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

        $gatewayUrl = rtrim($config->gateway_url ?? 'https://openapi.alipay.com/gateway.do', '?');
        $bizContent = json_encode([
            'out_trade_no' => $deposit->trx,
            'product_code' => 'FAST_INSTANT_TRADE_PAY',
            'total_amount' => number_format((float) $deposit->final_amount, 2, '.', ''),
            'subject'      => 'Deposit ' . $deposit->trx,
        ], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

        $params = [
            'app_id'      => $config->app_id ?? '',
            'method'      => 'alipay.trade.page.pay',
            'format'      => 'JSON',
            'charset'     => 'utf-8',
            'sign_type'   => 'RSA2',
            'timestamp'   => date('Y-m-d H:i:s'),
            'version'     => '1.0',
            'notify_url'  => route('ipn.Alipay'),
            'return_url'  => route('ipn.Alipay', ['type' => 'return']),
            'biz_content' => $bizContent,
        ];

        $privateKey = self::normalizePrivateKey($config->private_key ?? '');
        $params['sign'] = self::sign($params, $privateKey);

        $send['redirect']     = true;
        $send['redirect_url'] = $gatewayUrl . '?' . http_build_query($params);
        return json_encode($send);
    }

    public function ipn(Request $request)
    {
        $gateway = $this->gatewayConfigByAlias('Alipay');
        if (!$gateway) {
            return response('fail');
        }

        $all = $request->all();
        $sign = $all['sign'] ?? '';
        $tradeNo = $all['out_trade_no'] ?? '';
        $tradeStatus = $all['trade_status'] ?? '';
        $amount = $all['total_amount'] ?? 0;

        if (!$tradeNo || !$sign) {
            return $this->ipnResponse($request, false);
        }

        if (!self::verify($all, $sign, self::normalizePublicKey($gateway->alipay_public_key ?? ''))) {
            return $this->ipnResponse($request, false);
        }

        $deposit = Deposit::where('trx', $tradeNo)->where('status', Status::PAYMENT_INITIATE)->orderBy('id', 'DESC')->first();
        if (!$deposit) {
            return $this->ipnResponse($request, true);
        }

        $paid = in_array($tradeStatus, ['TRADE_SUCCESS', 'TRADE_FINISHED']);
        $amountMatched = (float) number_format((float) $amount, 2, '.', '') == (float) number_format((float) $deposit->final_amount, 2, '.', '');

        if ($paid && $amountMatched) {
            PaymentController::userDataUpdate($deposit);
            return $this->ipnResponse($request, true, $deposit);
        }

        return $this->ipnResponse($request, false, $deposit);
    }

    public function query()
    {
        $gateway = Gateway::where('alias', 'Alipay')->first();
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
        $gatewayUrl = rtrim($config->gateway_url ?? 'https://openapi.alipay.com/gateway.do', '?');

        $params = [
            'app_id'      => $config->app_id ?? '',
            'method'      => 'alipay.trade.query',
            'format'      => 'JSON',
            'charset'     => 'utf-8',
            'sign_type'   => 'RSA2',
            'timestamp'   => date('Y-m-d H:i:s'),
            'version'     => '1.0',
            'biz_content' => json_encode(['out_trade_no' => $deposit->trx], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES),
        ];

        $privateKey = self::normalizePrivateKey($config->private_key ?? '');
        $params['sign'] = self::sign($params, $privateKey);

        $response = CurlRequest::curlPostContent($gatewayUrl, $params, ['Content-Type: application/x-www-form-urlencoded']);
        $result = json_decode($response, true);
        $payload = $result['alipay_trade_query_response'] ?? [];
        $status = $payload['trade_status'] ?? '';
        $amount = $payload['total_amount'] ?? ($payload['receipt_amount'] ?? null);

        $paid = in_array($status, ['TRADE_SUCCESS', 'TRADE_FINISHED']);
        $amountMatched = $amount !== null && (float) number_format((float) $amount, 2, '.', '') == (float) number_format((float) $deposit->final_amount, 2, '.', '');

        if ($paid && $amountMatched) {
            PaymentController::userDataUpdate($deposit);
            return true;
        }

        return false;
    }

    protected function ipnResponse(Request $request, bool $ok, $deposit = null)
    {
        if (($request->type ?? '') === 'return') {
            if ($ok && $deposit) {
                $notify[] = ['success', 'Payment successful'];
                return redirect($deposit->success_url)->withNotify($notify);
            }
            $notify[] = ['error', 'Payment failed'];
            return redirect($deposit->failed_url ?? route('user.deposit.history'))->withNotify($notify);
        }

        return response($ok ? 'success' : 'fail')->header('Content-Type', 'text/plain');
    }

    protected function gatewayConfigByAlias(string $alias)
    {
        $gateway = Gateway::where('alias', $alias)->first();
        if (!$gateway) {
            return null;
        }
        return json_decode($gateway->gateway_parameters);
    }

    protected static function sign(array $params, string $privateKey): string
    {
        ksort($params);
        $signData = [];
        foreach ($params as $key => $value) {
            if ($value !== '' && $value !== null && $key !== 'sign') {
                $signData[] = $key . '=' . $value;
            }
        }
        $data = implode('&', $signData);
        openssl_sign($data, $signature, $privateKey, OPENSSL_ALGO_SHA256);
        return base64_encode($signature);
    }

    protected static function verify(array $params, string $sign, string $publicKey): bool
    {
        unset($params['sign'], $params['sign_type']);
        ksort($params);
        $verifyData = [];
        foreach ($params as $key => $value) {
            if ($value !== '' && $value !== null) {
                $verifyData[] = $key . '=' . $value;
            }
        }
        $data = implode('&', $verifyData);
        $result = openssl_verify($data, base64_decode($sign), $publicKey, OPENSSL_ALGO_SHA256);
        return $result === 1;
    }

    protected static function normalizePrivateKey(string $key): string
    {
        $key = trim(str_replace(["\r\n", "\r"], "\n", str_replace(['\\n', '\\r'], "\n", $key)));
        if (!str_contains($key, 'BEGIN')) {
            $key = "-----BEGIN PRIVATE KEY-----\n" . chunk_split(str_replace(["\n", ' '], '', $key), 64, "\n") . "-----END PRIVATE KEY-----";
        }
        return $key;
    }

    protected static function normalizePublicKey(string $key): string
    {
        $key = trim(str_replace(["\r\n", "\r"], "\n", str_replace(['\\n', '\\r'], "\n", $key)));
        if (!str_contains($key, 'BEGIN')) {
            $key = "-----BEGIN PUBLIC KEY-----\n" . chunk_split(str_replace(["\n", ' '], '', $key), 64, "\n") . "-----END PUBLIC KEY-----";
        }
        return $key;
    }
}
