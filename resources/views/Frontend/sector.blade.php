@extends('Frontend.Layouts.app')

@section('title')
    {{ __("Sectors") }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>{{__("Sectors")}}</h2>
            </header>
            <div class="d-flex" style="gap: 3rem">
                <div>
                    <div class="posts">
                        @forelse($sectors as $i)
                            <article>
                                <a href="{{ route("singleSector", ['slug' => $i->slug]) }}" class="image"><img src="{{ url('/') }}/storage/{{ $i->photo }}" alt=""></a>
                                <h3>{{ $i->getTranslatedAttribute("name") }}</h3>
                                <p>
                                    {!! $i->getTranslatedAttribute("description") !!}
                                </p>
                                <ul class="actions">
                                    <li><a href="{{ route("singleSector", ['slug' => $i->slug]) }}" class="button">{{__("Read more")}}</a></li>
                                </ul>
                            </article>
                        @empty
                            No Data !
                        @endforelse
                    </div>
                </div>
                <div class="banner_image-container">
                    <div class="banner_categories">
                        <h4 class="mb-4">{{__("Sectors")}}</h4>
                        <ul style="gap: 3rem" class="d-flex flex-column">
                            @foreach($sectors as $i)
                                <li class="banner_categories-button">
                                    <a style="color: #3a3a3a;" href="{{ route("singleSector", ['slug' => $i->slug]) }}">{{ $i->getTranslatedAttribute("name") }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection
