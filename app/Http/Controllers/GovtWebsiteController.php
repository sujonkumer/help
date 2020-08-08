<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\GovtWebsiteServices;

class GovtWebsiteController extends Controller
{
    public function GovtWebsiteList(){
        $GovtService = GovtWebsiteServices::select('id','website_name','website_link');
        return Datatables::of($GovtService)

        ->addColumn('action', function (GovtWebsiteServices $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm diseaseEdit"
            id="'.$data->id.'"
            website_name="'.$data->website_name.'"
            website_link="'.$data->website_link.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }
}
