@extends('Frontend.Layouts.app')

@section('title')
    {{__("Media")}}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <section>
            <header class="major mt-5">
                <h2>{{__("Media")}}</h2>
            </header>

            <div class="wrapper">
                <div class="gallery">
                    @forelse($images as $i)
                        <div class="image">
                            <span>
                                <a href="{{ url('/') }}/storage/{{ $i->image }}" target="_blank">
                                    <img src="{{ url('/') }}/storage/{{ $i->image }}" alt="{{ $i->image }}">
                                </a>
                            </span>
                        </div>
                    @empty
                        No Data !
                    @endforelse
                </div>
            </div>
        </section>
    </div>
@endsection
