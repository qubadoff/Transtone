<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use TCG\Voyager\Traits\Translatable;


class TechniqueCategory extends Model
{
    use Translatable;

    protected $table = 'technique_category';

    protected $fillable = [
        'name'
    ];

    protected $guarded = [];

    protected $translatable = [
        'name'
    ];

    public function techniques(): BelongsTo
    {
        return $this->belongsTo(Technique::class);
    }

}
