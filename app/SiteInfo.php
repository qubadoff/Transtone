<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class SiteInfo extends Model
{
    use Translatable;

    protected $table = 'site_info';

    protected $fillable = [
        'site_name',
        'site_description',
        'site_logo',
        'site_cover_photo',
        'why_us',
        'why_us_text'
    ];

    protected $guarded = [];

    protected $casts = [];

    protected $translatable = [
        'site_name',
        'site_description',
        'why_us',
        'why_us_text'
    ];
}
