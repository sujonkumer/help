<?php
	namespace App\Traits;
	use App\Orders;
	use Illuminate\Support\Facades\Auth;
	
	trait DealerTrait
	{
		public function AvaliableDealerPointByUser(){
			return Orders::where("order_delivery_from_user_id", Auth::User()->id)
			->where("order_delivery_from", 'dealer')
			->selectRaw("(COALESCE(SUM(CASE WHEN `order_delivery_status` = 'delivered' THEN order_total_point END), 0)) AS `delivered_pv`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `order_delivery_status` = 'pending' THEN order_total_point END), 0)) AS `pending_pv`")
			->selectRaw("(COALESCE(SUM(CASE WHEN `order_delivery_status` != 'cancel' THEN order_total_point END), 0)) AS `total_pv`")
			->first();
		}
	}																	