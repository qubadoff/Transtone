@extends('Frontend.Layouts.app')
@section('pageTitle', isset($pageTitle) ? $pageTitle : $post->getTranslatedAttribute('title'))

@section('content')
<div class="btc_tittle_main_wrapper">
    <div class="btc_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                <div class="btc_tittle_left_heading">
                    <h1>
                        {{ $post->getTranslatedAttribute("title") }}
                    </h1>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                <div class="btc_tittle_right_heading">
                    <div class="btc_tittle_right_cont_wrapper">
                        <ul>
                            <li><a href="{{ route("index") }}">{{__("Home")}}</a>  <i class="fa fa-angle-right"></i></li>
                            <li>
                                {{__("News")}}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="x_blog_sidebar_main_wrapper float_left padding_tb_100">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="x_blog_left_side_wrapper float_left">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="lr_bc_first_box_main_wrapper">
                                <div class="lr_bc_first_box_img_wrapper">
                                    <img src="{{url('/')}}/storage/{{ $post->image }}" alt="blog_img">
                                </div>
                                <div class="lr_bc_first_box_img_cont_wrapper">
                                    <h2>
                                        {{ $post->getTranslatedAttribute('title') }}
                                    </h2>
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>&nbsp; <a href="#">{{ date_format($post->created_at, 'Y-m-d') }}</a>
                                        </li>
                                    </ul>
                                    <p>
                                        {!! $post->getTranslatedAttribute('body') !!}
                                    </p>
                                </div>
                                <div class="blog_single_social_icon float_left">
                                    <h3>Share Post :</h3>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="x_blog_right_side_wrapper float_left">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
                                <div class="jp_rightside_job_categories_heading">
                                    <h4>Latest Post</h4>
                                </div>
                                <div class="jp_rightside_career_main_content">
                                    @forelse(\TCG\Voyager\Models\Post::paginate(6) as $news)
                                    <div class="jp_rightside_career_content_wrapper">
                                        <div class="jp_rightside_career_img">
                                            <img src="{{ url('/') }}/storage/{{ $news->image }}" style="width: 70px; height: 70px;" alt="career_img">
                                        </div>
                                        <div class="jp_rightside_career_img_cont">
                                            <h4>
                                                <a href="{{ route("singleNews", ['slug' => $news->slug]) }}">
                                                    {{ $news->getTranslatedAttribute("title") }}
                                                </a>
                                            </h4>
                                            <p><i class="fa fa-calendar-o"></i> &nbsp;{{ date_format($news->created_at, 'Y-m-d') }}</p>
                                        </div>
                                    </div>
                                    @empty
                                        No data !
                                    @endforelse
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
