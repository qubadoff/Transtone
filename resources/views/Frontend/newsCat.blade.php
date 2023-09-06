@extends('Frontend.Layouts.app')

@section('title')
    {{ $find_news_cat->getTranslatedAttribute("name") }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>{{ $find_news_cat->getTranslatedAttribute("name") }}</h2>
            </header>
            <div class="d-flex" style="gap: 3rem">
                <div>
                    <div class="posts">
                        @forelse($news as $i)
                            <article>
                                <a href="{{ route("singleService", ['slug' => $i->slug]) }}" class="image"><img src="{{ url('/') }}/storage/{{ $i->image }}" alt=""></a>
                                <h3>{{ $i->getTranslatedAttribute("title") }}</h3>
                                <p>
                                    {!! $i->getTranslatedAttribute("excerpt") !!}
                                </p>
                                <ul class="actions">
                                    <li><a href="{{ route("singleService", ['slug' => $i->slug]) }}" class="button">{{__("Read more")}}</a></li>
                                </ul>
                            </article>
                        @empty
                            No Data !
                        @endforelse
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection
