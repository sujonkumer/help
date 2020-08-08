<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\FBBloodGroup;
use App;
use App\User;
use PhpParser\Node\Expr\FuncCall;

class FBGroupControlller extends Controller
{

    public function FBBloodGroupAdd(Request $request){
        $request->validate([
            'group_name' => 'required',
            'blood_group_link' => 'required',
            'blood_group_status' => 'required'
        ]);
        if (!empty($request->FbBloodGroup_id)) {
            $FbBloodGroup = FBBloodGroup::find($request->FbBloodGroup_id);
            $message = "Updated Successfully.";
            } else {
            $FbBloodGroup = new FBBloodGroup;
            $message = "Saved Successfully.";
        }

        $FbBloodGroup->blood_group_name = $request->group_name;
        $FbBloodGroup->blood_group_link = $request->blood_group_link;
        $FbBloodGroup->status = $request->blood_group_status;
        $FbBloodGroup->save();
        //return back()->with($message,'disease_message','FB Blood Group Saved Succesfully.');
        return response()->json([
            'message'=>'$message','icerik'=>'','durum'=>'success',
            'status' => 'success',
    		'message' => $message
    	]);
    }

    public function FBGroupList(){
        $FBBloodGroup = FBBloodGroup::select('id','blood_group_name','blood_group_link','status')->orderBy('id','desc');
        return Datatables::of($FBBloodGroup)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (FBBloodGroup $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm FbBloodGroupEdit"
            id="'.$data->id.'"
            blood_group_name="'.$data->blood_group_name.'"
            blood_group_link="'.$data->blood_group_link.'"
            status="'.$data->status.'"
            >Edit</a>
            ';
            // <a href="javascript:void(0)" class="btn btn-danger btn-sm FBBloodGroupDelete" id="'.$data->id.'">Delete</a>
        })
        ->toJson();
    }


    public function FBBloodDelete($id){
        FBBloodGroup::find($id)->delete();
        return response()->json([
            "status" => "success",
            'message'=>'Deleted Successfully','icerik'=>'','durum'=>'success'
        ]);
    }
// Deshboard FB Blood Group
    public function FbBloodGroup(){
        return view('admin.fb_blood_broup');
    }

    public function FBBloodGroupList(){
        $FBBloodGroup = FBBloodGroup::select('id','blood_group_name','blood_group_link','status');
        return Datatables::of($FBBloodGroup)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (FBBloodGroup $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm FbBloodGroupEdit"
            id="'.$data->id.'"
            blood_group_name="'.$data->blood_group_name.'"
            blood_group_link="'.$data->blood_group_link.'"
            status="'.$data->status.'"
            >Edit</a>
            <a href="javascript:void(0)" class="btn btn-danger btn-sm FbGroupDelete" id="'.$data->id.'">Delete</a>
            ';
        })
        ->toJson();
    }
}
