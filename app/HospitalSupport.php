<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HospitalSupport extends Model
{
    protected $fillable = [
        'id','name','hospital_mobile','ambulance_contact','location','status',
		];
}
