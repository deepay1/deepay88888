@extends($activeTemplate . 'layouts.' . $layouts)
@section($section)
    <div class="{{ $extraClass }}">
        <div class="{{ $rowClass }} justify-content-center">
            <div class="col-md-6">
                <div class="card custom--card">
                    <div class="card-header">
                        <h5 class="card-title">@lang('WeChat Pay')</h5>
                    </div>
                    <div class="card-body text-center">
                        <ul class="list-group list-group-flush text-start mb-4">
                            <li class="list-group-item d-flex justify-content-between">
                                @lang('You have to pay'):
                                <strong>{{ showAmount($deposit->final_amount, currencyFormat: false) }} {{ __($deposit->method_currency) }}</strong>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                @lang('You will get'):
                                <strong>{{ showAmount($deposit->amount) }}</strong>
                            </li>
                        </ul>

                        <img src="https://api.qrserver.com/v1/create-qr-code/?size=260x260&data={{ urlencode($data->qr_url) }}" alt="wechat-pay-qr" class="img-fluid mb-3">
                        <p class="mb-2">@lang('Scan QR code in WeChat to complete payment')</p>
                        <a href="{{ $data->qr_url }}" target="_blank" class="btn btn--base w-100">@lang('Open Payment Link')</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
