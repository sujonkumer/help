<?php

namespace App\Traits;

use App\Withdrawal;
use App\MemberBonus;
use App\Point;
use Illuminate\Support\Facades\Auth;

trait IncomeTrait
{
    public function AvailableBalanceByUser()
    {
        $withdrawalUser = Withdrawal::where("user_id", Auth::User()->id)
            ->selectRaw("(COALESCE(SUM(CASE WHEN `withdrawal_status` != 'cancel' THEN withdrawal_amount END), 0)) AS `withdrawal`")
            ->first();

        $withdrawalOthers = Withdrawal::selectRaw("(COALESCE(SUM(CASE WHEN `withdrawal_status` != 'cancel' THEN insurance_amount END), 0)) AS `social_care`")
            ->first();
        $orderPoint = Point::whereNotNull("is_order")
            ->selectRaw("(COALESCE(SUM(CASE WHEN `point_flow` = 'in' THEN point_amount END), 0)) AS `order_point`")
            ->first();

        $leaderFamilyCare = (1 / 100 * $orderPoint->order_point);
        $leaderFamilyCare = $leaderFamilyCare * config("mlm.point_rate");

        $memberBonus = MemberBonus::where("user_id", Auth::User()->id)
            ->selectRaw("(COALESCE(SUM(amount), 0)) AS `total_bonus`")
            ->first();

        $memberBonus['current_balance'] = $memberBonus->total_bonus - $withdrawalUser->withdrawal;
        $memberBonus['withdrawal_amount'] = $withdrawalUser->withdrawal;
        $memberBonus['social_care'] = $withdrawalOthers->social_care;
        $memberBonus['leader_family_care'] = $leaderFamilyCare;
        return $memberBonus;
    }
}
