@extends('Frontend.Layouts.app')

@section('title')
    {{__("Transtone")}}
@endsection


@section('slider')
    <div class="slideshow-container">
        <div class="mySlides fades">
            <img
                class="hero-slider-imgs"
                src="https://img.freepik.com/free-photo/delivery-men-loading-carboard-boxes-van-while-getting-ready-shipment_637285-2289.jpg?w=1380&t=st=1693550528~exp=1693551128~hmac=bee76aff2795a2ff0bfeef6f80238f17bd3eebace98b7da45730cd3f1682a11c"
            />
        </div>

        <div class="mySlides fades">
            <img
                class="hero-slider-imgs"
                src="https://img.freepik.com/free-photo/young-happy-manual-worker-carrying-cardboard-boxes-delivery-van-while-communicating-with-his-colleagues_637285-1260.jpg?w=1380&t=st=1693550578~exp=1693551178~hmac=6f7d0ed1a03c6840941b260ce31af385102701e71957be92532b42fb4dbe2fe6"
            />
        </div>

        <div class="mySlides fades">
            <img
                class="hero-slider-imgs"
                src="https://img.freepik.com/free-photo/delivery-male-with-packages_23-2148869434.jpg?w=1380&t=st=1693550628~exp=1693551228~hmac=13ddb454cc83e7ec8c45bfc3747d7411189265809ce38b9149e23e1142628332"
            />
        </div>
    </div>
    <br />
@endsection

@section('content')
    <div class="inner">
        <!-- Section -->
        <section>
            <header class="major">
                <h2>{{__("Services")}}</h2>
            </header>

            <div class="posts">
                @forelse($services as $i)
                    <article>
                        <a href="{{ route("singleService", ['slug' => $i->slug]) }}" class="image">
                            <img src="{{ url('/') }}/storage/{{ $i->image }}" alt=""/></a>
                        <h3>
                            {{ $i->getTranslatedAttribute("name") }}
                        </h3>
                        <p>
                            {{ $i->getTranslatedAttribute("description") }}
                        </p>
                        <ul class="actions">
                            <li><a href="{{ route("singleService", ['slug' => $i->slug]) }}" class="button">{{__("Read More")}}</a></li>
                        </ul>
                    </article>
                @empty
                    No Data !
                @endforelse
            </div>

            <div style="display: flex; justify-content: center; padding: 35px" class="all-xidmet">
                <button style="padding: 1px 24px 10px 24px; border-radius: 5px">
                    <p class="xidmet" style="color: #ffc425"><a href="{{ route("services") }}">{{__("See All Services")}}</a> </p>
                </button>
            </div>
        </section>

        <!-- Section -->
        <section>
            <header class="major">
                <h2>
                    {{__("Autopark")}}
                </h2>
            </header>

            <!-- Slider-carousel -->
            <div class="wrapper">
                <i id="left" class="fa-solid fa-angle-left"></i>
                <ul class="carousel">
                    @forelse($cars as $i)
                        <li class="card">
                            <div class="img">
                                <img src="{{ url("/") }}/storage/{{ $i->photo_1 }}" alt="img" draggable="false"/>
                            </div>
                            <h2>{{ $i->getTranslatedAttribute("name") }}</h2>
                            <button style="padding: 2px 8px 8px 8px; width: 20%; margin: 8px">
                                <a href="{{ route("singleCar", ['slug' => $i->slug]) }}">{{__("Read More")}}</a>
                            </button>
                        </li>
                    @empty
                        No Data !
                    @endforelse
                </ul>
                <i id="right" class="fa-solid fa-angle-right"></i>
            </div>
        </section>
    </div>
@endsection
