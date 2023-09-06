@extends('Frontend.Layouts.app')

@section('title')
    {{__("Transtone")}}
@endsection


@section('slider')
    <div class="slideshow-container">
        @forelse(slider() as $i)
            <div class="mySlides fades">
                <img class="hero-slider-imgs" src="{{ url('/') }}/storage/{{ $i->image }}"/>
            </div>
        @empty
            No Data !
        @endforelse
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
                            <li><a href="{{ route("singleService", ['slug' => $i->slug]) }}" class="button">{{__("Read more")}}</a></li>
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
                            <br/>
                            <button style="padding: 2px 8px 8px 8px; width: 20%; margin: 8px">
                                <a href="{{ route("singleCar", ['slug' => $i->slug]) }}">{{__("Read more")}}</a>
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
