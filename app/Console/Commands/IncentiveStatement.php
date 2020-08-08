<?php
	
	namespace App\Console\Commands;
	
	use Illuminate\Console\Command;
	use App\MemberTree;
	use App\IncentiveSetting;
	use Illuminate\Support\Carbon;
	use App\MemberBonus;
	
	class IncentiveStatement extends Command
	{
		/**
			* The name and signature of the console command.
			*
			* @var string
		*/
		protected $signature = 'cron:statement:incentive';
		
		/**
			* The console command description.
			*
			* @var string
		*/
		protected $description = 'Member Incentive Bonus Update';
		
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
			$this->info(json_encode($this->getMemberBonus()));
		}
		
		
		private function getMemberBonus()
		{
			$getMembers = MemberTree::whereNotNull('designation')->whereNotNull('incentive_start_from')->get();
			
			$checkUpdate = false;
			$checkUpdateExtra = false;
			foreach($getMembers as $key => $getMember){
				if(Carbon::parse($getMember['incentive_start_from'])->format('y-m-d') < Carbon::now()->format('y-m-d')){
					//Achiever Income
					if($getMember->MemberIncentiveSetting->type == 'achiever' && $getMember->designation != 'pp'){
						if(Carbon::parse($getMember['last_incentive'])->add($getMember->MemberIncentiveSetting->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($getMember->MemberIncentiveSetting->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
							$getMember->last_incentive = Carbon::now();
							$checkUpdate = true;
							$getMember->MemberIncentiveSetting->last_incentive = Carbon::now();
							$getMember->MemberIncentiveSetting->next_incentive = Carbon::now()->add($getMember->MemberIncentiveSetting->period, 'month');
							if($getMember->MemberIncentiveSetting->pay_amount){
								$achieverBonusData = new MemberBonus();
								$achieverBonusData->bonus_type = 'achiever';
								$achieverBonusData->user_id = $getMember['user_id'];
								$achieverBonusData->incentive_type = $getMember->MemberIncentiveSetting->designation;
								$achieverBonusData->amount = $getMember->MemberIncentiveSetting->pay_amount;
								$achieverBonusData->details = 'You have received '.$getMember->MemberIncentiveSetting->pay_amount.' TK from '.$getMember->MemberIncentiveSetting->title;
								$achieverBonusData->save();
							}
						}
						
						if($getMember->designation == 'ssm' || $getMember->designation == 'agm' || $getMember->designation == 'dgm' || $getMember->designation == 'gm' || $getMember->designation == 'ba'){
							$ExtraIncentive = IncentiveSetting::where('type','tpc')->first();
							if(Carbon::parse($getMember['last_royalty_incentive'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_royalty_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
								if($ExtraIncentive->pay_amount){
									$fundBonusData = new MemberBonus();
									$fundBonusData->bonus_type = $ExtraIncentive->type;
									$fundBonusData->user_id = $getMember['user_id'];
									$fundBonusData->incentive_type = $ExtraIncentive->type;
									$fundBonusData->amount = $ExtraIncentive->pay_amount;
									$fundBonusData->details = 'You have received '.$ExtraIncentive->pay_amount.' TK from '.$ExtraIncentive->title;
									$fundBonusData->save();
								}
								
								$getMember->last_royalty_incentive = Carbon::now();
								$checkUpdate = true;
								$checkUpdateExtra = true;
								$ExtraIncentive->last_incentive = Carbon::now();
								$ExtraIncentive->next_incentive = Carbon::now()->add($ExtraIncentive->period, 'month');
								
							}
						}
						
						if($getMember->designation == 'agm' || $getMember->designation == 'dgm' || $getMember->designation == 'gm' || $getMember->designation == 'ba'){
							$ExtraIncentive = IncentiveSetting::where('type','car')->first();
							if(Carbon::parse($getMember['last_royalty_incentive'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_royalty_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
								if($ExtraIncentive->pay_amount){
									$fundBonusData = new MemberBonus();
									$fundBonusData->bonus_type = $ExtraIncentive->type;
									$fundBonusData->user_id = $getMember['user_id'];
									$fundBonusData->incentive_type = $ExtraIncentive->type;
									$fundBonusData->amount = $ExtraIncentive->pay_amount;
									$fundBonusData->details = 'You have received '.$ExtraIncentive->pay_amount.' TK from '.$ExtraIncentive->title;
									$fundBonusData->save();
								}
								
								$getMember->last_royalty_incentive = Carbon::now();
								$checkUpdate = true;
								$checkUpdateExtra = true;
								$ExtraIncentive->last_incentive = Carbon::now();
								$ExtraIncentive->next_incentive = Carbon::now()->add($ExtraIncentive->period, 'month');
								
							}
						}
						
						if($getMember->designation == 'dgm' || $getMember->designation == 'gm' || $getMember->designation == 'ba'){
							$ExtraIncentive = IncentiveSetting::where('type','hf')->first();
							if(Carbon::parse($getMember['last_royalty_incentive'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_royalty_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
								if($ExtraIncentive->pay_amount){
									$fundBonusData = new MemberBonus();
									$fundBonusData->bonus_type = $ExtraIncentive->type;
									$fundBonusData->user_id = $getMember['user_id'];
									$fundBonusData->incentive_type = $ExtraIncentive->type;
									$fundBonusData->amount = $ExtraIncentive->pay_amount;
									$fundBonusData->details = 'You have received '.$ExtraIncentive->pay_amount.' TK from '.$ExtraIncentive->title;
									$fundBonusData->save();
								}
								
								$getMember->last_royalty_incentive = Carbon::now();
								$checkUpdate = true;
								$checkUpdateExtra = true;
								$ExtraIncentive->last_incentive = Carbon::now();
								$ExtraIncentive->next_incentive = Carbon::now()->add($ExtraIncentive->period, 'month');
								
							}
						}
						
						if($getMember->designation == 'gm' || $getMember->designation == 'ba'){
							$ExtraIncentive = IncentiveSetting::where('type','wt')->first();
							if(Carbon::parse($getMember['last_royalty_incentive'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_royalty_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
								if($ExtraIncentive->pay_amount){
									$fundBonusData = new MemberBonus();
									$fundBonusData->bonus_type = $ExtraIncentive->type;
									$fundBonusData->user_id = $getMember['user_id'];
									$fundBonusData->incentive_type = $ExtraIncentive->type;
									$fundBonusData->amount = $ExtraIncentive->pay_amount;
									$fundBonusData->details = 'You have received '.$ExtraIncentive->pay_amount.' TK from '.$ExtraIncentive->title;
									$fundBonusData->save();
								}
								
								$getMember->last_royalty_incentive = Carbon::now();
								$checkUpdate = true;
								$checkUpdateExtra = true;
								$ExtraIncentive->last_incentive = Carbon::now();
								$ExtraIncentive->next_incentive = Carbon::now()->add($ExtraIncentive->period, 'month');
								
							}
						}
						
						if($getMember->designation == 'ba'){
							$ExtraIncentive = IncentiveSetting::where('type','yp')->first();
							if(Carbon::parse($getMember['last_royalty_incentive'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_royalty_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($ExtraIncentive->period, 'month')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
								if($ExtraIncentive->pay_amount){
									$fundBonusData = new MemberBonus();
									$fundBonusData->bonus_type = $ExtraIncentive->type;
									$fundBonusData->user_id = $getMember['user_id'];
									$fundBonusData->incentive_type = $ExtraIncentive->type;
									$fundBonusData->amount = $ExtraIncentive->pay_amount;
									$fundBonusData->details = 'You have received '.$ExtraIncentive->pay_amount.' TK from '.$ExtraIncentive->title;
									$fundBonusData->save();
								}
								
								$getMember->last_royalty_incentive = Carbon::now();
								$checkUpdate = true;
								$checkUpdateExtra = true;
								$ExtraIncentive->last_incentive = Carbon::now();
								$ExtraIncentive->next_incentive = Carbon::now()->add($ExtraIncentive->period, 'month');
							}
						}
						if($checkUpdateExtra){
							$ExtraIncentive->save();
						}
					}
					
					//PP Achiever Income
					if($getMember->MemberIncentiveSetting->type == 'achiever' && $getMember->MemberIncentiveSetting->designation == 'pp'){
						if(Carbon::parse($getMember['last_incentive'])->add($getMember->MemberIncentiveSetting->period, 'day')->format('y-m-d') <= Carbon::now()->format('y-m-d') || !$getMember['last_incentive'] && Carbon::parse($getMember['incentive_start_from'])->add($getMember->MemberIncentiveSetting->period, 'day')->format('y-m-d') <= Carbon::now()->format('y-m-d')){
							$getMember->last_incentive = Carbon::now();
							$checkUpdate = true;
							$getMember->MemberIncentiveSetting->last_incentive = Carbon::now();
							$getMember->MemberIncentiveSetting->next_incentive = Carbon::now()->add($getMember->MemberIncentiveSetting->period, 'month');
							if($getMember->MemberIncentiveSetting->pay_amount){
								$achieverBonusData = new MemberBonus();
								$achieverBonusData->bonus_type = 'achiever';
								$achieverBonusData->user_id = $getMember['user_id'];
								$achieverBonusData->incentive_type = $getMember->MemberIncentiveSetting->designation;
								$achieverBonusData->amount = $getMember->MemberIncentiveSetting->pay_amount;
								$achieverBonusData->details = 'You have received '.$getMember->MemberIncentiveSetting->pay_amount.' TK from '.$getMember->MemberIncentiveSetting->title;
								$achieverBonusData->save();
							}
						}
					}
					
					if($checkUpdate){
						$getMember->MemberIncentiveSetting->save();
					}
					
					
					if($checkUpdate){
						// $getMember->last_incentive = null;
						// $getMember->last_royalty_incentive = null;
						$getMember->save();
					}
				}
			}
		}
	}
