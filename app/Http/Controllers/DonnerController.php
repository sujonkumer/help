<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\Datatables\Datatables;
use App\Doner;
use App\User;

class DonnerController extends Controller
{
    public function donner(){
        return view('admin.donner');
    }

    public function addDonner(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'blood_group' => 'required',
            'district' => 'required',
            'city' => 'required',
            'country' => 'required',
            'thana' => 'required',
            'donner_status' => 'required'
        ]);

        if (!empty($request->donner_id)) {
            $User = User::find($request->donner_id);
            $message = "Updated Successfully.";
            } else {
            $User = new User;
            $message = "Saved Successfully.";
        }

        $User->name = $request->name;
        $User->email = $request->email;
        $User->mobile = $request->mobile;
        $User->blood_group = $request->blood_group;
        $User->country = $request->country;
        $User->district = $request->district;
        $User->city = $request->city;
        $User->thana = $request->thana;
        $User->status = $request->donner_status;
        $User->save();

        return response([
        'message'=>'$message','icerik'=>'','durum'=>'success',
        'status' => 'success',
        'message' => $message
        ]);
    }

    public function donnerList(){
        $User = User::select('id','name','email','mobile','blood_group','thana','country','status','district','city','status');
        return Datatables::of($User)
        ->addColumn('status', '@if($status == 0) Active @elseif($status == 1) InActive @else Cancel @endif')
        ->addColumn('action', function (User $data){
            return '<a href="javascript:void(0)" class="btn btn-info btn-sm donnerEdit"
            id="'.$data->id.'"
            name="'.$data->name.'"
            email="'.$data->email.'"
            mobile="'.$data->mobile.'"
            blood_group="'.$data->blood_group.'"
            country="'.$data->country.'"
            city="'.$data->city.'"
            district="'.$data->district.'"
            thana="'.$data->thana.'"
            status="'.$data->status.'"
            >Edit</a>
                    <a href="javascript:void(0)" class="btn btn-danger btn-sm donnerDelete" id="'.$data->id.'">Delete</a>';
        })
        ->toJson();
    }

    public function donnerDelete($id){
        User::find($id)->delete();
            return response()->json([
            'message'=>'Deleted Successfully','icerik'=>'','durum'=>'success',
            "status" => "success"
            ]);
    }
}
