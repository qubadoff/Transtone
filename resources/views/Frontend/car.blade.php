@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Autopark"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{__("Cars")}}
                        </h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i>
                                </li>
                                <li>{{__("Cars")}}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="x_car_book_sider_main_Wrapper float_left" data-select2-id="39">
        <div class="container" data-select2-id="38">
                <div class="col-xl-12 col-lg-8 col-md-12 col-sm-12 col-12" data-select2-id="36">
                    <div class="x_carbooking_right_section_wrapper float_left" data-select2-id="35">
                        <div class="row" data-select2-id="34">
                            <div class="col-md-12">
                                <div class="x_car_book_tabs_content_main_wrapper">
                                    <div class="tab-content">
                                        <div id="menu1" class="tab-pane fade active show">
                                            <div class="row">
                                                @forelse($cars as $car)
                                                    <div class="col-md-12">
                                                        <div class="x_car_offer_main_boxes_wrapper float_left">
                                                            <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                                <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                    <img src="{{ url('/') }}/storage/{{ $car->photo_1 }}" style="width: 280px; height: 200px;" alt="img">
                                                                </div>
                                                                <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                    <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                        <h2>{{ $car->getTranslatedAttribute("name") }}</h2>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="x_car_offer_starts_list_img_cont">
                                                                <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                    @if($car->photo_2)
                                                                        <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                            <img src="{{ url('/') }}/storage/{{ $car->photo_2 }}" style="width: 300px; height: 119px;" alt="img">
                                                                        </div>
                                                                    @endif
                                                                </div>
                                                                <br/>
                                                                <br/>
                                                                <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                    <ul>
                                                                        <li><a href="{{ route("reservation") }}">{{__("Book now")}}</a>
                                                                        </li>
                                                                        <li><a href="{{ route("singleCar", ['slug' => $car->slug ]) }}">{{__("Read more")}}</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                    <ul class="">
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Width")}} : {{ $car->width }} {{__("metr")}}</a></li>
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Height")}} : {{ $car->height }} {{__("metr")}}</a></li>
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Length")}} : {{ $car->length }} {{__("metr")}}</a></li>
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Weight")}} : {{ $car->weight }} {{__("metr")}}</a></li>
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Capacity")}} : {{ $car->capacity }} {{__("m^3")}}</a></li>
                                                                        <li><a href="#"><i class="fa fa-bars"></i>{{__("Pallets")}} : {{ $car->pallets }} {{__("pieces")}}</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @empty
                                                    No data Found !
                                                @endforelse
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

@endsection
