<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\MemberTree;
use App\Designation;
use App\MemberBonus;
use App\Point;
use Illuminate\Support\Carbon;

class Statement extends Command
{

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cron:statement:matching';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Member PV Generate by User';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */

    public function handle()
    {
        $totalMembers = MemberTree::all();
        $totalPoint = Point::where("point_flow", 'in');
        foreach ($totalMembers as $totalMember) {
            $totalPoint->selectRaw("(COALESCE(SUM(CASE WHEN `user_id` = '" . $totalMember->user_id . "' THEN point_amount END), 0)) AS `point_" . $totalMember->user_id . "`");
        }
        $totalPoint = $totalPoint->first();
        $this->info(json_encode($this->getCount(MemberTree::first()->user_id, $totalPoint)));
    }

    private function getCount($member, $totalPoint)
    {
        $getMember = MemberTree::where('user_id', $member)->first();

        $count = $totalPoint['point_' . $getMember->user_id];
        $countl = 0;
        $countr = 0;
        $totalMemberL = 0;
        $totalMemberR = 0;
        $totalMember = 0;
        $checkUpdate = false;

        foreach (config('mlm.incentives') as $value) {
            $totalPlan[$value['name']] = 0;
            $totalPlanL[$value['name']] = 0;
            $totalPlanR[$value['name']] = 0;
        }

        if (!empty($getMember['l_id'])) {
            $lId = $this->getCount($getMember['l_id'], $totalPoint);
            $totalMemberL += $lId['total_member'] + 1;
            $countl += $lId['total_point'];

            foreach (config('mlm.incentives') as $value) {
                if ($lId['member_designation'] == $value['name']) {
                    $totalPlanL[$value['name']] += $lId['total'][$value['name']] + 1;
                } else {
                    $totalPlanL[$value['name']] = $lId['total'][$value['name']];
                }
            }
        }

        if (!empty($getMember['r_id'])) {
            $rId = $this->getCount($getMember['r_id'], $totalPoint);
            $totalMemberR += $rId['total_member'] + 1;
            $countr += $rId['total_point'];

            foreach (config('mlm.incentives') as $value) {
                if ($rId['member_designation'] == $value['name']) {
                    $totalPlanR[$value['name']] += $rId['total'][$value['name']] + 1;
                } else {
                    $totalPlanR[$value['name']] = $rId['total'][$value['name']];
                }
            }
        }

        $count += $countl + $countr;
        $totalMember +=  $totalMemberL + $totalMemberR;

        foreach (config('mlm.incentives') as $value) {
            $totalPlan[$value['name']] +=  $totalPlanL[$value['name']] + $totalPlanR[$value['name']];
        }

        // Total Point Count
        if ($countl  > 0) {
            $getMember->l_point = $countl;
            $checkUpdate = true;
        } else {
            $getMember->l_point = null;
        }

        if ($countr > 0) {
            $getMember->r_point = $countr;
            $checkUpdate = true;
        } else {
            $getMember->r_point = null;
        }

        // Total Member Count
        if ($totalMemberL > 0) {
            $getMember->l_member = $totalMemberL;
            $checkUpdate = true;
        } else {
            $getMember->l_member = null;
        }

        if ($totalMemberR > 0) {
            $getMember->r_member = $totalMemberR;
            $checkUpdate = true;
        } else {
            $getMember->r_member = null;
        }

        if ($totalPoint['point_' . $getMember->user_id] > 0) {
            $getMember->p_point = $totalPoint['point_' . $getMember->user_id];
            $checkUpdate = true;
        } else {
            $getMember->p_point = null;
        }

        if ($countl >= 10 && $countr >= 10 && $getMember->last_matching < Carbon::now()->format('Y-m-d')) {
            $totalMachingPV = 0;
            if ($countl >= $countr) {
                $totalMachingPV = $countr;
            } elseif ($countl <= $countr) {
                $totalMachingPV = $countl;
            }

            // Flashing Condition
            if ($getMember['total_matching']) {
                $newMatching = $totalMachingPV - $getMember['total_matching'];
            } else {
                $newMatching = $totalMachingPV;
            }


            if ($newMatching > 0) {
                if ($newMatching >= config('mlm.daily_matching')) {
                    $matchingBonush = config('mlm.daily_matching');
                } else {
                    $matchingBonush = $newMatching;
                }
                //Matching Bonus
                if ($matchingBonush > 0) {

                    $matchingBonus = (config('mlm.matching_bonus_percentage') / 100) * $matchingBonush;
                    $matchingBonus = $matchingBonus * config('mlm.point_rate');

                    $memberBonusData = new MemberBonus();
                    $memberBonusData->bonus_type = 'matching';
                    $memberBonusData->user_id = $getMember['user_id'];
                    $memberBonusData->amount = $matchingBonus;
                    $memberBonusData->details = 'You have received ' . $matchingBonus . ' TK Matching Bonus for ' . $matchingBonush . ' Point';
                    $memberBonusData->save();

                    //Mega Matching Bonus
                    $megaMatchingBonus = (config('mlm.mega_bonus_percentage') / 100) * $matchingBonus;
                    if ($getMember['sponsor_id']) {
                        $memberBonusData = new MemberBonus();
                        $memberBonusData->bonus_type = 'mega_matching';
                        $memberBonusData->user_id = $getMember['sponsor_id'];
                        $memberBonusData->amount = $megaMatchingBonus;
                        $memberBonusData->details = 'You have received ' . $megaMatchingBonus . ' TK Leadership Bonus from ' . $getMember->Sponsor->username;
                        $memberBonusData->save();
                    }
                }

                $getMember->paid_matching = $matchingBonush + $getMember['paid_matching'];
                $getMember->total_matching = $totalMachingPV;
                $getMember->last_matching = Carbon::now();
                $checkUpdate = true;
            }

            //Designation Upgrade
            if (config('mlm.incentives.plan0.condition') <= $totalMachingPV) {
                $i = -1;
                foreach (config('mlm.incentives') as $key => $value) {

                    $planName = config('mlm.incentives.plan' . $i . '.name');

                    if (!$getMember['designation']) {
                        $planName = null;
                    }

                    if ($getMember['designation'] == $planName && $value['condition_type'] == 'matching' && $value['condition'] <= $totalMachingPV) {
                        $getMember->designation = $value['name'];
                        $getMember->incentive_start_from = Carbon::now();

                        $designationData = new Designation();
                        $designationData->user_id = $getMember['user_id'];
                        $designationData->designation_title = $value['title'];
                        $designationData->designation_name = $value['name'];
                        $designationData->status = 'active';
                        $designationData->save();
                        $checkUpdate = true;
                    } elseif ($getMember['designation'] == $value['condition_type'] && $this->getRatioCheck($totalPlanL[$planName], $totalPlanR[$planName], $value['l_condition'], $value['r_condition'])) {
                        $getMember->designation = $value['name'];
                        $getMember->incentive_start_from = Carbon::now();

                        $designationData = new Designation();
                        $designationData->user_id = $getMember['user_id'];
                        $designationData->designation_title = $value['title'];
                        $designationData->designation_name = $value['name'];
                        $designationData->status = 'active';
                        $designationData->save();
                        $checkUpdate = true;
                    }
                    $i++;
                }
            }
        }

        $totalMemberDetails = [
            'total_member' => $totalMember,
            'total_point' => $count,
            'total' => $totalPlan,
            'member_designation' => $getMember['designation']
        ];

        if ($checkUpdate) {
            $getMember->extra_data = json_encode($totalMemberDetails);
            $getMember->save();
        }

        return $totalMemberDetails;
    }

    private function getRatioCheck($lMember, $rMember, $lCondition, $rCondition)
    {
        $totalMember = $lMember + $rMember;
        $totalCondition = $lCondition + $rCondition;
        if ($totalCondition <= $totalMember) {
            if ($lMember > $rMember) {
                if ($lMember >= $lCondition && $rMember >= $rCondition) {
                    return true;
                }
            } else {
                if ($rMember >= $lCondition && $lMember >= $rCondition) {
                    return true;
                }
            }
        }
        return false;
    }
}
