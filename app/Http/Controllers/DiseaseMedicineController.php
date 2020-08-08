<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\DiseaseMedicine;
use App;
use App\User;

class DiseaseMedicineController extends Controller
{
    public function addDisease(Request $request){
        $request->validate([
            'disease_name' => 'required',
            'disease_medicine' => 'required',
            'dosage_and_usage_rules' => 'required',
            'disease_status' => 'required'
        ]);
        if (!empty($request->Disease_id)) {
            $Disease = DiseaseMedicine::find($request->Disease_id);
            $message = "Updated Successfully.";
            } else {
            $Disease = new DiseaseMedicine;
            $message = "Saved Succesfully.";
        }

        $Disease->disease_name = $request->disease_name;
        $Disease->disease_medicine = $request->disease_medicine;
        $Disease->dosage_and_usage_rules = $request->dosage_and_usage_rules;
        $Disease->status = $request->disease_status;
        $Disease->save();
        //return back()->with($message,'disease_message','Disease and Medicine Saved Succesfully.');
        return response()->json([
            'message'=>'$message','icerik'=>'','durum'=>'success',
            'status' => 'success',
    		'message' => $message
    	]);
    }

    public function diseaseList(){
        $DiseaseMedicine = DiseaseMedicine::select('id','disease_name','disease_medicine','dosage_and_usage_rules','status')->orderBy('id','desc');
        return Datatables::of($DiseaseMedicine)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (DiseaseMedicine $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm diseaseEdit"
            id="'.$data->id.'"
            disease_name="'.$data->disease_name.'"
            disease_medicine="'.$data->disease_medicine.'"
            dosage_and_usage_rules="'.$data->dosage_and_usage_rules.'"
            status="'.$data->status.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm diseaseDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }

    public function diseaseDelete($id){
        DiseaseMedicine::find($id)->delete();
        return response()->json([
            'message'=>'Deleted Successfully','icerik'=>'','durum'=>'success',
            "status" => "success"
        ]);
    }
// Deshboard Desease and Medicine
    public function diseaseMedicine(){
        return view('admin.disease_medicine');
    }

    public function diseaseAndMedicineList(){
        $DiseaseMedicine = DiseaseMedicine::select('id','disease_name','disease_medicine','dosage_and_usage_rules','status');
        return Datatables::of($DiseaseMedicine)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (DiseaseMedicine $data){
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
