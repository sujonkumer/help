<?php

	namespace App\Http\Controllers\Auth;

	use App\User;
	use App\Http\Controllers\Controller;
	use Illuminate\Support\Facades\Hash;
	use Illuminate\Support\Facades\Validator;
	use Illuminate\Foundation\Auth\RegistersUsers;

	class RegisterController extends Controller
	{
		/*
			|--------------------------------------------------------------------------
			| Register Controller
			|--------------------------------------------------------------------------
			|
			| This controller handles the registration of new users as well as their
			| validation and creation. By default this controller uses a trait to
			| provide this functionality without requiring any additional code.
			|
		*/

		use RegistersUsers;

		/**
			* Where to redirect users after registration.
			*
			* @var string
		*/
		protected $redirectTo = '/';

		/**
			* Create a new controller instance.
			*
			* @return void
		*/
		public function __construct()
		{
			$this->middleware('guest');
		}

		/**
			* Get a validator for an incoming registration request.
			*
			* @param  array  $data
			* @return \Illuminate\Contracts\Validation\Validator
		*/
		protected function validator(array $data)
		{
			return Validator::make($data, [
			'name' => ['required', 'string', 'max:255'],
			'email' => ['required', 'string', 'email', 'max:255',],
            'mobile' => ['required', 'string', 'max:14', 'unique:users'],
            'blood_group' => ['required'],
            'country' => ['required'],
            'city' => ['required', 'string'],
            'district' => ['required', 'string'],
            'thana' => ['required', 'string'],
            'address' => ['required', 'string'],
            'area' => ['required','string'],
            'status' => ['required'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
			]);
		}

		/**
			* Create a new user instance after a valid registration.
			*
			* @param  array  $data
			* @return \App\User
		*/
		protected function create(array $data)
		{
			return User::create([
            'name' => $data['name'],
            'mobile' => $data['mobile'],
            'blood_group' => $data['blood_group'],
            'country' => $data['country'],
            'city' => $data['city'],
            'district' => $data['district'],
            'thana' => $data['thana'],
            'address' => $data['address'],
            'area' => $data['area'],
            'last_donate_time' => "NULL",
            'status' => $data['status'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
			]);
		}



	}
