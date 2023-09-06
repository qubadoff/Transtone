@extends('Frontend.Layouts.app')

@section('title')
    {{ $singleSector->getTranslatedAttribute('name') }}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major">
                <h2>
                    {{ $singleSector->getTranslatedAttribute('name') }}
                </h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    @if($singleSector->photo)
                        <span class="image main"><img src="{{ url('/') }}/storage/{{ $singleSector->photo }}" alt=""></span>
                    @endif

                    <p>
                        {!! $singleSector->getTranslatedAttribute("body") !!}
                    </p>
            </div>
        </section>
    </div>

@endsection
