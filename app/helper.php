<?php

if (! function_exists("siteInfo"))
{
    function siteInfo()
    {
        $siteInfo = \App\SiteInfo::where('id', 1)->first();

        return $siteInfo;
    }
}

if (! function_exists("servicesFooter"))
{
    function servicesFooter()
    {
        $services = \App\Service::all();

        return $services;
    }
}

if (! function_exists("sectors"))
{
    function sectors()
    {
        $sectors = \App\Sector::all();

        return $sectors;
    }
}

if (! function_exists("pages"))
{
    function pages()
    {
        $pages = \TCG\Voyager\Models\Page::where('status', 'active')->get();

        return $pages;
    }
}

if (! function_exists("postsFooter"))
{
    function postsFooter()
    {
        $posts = \TCG\Voyager\Models\Post::where('status', 'published')->paginate(6);

        return $posts;
    }
}

if (! function_exists("slider"))
{
    function slider()
    {
        $slider = \App\Slider::orderBy('order', 'ASC')->get();

        return $slider;
    }
}
