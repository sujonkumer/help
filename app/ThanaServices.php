<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThanaServices extends Model
{
    protected $fillable = [
        'id','thana_name','thana_number','thana_location'
		];
}
