@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Media"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{ __("Media") }}
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
                                    {{ __("Media") }}
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
            <br/>
            <br/>

            <style>
                div.gallery {
                    margin: 5px;
                    border: 1px solid #ccc;
                    float: left;
                    width: 180px;
                }

                div.gallery:hover {
                    border: 1px solid #777;
                }

                div.gallery img {
                    width: 100%;
                    height: auto;
                }

                div.desc {
                    padding: 15px;
                    text-align: center;
                }
            </style>

            @foreach($images as $image)
            <div class="gallery">
                <a target="_blank" href="{{ url('/') }}/storage/{{ $image->image }}">
                    <img src="{{ url('/') }}/storage/{{ $image->image }}" alt="{{ $image->$image }}" width="600" height="400">
                </a>
            </div>
            @endforeach

        </div>
    </div>

@endsection
