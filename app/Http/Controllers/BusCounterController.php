<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\Datatables\Datatables;
use App\busCounter;
use App;
use App\User;

class BusCounterController extends Controller
{
    public function addCounter(Request $request){
        $request->validate([
            'counter_name' => 'required',
            'counter_mobile' => 'required',
            'counter_location' => 'required',
            'select_country' => 'required',
            'select_status' => 'required'
        ]);
        if (!empty($request->BusCounter_id)) {
            $Counter = busCounter::find($request->BusCounter_id);
            $message = "Updated Successfully.";
            } else {
            $Counter = new busCounter;
            $message = "Saved Succesfully.";
        }

        $Counter->counter_name = $request->counter_name;
        $Counter->counter_mobile = $request->counter_mobile;
        $Counter->counter_location = $request->counter_location;
        $Counter->country = $request->select_country;
        $Counter->status = $request->select_status;
        $Counter->save();
        //return back()->with($message,'disease_message','Disease and Medicine Saved Succesfully.');
        return response()->json([
            'message'=>'$message','icerik'=>'','durum'=>'success',
            'status' => 'success',
    		'message' => $message
    	]);
    }

    public function counterList(){
        $busCounter = busCounter::select('id','counter_name','counter_mobile','counter_location','country','status')->orderBy('id','desc');
        return Datatables::of($busCounter)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (busCounter $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm countrEdit"
            id="'.$data->id.'"
            counter_name="'.$data->counter_name.'"
            counter_mobile="'.$data->counter_mobile.'"
            counter_location="'.$data->counter_location.'"
            country="'.$data->country.'"
            status="'.$data->status.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }

    // public function counterDelete($id){
    //     busCounter::find($id)->delete();
    //     return response()->json([
    //         'message'=>'Deleted Successfully','icerik'=>'','durum'=>'success',
    //         "status" => "success"
    //     ]);
    // }





















// Deshboard Desease and Medicine
    public function diseaseMedicine(){
        return view('admin.disease_medicine');
    }

    public function diseaseAndMedicineList(){
        $busCounter = busCounter::select('id','disease_name','disease_medicine','dosage_and_usage_rules','status');
        return Datatables::of($busCounter)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (busCounter $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm diseaseEdit"
            id="'.$data->id.'"
            disease_name="'.$data->disease_name.'"
            disease_medicine="'.$data->disease_medicine.'"
            dosage_and_usage_rules="'.$data->dosage_and_usage_rules.'"
            status="'.$data->status.'"
            >Edit</a>
            <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
            ';
        })
        ->toJson();
    }
}
