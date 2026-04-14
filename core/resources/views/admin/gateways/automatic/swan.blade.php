@extends('admin.layouts.app')
@section('panel')
    <x-admin.ui.card>
        <x-admin.ui.card.body>
            <div class="row gy-4">
                <div class="col-12">
                    <h4 class="mb-3">@lang('Swan Payment Gateway')</h4>
                    <p>@lang('Swan is now available as an automatic gateway plugin. Use this page to create the gateway record and configure it in the automatic gateway editor.')</p>
                </div>
                <div class="col-12">
                    <div class="alert alert-warning">
                        @lang('If Swan is not listed in the automatic gateway cards yet, click the button below to create the Swan gateway configuration record. After creating it, configure credentials, merchant profile ID and payment method IDs, then enable the gateway.')
                    </div>
                </div>
                <div class="col-12">
                    <form action="{{ route('admin.gateway.automatic.swan.setup') }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn--primary">
                            <i class="las la-plus"></i> @lang('Create Swan Gateway Record')
                        </button>
                    </form>
                </div>
            </div>
        </x-admin.ui.card.body>
    </x-admin.ui.card>
@endsection

@push('breadcrumb-plugins')
    <x-back_btn route="{{ route('admin.gateway.automatic.index') }}" />
@endpush
