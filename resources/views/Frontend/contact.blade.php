@extends('Frontend.Layouts.app')

@section('title')
    {{__("Contact Us")}}
@endsection

@section('content')
    <div class="inner">
        <header id="header"></header>
        <header class="major mt-5">
            <h2>{{__("Contact Us")}}</h2>
        </header>
        <section>
            <div class="row gtr-200">
                <div class="col-md-6 col-12-medium col-xs-12">
                    <div class="alert alert-info" role="alert">
                        {{__("Leave a message")}}
                    </div>
                    <!-- Form -->
                    @if(Session::has('success'))
                        <div class="alert alert-success">
                            {{ Session::get('success') }}
                            @php
                                \Illuminate\Support\Facades\Session::forget('success');
                            @endphp
                        </div>
                    @endif
                    @if($errors->any())
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    @endif
                    <form method="post" action="{{ route("sendMessage") }}">
                        @csrf
                        @method('POST')
                        <div class="row gtr-uniform">
                            <div class="col-lg-6 col-sm-12">
                                <input type="text" name="name" id="demo-name" value="" placeholder="{{__("Name")}}" required>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <input type="text" name="surname" id="demo-email" value="" placeholder="{{__("Surname")}}" required>
                            </div>
                            <!-- Break -->
                            <div class="col-12">
                                <input type="email" name="email" id="demo-email" value="" placeholder="{{__("Email adress")}}" required>
                            </div>
                            <!-- Break -->
                            <div class="col-12">
                                <input type="text" name="phone" id="demo-email" value="" placeholder="{{__("Phone Number")}}" required>
                            </div>

                            <!-- Break -->
                            <div class="col-12">
                                <textarea name="message" id="message" placeholder="{{__("Write comment")}}" rows="6" required></textarea>
                            </div>
                            <!-- Break -->
                            <div class="col-12">
                                <ul class="actions">
                                    <li>
                                        <input type="submit" value="{{__("Send")}}" class="primary">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="d-flex flex-column col-xs-12 col-md-6">
                    <div class="contact-info">
                        <h3>{{__("Contact with Office")}}</h3>
                        <h4>{{__("Location")}}:</h4>
                        <p>{{ setting('site.location') }}</p>
                        <h4>{{__("Postal code")}}:</h4>
                        <p>{{ setting('site.post_index') }}</p>
                        <h4>{{__("Contact number")}}:</h4>
                        <p>{{ setting('site.phone') }}</p>
                        <h4>{{__("Email")}}:</h4>
                        <span>{{ setting('site.email') }}</span>
                    </div>
                    <div class="mt-5 contact-info">
                        <h3>{{__("For order")}}</h3>
                        <h4>{{__("Phone")}}:</h4>
                        <p>
                            {{ setting('site.phone_number_for_order') }}
                        </p>
                        <h4>{{__("Email")}}:</h4>
                        <span>{{ setting('site.Email_adress_for_order') }}</span>
                    </div>
                    <div class="mt-5 contact-info">
                        <h3>{{__("For ads")}}</h3>
                        <h4>{{__("Phone")}}:</h4>
                        <p>{{ setting('site.Phone_number_for_ads') }}</p>
                        <h4>{{__("Email")}}:</h4>
                        <span>{{ setting('site.Email_for_ads') }}</span>
                    </div>
                </div>
            </div>

            <div class="mt-5">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12156.2440604024!2d49.8286822!3d40.3853403!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d9be60052ab%3A0xd7852fa710c6b11a!2sCaspian%20Plaza!5e0!3m2!1str!2saz!4v1693791036265!5m2!1str!2saz" height="450" style="border: 0; width: 100%" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>
    </div>
@endsection
