<?php
header("Content-Type:text/css");
function checkHexColor($color)
{
    return preg_match('/^#[a-f0-9]{6}$/i', $color);
}

if (isset($_GET['color']) and $_GET['color'] != '') {
    $color = "#" . $_GET['color'];
}

if (!$color or !checkHexColor($color)) {
    $color = "#336699";
}
if (isset($_GET['secondColor']) and $_GET['secondColor'] != '') {
    $secondColor = "#" . $_GET['secondColor'];
}

if (!$secondColor or !checkHexColor($secondColor)) {
    $secondColor = "#336699";
}

if (isset($_GET['merchant']) and $_GET['merchant'] != '') {
    $merchantColor = "#" . $_GET['merchant'];
}

if (!$merchantColor or !checkHexColor($merchantColor)) {
    $merchantColor = "#14b8a6";
}

if (isset($_GET['agent']) and $_GET['agent'] != '') {
    $agentColor = "#" . $_GET['agent'];
}

if (!$agentColor or !checkHexColor($agentColor)) {
    $agentColor = "#14b8a6";
}

function hexToHsl($hex)
{
    $hex   = str_replace('#', '', $hex);
    $red   = hexdec(substr($hex, 0, 2)) / 255;
    $green = hexdec(substr($hex, 2, 2)) / 255;
    $blue  = hexdec(substr($hex, 4, 2)) / 255;
    $cmin  = min($red, $green, $blue);
    $cmax  = max($red, $green, $blue);
    $delta = $cmax - $cmin;
    if ($delta == 0) {
        $hue = 0;
    } elseif ($cmax === $red) {
        $hue = (($green - $blue) / $delta);
    } elseif ($cmax === $green) {
        $hue = ($blue - $red) / $delta + 2;
    } else {
        $hue = ($red - $green) / $delta + 4;
    }
    $hue = round($hue * 60);
    if ($hue < 0) {
        $hue += 360;
    }
    $lightness  = (($cmax + $cmin) / 2);
    $saturation = $delta === 0 ? 0 : ($delta / (1 - abs(2 * $lightness - 1)));
    if ($saturation < 0) {
        $saturation += 1;
    }
    $lightness  = round($lightness * 100);
    $saturation = round($saturation * 100);
    $hsl['h']   = $hue;
    $hsl['s']   = $saturation;
    $hsl['l']   = $lightness;
    return $hsl;
}
?>

:root{
--base-h: 0;
--base-s: 0%;
--base-l: 0%;
--base-two-h: 0;
--base-two-s: 0%;
--base-two-l: 22%;
--primary-h: 0;
--primary-s: 0%;
--primary-l: 0%;
--secondary-h: 0;
--secondary-s: 0%;
--secondary-l: 26%;
--success-h: 0;
--success-s: 0%;
--success-l: 14%;
--danger-h: 0;
--danger-s: 0%;
--danger-l: 18%;
--warning-h: 0;
--warning-s: 0%;
--warning-l: 34%;
--info-h: 0;
--info-s: 0%;
--info-l: 30%;
--heading-color: 0 0% 6%;
--body-color: 0 0% 24%;
--text-color: 0 0% 38%;
--border-color: 0 0% 86%;
--section-bg: 0 0% 96%;
--gr-color: linear-gradient(90deg, hsl(0 0% 0%) 0%, hsl(0 0% 24%) 100%);
--gr-color-two: linear-gradient(270deg, hsl(0 0% 24%) 0%, hsl(0 0% 0%) 100%);
}

:root:has(.agent-dashboard){
    --base-h: 0;
    --base-s: 0%;
    --base-l: 0%;
}
.dashboard.agent-dashboard .sidebar-menu-list__item.active>a {
    background: #000000;
}
:root:has(.merchant-dashboard){
    --base-h: 0;
    --base-s: 0%;
    --base-l: 0%;
}
.dashboard.merchant-dashboard .sidebar-menu-list__item.active>a {
    background: #000000;
}

html,
body {
    background: #ffffff;
    color: #1f1f1f;
}

body,
input,
select,
textarea,
button {
    font-weight: 400;
}

.card,
.custom--card,
.dashboard-widget,
.table-responsive,
.modal-content,
.site-card,
.section-bg,
.cookies-card {
    border-radius: 4px !important;
    border: 1px solid #e0e0e0 !important;
    box-shadow: none !important;
}

.btn,
.btn--grbtn,
.btn--primary,
.btn--base,
.btn-outline--primary,
.btn-outline--grbtn {
    border-radius: 4px !important;
    transition: all 0.2s ease-out !important;
}

.btn:hover,
.btn:focus-visible,
.btn--grbtn:hover,
.btn--primary:hover,
.btn--base:hover {
    transform: scale(1.02);
    opacity: 0.92;
}

.btn--grbtn,
.btn--primary,
.btn--base {
    background: #000000 !important;
    color: #ffffff !important;
    border: 1px solid #000000 !important;
}

.btn-outline--primary,
.btn-outline--grbtn {
    background: #ffffff !important;
    color: #000000 !important;
    border: 1px solid #000000 !important;
}

.form--control,
.form-control,
.form-select,
.select2-selection,
input,
select,
textarea {
    border-radius: 4px !important;
    border-color: #e0e0e0 !important;
    box-shadow: none !important;
}

a,
.text--base,
.base-color {
    color: #000000 !important;
}

a:hover {
    color: #424242 !important;
}

*:focus-visible {
    outline: 2px solid #000000 !important;
    outline-offset: 2px !important;
}

@media screen and (max-width: 767px) {
    body:has(.dashboard-body) {
        background: #f5f5f5 !important;
    }

    .dashboard-header {
        background: #f5f5f5 !important;
        border-bottom: 0 !important;
    }

    .dashboard-header-wrapper {
        padding: 8px 0 !important;
    }

    .dashboard-header-left .user-info-thumb,
    .dashboard-header-right .lang-box-btn {
        height: 42px !important;
        width: 42px !important;
        border-radius: 50% !important;
        border: 1px solid #e0e0e0 !important;
        background: #ffffff !important;
    }

    .dashboard-header-left .user-info-content,
    .dashboard-header-right .lang-box-btn .text,
    .dashboard-header-right .lang-box-btn .icon {
        display: none !important;
    }

    .dashboard-body {
        padding-top: 10px !important;
        padding-bottom: 92px !important;
    }

    .dashboard-body .custom--card {
        border-radius: 18px !important;
        border: 1px solid #e0e0e0 !important;
        background: #ffffff !important;
    }

    .mywallet {
        gap: 14px !important;
        margin-bottom: 16px !important;
        align-items: flex-start !important;
    }

    .mywallet-title h6 {
        font-size: 14px !important;
        font-weight: 500 !important;
        color: #424242 !important;
    }

    .mywallet-balance {
        font-size: 42px !important;
        line-height: 1 !important;
        letter-spacing: -0.02em !important;
        color: #000000 !important;
    }

    .mywallet-btn {
        width: 52px !important;
        height: 52px !important;
        border-radius: 50% !important;
    }

    .mywallet-btn .thumb {
        border-radius: 50% !important;
        padding: 10px !important;
    }

    .dashboard-widget-wrapper {
        --count: 2 !important;
        --gap: 10px !important;
    }

    .dashboard-widget-wrapper .dashboard-widget {
        border-radius: 12px !important;
        padding: 12px !important;
        min-height: 58px !important;
        display: flex !important;
        align-items: center !important;
        gap: 10px !important;
    }

    .dashboard-widget-wrapper .dashboard-widget:nth-of-type(1) {
        background: #000000 !important;
        border-color: #000000 !important;
    }

    .dashboard-widget-wrapper .dashboard-widget:nth-of-type(1) .dashboard-widget__title,
    .dashboard-widget-wrapper .dashboard-widget:nth-of-type(1) .dashboard-widget__icon {
        color: #ffffff !important;
    }

    .dashboard-widget-wrapper .dashboard-widget:nth-of-type(2) {
        background: #ffffff !important;
        border-color: #e0e0e0 !important;
    }

    .dashboard-widget-wrapper .dashboard-widget__icon {
        width: 26px !important;
        height: 26px !important;
        margin-bottom: 0 !important;
        border-radius: 50% !important;
        background: transparent !important;
        padding: 0 !important;
    }

    .dashboard-widget-wrapper .dashboard-widget__icon svg {
        width: 20px !important;
        height: 20px !important;
    }

    .dashboard-widget-wrapper .dashboard-widget__shape,
    .dashboard-widget-wrapper .dashboard-widget__text,
    .dashboard-widget-wrapper .dashboard-widget__link {
        display: none !important;
    }

    .dashboard-widget-wrapper .dashboard-widget__title {
        font-size: 16px !important;
        font-weight: 500 !important;
        margin: 0 !important;
    }

    .table--responsive--xl tbody tr {
        border: 1px solid #e0e0e0 !important;
        border-radius: 14px !important;
        margin-bottom: 10px !important;
        background: #ffffff !important;
    }

    .table--responsive--xl tbody td {
        border-color: #f0f0f0 !important;
    }
}
