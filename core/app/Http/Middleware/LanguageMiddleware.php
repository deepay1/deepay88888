<?php

namespace App\Http\Middleware;

use App\Constants\Status;
use App\Models\Language;
use Closure;
use Illuminate\Http\Request;

class LanguageMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $lang = $this->getCode($request);
        session()->put('lang', $lang);
        app()->setLocale($lang);
        return $next($request);
    }

    public function getCode(Request $request)
    {
        if (session()->has('lang')) {
            return session('lang');
        }

        $availableLanguages = Language::pluck('code')->map(fn ($code) => strtolower($code))->toArray();
        $acceptLanguage = $request->header('Accept-Language');

        if ($acceptLanguage) {
            foreach (explode(',', $acceptLanguage) as $localeString) {
                $locale = strtolower(trim(explode(';', $localeString)[0]));
                if (in_array($locale, $availableLanguages)) {
                    return $locale;
                }

                $shortLocale = explode('-', $locale)[0];
                if (in_array($shortLocale, $availableLanguages)) {
                    return $shortLocale;
                }
            }
        }

        $language = Language::where('is_default', Status::ENABLE)->first();
        return $language ? strtolower($language->code) : 'en';
    }
}
