@extends('Frontend.Layouts.app')

@section('title')
    {{ $techniquesSingle->getTranslatedAttribute('name') }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>
                    {{ $techniquesSingle->getTranslatedAttribute('name') }}
                </h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($techniquesSingle->photo)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $techniquesSingle->photo }}" alt=""></span>
                    @endif

                    <p>
                        {!! $techniquesSingle->getTranslatedAttribute("body") !!}
                    </p>
                </div>
                <div class="banner_image-container">
                    <div class="banner-img">
                        <div class="banner_categories">
                            <h4 class="mb-4">{{__("Categories")}}</h4>
                            <ul style="gap: 3rem" class="d-flex flex-column">
                                @foreach($technique_cat as $i)
                                    <li class="banner_categories-button">
                                        <a style="color: #3a3a3a;" href="{{ route("techniquesCatSingle", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("name") }}</a>
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
