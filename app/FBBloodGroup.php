<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FBBloodGroup extends Model
{
    protected $fillable = [
        'id','blood_group_name','blood_group_link','status',
		];
}
