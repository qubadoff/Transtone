<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Reservation extends Model
{
    protected $table = 'reservations';

    protected $fillable = [
        'name',
        'email',
        'phone',
        'service_id',
        'car_id',
        'pickup_date',
        'dropoff_date',
        'pickup_location',
        'dropoff_location',
        'company_name',
        'message',
    ];

    protected $guarded = [];
}
