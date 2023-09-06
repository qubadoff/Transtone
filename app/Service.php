<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Service extends Model
{
    use Translatable;

    protected $table = 'services';

    protected $guarded = [];

    protected $fillable = [
        'name',
        'description',
        'body',
        'image',
        'slug'
    ];

    protected $translatable = [
        'name',
        'description',
        'body'
    ];
}
