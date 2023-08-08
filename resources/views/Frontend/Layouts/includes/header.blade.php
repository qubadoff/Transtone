<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="{{ url('/') }}/assets/images/loader.gif" id="preloader_image" alt="loader">
    </div>
</div>
<!-- x top header_wrapper Start -->
<div class="x_top_header_wrapper float_left">
    <div class="container">
        <div class="x_top_header_left_side_wrapper float_left">
            <p>{{__("Contact")}} : {{ setting('site.number') }}</p>
        </div>
        <div class="x_top_header_right_side_wrapper float_left">
            <div class="x_top_header_social_icon_wrapper">
                <ul>
                    @if(setting('site.fb'))
                        <li><a href="{{setting('site.fb')}}" target="_blank"><i class="fa fa-facebook-square"></i></a></li>
                    @endif
                    @if(setting('site.linkedin'))
                        <li><a href="{{setting('site.linkedin')}}" target="_blank"><i class="fa fa-instagram"></i></a></li>
                    @endif
                    @if(setting('site.instagram'))
                        <li><a href="{{setting('site.instagram')}}" target="_blank"><i class="fa fa-linkedin-square"></i></a></li>
                    @endif
                </ul>
            </div>
            <div class="x_top_header_all_select_box_wrapper">
                <ul>
                    <li>
                        <i class="fa fa-globe"></i>
                        @foreach(config('app.available_locales') as $locale)
                                <a href="{{ route(\Illuminate\Support\Facades\Route::currentRouteName(), ['locale' => $locale]) }}">
                                    {{ strtoupper($locale) }}
                                </a>
                        @endforeach
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- x top header_wrapper End -->
<!-- hs Navigation Start -->
<div class="hs_navigation_header_wrapper">
    <div class="container">
        <div class="row">
            <div class=" col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="hs_logo_wrapper d-none d-sm-none d-xs-none d-md-block">
                    <a href="{{ route("index") }}">
                        @if(setting("site.logo"))
                            <img src="{{ url('/') }}/storage/{{ setting('site.logo') }}" style="width: 100px; height: 80px;" class="img-responsive" alt="logo" title="Logo" />
                        @endif
                    </a>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 col-12">
                <nav class="hs_main_menu d-none d-sm-none d-xs-none d-md-block">
                    <ul>
                        <li> <a class="menu-button single_menu" href="{{ route("index") }}">{{__("Home")}}</a><li>
                        <li>
                            <div class="dropdown-wrapper menu-button"> <a class="menu-button" href="{{ route("page", ['slug' => 'about-us']) }}">{{__("About us")}}</a>
                                <div class="drop-menu">
                                    <a class="menu-button" href="{{ route("services") }}">{{__("Services")}}</a>
                                    <a class="menu-button" href="{{ route("gallery") }}">{{__("Media")}}</a>
                                </div>
                            </div>
                        </li>
                        <li> <a class="menu-button single_menu" href="{{ route("sector") }}">{{__("Sector")}}</a><li>
                        <li> <a class="menu-button single_menu" href="{{ route("car") }}">{{__("Autopark")}}</a><li>
                        <li> <a class="menu-button single_menu" href="{{ route("techniques") }}">{{__("Techniques")}}</a><li>
                        <li> <a class="menu-button single_menu" href="{{ route("contact") }}">{{__("Contact")}}</a><li>
                    </ul>
                </nav>
                <header class="mobail_menu d-none d-block d-xs-block d-sm-block d-md-none d-lg-none d-xl-none">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-6">
                                <div class="hs_logo">
                                    @if(setting("site.logo"))
                                    <a href={{ route("index") }}>
                                        <img src="{{ url('/') }}/storage/{{ setting("site.logo") }}" alt="Logo" title="Logo">
                                    </a>
                                    @endif
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-6">
                                <div class="cd-dropdown-wrapper">
                                    <a class="house_toggle" href="#0">
                                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="511.63px" height="511.631px" viewBox="0 0 511.63 511.631" style="enable-background:new 0 0 511.63 511.631;" xml:space="preserve">
												<g>
                                                    <g>
                                                        <path d="M493.356,274.088H18.274c-4.952,0-9.233,1.811-12.851,5.428C1.809,283.129,0,287.417,0,292.362v36.545
																	c0,4.948,1.809,9.236,5.424,12.847c3.621,3.617,7.904,5.432,12.851,5.432h475.082c4.944,0,9.232-1.814,12.85-5.432
																	c3.614-3.61,5.425-7.898,5.425-12.847v-36.545c0-4.945-1.811-9.233-5.425-12.847C502.588,275.895,498.3,274.088,493.356,274.088z" />
                                                        <path d="M493.356,383.721H18.274c-4.952,0-9.233,1.81-12.851,5.427C1.809,392.762,0,397.046,0,401.994v36.546
																	c0,4.948,1.809,9.232,5.424,12.854c3.621,3.61,7.904,5.421,12.851,5.421h475.082c4.944,0,9.232-1.811,12.85-5.421
																	c3.614-3.621,5.425-7.905,5.425-12.854v-36.546c0-4.948-1.811-9.232-5.425-12.847C502.588,385.53,498.3,383.721,493.356,383.721z" />
                                                        <path d="M506.206,60.241c-3.617-3.612-7.905-5.424-12.85-5.424H18.274c-4.952,0-9.233,1.812-12.851,5.424
																	C1.809,63.858,0,68.143,0,73.091v36.547c0,4.948,1.809,9.229,5.424,12.847c3.621,3.616,7.904,5.424,12.851,5.424h475.082
																	c4.944,0,9.232-1.809,12.85-5.424c3.614-3.617,5.425-7.898,5.425-12.847V73.091C511.63,68.143,509.82,63.861,506.206,60.241z" />
                                                        <path d="M493.356,164.456H18.274c-4.952,0-9.233,1.807-12.851,5.424C1.809,173.495,0,177.778,0,182.727v36.547
																	c0,4.947,1.809,9.233,5.424,12.845c3.621,3.617,7.904,5.429,12.851,5.429h475.082c4.944,0,9.232-1.812,12.85-5.429
																	c3.614-3.612,5.425-7.898,5.425-12.845v-36.547c0-4.952-1.811-9.231-5.425-12.847C502.588,166.263,498.3,164.456,493.356,164.456z
																	" />
                                                    </g>
                                                </g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
                                            <g></g>
											</svg>
                                    </a>
                                    <!-- .cd-dropdown -->
                                </div>
                                <nav class="cd-dropdown">
                                    <h2><a href="{{ route("index") }}">Transtone</a></h2>
                                    <a href="#0" class="cd-close">Close</a>
                                    <ul class="cd-dropdown-content">
                                        <li> <a href="{{ route("index") }}">{{__("Home")}}</a></li>
                                        <li> <a href="{{ route("page", ['slug' => 'about-us']) }}">{{__("About us")}}</a></li>
                                        <li> <a href="{{ route("services") }}">{{__("Services")}}</a></li>
                                        <li> <a href="{{ route("gallery") }}">{{__("Media")}}</a></li>
                                        <li> <a href="{{ route("sector") }}">{{__("Sector")}}</a></li>
                                        <li> <a href="{{ route("car") }}">{{__("Autopark")}}</a></li>
                                        <li> <a href="{{ route("techniques") }}">{{__("Techniques")}}</a></li>
                                        <li> <a href="{{ route("contact") }}">{{__("Contact")}}</a></li>
                                    </ul>
                                    <!-- .cd-dropdown-content -->
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- .cd-dropdown-wrapper -->
                </header>
            </div>
        </div>
    </div>
</div>
<!-- hs Navigation End -->
