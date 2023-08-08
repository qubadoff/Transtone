<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class CarCategory extends Model
{
    use Translatable;

    protected $table = 'car_category';

    protected $fillable = [
        'name',
        'description',
        'photo',
        'slug',
    ];

    protected $guarded = [];

    protected $translatable = [
        'name',
        'description'
    ];
}
