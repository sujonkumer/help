<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class busCounter extends Model
{
    protected $fillable = [
        'id','counter_name','counter_mobile','counter_location','country','status',
		];
}
