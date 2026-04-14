@extends($activeTemplate . 'layouts.' . $layouts)
@section($section)
    <div class="{{ $extraClass }}">
        <div class="{{ $rowClass }} justify-content-center">
            <div class="col-lg-6">
                <div class="card custom--card">
                    <div class="card-header">
                        <h5>@lang('Swan Payment')</h5>
                    </div>
                    <div class="card-body">
                        <p class="mb-4">
                            @lang('You are about to pay :amount :currency using Swan.', ['amount' => showAmount($deposit->final_amount, false), 'currency' => $deposit->method_currency])
                        </p>
                        <form action="{{ $data->url }}" method="{{ $data->method }}">
                            @csrf
                            <input type="hidden" name="track" value="{{ $data->track }}">
                            <button type="submit" class="btn btn--base w-100">
                                @lang('Continue to Swan Checkout')
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
