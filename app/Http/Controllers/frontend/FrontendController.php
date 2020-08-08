<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Crypt;
use App\User;
use Auth;
use Image;
use Illuminate\Support\Carbon;

class FrontendController extends Controller
{
    public function index(Request $request){

        $donners = User::select('name','blood_group','last_donate_time','mobile','district','area','status')->orderBy('id','desc')->paginate(6);

        $A_posative = User::where('blood_group','a+')->get();
        $A_negetive = User::where('blood_group','a-')->get();
        $B_posative = User::where('blood_group','b+')->get();
        $B_negetive = User::where('blood_group','b-')->get();
        $AB_posative = User::where('blood_group','ab+')->get();
        $AB_negetive = User::where('blood_group','ab-')->get();
        $O_posative = User::where('blood_group','o+')->get();
        $O_negetive = User::where('blood_group','o-')->get();

        if(count($donners)>0){
            return view('frontend.index',compact('donners','A_posative','A_negetive','B_posative','B_negetive','AB_posative','AB_negetive','O_posative','O_negetive'));
        } else{
            $user =  new User();
            $user->type = 'Admin';
            $user->name = 'Sujon Kumer';
            $user->mobile = '01785408231';
            $user->email = 'admin@admin.com';
            $user->password = Hash::make('12345678');
            $user->blood_group= 'o+';
            $user->country = 'Bangladesh';
            $user->city = 'Natore';
            $user->district = 'Natore';
            $user->thana = 'Singra';
            $user->state = '';
            $user->area = 'Singra';
            $user->last_donate_time = 'NULL';
            $user->address = 'Singra,Natore';
            $user->status = '0';
            $user->profile_picture = 'NULL';
            $user->save();
        }


        return view('frontend.index',compact('donners','A_posative','A_negetive','B_posative','B_negetive','AB_posative','AB_negetive','O_posative','O_negetive'));

    }


    public function search(Request $request){
        $blood_group_search = $request->blood_group_search;
        $search_district = $request->search_district;
        $area = $request->area;
        // return $area;

        $donners = User::where('status',0)->where('district',$search_district)->where('blood_group',$blood_group_search)->where('area', 'like', '%' . $area . '%')->paginate(10);
        return view('frontend.search',compact('donners'));
    }

}


