@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Reservation"))

@section('content')
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>
                            {{__("Reservation")}}
                        </h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i>
                                </li>
                                <li>{{__("Reservation")}}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="x_car_book_sider_main_Wrapper float_left">
        <br/>
        <br/>
        <div class="container">
            @if(\Illuminate\Support\Facades\Session::has('success'))
                <div class="alert alert-success">
                    {{ Session::get('success') }}
                    @php
                        Session::forget('success');
                    @endphp
                </div>
            @endif
            @if($errors->any())
                <div class="alert alert-danger alert-dismissible fade show">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>
                    <ul class="list-unstyled">
                        @foreach($errors->all() as $error)
                            <li> {{ $error }} </li>
                        @endforeach
                    </ul>
                </div>
            @endif
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="x_carbooking_right_section_wrapper float_left">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_car_checkout_right_main_box_wrapper float_left">
                                    <div class="car-filter order-billing margin-top-0">
                                        <div class="heading-block text-left margin-bottom-0">
                                            <h4>
                                                {{__("Reservation Form")}}
                                            </h4>
                                        </div>
                                        <hr>
                                        <form class="billing-form" action="{{ route("bookOrder") }}" method="POST" enctype="multipart/form-data">
                                            @csrf
                                            @method("post")
                                            <div class="alert alert-warning">
                                                <strong>{{__("Warning")}}</strong> {{__("Warning text")}}
                                            </div>
                                            <ul class="list-unstyled row">
                                                <li class="col-md-6">
                                                    <label>{{__("Full name")}} *
                                                        <input type="text" name="name" placeholder="" class="form-control" required>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Phone Number")}} *
                                                        <input type="text" name="phone" placeholder="" class="form-control" required>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Email adress")}} *
                                                        <input type="email" name="email" placeholder="" class="form-control" required>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Company")}}
                                                        <input type="text" name="company_name" placeholder="" class="form-control">
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Choose Service")}}</label>
                                                    <select name="service_id" class="myselect select2-hidden-accessible" tabindex="-1" aria-hidden="true" style="display: none;" required>
                                                        <option value="">{{__("Choose Service")}}</option>
                                                        @foreach($services as $service)
                                                            <option value="{{ $service->id }}">{{ $service->getTranslatedAttribute("name") }}</option>
                                                        @endforeach
                                                    </select>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Choose Car")}} *</label>
                                                    <select name="car_id" class="myselect select2-hidden-accessible" tabindex="-1" aria-hidden="true" style="display: none;">
                                                        <option value="">{{__("Choose Car")}}</option>
                                                        @foreach($cars as $car)
                                                            <option value="{{ $car->id }}">{{ $car->getTranslatedAttribute("name") }}</option>
                                                        @endforeach
                                                    </select>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Pickup Date")}}
                                                        <input type="date" name="pickup_date" placeholder="" class="form-control" value="{{ date("Y-m-d") }}">
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Dropoff Date")}}
                                                        <input type="date" name="dropoff_date" placeholder="" class="form-control" value="{{ date("Y-m-d") }}">
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Pickup Location")}}
                                                        <input type="text" name="pickup_location" placeholder="" class="form-control">
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>{{__("Dropoff Location")}}
                                                        <input type="text" name="dropoff_location" placeholder="" class="form-control">
                                                    </label>
                                                </li>
                                                <li class="col-md-12">
                                                    <label>{{__("Document Photos")}}
                                                        <input type="file" name="photos" multiple placeholder="" class="form-control">
                                                    </label>
                                                </li>
                                                <li class="col-md-12">
                                                    <label>{{__("Additional information")}}</label>
                                                    <textarea name="message" placeholder="{{__("Notes your order")}}" class="form-control"></textarea>
                                                </li>
                                            </ul>
                                            <hr>
                                            <div class="checkbox car_checkout_chekbox">
                                                <input type="checkbox" id="c3" name="cb" required>
                                                <label for="c3">{{__("I have Read and Accept Terms & Conditions *")}}</label>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="contect_btn contect_btn_contact">
                                                    <ul>
                                                        <li>
                                                            <button class="btn btn-success">
                                                                {{__("Make an order")}}
                                                                <i class="fa fa-arrow-right"></i>
                                                            </button>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

@endsection
