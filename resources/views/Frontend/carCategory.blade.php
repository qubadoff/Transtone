@extends('Frontend.Layouts.app')

@section('title')
    {{ $find_car_cat->getTranslatedAttribute("name") }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>{{__("Autopark")}}</h2>
            </header>
            <div class="d-flex" style="gap: 3rem">
                <div>
                    <div class="posts">
                        @forelse($cars as $i)
                            <article>
                                <a href="{{ route("singleCar", ['slug' => $i->slug]) }}" class="image"><img src="{{ url('/') }}/storage/{{ $i->photo_1 }}" alt="{{ $i->photo_1 }}"></a>
                                <h3>{{ $i->getTranslatedAttribute("name") }}</h3>
                                <p>
                                    {!! $i->getTranslatedAttribute("description") !!}
                                </p>
                                <ul class="actions">
                                    <li><a href="{{ route("singleCar", ['slug' => $i->slug]) }}" class="button">{{__("Read more")}}</a></li>
                                </ul>
                            </article>
                        @empty
                            <div class="alert alert-danger" role="alert">
                                No Data !
                            </div>
                        @endforelse
                    </div>
                </div>
                <div class="banner_image-container">
                    <div class="banner-img">
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
            </div>
        </section>
    </div>

@endsection
