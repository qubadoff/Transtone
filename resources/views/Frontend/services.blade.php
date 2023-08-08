@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Services"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{__("Services")}}
                        </h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i>
                                </li>
                                <li>{{__("Services")}}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="x_offer_car_main_wrapper float_left padding_tb_100">
        <div class="container">
            <div class="col-md-12">
                <div class="tab-content">
                    <div id="home" class="tab-pane active">
                        <div class="row">
                            @forelse($services as $service)
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                        <div class="x_car_offer_starts float_left">
                                        </div>
                                        <div class="x_car_offer_img float_left">
                                            <img src="{{ url('/') }}/storage/{{ $service->photo }}" style="width: 200px; height: 100px;" alt="img">
                                        </div>

                                        <div class="x_car_offer_heading float_left">
                                            <h2><a href="{{ route("singleServices", ['slug' => $service->slug]) }}">{{ $service->getTranslatedAttribute("name") }}</a></h2>
                                            <p>
                                                {{ $service->getTranslatedAttribute("description") }}
                                            </p>
                                        </div>
                                        <div class="x_car_offer_bottom_btn float_left">
                                            <ul>
                                                <li><a href="{{ route("reservation") }}">{{__("Book now")}}</a>
                                                </li>
                                                <li><a href="{{ route("singleServices", ['slug' => $service->slug]) }}">{{__("Read more")}}</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                No data !
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
