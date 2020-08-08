<?php
	
	namespace App\Traits;
	
	use App\MemberBonus;
	use Illuminate\Support\Facades\Auth;
	
	trait BonusTrait
	{
		public function AvaliableBonusByUser(){
			return MemberBonus::where("user_id", Auth::User()->id)
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'achiever' THEN amount END), 0)) AS `achiever`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'tcp' THEN amount END), 0)) AS `tcp`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'car' THEN amount END), 0)) AS `car`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'house' THEN amount END), 0)) AS `house`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'tour' THEN amount END), 0)) AS `tour`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'yp' THEN amount END), 0)) AS `yp`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'matching' THEN amount END), 0)) AS `matching`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'mega_matching' THEN amount END), 0)) AS `mega_matching`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'sponsor' THEN amount END), 0)) AS `sponsor`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'stockist_sponsor' THEN amount END), 0)) AS `stockist_sponsor`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `bonus_type` = 'stockist' THEN amount END), 0)) AS `stockist`")
			->selectRaw("(COALESCE(SUM(amount), 0)) AS `total_bonus`")
			->first();
		}
	}										