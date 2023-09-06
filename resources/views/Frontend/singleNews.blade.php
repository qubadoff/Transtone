@extends('Frontend.Layouts.app')

@section('title')
    {{ $post->getTranslatedAttribute("title") }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>{{ $post->getTranslatedAttribute('title') }}</h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($post->image)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $post->image }}" alt=""></span>
                    @endif

                    <p>
                        {!! $post->getTranslatedAttribute("body") !!}
                    </p>
                </div>
            </div>
        </section>
    </div>

@endsection

