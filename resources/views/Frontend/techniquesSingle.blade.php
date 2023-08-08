@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : $techniquesSingle->getTranslatedAttribute("name"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{ $techniquesSingle->getTranslatedAttribute("name") }}
                        </h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i>
                                </li>
                                <li>
                                    {{ $techniquesSingle->getTranslatedAttribute("name") }}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="x_car_book_sider_main_Wrapper float_left">
        <div class="container">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="col-md-12">
                    <div class="x_car_detail_main_wrapper">
                        <br/>
                        @if($techniquesSingle->photo)
                            <div class="lr_bc_first_box_img_wrapper">
                                <img src="{{url('/')}}/storage/{{ $techniquesSingle->photo }}" alt="blog_img">
                            </div>
                        @endif
                        <div class="x_car_detail_slider_bottom_cont float_left">
                            <div class="x_car_detail_slider_bottom_cont_center float_left">
                                <p>
                                    {!! $techniquesSingle->getTranslatedAttribute("body") !!}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

