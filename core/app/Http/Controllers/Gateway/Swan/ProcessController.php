<?php

namespace App\Http\Controllers\Gateway\Swan;

use App\Constants\Status;
use App\Http\Controllers\Gateway\PaymentController;
use App\Http\Controllers\Controller;
use App\Lib\CurlRequest;
use App\Models\Deposit;
use Illuminate\Http\Request;

class ProcessController extends Controller
{
    public static function process($deposit)
    {
        $send['track'] = $deposit->trx;
        $send['view'] = 'user.payment.Swan';
        $send['method'] = 'post';
        $send['url'] = route('ipn.Swan');
        return json_encode($send);
    }

    public function ipn(Request $request)
    {
        $track = session()->get('Track');
        $deposit = Deposit::where('trx', $track)->where('status', Status::PAYMENT_INITIATE)->orderBy('id', 'DESC')->firstOrFail();

        $credentials = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        if (empty($credentials->client_id) || empty($credentials->client_secret) || empty($credentials->merchant_profile_id) || empty($credentials->payment_method_ids)) {
            $notify[] = ['error', 'Swan gateway is not configured properly. Please complete the client credentials, merchant profile and payment method IDs.'];
            return back()->withNotify($notify);
        }

        $accessToken = $this->getAccessToken($credentials);
        if (!isset($accessToken['access_token'])) {
            $message = $accessToken['error_description'] ?? $accessToken['error'] ?? 'Unable to request Swan access token';
            $notify[] = ['error', $message];
            return back()->withNotify($notify);
        }

        $paymentLink = $this->createPaymentLink($credentials, $deposit, $accessToken['access_token']);
        if (!$paymentLink) {
            $notify[] = ['error', 'Unable to create Swan payment link. Please verify gateway credentials and configuration.'];
            return back()->withNotify($notify);
        }

        return redirect($paymentLink);
    }

    public function callback(Request $request, $trx)
    {
        $deposit = Deposit::where('trx', $trx)->orderBy('id', 'DESC')->firstOrFail();

        if ($deposit->status == Status::PAYMENT_SUCCESS) {
            return redirect($deposit->success_url);
        }

        $credentials = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        $accessToken = $this->getAccessToken($credentials);

        if (!isset($accessToken['access_token'])) {
            $notify[] = ['error', 'Unable to verify Swan payment status.'];
            return redirect($deposit->failed_url)->withNotify($notify);
        }

        $payment = $this->findMerchantPayment($deposit, $accessToken['access_token']);

        if ($payment && in_array($payment['status'] ?? '', ['MerchantPaymentCaptured', 'MerchantPaymentAuthorized'], true)) {
            PaymentController::userDataUpdate($deposit);
            $notify[] = ['success', 'Payment completed successfully'];
            return redirect($deposit->success_url)->withNotify($notify);
        }

        $notify[] = ['error', 'Payment not completed yet. Please check your deposit history or contact support.'];
        return redirect($deposit->failed_url)->withNotify($notify);
    }

    protected function getAccessToken($credentials)
    {
        $oauthUrl = $credentials->oauth_url ?? 'https://oauth.swan.io/oauth2';
        $payload = json_encode([
            'grant_type' => 'client_credentials',
            'client_id' => $credentials->client_id,
            'client_secret' => $credentials->client_secret,
        ]);
        $headers = ['Content-Type: application/json'];
        $result = CurlRequest::curlPostContent($oauthUrl, $payload, $headers);
        return json_decode($result, true) ?: [];
    }

    protected function createPaymentLink($credentials, $deposit, $token)
    {
        $graphqlUrl = $credentials->graphql_url ?? 'https://api.swan.io/sandbox-partner/graphql';
        $paymentMethodIds = array_values(array_filter(array_map('trim', explode(',', $credentials->payment_method_ids ?? ''))));

        $callbackRoute = $deposit->agent_id ? route('agent.deposit.swan.callback', ['trx' => $deposit->trx]) : route('user.deposit.swan.callback', ['trx' => $deposit->trx]);
        $cancelRoute = $deposit->agent_id ? route('agent.add.money.history') : route('user.deposit.history');

        $variables = [
            'input' => [
                'merchantProfileId' => $credentials->merchant_profile_id,
                'amount' => [
                    'value' => round($deposit->final_amount, 2),
                    'currency' => $deposit->method_currency,
                ],
                'redirectUrl' => $callbackRoute,
                'cancelRedirectUrl' => $cancelRoute,
                'externalReference' => $deposit->trx,
                'reference' => $deposit->trx,
                'label' => 'Deposit ' . $deposit->trx,
                'paymentMethodIds' => $paymentMethodIds,
            ],
        ];

        $query = 'mutation createMerchantPaymentLink($input: CreateMerchantPaymentLinkInput!) {' .
            ' createMerchantPaymentLink(input: $input) {' .
            ' __typename' .
            ' ... on CreateMerchantPaymentLinkSuccessPayload { merchantPaymentLink { url } }' .
            ' ... on ValidationRejection { message }' .
            ' ... on InternalErrorRejection { message }' .
            ' ... on ForbiddenRejection { message }' .
            ' ... on MerchantProfileWrongStatusRejection { message }' .
            ' ... on MerchantPaymentMethodNotActiveRejection { message }' .
            ' ... on PaymentMethodNotCompatibleRejection { message }' .
            ' }' .
            '}';

        $response = $this->graphRequest($graphqlUrl, $token, $query, $variables);
        $payload = $response['data']['createMerchantPaymentLink'] ?? null;

        if (isset($payload['merchantPaymentLink']['url'])) {
            return $payload['merchantPaymentLink']['url'];
        }

        return null;
    }

    protected function findMerchantPayment($deposit, $token)
    {
        $credentials = json_decode($deposit->gatewayCurrency()->gateway_parameter);
        $graphqlUrl = $credentials->graphql_url ?? 'https://api.swan.io/sandbox-partner/graphql';

        $query = 'query merchantPayments($first: Int!, $filters: MerchantPaymentFiltersInput) {' .
            ' merchantPayments(first: $first, filters: $filters) {' .
            ' edges { node { id reference externalReference statusInfo { __typename } amount { value currency } } }' .
            ' }' .
            '}';

        $variables = [
            'first' => 20,
            'filters' => [
                'search' => $deposit->trx,
            ],
        ];

        $response = $this->graphRequest($graphqlUrl, $token, $query, $variables);
        $edges = $response['data']['merchantPayments']['edges'] ?? [];

        foreach ($edges as $edge) {
            $node = $edge['node'] ?? [];
            if (empty($node)) {
                continue;
            }

            $reference = $node['reference'] ?? '';
            $externalReference = $node['externalReference'] ?? '';
            $statusInfo = $node['statusInfo']['__typename'] ?? null;

            if ($reference === $deposit->trx || $externalReference === $deposit->trx) {
                return [
                    'status' => $statusInfo,
                    'reference' => $reference,
                    'externalReference' => $externalReference,
                ];
            }
        }

        return null;
    }

    protected function graphRequest($url, $token, $query, $variables = [])
    {
        $payload = json_encode(['query' => $query, 'variables' => $variables]);
        $headers = [
            'Content-Type: application/json',
            'Authorization: Bearer ' . $token,
        ];

        $result = CurlRequest::curlPostContent($url, $payload, $headers);
        $decoded = json_decode($result, true);
        return $decoded ?: [];
    }
}
