<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\ThanaServices;

class ThanaServiceController extends Controller
{
    public function ThanaServiceList(){
        $ThanaServices = ThanaServices::select('id','thana_name','thana_number','thana_location');
        return Datatables::of($ThanaServices)

        ->addColumn('action', function (ThanaServices $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm diseaseEdit"
            id="'.$data->id.'"
            thana_name="'.$data->thana_name.'"
            thana_number="'.$data->thana_number.'"
            thana_location="'.$data->thana_location.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
        }
}
