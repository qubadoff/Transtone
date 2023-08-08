@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Contact"))

@section('content')
<div class="btc_tittle_main_wrapper">
    <div class="btc_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                <div class="btc_tittle_left_heading">
                    <h1>
                        {{__("Contact")}}
                    </h1>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                <div class="btc_tittle_right_heading">
                    <div class="btc_tittle_right_cont_wrapper">
                        <ul>
                            <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i>
                            </li>
                            <li>{{__("Contact")}}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="x_contact_title_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="x_offer_car_heading_wrapper x_offer_car_heading_wrapper_contact float_left">
                    <h3>{{__("Contact info")}}</h3>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
                <div class="x_contact_title_icon_cont_main_box">
                    <div class="x_contact_title_icon">	<i class="fa fa-map-marker"></i>
                    </div>
                    <div class="x_contact_title_icon_cont">
                        <h3><a href="#">{{__("Address")}}</a></h3>
                        <p>
                            {{ setting('site.adress') }}
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
                <div class="x_contact_title_icon_cont_main_box">
                    <div class="x_contact_title_icon">	<i class="flaticon-phone-call"></i>
                    </div>
                    <div class="x_contact_title_icon_cont">
                        <h3><a href="tel:{{setting('site.number')}}">{{__("Phone Number")}}</a></h3>
                        <p>
                           {{setting('site.number')}}
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
                <div class="x_contact_title_icon_cont_main_box">
                    <div class="x_contact_title_icon">	<i class="flaticon-mail-send"></i>
                    </div>
                    <div class="x_contact_title_icon_cont">
                        <h3><a href="mailto:{{setting('site.email')}}" target="_blank">{{__("Email adress")}}</a></h3>
                        <p>
                            <a href="mailto:{{setting('site.email')}}" target="_blank">{{setting('site.email')}}</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="x_contact_title_main_wrapper float_left padding_tb_100">
    <div class="container">
        @if(\Illuminate\Support\Facades\Session::has('success'))
            <div class="alert alert-success">
                {{ Session::get('success') }}
                @php
                    Session::forget('success');
                @endphp
            </div>
        @endif
        @if(\Illuminate\Support\Facades\Session::has('error'))
            <div class="alert alert-danger">
                {{ Session::get('error') }}
                @php
                    Session::forget('error');
                @endphp
            </div>
        @endif
        <form action="{{ route("sendMessage") }}" method="post">
            @csrf
            @method("post")
            <div class="row">
                <div class="col-md-12">
                    <div class="x_offer_car_heading_wrapper x_offer_car_heading_wrapper_contact float_left">
                        <h3>{{__("Leave a message")}}</h3>
                    </div>
                </div>
                <div class="col-xl-5 offset-xl-1 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="contect_form1">
                        <input type="text" name="name" placeholder="{{__("First name")}}" required>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="contect_form2">
                        <input type="text" name="surname" placeholder="{{__("Last name")}}" required>
                    </div>
                </div>
                <div class="col-xl-5 offset-xl-1 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="contect_form2">
                        <input type="email" name="email" placeholder="{{__("Email")}}" required>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="contect_form2">
                        <input type="text" name="phone" placeholder="{{__("Phone")}}" required>
                    </div>
                </div>
                <div class="col-xl-10 offset-xl-1 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="contect_form4">
                        <textarea rows="4" name="message" placeholder="{{__("Write Comment")}}" required></textarea>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="contect_btn contect_btn_contact">
                        <ul>
                                <button class="btn btn-success" name="submit" type="submit">
                                    {{__("Send")}}
                                    <i class="fa fa-arrow-right"></i>
                                </button>
                        </ul>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
