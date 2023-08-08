<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class IndexTextInfo extends Model
{
    use Translatable;

    protected $table = 'index_text_info';

    protected $fillable = [
        'name',
        'description',
        'icon_name'
    ];

    protected $guarded = [];

    protected $translatable = [
        'name',
        'description'
    ];
}
