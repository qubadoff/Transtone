<!DOCTYPE html>
<html>
<head>
    <title>
        @yield('title')
    </title>
    <meta charset="utf-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous"
    />
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="{{ url('/') }}/assets/css/main.css" />
</head>

<body class="is-preload">
<!-- Wrapper -->
<div id="wrapper">
    <!-- Main -->
    <div id="main">
        <div class="banner-slider">
            <select
                class="lang-picker"
                name="language-picker-select"
                id="language-picker-select"
            >
                <option lang="az" value="deutsch">AZ</option>
                <option lang="en" value="english">EN</option>
                <option lang="ru" value="francais">RU</option>
            </select>

            @yield('slider')

            <div class="slider-dots">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </div>

        @yield('content')

        <div class="section_footer d-flex flex-column w-100">
            <div class="section_footer-primary d-flex justify-content-around">
                <div class="footer_primary">
                    <h6>{{__("Contact Us")}}</h6>
                    <div class="footer_primary-contact-details d-flex flex-column">
                        <p><b>{{__("Location")}}</b>: {{ setting('site.location') }}</p>
                        <p><b>{{__("Email")}}</b>: {{ setting('site.email') }}</p>
                        <p><b>{{__("Phone")}}</b>: {{ setting('site.phone') }}</p>
                        <ul class="d-flex social-ul">
                            <li class="social-network-fb">
                                <a target="_blank" href="{{ setting('site.fb') }}" class="social-icons">
                                    <i class="fab fa-facebook-f" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="social-network-in">
                                <a target="_blank" href="{{ setting('site.instagram') }}" class="social-icons">
                                    <i class="fab fa-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="social-network-ins">
                                <a target="_blank" href="{{ setting('site.linkedin') }}" class="social-icons">
                                    <i class="fab fa-linkedin-in" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footer_primary">
                    <h6>{{__("Services")}}</h6>
                    <ul class="footer_primary-services">
                        @forelse(servicesFooter() as $i)
                            <li>
                                <a class="footer_primary-service-items" href="{{ route("singleService", ['slug' => $i->slug]) }}">
                                    {{ $i->getTranslatedAttribute("name") }}
                                </a>
                            </li>
                        @empty
                            No Data !
                        @endforelse
                </div>
                <div class="footer_primary">
                    <h6>{{__("Pages")}}</h6>
                    <ul class="footer_primary-services">
                        @forelse(pages() as $i)
                            <li>
                                <a class="footer_primary-service-items" href="{{ route("page", ['slug' => $i->slug]) }}">
                                    {{ $i->getTranslatedAttribute("title") }}
                                </a>
                            </li>
                        @empty
                            NO Data !
                        @endforelse
                    </ul>
                </div>
                <div class="footer_primary">
                    <h6>{{__("Blog")}}</h6>
                    <ul class="footer_primary-services">
                        @forelse(posts() as $i)
                            <li>
                                <a class="footer_primary-service-items" href="{{ route("page", ['slug' => $i->slug]) }}">
                                    {{ $i->getTranslatedAttribute("title") }}
                                </a>
                            </li>
                        @empty
                            NO Data !
                        @endforelse
                    </ul>
                </div>
            </div>
            <div class="section_footer-secondary">
                <h4>Copyright © {{ date("Y") }}</h4>
            </div>
        </div>
    </div>
    <!-- Sidebar -->
    <!-- burdan baslayir -->
    <div class="d-flex">
        <div id="sidebar">
            <div style="height: 100vh; position: sticky; top: 0" class="inner">
                <!-- LOGO -->
                <div>
                    <div class="logo">Transtone</div>
                    <nav id="menu" class="mt-5">
                        <header class="major">
                            <h2>
                                {{__("Menu")}}
                            </h2>
                        </header>
                        <ul>
                            <!-- ---------------------------    ana sehife     --------------------- -->
                            <li id="home-li">
                                <div class="d-flex align-center">
                                    <a href="#">
                                        {{__("Our Company")}}
                                    </a>
                                    <div id="home" style="width: 2rem; cursor: pointer" class="d-flex justify-content-center align-items-center mx-2">
                                        <i class="fas fa-caret-right pull-right fa-lg"></i>
                                    </div>
                                </div>
                            </li>
                            <div id="sidebar-menu">
                                <ul class="nav flex-column">
                                    <li class="nav-item dropdown">
                                        <div
                                            class="d-flex align-center nav-link dropdown-toggle"
                                        >
                                            <a href="{{ route("index") }}">{{__("Home")}}</a>
                                            <div
                                                id="home"
                                                style="width: 2rem; cursor: pointer"
                                                class="d-flex justify-content-center align-items-center mx-2"
                                            >
                                                <i class="fas fa-caret-down pull-right fa-lg"></i>
                                            </div>
                                        </div>
                                        <ul class="nav subnav">
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Haqqimizda</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Form</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Blog</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">QALEREYA</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            <!-- ---------------------------    about     --------------------- -->

                            <li id="home-li">
                                <div class="d-flex align-center">
                                    <a href="#">{{__("Services")}} </a>
                                    <div id="about" style="width: 2rem; cursor: pointer" class="d-flex justify-content-center align-items-center mx-2">
                                        <i class="fas fa-caret-right pull-right fa-lg"></i>
                                    </div>
                                </div>
                            </li>

                            <div id="sidebar-menu">
                                <ul class="nav flex-column">
                                    <li class="nav-item dropdown">
                                        <div class="d-flex align-center nav-link dropdown-toggle">
                                            <a href="about.html">{{__("Services")}}</a>
                                            <div id="about" style="width: 2rem; cursor: pointer" class="d-flex justify-content-center align-items-center mx-2">
                                                <i class="fas fa-caret-down pull-right fa-lg"></i>
                                            </div>
                                        </div>
                                        <ul class="nav subnav">
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">haqqimda</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">test</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">tes</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">test</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            <!-- ---------------------------    about bitir     --------------------- -->

                            <li><a href="{{ route("car") }}">{{__("Autopark")}}</a></li>
                            <li><a href="{{ route("sector") }}">{{__("Sectors")}}</a></li>
                            <li><a href="{{ route("gallery") }}">{{__("Media")}}</a></li>
                            <li><a href="{{ route("contact") }}">{{__("Contact Us")}}</a></li>
                        </ul>
                    </nav>
                </div>

                <!-- Menu -->

                <ul class="icons">
                    <li>
                        <a href="#" class="icon brands fa-twitter"
                        ><span class="label">Twitter</span></a
                        >
                    </li>
                    <li>
                        <a href="#" class="icon brands fa-facebook-f"
                        ><span class="label">Facebook</span></a
                        >
                    </li>
                    <li>
                        <a href="#" class="icon brands fa-instagram"
                        ><span class="label">Instagram</span></a
                        >
                    </li>
                </ul>
            </div>
        </div>
        <!-- ---------------------------    ana sehife mobile baslayir     --------------------- -->
        <div class="submenu" id="submenu">
            <div style="top: 0" class="position-sticky">
                <div
                    class="submenu_logo d-flex align-items-center justify-content-center"
                >
                    <div class="fa-2x">logo</div>
                </div>
                <div class="submenu_title">{{__("Our Company")}}</div>
                <ul class="submenu-list">
                    @forelse(pages() as $i)
                        <li class="submenu-per-list">
                            <a href="{{ route("page", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("title") }}</a>
                        </li>
                    @empty
                        No Data !
                    @endforelse
                </ul>
            </div>
        </div>
        <!-- ---------------------------    ana sehife mobile bitir     --------------------- -->

        <!-- ---------------------------    about mobile baslayir     --------------------- -->

        <div class="submenu" id="submenu-about">
            <div style="top: 0" class="position-sticky">
                <div
                    class="submenu_logo d-flex align-items-center justify-content-center"
                >
                    <div class="fa-2x">{{__("Transtone")}}</div>
                </div>
                <div class="submenu_title">{{__("Services")}}</div>
                <ul class="submenu-list">
                    @forelse(servicesFooter() as $i)
                        <li class="submenu-per-list">
                            <a href="{{ route("singleService", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("name") }}</a>
                        </li>
                    @empty
                        No Data !
                    @endforelse
                </ul>
            </div>
        </div>
        <!-- ---------------------------    about mobile bitir     --------------------- -->
    </div>
    <!-- Sidebar -->
    <!-- burda bitir  -->
</div>

<!-- Scripts -->
<script src="{{ url('/') }}/assets/js/jquery.min.js"></script>
<script src="{{ url('/') }}/assets/js/browser.min.js"></script>
<script src="{{ url('/') }}/assets/js/breakpoints.min.js"></script>
<script src="{{ url('/') }}/assets/js/util.js"></script>
<script src="{{ url('/') }}/js/swiper-bundle.min.js"></script>
<script src="{{ url('/') }}/assets/js/main.js"></script>
<script src="{{ url('/') }}/assets/js/slider.js"></script>
<script src="{{ url('/') }}/assets/js/submenu.js"></script>
</body>
</html>
