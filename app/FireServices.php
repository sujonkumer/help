<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FireServices extends Model
{
    protected $fillable = [
        'id','fire_service_name','fire_service_number','fire_service_location'
		];
}
