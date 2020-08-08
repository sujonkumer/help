<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DiseaseMedicine extends Model
{
    protected $fillable = [
        'id','disease_name','disease_medicine','dosage_and_usage_rules','status',
		];
}
