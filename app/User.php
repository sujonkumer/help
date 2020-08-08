<?php

	namespace App;

	use Illuminate\Notifications\Notifiable;
	use Illuminate\Contracts\Auth\MustVerifyEmail;
	use Illuminate\Foundation\Auth\User as Authenticatable;
	use Spatie\Permission\Traits\HasRoles;

	class User extends Authenticatable
	{
		use Notifiable,HasRoles;

		/**
			* The attributes that are mass assignable.
			*
			* @var array
		*/
		protected $fillable = [
        'name','thana','email','area','last_donate_time','mobile','address','blood_group','district','city', 'state', 'country','status','type','profile_picture', 'password',
		];

		/**
			* The attributes that should be hidden for arrays.
			*
			* @var array
		*/
		protected $hidden = [
        'password', 'remember_token',
		];

		/**
			* The attributes that should be cast to native types.
			*
			* @var array
		*/
		protected $casts = [
        'email_verified_at' => 'datetime',
		];

		public function MemberTree()
		{
			return $this->hasOne('App\MemberTree','user_id','id');
		}

		public function ActivePackage()
		{
			return $this->hasOne('App\Package','id','package_id');
		}

		// public function State()
		// {
		// 	return $this->belongsTo('App\Divisions','state','id');
		// }

		// public function City()
		// {
		// 	return $this->belongsTo('App\Districts','city','id');
		// }

		public function Dealer()
		{
			return $this->hasOne('App\Dealer','user_id','id');
		}
	}
