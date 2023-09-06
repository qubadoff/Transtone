@extends('Frontend.Layouts.app')

@section('title')
    {{__("Autopark")}}
@endsection

@section('content')
    <div class="inner w-100">
        <!-- Header -->

        <!-- Section -->
        <section>
            <header class="major mt-5">
                <h2>{{__("Autopark")}}</h2>
            </header>
        </section>
        <section class="menu">
            <div class="menu-container">
                <div class="menu-btns">
                    <button type="button" class="menu-btn" id="all">{{__("All Cat")}}</button>

                    @forelse($car_cat as $i)
                        <button type="button" class="menu-btn" id="{{ $i->id }}">
                            {{ $i->getTranslatedAttribute("name") }}
                        </button>
                    @empty
                        No Data !
                    @endforelse
                </div>
                @forelse($cars as $i)
                    <div class="card-items">
                        <!-- item -->
                        <div class="card-item lorem1" id="{{ $i->categories->id }}">
                            <div class="row cards">
                                <div class="part_1">
                                    <div class="part">
                                        <h3>{{ $i->getTranslatedAttribute("name") }}</h3>
                                        <div class="card-img">
                                            <img src="{{ url('/') }}/storage/{{ $i->photo_1 }}" alt="card image">
                                        </div>
                                    </div>
                                </div>
                                <div class="part_2">
                                    <div class="card-img2">
                                        <img src="{{ url('/') }}/storage/{{ $i->photo_2 }}" alt="card image">
                                    </div>
                                </div>
                                <div class="part_3">
                                    <div class="card-content">
                                        <div class="table-body">
                                            <div class="table-body__item">
                                                <span>{{__("Width")}}</span>
                                                <span>
                                                    {{ $i->width }}  {{__("metr")}}
                                                </span>
                                            </div>
                                            <div class="table-body__item">
                                                <span>{{__("Length")}}</span>
                                                <span>
                                                    {{ $i->length }} {{__("m")}}
                                                </span>
                                            </div>
                                            <div class="table-body__item">
                                                <span>{{__("Height")}}</span>
                                                <span>
                                                    {{ $i->height }} {{__("m")}}
                                                </span>
                                            </div>
                                        </div>
                                        <div class="table-body">
                                            <div class="table-body__item">
                                                <span>{{__("Weight")}}</span>
                                                <span>
                                                    {{ $i->weight }} {{__("ton")}}
                                                </span>
                                            </div>
                                            <div class="table-body__item">
                                                <span>{{__("Capacity")}}</span>
                                                <span>
                                                    {{ $i->capacity }} m3
                                                </span>
                                            </div>
                                            <div class="table-body__item">
                                                <span>{{__("Pallets")}}</span>
                                                <span>
                                                    {{ $i->pallets }} {{__("eded")}}
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="card-item-purchase-btn">
                                <a href="{{ route("singleCar", ['slug' => $i->slug]) }}">
                                    {{__("Make an order")}}
                                </a>
                            </button>
                        </div>
                        <!-- end of item -->
                    </div>
                @empty
                    No Data !
                @endforelse
            </div>
        </section>
    </div>
@endsection
