<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\HospitalSupport;
use App;
use App\User;

class HospitalSupportController extends Controller
{
    public function addHospital(Request $request){
        $request->validate([
            'name' => 'required',
            //'hospital_mobile' => 'required',
            //'ambulance_contact' => 'required',
            'location' => 'required',
            'hospital_status' => 'required'
        ]);
        if (!empty($request->hospital_id)) {
            $Hospital = HospitalSupport::find($request->hospital_id);
            $message = "Updated Successfully.";
            } else {
            $Hospital = new HospitalSupport;
            $message = "Saved Successfully.";
        }

        $Hospital->name = $request->name;
        $Hospital->hospital_mobile = $request->hospital_mobile;
        $Hospital->ambulance_contact = $request->ambulance_contact;
        $Hospital->location = $request->location;
        $Hospital->status = $request->hospital_status;
        $Hospital->save();
        //return back()->with($message,'disease_message','Hospital & Ambulance Info Saved Succesfully.');
        return response()->json([
            'message'=>'$message','icerik'=>'','durum'=>'success',
            'status' => 'success',
    		'message' => $message
    	]);
    }

    public function hospitalInfoList(){
        $HospitalSupport = HospitalSupport::select('id','name','hospital_mobile','ambulance_contact','location','status')->orderBy('id','desc');
        return Datatables::of($HospitalSupport)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (HospitalSupport $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm hospitalEdit"
            id="'.$data->id.'"
            name="'.$data->name.'"
            hospital_mobile="'.$data->hospital_mobile.'"
            ambulance_contact="'.$data->ambulance_contact.'"
            location="'.$data->location.'"
            status="'.$data->status.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm hospitalDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }



    public function hospitalDelete($id){
        HospitalSupport::find($id)->delete();
        return response()->json([
            'message'=>'Deleted Successfully','icerik'=>'','durum'=>'success',
            "status" => "success"
        ]);
    }

// Deshboard Hospital Support
    public function hospitalSupport(){
        return view('admin.hospital_support');
    }

    public function hospitalSupportList(){
        $HospitalSupport = HospitalSupport::select('id','name','hospital_mobile','ambulance_contact','location','status');
        return Datatables::of($HospitalSupport)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (HospitalSupport $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm hospitalEdit"
            id="'.$data->id.'"
            name="'.$data->name.'"
            hospital_mobile="'.$data->hospital_mobile.'"
            ambulance_contact="'.$data->ambulance_contact.'"
            location="'.$data->location.'"
            status="'.$data->status.'"
            >Edit</a>
            <a href="javascript:void(0)" class="btn btn-danger btn-sm hospitalDelete" id="'.$data->id.'">Delete</a>
            ';
        })
        ->toJson();
    }
}
