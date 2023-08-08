@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : $car->getTranslatedAttribute("name"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{ $car->getTranslatedAttribute("name") }}
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
                                    {{ $car->getTranslatedAttribute("name") }}
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
                        <div class="lr_bc_first_box_img_wrapper">
                            <img src="{{url('/')}}/storage/{{ $car->photo_1 }}" style="width: 380px; height: 300px;" alt="blog_img">
                        </div>
                        <div class="x_car_detail_slider_bottom_cont float_left">
                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left x_car_offer_heading_inner_car_names x_car_offer_heading_inner_car_names2">
                                <div class="row">
                                    <div class="col-md-4">
                                        @if($car->photo_2)
                                            <div class="lr_bc_first_box_img_wrapper">
                                                <img src="{{url('/')}}/storage/{{ $car->photo_2 }}" style="width: 300px; height: 119px;" alt="blog_img">
                                            </div>
                                        @endif
                                    </div>
                                    <div class="col-md-8">
                                        <ul class="">
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Width")}} : {{ $car->width }} {{__("metr")}}</a></li>
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Height")}} : {{ $car->height }} {{__("metr")}}</a></li>
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Length")}} : {{ $car->length }} {{__("metr")}}</a></li>
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Weight")}} : {{ $car->weight }} {{__("kg")}}</a></li>
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Capacity")}} : {{ $car->capacity }} {{__("m^3")}}</a></li>
                                            <li>	<a href="#"><i class="fa fa-clone"></i> {{__("Pallets")}} : {{ $car->pallets }} {{__("pieces")}}</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="x_car_detail_slider_bottom_cont_center float_left">
                                <p>
                                    {!! $car->getTranslatedAttribute("body") !!}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
