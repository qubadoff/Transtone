<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Sector extends Model
{
    use Translatable;

    protected $table = 'sectors';

    protected $fillable = [
        'name',
        'description',
        'body',
        'slug',
        'photo',
        'photo_gallery'
    ];

    protected $guarded = [];

    protected $translatable = [
        'name',
        'description',
        'body',
    ];

    protected $casts = [
        'photo_gallery' => 'array'
    ];
}
