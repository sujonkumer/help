<?php

	namespace App\Http\Controllers;

	use App\User;
	use App\CuponCode;
	use App\MemberTree;
	use App\TopupBalance;
	use App\Traits\CouponTrait;
	use App\Traits\UserTrait;
	use App\Traits\MemberTreeTrait;
	use App\Http\Controllers\CuponCodeController\CouponCheck;
	use Illuminate\Http\Request;
	use App\Traits\TopupTrait;
	use Illuminate\Support\Facades\Hash;
	use Illuminate\Support\Facades\Validator;
	use Illuminate\Support\Facades\Auth;
	use App\Country;
	use App\Districts;
	use App\Divisions;
	use Image;
	use App\Traits\PointTrait;


	class UserController extends Controller
	{
		use CouponTrait,UserTrait,MemberTreeTrait,TopupTrait,PointTrait;

		public function __construct()
		{
			$this->middleware('auth')->except('logout');
        }

        // public function generateAdmin()
		// {
		// 	return;
		// 	for($i=1; $i<=1; $i++){
        //         $user =  new User();
        //         $user->type = 'Admin';
        //         $user->name = 'Admin';
        //         $user->mobile = '01785408231';
        //         $user->email = 'admin@admin.com';
        //         $user->password = Hash::make('12345678');
        //         $user->blood_group= 'o+';
        //         $user->country = 'Bangladesh';
        //         $user->city = 'Natore';
        //         $user->district = 'Natore';
        //         $user->thana = 'Singra';
        //         $user->state = '';
        //         $user->area = 'natore';
        //         $user->last_donate_time = '26-7-2020';
        //         $user->address = 'Singra,Natore,Bangladesh';
        //         $user->status = '0';
        //         $user->profile_picture = 'NULL';
        //         $user->save();



		// 	}
		// 	return;
		// }





		// public function NewMembersRegister(Request $request){

		// 	$request->validate([
		// 	'placement_id' => 'required',
		// 	'sponsor_id' => 'required',
		// 	'name' => 'required',
		// 	'username' => 'required',
		// 	'phone' => 'required',
		// 	'user_txn_pin' => 'required|max:6|min:4',
		// 	'password' => ['required','min:8'],
		// 	]);

		// 	$data['placement_id'] = $this->getIdByUsername($request->placement_id);
		// 	$data['sponsor_id'] = $this->getIdByUsername($request->sponsor_id);
		// 	$data['name'] = $request->name;
		// 	$data['email'] = $request->email;
		// 	$data['username'] = $request->username;
		// 	$data['phone'] = $request->phone;
		// 	$data['user_txn_pin'] = $request->user_txn_pin;
		// 	$data['txn_pin'] = $request->txn_pin;
		// 	$data['national_id'] =$request->national_id;
		// 	$data['password'] = $request->password;
		// 	$data['profile_picture'] = null;

		// 	if(!$this->getUsernameCheck($request->sponsor_id)){
		// 		return response()->json([
		// 		'status' => 'errors',
		// 		'message' => 'Sponsor Username Is Not Valid'
		// 		],422);
		// 	}

		// 	if($this->getPhoneCheck($data['phone'])){
		// 		return response()->json([
		// 		'status' => 'errors',
		// 		'message' => 'Mobile Number Already Exits'
		// 		],422);
		// 	}

		// 	if($this->getUsernameCheck($data['username'])){
		// 		return response()->json([
		// 		'status' => 'errors',
		// 		'message' => 'Username Already Exits'
		// 		],422);
		// 	}

		// 	if(!Auth::User()->is_signup_without_payment){
		// 		if($this->AvaliableTopupBalanceByUser()->topup_avaliable < config('mlm.registration_charge')){
		// 			return response()->json([
		// 			'status' => 'errors',
		// 			'message' => 'TopUp balance not available, you need more '.number_format(config('mlm.registration_charge') - $this->AvaliableTopupBalanceByUser()->topup_avaliable).' Tk'
		// 			],422);
		// 		}
		// 	}

		// 	if($this->getPlacementCheck($data['placement_id'],'l_id')){
		// 		$data['placement_position'] = 'l_id';
		// 		}elseif($this->getPlacementCheck($data['placement_id'],'r_id')){
		// 		$data['placement_position'] = 'r_id';
		// 		}else{
		// 		return response()->json([
		// 		'status' => 'errors',
		// 		'message' => 'Placement Position Is Not Available'
		// 		],422);
		// 	}

		// 	$newUser = new User();
		// 	$newUser->name = $data['name'];
		// 	$newUser->email = $data['email'];
		// 	$newUser->username = $data['username'];
		// 	$newUser->phone = $data['phone'];
		// 	$newUser->txn_pin = $data['user_txn_pin'];
		// 	$newUser->national_id = $data['national_id'];
		// 	$newUser->register_by = Auth::id();
		// 	$newUser->user_type = 'user';
		// 	$newUser->password = Hash::make($data['password']);
		// 	$newUser->save();
		// 	$newUser->assignRole('user');
		// 	$newMemberTree = new MemberTree();
		// 	$newMemberTree->user_id = $newUser->id;
		// 	$newMemberTree->sponsor_id = $data['sponsor_id'];
		// 	$newMemberTree->save();

		// 	MemberTree::where('user_id', $data['placement_id'])
		// 	->update([
		// 	$data['placement_position'] => $newUser->id,
		// 	]);

		// 	if(!Auth::User()->is_signup_without_payment){
		// 		TopupBalance::create([
		// 		'user_id' => Auth::User()->id,
		// 		'from_user_id' =>  $newUser->id,
		// 		'topup_amount' => config('mlm.registration_charge'),
		// 		'topup_type' => 'user',
		// 		'topup_flow' => 'out',
		// 		'topup_details' => 'Office Charge '.config('mlm.registration_charge').' Tk For '.$newUser->username.' Membership ID Card.',
		// 		'topup_generate_by' => Auth::User()->id,
		// 		'topup_status' => 'active'
		// 		]);
		// 		}else{
		// 		$newSignup = Auth::User()->is_signup_without_payment;
		// 		if($newSignup == 1){
		// 			$newSignup = null;
		// 			}else{
		// 			$newSignup = $newSignup - 1;
		// 		}
		// 		$newUserSignupUpdate = Auth::User();
		// 		$newUserSignupUpdate->is_signup_without_payment = $newSignup;
		// 		$newUserSignupUpdate->save();
		// 	}

		// 	return response()->json([
		// 	'status' => 'success',
		// 	'message' => 'Member Registration Successfully'
		// 	]);
		// }

		// public function generateIds()
		// {
		// 	return;
		// 	for($i=1; $i<100; $i++){
		// 		echo abs($i).'<br>';
		// 		$newUser = new User();
		// 		$newUser->name = 'Standard Global Private Ltd';
		// 		$newUser->email = 'info@Standard Global Private Ltd';
		// 		$newUser->username = 'standard0'.abs($i);
		// 		$newUser->phone = '00000000'.abs($i);
		// 		$newUser->address = 'Shariatpur, Bangladesh';
		// 		$newUser->city = 24;
		// 		$newUser->state = 5;
		// 		$newUser->country = 18;
		// 		$newUser->post_code = '6000';
		// 		$newUser->txn_pin = '123456';
		// 		$newUser->national_id = '12345678910'.abs($i);
		// 		$newUser->register_by = '1';
		// 		$newUser->user_type = 'user';
		// 		$newUser->profile_picture = null;

		// 		$newUser->password = Hash::make('splpass'.abs($i));
		// 		$newUser->save();

		// 		$newUser->assignRole('user');

		// 		$newMemberTree = new MemberTree();
		// 		$newMemberTree->user_id = $newUser->id;
		// 		$newMemberTree->sponsor_id = 1;
		// 		$newMemberTree->save();

		// 		MemberTree::where('user_id', ($newUser->id - 1))
		// 		->update([
		// 		'r_id' => $newUser->id,
		// 		]);

		// 	}
		// 	return;
		// }

		// public function getMemberCheck(Request $request)
		// {
		// 	$getUsersDetails = $this->getUsernameCheck($request->username);
		// 	if($getUsersDetails){
		// 		return response()->json([
		// 		'status' => 'success',
		// 		'message' => 'Name : '.$getUsersDetails->name
		// 		]);
		// 		}else{
		// 		return response()->json([
		// 		'status' => 'errors',
		// 		'message' => "Username Is Not Valid"
		// 		]);
		// 	}
		// }

		// public function MemberUpdate(Request $request)
		// {

		// 	$data = User::find($request->user_id);

		// 	$profile_picture = $data->profile_picture;

		// 	if($request->hasFile('profile_picture')){
		// 		$old_img = public_path('upload/user/'.$data->profile_picture);
		// 		if (file_exists($old_img)) {
		// 			@unlink($old_img);
		// 		}
		// 		$document = $request->file('profile_picture');
		// 		$profile_picture= $data->username. '.' . $document->getClientOriginalExtension();
		// 		Image::make($document)->resize(300,200)->save(public_path('upload/user/'.$profile_picture));
		// 	}
		// 	$data->name = $request->name;
		// 	$data->email = $request->email;
		// 	$data->phone = $request->phone;
		// 	$data->username = $request->username;
		// 	//			$data->address = $request->address;
		// 	//			$data->city = $request->city;
		// 	//			$data->state = $request->state;
		// 	//			$data->country = $request->country;
		// 	//			$data->post_code = $request->post_code;
		// 	$data->profile_picture = $request->profile_picture;

		// 	if(!empty($request->password)){
		// 		$data->txn_pin = $request->user_txn_pin;
		// 	}
		// 	$data->national_id = $request->national_id;
		// 	//			$data->register_by = $request->national_id;
		// 	//			$data->father_name = $request->father_name;
		// 	//			$data->mother_name = $request->mother_name;
		// 	//			$data->nomine_name = $request->nomine_name;

		// 	if($request->user_type == 'admin' ||  $request->user_type == 'accountant' || $request->user_type == 'manager'){
		// 		$data ->user_type = $request ->user_type ;
		// 		//				$data ->upazila = $request ->upazila;
		// 		//				$data ->user_union = $request ->user_union;
		// 	}
		// 	else{
		// 		$data->user_type = 'user';
		// 	}

		// 	$data->profile_picture = $profile_picture;
		// 	if(!empty($request->password)){
		// 		$data->password = Hash::make($request->password);
		// 	}

		// 	$data->save();
		// 	return response()->json([
		// 	'status' => 'success',
		// 	'message' => 'Member Updated Successfully'
		// 	]);
		// }


		// public function ChangePemiumStatus($id)
		// {
		// 	$data = User::find($id);
		// 	if($data->is_premium != null){
		// 		$data->is_premium = null;
		// 	}
		// 	else{
		// 		$data->is_premium = date('Y-m-d');
		// 	}
		// 	$data->save();
		// 	return redirect('admin/members');
		// }
		// public function ChangeBannedStatus($id)
		// {
		// 	$data = User::find($id);
		// 	if($data->is_banned != null){
		// 		$data->is_banned = null;
		// 	}
		// 	else{
		// 		$data->is_banned = date('Y-m-d');
		// 	}
		// 	$data->save();
		// 	return redirect('admin/members');
		// }

	}
