@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("About us"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>{{$page->getTranslatedAttribute("title")}}</h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li>
                                    <a href="{{ route("index") }}">{{__("Home")}}</a><i class="fa fa-angle-right"></i>
                                </li>
                                <li>{{$page->getTranslatedAttribute("title")}}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="x_about_seg_main_wrapper float_left padding_tb_100">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    @if($page->image)
                        <img src="{{ url('/') }}/storage/{{ $page->image }}" alt="about_img">
                    @endif
                    <div class="x_about_seg_img_cont_wrapper float_left">
                        <p>
                            {!! $page->getTranslatedAttribute("body") !!}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
