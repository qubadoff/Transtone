<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use TCG\Voyager\Traits\Translatable;


class Car extends Model
{
    use Translatable;

    protected $table = 'cars';

    protected $fillable = [
        'name',
        'description',
        'body',
        'width',
        'height',
        'length',
        'weight',
        'capacity',
        'pallets',
        'photo_1',
        'photo_2',
        'cat_id',
        'slug'
    ];

    protected $translatable = [
        'name',
        'description',
        'body'
    ];

    protected $guarded = [];

    public function categories(): BelongsTo
    {
        return $this->belongsTo(CarCategory::class, 'cat_id', 'id');
    }
}
