<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GovtWebsiteServices extends Model
{
    protected $fillable = [
        'id','website_name','website_link'
		];
}
