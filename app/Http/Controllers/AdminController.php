<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Auth;
use App\User;
use Image;
use Illuminate\Support\Carbon;

class AdminController extends Controller
{

   public function index(){
    //    Auth::user()->assignRole('admin');
       $data = Auth::user();
       $A_posative = User::where('blood_group','a+')->get();
       $A_negetive = User::where('blood_group','a-')->get();
       $B_posative = User::where('blood_group','b+')->get();
       $B_negetive = User::where('blood_group','b-')->get();
       $AB_posative = User::where('blood_group','ab+')->get();
       $AB_negetive = User::where('blood_group','ab-')->get();
       $O_posative = User::where('blood_group','o+')->get();
       $O_negetive = User::where('blood_group','o-')->get();

       return view('admin.index',compact('data','A_posative','A_negetive','B_posative','B_negetive','AB_posative','AB_negetive','O_posative','O_negetive'));
   }

   public function updataProfile(Request $request){
       $request->validate([
            'name' => 'required',
            'city' => 'required',
           // 'email' => 'required',
            'mobile' => 'required',
            'country' => 'required',
            'district' => 'required',
            'thana' => 'required',
            'area' => 'required',
            'last_donate_time'=> 'required',
            'blood_group' => 'required',
            'address' => 'required',
            'donenr_status' => 'required'
        ]);

        if($request->hasFile('profile_picture')){
            $document = $request->file('profile_picture');
            $profile_picture = 'Admin/images/profile_picture/'.$request->name.time() . '.' . $document->getClientOriginalExtension();
            Image::make($document)->resize(400,500)->save(public_path($profile_picture));
        }

       $ProfileData = Auth::user();
       $ProfileData->name = $request->name;
       $ProfileData->email = $request->email;
       $ProfileData->city = $request->city;
       $ProfileData->mobile = $request->mobile;
    //    $ProfileData->email = $request->email;
       $ProfileData->country = $request->country;
       $ProfileData->thana = $request->thana;
       $ProfileData->area = $request->area;
       $ProfileData->last_donate_time = $request->last_donate_time;
       $ProfileData->district = $request->district;
       $ProfileData->address = $request->address;
       $ProfileData->status = $request->donenr_status;
       if($request->hasFile('profile_picture')){
             $ProfileData->profile_picture = $profile_picture;
         }
        else {
            $ProfileData->profile_picture = "NULL";
        }
       $ProfileData->save();

       return back()->with('message','Profile Info Updated Successfully.');
   }

   public function changePassword(Request $request){
       $request->validate([
           'old_password' => 'required',
            'password' => ['required','min:8'],
       ]);

        $oldPassword = $request->old_password;
        $user_id = Auth::user()->id;
        $user = User::find($user_id);

        if(Hash::check($oldPassword, $user->password)){
            $user->password = Hash::make($request->password);
            $user->save();

                return redirect()->route('admin.index')->with('message','Your Password has been Updated Successfully');
            }
             else{
                     return redirect()->route('admin.index')->with('error_message','Old Password Does Not Match. Please Try Again.');
                 }
   }

   public function logOut(Request $request){
    $request->session()->flush();
    Auth::logout();
    return Redirect('/');
   }



}
