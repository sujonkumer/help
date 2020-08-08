<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\FireServices;

class FireServiceController extends Controller
{
    public function FireServiceList(){
        $FireServices = FireServices::select('id','fire_service_name','fire_service_number','fire_service_location');
        return Datatables::of($FireServices)

        ->addColumn('action', function (FireServices $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm diseaseEdit"
            id="'.$data->id.'"
            fire_service_name="'.$data->fire_service_name.'"
            fire_service_number="'.$data->fire_service_number.'"
            fire_service_location="'.$data->fire_service_location.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }
}
