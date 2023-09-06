@extends('Frontend.Layouts.app')

@section('title')
    {{ $car->getTranslatedAttribute('name') }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>
                    {{ $car->getTranslatedAttribute('name') }}
                </h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($car->photo_1)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $car->photo_1 }}" alt=""></span>
                    @endif

                    <p>
                        {!! $car->getTranslatedAttribute("body") !!}
                    </p>
                </div>
                <div class="banner_image-container">
                    <div class="banner_categories">
                        <h4 class="mb-4">{{__("Categories")}}</h4>
                        <ul style="gap: 3rem" class="d-flex flex-column">
                            @foreach($car_cat as $i)
                                <li class="banner_categories-button">
                                    <a style="color: #3a3a3a;" href="{{ route("carCategory", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("name") }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection
