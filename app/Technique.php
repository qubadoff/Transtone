<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use TCG\Voyager\Traits\Translatable;


class Technique extends Model
{
    use Translatable;

    protected $table = 'techniques';

    protected $fillable = [
        'name',
        'description',
        'body',
        'photo',
        'category_id'
    ];

    protected $guarded = [];

    protected $translatable = [
        'name',
        'description',
        'body'
    ];

    public function categories(): BelongsTo
    {
        return $this->belongsTo(TechniqueCategory::class);
    }

}
