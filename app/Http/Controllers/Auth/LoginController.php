<?php

	namespace App\Http\Controllers\Auth;

	use App\Http\Controllers\Controller;
    use Illuminate\Foundation\Auth\AuthenticatesUsers;
    use Illuminate\Support\Facades\Hash;
    use Illuminate\Support\Facades\Auth;
    use App\User;

	class LoginController extends Controller
	{

		use AuthenticatesUsers;

		//protected $redirectTo = '/';
		protected $redirectTo = 'admin/';

		public function __construct()
		{
			$this->middleware('guest')->except('logout');
        }
        public function showLoginForm() {
            $donners = User::select('name','blood_group','last_donate_time','mobile','district','thana','status')->paginate(6);
                $users = User::all();
                if(count($users)>0){
                    return view('frontend.index');
                } else{
                    $user =  new User();
                    $user->type = 'Admin';
                    $user->name = 'Admin';
                    $user->mobile = '01785408231';
                    $user->email = 'admin@admin.com';
                    $user->password = Hash::make('12345678');
                    $user->blood_group= 'o+';
                    $user->country = 'Bangladesh';
                    $user->city = 'Natore';
                    $user->district = 'Natore';
                    $user->thana = 'Singra';
                    $user->state = '';
                    $user->area = 'Natore';
                    $user->last_donate_time = 'NULL';
                    $user->address = 'Singra,Natore,Bangladesh';
                    $user->status = '0';
                    $user->profile_picture = 'NULL';
                    $user->save();

                    return view('frontend.index',compact('donners'));
                }
            }


	}
