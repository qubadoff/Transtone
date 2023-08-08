@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : __("Site name"))

@section('content')
@include('Frontend.Layouts.includes.slider')
<!-- x booking Wrapper End -->
<div class="x_why_main_wrapper">
    <div class="x_why_img_overlay"></div>
    <div class="container">
        <div class="x_why_left_main_wrapper">
            <img src="{{ url('/') }}/storage/{{setting('site.why_us_photo')}}" alt="car_img">
        </div>
        <div class="x_why_right_main_wrapper">
            <h3>{{__("Why choose us")}}</h3>
            <p>
                @if(app()->getLocale() == "az")
                    {!! setting('site.why_us') !!}
                @elseif(app()->getLocale() == "en")
                    {!! setting('site.why_us_en') !!}
                @elseif(app()->getLocale() == "ru")
                    {!! setting('site.why_us_ru') !!}
                @else
                    {!! setting('site.why_us') !!}
                @endif
            </p>
            <ul>
                <li><a href="{{ route("page", ['slug' => 'why-choose-us']) }}">{{__("Read more")}} <i class="fa fa-arrow-right"></i></a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- btc team Wrapper End -->

<!-- Bizim xidmetler bolmesi -->
<div class="x_offer_car_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="x_offer_car_heading_wrapper float_left">
                    <h3>{{{__("Services")}}}</h3>
                </div>
            </div>
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
                                            <h2><a href="{{ route("singleCar", ['slug' => $service->slug]) }}">{{ $service->getTranslatedAttribute("name") }}</a></h2>
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
                            <div class="col-md-12">
                                <div class="x_tabs_botton_wrapper float_left">
                                    <ul>
                                        <li>
                                            <a href="{{ route("services") }}">{{__("See All Services")}}
                                                <i class="fa fa-arrow-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- xs offer car tabs End -->

<!-- 4 eded melumat bloku -->
<div class="x_slider_bottom_title_main_wrapper">
    @forelse($infotext as $info)
        <div class="x_slider_bottom_box_wrapper">
            <i class="{{ $info->icon_name }}"></i>
            <h3>
                {{ $info->getTranslatedAttribute("name") }}
            </h3>
            <p>
                {{ $info->getTranslatedAttribute("description") }}
            </p>
        </div>
    @empty
    @endforelse
</div>
<!-- xs Slider bottom title End -->

<!-- Masinlar bolmesi -->
<div class="x_offer_car_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="x_offer_car_heading_wrapper float_left">
                    <h3>{{{__("Our autopark")}}}</h3>
                </div>
            </div>
            <div class="col-md-12">
                <div class="tab-content">
                    <div id="home" class="tab-pane active">
                        <div class="row">
                            @forelse($cars as $car)
                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                        <div class="x_car_offer_starts float_left">
                                        </div>
                                        <div class="x_car_offer_img float_left">
                                            <img src="{{ url('/') }}/storage/{{ $car->photo_1 }}" style="width: 200px; height: 100px;" alt="img">
                                        </div>

                                        <div class="x_car_offer_heading float_left">
                                            <h2><a href="{{ route("singleCar", ['slug' => $car->slug]) }}">{{ $car->getTranslatedAttribute("name") }}</a></h2>
                                            <p>
                                                {{ $car->getTranslatedAttribute("description") }}
                                            </p>
                                        </div>
                                        <div class="x_car_offer_bottom_btn float_left">
                                            <ul>
                                                <li><a href="{{ route("reservation") }}">{{__("Book now")}}</a>
                                                </li>
                                                <li><a href="{{ route("singleCar", ['slug' => $car->slug]) }}">{{__("Read more")}}</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                No data !
                            @endforelse
                            <div class="col-md-12">
                                <div class="x_tabs_botton_wrapper float_left">
                                    <ul>
                                        <li>
                                            <a href="{{ route("car") }}">{{__("See All Cars")}}
                                                <i class="fa fa-arrow-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- xs offer car tabs End -->


<!-- x news latter Wrapper Start -->
<div class="x_news_letter_main_wrapper">
    <div class="container">
        <div class="x_news_contact_wrapper">
            <img src="{{ url('/') }}/assets/images/nl1.png" alt="news_img">
            <h4>{{__("Contact")}}
                <br>
                <span>
                    {{ setting('site.number') }}
                </span>
            </h4>
        </div>
        <div class="x_news_contact_second_wrapper">
        </div>
        @if(Session::has('success'))
            <script type="text/javascript">
                swal({
                    title: "Success",
                    text: "{{ Session::get('success') }}",
                    icon: "success",
                    button: "Ok",
                });
            </script>
        @endif
        @if(Session::has('error'))
            <script type="text/javascript">
                swal({
                    title: "Error",
                    text: "{{ Session::get('error') }}",
                    icon: "error",
                    button: "Ok",
                });
            </script>
        @endif
        <form action="{{ route("getSubscripter") }}" method="post">
            @csrf
            @method("post")
            <div class="x_news_contact_search_wrapper">
                <input type="email" name="email" placeholder="{{__("Email")}}">
                <button>
                    {{__("Subscribe")}}
                    <i class="fa fa-arrow-right"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- x news latter Wrapper End -->

<!-- xs offer car tabs Start -->
<div class="x_ln_car_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="x_ln_car_heading_wrapper float_left">
                    <h3>{{__("Latest news")}}</h3>
                </div>
            </div>
            <div class="col-md-12">
                <div class="btc_ln_slider_wrapper">
                    <div class="owl-carousel owl-theme">
                        @forelse(\TCG\Voyager\Models\Post::paginate(4) as $post)
                            <div class="item">
                                <div class="btc_team_slider_cont_main_wrapper">
                                    <div class="btc_ln_img_wrapper float_left">
                                        <img src="{{ url('/') }}/storage/{{ $post->image }}" alt="team_img1">
                                    </div>
                                    <div class="btc_ln_img_cont_wrapper float_left">
                                        <h4>
                                            <a href="{{ route("singleNews", ['slug' => $post->slug]) }}">
                                                {{ $post->getTranslatedAttribute("title") }}
                                            </a>
                                        </h4>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-calendar"></i> &nbsp; {{ date_format($post->created_at, 'Y-m-d') }}</a></li>
                                        </ul>
                                        <p>
                                            {{ $post->getTranslatedAttribute("excerpt") }}
                                        </p>
                                        <span>
                                            <a href="{{ route("singleNews", ['slug' => $post->slug]) }}">{{__("Read more")}} &nbsp;<i class="fa fa-angle-double-right"></i></a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        @empty
                            No Data !
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--js Start-->

@endsection
