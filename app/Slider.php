<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Slider extends Model
{
    protected $table = 'slider';

    protected $fillable = [
        'image',
        'order'
    ];

    protected $guarded = [];

    protected $casts = [];
}
