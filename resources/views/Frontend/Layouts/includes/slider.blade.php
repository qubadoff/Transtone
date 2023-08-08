<div class="slider-area float_left" style="background: url({{ url('/') }}/storage/{{setting('site.slider_image')}}) 50% 0 repeat-y;">
    <div id="carousel-example-generic" class="carousel slide" data-interval="false" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <div class="carousel-captions caption-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="content">
                                    <h2 data-animation="animated fadeInLeft">
                                        @if(app()->getLocale() == "az")
                                            {{ setting('site.slider_text') }}
                                        @elseif(app()->getLocale() == "en")
                                            {{ setting('site.slider_text_en') }}
                                        @elseif(app()->getLocale() == "ru")
                                            {{ setting('site.slider_text_ru') }}
                                        @else
                                            {{ setting('site.slider_text_en') }}
                                        @endif
                                    </h2>
                                    <p data-animation="animated bounceInUp">
                                        @if(app()->getLocale() == "az")
                                            {{ setting('site.slider_text_2') }}
                                        @elseif(app()->getLocale() == "en")
                                            {{ setting('site.slider_text_2_en') }}
                                        @elseif(app()->getLocale() == "ru")
                                            {{ setting('site.slider_text_2_ru') }}
                                        @else
                                            {{ setting('site.slider_text_2_en') }}
                                        @endif
                                    </p>
                                    <div class="hs_effect_btn">
                                        <ul>
                                            <li data-animation="animated flipInX"><a href="{{ route("page", ['slug' => 'about-us']) }}">{{__("About us")}}<i class="fa fa-arrow-right"></i></a>
                                            </li>
                                            <li data-animation="animated flipInX"><a href="{{ route("contact") }}">{{__("Contact")}}<i class="fa fa-arrow-right"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-6 col-md-12 col-sm-12 col-12 d-none d-sm-none d-md-none  d-lg-block d-xl-block">
                                <div class="content_tabs">
                                    <div class="row">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="x_slider_form_main_wrapper float_left" data-animation="animated fadeIn">
                                                <div class="x_slider_form_heading_wrapper float_left">
                                                    <h3>
                                                        {{__("Book a service")}}
                                                    </h3>
                                                </div>
                                                <form action="{{ route("bookOrder") }}" method="post">
                                                    @csrf
                                                    @method("post")
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="x_slider_form_input_wrapper float_left">
                                                                <h3>{{__("Full name")}} *</h3>
                                                                <input type="text" name="name" placeholder="{{__("Enter your full name")}}" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="x_slider_form_input_wrapper float_left">
                                                                <h3>{{__("Phone Number")}} *</h3>
                                                                <input type="text" name="phone" placeholder="+994" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="x_slider_form_input_wrapper float_left">
                                                                <h3>{{__("Email adress")}}</h3>
                                                                <input type="email" name="email" placeholder="{{__("Enter your email")}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="x_slider_select">
                                                                <select class="myselect" name="service_id" required>
                                                                    <option value="">{{__("Choose Service")}} *</option>
                                                                    @foreach(\App\Service::all() as $service)
                                                                        <option value="{{ $service->id }}">{{ $service->getTranslatedAttribute("name") }}</option>
                                                                    @endforeach
                                                                </select>
                                                                <i class="fa fa-bookmark-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="x_slider_checkbox_bottom float_left">
                                                                <div class="x_slider_checout_left">
                                                                    <ul>
                                                                        <li><i class="fa fa-check-circle"></i>&nbsp;&nbsp;{{__("24/7 Phone Support")}}</li>
                                                                        <li><i class="fa fa-check-circle"></i>&nbsp;&nbsp;{{__("No Credit Card Fees")}}</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="x_slider_checout_right">
                                                                    <ul>
                                                                        <li>
                                                                            <button name="submit" type="submit" class="btn btn-success">
                                                                                {{__("Make an order")}}
                                                                                <i class="fa fa-arrow-right"></i>
                                                                            </button>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
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
            </div>
        </div>
    </div>
</div>
<!-- hs Slider End -->
<div class="x_responsive_form_wrapper x_responsive_form_wrapper2 float_left d-block d-sm-block d-md-block  d-lg-none d-xl-none">
    <div class="container">
        <div class="x_slider_form_main_wrapper float_left">
            <div class="x_slider_form_heading_wrapper float_left">
                <h3>{{__("Book a service")}}</h3>
            </div>
            <form>
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_slider_form_input_wrapper float_left">
                            <h3>{{__("Full name")}} *</h3>
                            <input type="text" name="name" placeholder="{{__("Enter your full name")}}" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="x_slider_form_input_wrapper float_left">
                            <h3>{{__("Phone Number")}} *</h3>
                            <input type="text" name="phone" placeholder="+994" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="x_slider_form_input_wrapper float_left">
                            <h3>{{__("Email adress")}}</h3>
                            <input type="email" name="email" placeholder="{{__("Enter your email")}}">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="x_slider_select">
                            <select class="myselect" name="service" required>
                                <option value="">{{__("Choose Service")}} *</option>
                                @foreach(\App\Service::all() as $service)
                                    <option value="{{ $service->id }}">{{ $service->getTranslatedAttribute("name") }}</option>
                                @endforeach
                            </select>
                            <i class="fa fa-bookmark-o"></i>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="x_slider_checkbox_bottom float_left">
                            <div class="x_slider_checout_left">
                                <ul>
                                    <li><i class="fa fa-check-circle"></i>&nbsp;&nbsp;{{__("24/7 Phone Support")}}</li>
                                    <li><i class="fa fa-check-circle"></i>&nbsp;&nbsp;{{__("No Credit Card Fees")}}</li>
                                </ul>
                            </div>
                            <div class="x_slider_checout_right">
                                <ul>
                                    <li>
                                        <button name="submit" type="submit" class="btn btn-success">
                                            {{__("Make an order")}}
                                            <i class="fa fa-arrow-right"></i>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

