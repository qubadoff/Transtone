<!-- x footer Wrapper Start -->
<div class="x_footer_bottom_main_wrapper float_left">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                <div class="x_footer_bottom_box_wrapper float_left">
                    @if(setting("site.footer_logo"))
                    <img src="{{ url('/') }}/storage/{{setting('site.footer_logo')}}" alt="logo">
                    @endif
                    <ul>
                        <li><a href="{{setting('site.fb')}}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="{{setting('site.instagram')}}" target="_blank"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="{{setting('site.linkedin')}}" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="x_footer_bottom_box_wrapper_second float_left">
                    <h3>{{__("Pages")}}</h3>
                    <ul>
                        <li><a href="{{ route("index") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Home")}}</a></li>
                        <li><a href="{{ route("page", ['slug' => 'about-us']) }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("About us")}}</a></li>
                        <li><a href="{{ route("services") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Services")}}</a></li>
                        <li><a href="{{ route("gallery") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Media")}}</a></li>
                        <li><a href="{{ route("sector") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Sector")}}</a></li>
                        <li><a href="{{ route("car") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Autopark")}}</a></li>
                        <li><a href="{{ route("techniques") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Techniques")}}</a></li>
                        <li><a href="{{ route("contact") }}"><i class="fa fa-long-arrow-right"></i> &nbsp; {{__("Contact")}}</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                <div class="x_footer_bottom_box_wrapper_third float_left">
                    <h3>{{__("Contact")}}</h3>
                    <div class="x_footer_bottom_icon_section float_left">
                        <div class="x_footer_bottom_icon">	<i class="flaticon-phone-call"></i>
                        </div>
                        <div class="x_footer_bottom_icon_cont">
                            <h4>{{__("Phone Number")}}</h4>
                            <p>{{ setting('site.number') }}</p>
                        </div>
                    </div>
                    <div class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
                        <div class="x_footer_bottom_icon x_footer_bottom_icon2">	<i class="flaticon-mail-send"></i>
                        </div>
                        <div class="x_footer_bottom_icon_cont">
                            <h4>{{__("Email")}}</h4>
                            <p><a href="mailto:{{ setting('site.email') }}" target="_blank">{{ setting('site.email') }}</a>
                            </p>
                        </div>
                    </div>
                    <div class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
                        <div class="x_footer_bottom_icon x_footer_bottom_icon3">	<i class="fa fa-map-marker"></i>
                        </div>
                        <div class="x_footer_bottom_icon_cont x_footer_bottom_icon_cont2">
                            <h4><a href="#">{{__("View On Map")}}</a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="{{ url('/') }}/assets/js/jquery-3.3.1.min.js"></script>
<script src="{{ url('/') }}/assets/js/bootstrap.min.js"></script>
<script src="{{ url('/') }}/assets/js/modernizr.js"></script>
<script src="{{ url('/') }}/assets/js/select2.min.js"></script>
<script src="{{ url('/') }}/assets/js/jquery.menu-aim.js"></script>
<script src="{{ url('/') }}/assets/js/jquery-ui.js"></script>
<script src="{{ url('/') }}/assets/js/jquery.nice-select.min.js"></script>
<script src="{{ url('/') }}/assets/js/owl.carousel.js"></script>
<script src="{{ url('/') }}/assets/js/own-menu.js"></script>
<script src="{{ url('/') }}/assets/js/jquery.bxslider.min.js"></script>
<script src="{{ url('/') }}/assets/js/jquery.magnific-popup.js"></script>
<script src="{{ url('/') }}/assets/js/xpedia.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
