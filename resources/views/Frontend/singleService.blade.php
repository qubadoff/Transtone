@extends('Frontend.Layouts.app')

@section('title')
    {{ $singleService->getTranslatedAttribute('name') }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>
                    {{ $singleService->getTranslatedAttribute('name') }}
                </h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($singleService->image)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $singleService->image }}" alt=""></span>
                    @endif

                    <p>
                        {!! $singleService->getTranslatedAttribute("body") !!}
                    </p>
                </div>
                <div class="banner_image-container">
                    <div class="banner_categories">
                        <h4 class="mb-4">{{__("Services")}}</h4>
                        <ul style="gap: 3rem" class="d-flex flex-column">
                            @foreach($service as $i)
                                <li class="banner_categories-button">
                                    <a style="color: #3a3a3a;" href="{{ route("singleService", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("name") }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection
