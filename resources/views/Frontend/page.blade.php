@extends('Frontend.Layouts.app')

@section('title')
    {{ $page->getTranslatedAttribute('title') }}
@endsection

@section('content')
    <div class="inner">
        <section>
            <header class="major">
                <h2>Haqqimizda</h2>
            </header>

            <div class="d-flex" style="gap: 3rem">
                <div>
                    <span class="image main"><img src="{{ url('/') }}/storage/{{ $page->image }}" alt=""></span>

                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Ipsam autem voluptatem et corporis cupiditate, corrupti
                        doloremque officiis. Rem, voluptates optio ipsam animi et
                        nesciunt at deleniti sapiente laudantium omnis iure magnam
                        obcaecati ab beatae iusto consequuntur vitae quis. Veniam
                        asperiores facere ipsum a quaerat officiis incidunt soluta, ex
                        at nisi.
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Provident porro voluptatem, veniam illo possimus sit
                        cupiditate quos debitis. Reiciendis quibusdam eligendi id
                        molestias veniam doloremque dolorem, labore aut ratione
                        dignissimos nostrum quisquam quaerat animi pariatur asperiores
                        quas mollitia fugit ipsam sequi at rem, eos, eius atque
                        magnam! Earum accusamus voluptatibus optio nemo porro
                        doloribus officia et, aut id culpa fugit impedit tenetur quod
                        eius rerum similique! Veritatis blanditiis earum reiciendis
                        iure libero. Nemo distinctio odio asperiores, laudantium ea
                        praesentium maiores!
                    </p>
                </div>
            </div>
        </section>
    </div>

@endsection
