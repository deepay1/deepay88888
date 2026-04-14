<!doctype html>
<html lang="{{ config('app.locale') }}" itemscope itemtype="http://schema.org/WebPage">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> {{ gs()->siteName(__($pageTitle)) }}</title>
    @include('partials.seo')

    <link href="{{ asset('assets/global/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/global/css/all.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/global/css/line-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/global/css/select2.min.css') }}">

    @stack('style-lib')

    <link rel="stylesheet" href="{{ asset($activeTemplateTrue . 'css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset($activeTemplateTrue . 'css/main.css') }}">

    @stack('style')
    <link rel="stylesheet"
        href="{{ asset($activeTemplateTrue . 'css/color.php') }}?color={{ gs('base_color') }}&secondColor={{ gs('secondary_color') }}&merchant={{ gs('merchant_panel_color') }}&agent={{ gs('agent_panel_color') }}">
    <style>
        #deePayInstallBar {
            display: none;
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 1080;
            background: #0d3f8f;
            color: #ffffff;
            padding: 14px 16px;
            font-size: 14px;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            box-shadow: 0 -4px 18px rgba(0, 0, 0, 0.18);
            border-top: 1px solid rgba(255,255,255,0.12);
        }

        #deePayInstallBar.show {
            display: flex;
        }

        #deePayInstallBar .install-action {
            background: #ffffff;
            color: #0d3f8f;
            border: none;
            border-radius: 999px;
            padding: 10px 16px;
            font-weight: 700;
            cursor: pointer;
            white-space: nowrap;
        }

        #deePayInstallBar .install-action:hover {
            opacity: 0.95;
        }

        #deePayInstallBar .install-close {
            color: #ffffff;
            background: transparent;
            border: none;
            font-size: 18px;
            line-height: 1;
            cursor: pointer;
            opacity: 0.9;
        }
    </style>
</head>
@php echo loadExtension('google-analytics') @endphp

<body>

    <div id="deePayInstallBar">
        <span>加到主屏幕，手机一键打开 DeePay。</span>
        <div>
            <button type="button" class="install-action" onclick="deePayInstallApp()">添加到主屏幕</button>
            <button type="button" class="install-close" onclick="deePayDismissInstall()">×</button>
        </div>
    </div>

    <div class="preloader">
        <img src="{{ getImage(getFilePath('preloader') . '/' . gs('preloader_image')) }}" alt="image">
    </div>

    <div class="body-overlay"></div>
    <div class="sidebar-overlay"></div>
    <a class="scroll-top"><i class="fas fa-angle-up"></i></a>

    @yield('app-content')


    <div class="full-page-loader d-none">
        <div class="lds-spinner">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    @stack('end-content')



    <script src="{{ asset('assets/global/js/jquery-3.7.1.min.js') }}"></script>
    <script src="{{ asset('assets/global/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/global/js/select2.min.js') }}"></script>

    @php
        $pusherConfig = gs('pusher_config');
    @endphp
    <script>
        window.my_pusher = {
            'app_key': "{{ base64_encode(@$pusherConfig->app_key) }}",
            'app_cluster': "{{ base64_encode(@$pusherConfig->cluster) }}",
            'base_url': "{{ route('home') }}"
        }
    </script>


    @stack('script-lib')

    <script src="{{ asset('assets/global/js/global.js') }}"></script>
    <script src="{{ asset($activeTemplateTrue . 'js/main.js') }}"></script>
    @php echo loadExtension('tawk-chat') @endphp

    @include('Template::partials.cookie')

    @include('partials.notify')

    @if (gs('pn'))
        @include('partials.push_script')
    @endif

    @stack('script')

    <script>
        if ('serviceWorker' in navigator) {
            window.addEventListener('load', function() {
                navigator.serviceWorker.register('/sw.js').then(function(registration) {
                    console.log('DeePay PWA service worker registered:', registration);
                }).catch(function(error) {
                    console.warn('DeePay PWA service worker registration failed:', error);
                });
            });
        }

        var deePayInstallPrompt = null;
        var deePayInstallBar = document.getElementById('deePayInstallBar');

        function deePayInstallApp() {
            if (!deePayInstallPrompt) {
                return;
            }
            deePayInstallPrompt.prompt();
            deePayInstallPrompt.userChoice.then(function(choiceResult) {
                if (deePayInstallBar) {
                    deePayInstallBar.classList.remove('show');
                }
                deePayInstallPrompt = null;
            });
        }

        function deePayDismissInstall() {
            if (deePayInstallBar) {
                deePayInstallBar.classList.remove('show');
            }
        }

        window.addEventListener('beforeinstallprompt', function(event) {
            event.preventDefault();
            deePayInstallPrompt = event;
            if (deePayInstallBar) {
                deePayInstallBar.classList.add('show');
            }
            console.log('DeePay PWA install prompt ready to be shown.');
        });

        window.addEventListener('appinstalled', function() {
            deePayInstallPrompt = null;
            if (deePayInstallBar) {
                deePayInstallBar.classList.remove('show');
            }
        });
    </script>

    <script>
        (function($) {
            "use strict";

            //plicy
            $('.policy').on('click', function() {
                $.get('{{ route('cookie.accept') }}', function(response) {
                    $('.cookies-card').addClass('d-none');
                });
            });

            //show cookie card
            setTimeout(function() {
                $('.cookies-card').removeClass('hide');
            }, 2000);
        })(jQuery);
    </script>


</body>

</html>
