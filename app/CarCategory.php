<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
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

    public function cars(): HasMany
    {
        return $this->hasMany(Car::class);
    }
}
