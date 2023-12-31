@extends('Frontend.Layouts.app')

@section('title')
    {{ $page->getTranslatedAttribute('title') }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>{{ $page->getTranslatedAttribute('title') }}</h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($page->image)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $page->image }}" alt=""></span>
                    @endif

                    <p>
                        {!! $page->getTranslatedAttribute("body") !!}
                    </p>
                </div>
            </div>
        </section>
    </div>

@endsection
