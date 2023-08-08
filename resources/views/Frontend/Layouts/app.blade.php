<!DOCTYPE html>
<html lang="zxx">
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8" />
    <title>
        @yield('pageTitle')
    </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="description" content="Transtone" />
    <meta name="keywords" content="Transtone" />
    <meta name="author" content="" />
    <meta name="MobileOptimized" content="320" />
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="{{ url('/') }}/assets/css/burncode.css" />

    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="{{ url('/') }}/assets/images/fevicon.png" />
</head>
@include('Frontend.Layouts.includes.header')
@yield('content')
@include('Frontend.Layouts.includes.footer')
