@php
    $bannerContent = @getContent('banner.content', true)->data_values;
@endphp
<section class="banner-section">
    <div class="container">
        <div class="row gy-5 gx-lg-0 align-items-center flex-sm-column-reverse flex-lg-row-reverse">
            <div class="col-lg-6">
                <div class="banner-image">
                    <img class="fit-image" src="{{ frontendImage('banner', @$bannerContent->banner_image) }}"
                        alt="image">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="banner-content">
                    <h1 class="banner-content__title">
                        {{ __(@$bannerContent->heading) }}
                    </h1>
                    <div class="banner-content__wrapper">
                        <a href="{{ @$bannerContent->button_url }}" class="btn btn--lg btn--grbtn pill"
                            data-highlight="-2_-0" data-highlight-class="fst-italic fw-light">
                            {{ __(@$bannerContent->button_text) }}
                        </a>
                        <div class="banner-rating">
                            <img src="{{ frontendImage('banner', @$bannerContent->review_image) }}" alt="">
                        </div>
                    </div>
                    <div class="banner-action-grid">
                        <div class="banner-action-card">
                            <div class="action-icon"><i class="las la-wallet"></i></div>
                            <h4>@lang('充值')</h4>
                            <p>@lang('快速充值并立即提升账户余额，资金随时可用。')</p>
                            <a href="{{ auth()->check() ? route('user.deposit.history') : route('user.login') }}" class="btn btn--sm btn--light">@lang('立即充值')</a>
                        </div>
                        <div class="banner-action-card">
                            <div class="action-icon"><i class="las la-qrcode"></i></div>
                            <h4>@lang('扫码')</h4>
                            <p>@lang('打开收款二维码，快速完成支付和转账。')</p>
                            <a href="{{ auth()->check() ? route('user.make.payment.create') : route('user.login') }}" class="btn btn--sm btn--light">@lang('扫码支付')</a>
                        </div>
                        <div class="banner-action-card">
                            <div class="action-icon"><i class="las la-exchange-alt"></i></div>
                            <h4>@lang('转账')</h4>
                            <p>@lang('向好友或商户发起转账，一键完成资金流转。')</p>
                            <a href="{{ auth()->check() ? route('user.send.money.create') : route('user.login') }}" class="btn btn--sm btn--light">@lang('立即转账')</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@push('style')
    <style>
        .banner-section::after {
            background-image: url("{{ frontendImage('banner', @$bannerContent->background_image) }}");
        }
    </style>
@endpush
