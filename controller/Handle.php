<?php

namespace app\index\controller;

use think\Db;
use think\Request;

class Handle extends Base
{
	public function _initialize()
	{
	}
	
	/**
	 * 今日签到
	 *

	 * @return array 签到结果
	 */
     public function signToday()
	{
	
		$uid = session('user.account.uid');
		$username = session('user.account.username');

	
		if (empty($uid) || empty($username)) {
			return json(['code' => '001', 'msg' => '请登录后再进行签到！']);
		}

	
		$today = date('Y-m-d');

		Db::startTrans(); 

		try {
			
			$signRecord = Db::name('sign_records')
				->where('username', $username)
				->where('date', $today)
				->find();

			if ($signRecord) {
			
				return json(['code' => 400, 'message' => '今天已经签到过了！']);
			}

		
			$lastSign = Db::name('sign_records')
				->where('username', $username)
				->order('date', 'desc')
				->limit(1)
				->find();

		
			$continuousDays = 1;
			if ($lastSign && $lastSign['date'] === date('Y-m-d', strtotime('-1 day'))) {
				$continuousDays = $lastSign['consecutive_days'] + 1;
             
				if ($continuousDays > 7) {
					$continuousDays = 1;
				}
				
			}
			$pointsToAdd = $this->calculatePoints($continuousDays);

		
			Db::name('sign_records')->insert([
				'username' => $username,
				'date' => $today,
				'consecutive_days' => $continuousDays,
				'created_at' => date('Y-m-d H:i:s'),
				'updated_at' => date('Y-m-d H:i:s'),
			]);

		
			$userPoints = Db::name('user_points')
				->where('uid', $uid)
				->find();

			if ($userPoints) {
				
				Db::name('user_points')
					->where('uid', $uid)
					->setInc('points', $pointsToAdd);
			} else {
				
				Db::name('user_points')->insert([
					'uid' => $uid,
					'points' => $pointsToAdd,
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
				]);
			}
			
			Db::name('wallet')
				->where('username', $username)
				->setInc('score', $pointsToAdd);
			
			

			$this->addRefereePoints($uid);
			
			Db::commit();

		
			return json([
				'code' => 200,
				'message' => '签到成功！连续签到' . $continuousDays . '天，累计获得' . $pointsToAdd . '积分。',
				'total_points' => $this->getTotalPoints($uid),
			]);
		} catch (DbException $e) {
			
			Db::rollback();

			
			return json([
				'code' => 500,
				'message' => '数据库错误：' . $e->getMessage(),
			]);
		}
	}

	// 根据连续签到天数计算应获得的积分（1+2+3+...+连续签到天数）
	protected function calculatePoints($continuousDays)
	{
		return $continuousDays * ($continuousDays + 1) / 2;
	}

	
	protected function getTotalPoints($uid)
	{
		$userPoints = Db::name('user_points')
			->where('uid', $uid)
			->value('points');

		return $userPoints ? $userPoints : 0;
	}


   private function addRefereePoints($userId) {
	
		$inviterInfo = $this->getInviterInfoByUID($userId);

		if ($inviterInfo && isset($inviterInfo['uid'])) {
		
			$refereeId = $inviterInfo['uid'];

		
			$refereePoints = Db::name('user_points')
				->where('uid', $refereeId)
				->find();

			if ($refereePoints) {
			
				Db::name('user_points')
					->where('uid', $refereeId)
					->update(['points' => $refereePoints['points'] + 1]);
			} else {
			
				Db::name('user_points')
					->insert(['uid' => $refereeId, 'points' => 1]);
			}
			
			Db::name('wallet')
				->where('username', $inviterInfo['username'])
				->setInc('score', $refereePoints['points'] + 1);
			
		} else {
		
		
		
		}
	}



	public function getInviterInfoByUID($userId) {
	
		$refereeUsername = Db::name('account')
			->where('uid', $userId)
			->value('inviter');

		if ($refereeUsername !== null) {
			
			$inviterInfo = Db::name('account')
				->where('username', $refereeUsername)
				->find();

			if ($inviterInfo !== null) {
				
				return $inviterInfo;
			} else {
				
				return null; 
			}
		} else {
			
			return null; 
		}
	}


	
	
	
	
	public function sport_walk0128(Request $request)
	{
		$uid = session('user.account.uid');
		if (!$uid) {
			return $this->ajaxReturn(['code' => '001', 'msg' => '请登录后再进行签到！']);
		}

		$user = getData('account', ['uid' => $uid], 1);
		if (!$user) {
			return $this->ajaxReturn(['code' => '500', 'msg' => '用户数据不存在！']);
		}

		$today = date('Y-m-d');
	
		$claimedRewards = isset($user['claimedRewards']) ? explode(',', $user['claimedRewards']) : [];

	
		foreach ($claimedRewards as $claimed) {
		
			if (strpos($claimed, $today) === 0) {
				return $this->ajaxReturn(['code' => '002', 'msg' => '每天只能领取一次奖励！']);
			}
		}

		$stepTiers = config('hello.walk.reward');

		if (!is_array($stepTiers)) {
			log('配置错误：step_tiers不是一个数组！', 'error');
			return $this->ajaxReturn(['code' => '500', 'msg' => '配置错误！']);
		}


		asort($stepTiers);


		$walkSteps = (int) $request->post('walk', 0);


		$rewardTier = '';
		$rewardPoints = 0;


		$claimedRewards = []; 
		$today = date('Y-m-d'); 

		
		$maxReward = 0;
		$rewardTier = null;

		foreach ($stepTiers as $tier => $rewardPoints) {
			
			if ($walkSteps >= (int)$tier) {
		
				if ($rewardPoints > $maxReward) {
					$maxReward = $rewardPoints;
					$rewardTier = $tier;
				}
			}
		}

  
		if (!$rewardPoints) {
			return $this->ajaxReturn(['code' => '003', 'msg' => '步数不达标，无法领取奖励！']);
		}

		
		if (!is_array($claimedRewards)) {
			$claimedRewards = explode(',', $claimedRewards);
			
			$claimedRewards = array_filter($claimedRewards, function($value) {
				return $value !== '';
			});
		}

		
		$userData = [
			'last_reward_time' => date('Y-m-d H:i:s'), 
			'total_rewards' => $user['total_rewards'] + $maxReward, 
			
			'claimedRewards' => implode(',', array_unique(array_merge($claimedRewards, [$today . '||' . $rewardTier]))),
		];

		$whereCondition = ['uid' => $uid];
		$result = editData('account', $userData, $whereCondition);

		if ($result) {
			
			if ($rewardTier) {
				
				$msg = "步数达标，领取{$rewardTier}档位奖励成功，获得{$maxReward}积分！";
				
			} else {
			
				$msg = "步数未达标，无法领取奖励。";
			}

			return $this->ajaxReturn(['code' => '000', 'msg' => $msg, 'rewardTier' => $rewardTier, 'rewardPoints' => $maxReward]);

		}

	}
	
	
	
	
	public function checkSportWalkStatus0128(Request $request)
	{
		
		$uid = session('user.account.uid');
		if (!$uid) {
			error_log("用户未登录");
			return $this->ajaxReturn(['code' => '001', 'msg' => '请登录后查看领取状态！']);
		}

		
		$user = getData('account', ['uid' => $uid], 1);
		if (!$user) {
			error_log("无法获取用户数据");
			return $this->ajaxReturn(['code' => '002', 'msg' => '用户数据不存在']);
		}

		
		$rewardDate = null;
		$rewardAmount = null;

		
		$claimedReward = isset($user['claimedRewards']) ? $user['claimedRewards'] : '';

		
		if (!empty($claimedReward)) {
			
			$rewardParts = explode('||', $claimedReward);

			
			if (count($rewardParts) == 2) {
				
				$rewardDate = $rewardParts[0];
				$rewardAmountStr = $rewardParts[1];

				
				if (is_numeric($rewardAmountStr)) {
					$rewardAmount = (int)$rewardAmountStr;
				} else {
					error_log("奖励金额不是数字");
				}
			} else {
				
				error_log("claimedRewards 字段的格式不正确，无法提取日期和金额。");
			}
		} else {
			
			error_log("claimedRewards 字段为空。");
		}

	
		$today = date('Y-m-d');
		$isClaimedToday = ($rewardDate !== null && $rewardDate === $today);

		return $this->ajaxReturn([
			'code' => '000',
			'msg' => '领取状态查询成功',
			'last_reward_time' => $user['last_reward_time'],
			'rewardDate' => $rewardDate,
			'rewardAmount' => $rewardAmount,
			'isClaimedToday' => $isClaimedToday,
		]);
	}

    public function sport_walk(Request $request)
	{
		$uid = session('user.account.uid');
		if (!$uid) {
			return $this->ajaxReturn(['code' => '001', 'msg' => '请登录后再进行签到！']);
		}

		$user = getData('account', ['uid' => $uid], 1);
		if (!$user) {
			return $this->ajaxReturn(['code' => '500', 'msg' => '用户数据不存在！']);
		}
       // var_dump($user);die;
		$today = date('Y-m-d');
	
		$claimedRewards = isset($user['claimedRewards']) ? explode(',', $user['claimedRewards']) : [];

		//var_dump($claimedRewards);
		foreach ($claimedRewards as $claimed) {

			if (strpos($claimed, $today) === 0) {
				return $this->ajaxReturn(['code' => '002', 'msg' => '每天只能领取一次奖励！']);
			}
		}

		$stepTiers = config('hello.walk.reward');
		//$stepTiers = [
		//	2000 => 1,
		//	5000 => 2,
	//		8000 => 3,
	//	];


		//var_dump($stepTiers);
		//die;

		if (!is_array($stepTiers)) {
			log('配置错误：step_tiers不是一个数组！', 'error');
			return $this->ajaxReturn(['code' => '500', 'msg' => '配置错误！']);
		}


		asort($stepTiers);


		$walkSteps = (int) $request->post('walk', 0);

		//var_dump($walkSteps);die;
		$rewardTier = '';
		$rewardPoints = 0;


		$claimedRewards = []; 
		$today = date('Y-m-d'); 

		
		$maxReward = 0;
		$rewardTier = null;

		foreach ($stepTiers as $tier => $rewardPoints) {
			
			if ($walkSteps >= (int)$tier) {
		
				if ($rewardPoints > $maxReward) {
					$maxReward = $rewardPoints;
					$rewardTier = $tier;
				}
			}
		}

  
		if (!$rewardPoints) {
			return $this->ajaxReturn(['code' => '003', 'msg' => '步数不达标，无法领取奖励！']);
		}

		
		if (!is_array($claimedRewards)) {
			$claimedRewards = explode(',', $claimedRewards);
			
			$claimedRewards = array_filter($claimedRewards, function($value) {
				return $value !== '';
			});
		}

		
		$userData = [
			'last_reward_time' => date('Y-m-d H:i:s'), 
			'total_rewards' => $user['total_rewards'] + $maxReward, 
			
			'claimedRewards' => implode(',', array_unique(array_merge($claimedRewards, [$today . '||' . $rewardTier . '||' . $maxReward]))),
		];

		$whereCondition = ['uid' => $uid];
		//var_dump($whereCondition);die;
		$result = editData('account', $userData, $whereCondition);

		//var_dump($result);die;
		//echo json_encode(['success' => $result]);
		//die;

		if ($result) {
			
			if ($rewardTier) {
				
				$msg = "步数达标，领取{$rewardTier}档位奖励成功，获得{$maxReward}元！";
				
			} else {
			
				$msg = "步数未达标，无法领取奖励。";
			}

			return $this->ajaxReturn(['code' => '000', 'msg' => $msg, 'rewardTier' => $rewardTier, 'rewardPoints' => $maxReward]);

		}

	}

	
     public function checkSportWalkStatus(Request $request)
	{
		
		$uid = session('user.account.uid');
		if (!$uid) {
			error_log("用户未登录");
			return $this->ajaxReturn(['code' => '001', 'msg' => '请登录后查看领取状态！']);
		}

		
		$user = getData('account', ['uid' => $uid], 1);
		if (!$user) {
			error_log("无法获取用户数据");
			return $this->ajaxReturn(['code' => '002', 'msg' => '用户数据不存在']);
		}

		
		$rewardDate = null;
		$rewardAmount = null;

		
		$claimedReward = isset($user['claimedRewards']) ? $user['claimedRewards'] : '';

		
		if (!empty($claimedReward)) {
			
			$rewardParts = explode('||', $claimedReward);

			
			if (count($rewardParts) == 3) {
				
				$rewardDate = $rewardParts[0];
				$rewardAmountStr = $rewardParts[1];
				$rewardPoints = $rewardParts[2];
				
				if (is_numeric($rewardAmountStr)) {
					$rewardAmount = (int)$rewardAmountStr;
				} else {
					error_log("奖励金额不是数字");
				}
			} else {
				
				error_log("claimedRewards 字段的格式不正确，无法提取日期和金额。");
			}
		} else {
			
			error_log("claimedRewards 字段为空。");
		}

	
		$today = date('Y-m-d');
		$isClaimedToday = ($rewardDate !== null && $rewardDate === $today);

		return $this->ajaxReturn([
			'code' => '000',
			'msg' => '领取状态查询成功',
			'last_reward_time' => $user['last_reward_time'],
			'rewardDate' => $rewardDate,
			'rewardAmount' => $rewardAmount,
			'rewardPoints' => $rewardPoints,
			'isClaimedToday' => $isClaimedToday,
		]);
	}



    public function updateSteps(Request $request)
   {
    
    $steps = $request->post('steps');
    if (!is_numeric($steps) || $steps < 0) {
        return json(['status' => 'error', 'message' => 'Invalid steps value']);
    }

   
    $uid = session('user.account.uid');
    if (!$uid) {
        return json(['status' => 'error', 'message' => 'User not authenticated']);
    }

   
    $user = getData('account', ['uid' => $uid], 1);
    if (!$user) {
        return json(['status' => 'error', 'message' => 'User not found']);
    }
    $inviter = $user['inviter'];
    $username = session('user.account.username') ?: null;


   
    $today = date('Y-m-d');
   $updated_at = date('Y-m-d H:i:s');
   
    $userStep = Db::name('user_steps')
        ->where('uid', $uid)
        ->where('date', $today)
        ->find();

    
    $stepChange = 0;

   
    Db::startTrans();
    try {
        if (!$userStep) {
           
            $insertData = [
                'uid' => $uid,
					'username' => $username,
					'inviter' => $inviter,
					'steps' => $steps,
					'date' => $today,
					'update_at' => $updated_at
                
               
            ];
            $result = Db::name('user_steps')->insert($insertData);
            if (!$result) {
                throw new \Exception("Failed to insert steps record.");
            }
            $stepChange = $steps;
        } else {
          
            if (is_array($userStep) && isset($userStep['steps'])) {
                $previousSteps = $userStep['steps'];
                $updateData = [
                    'steps' => $steps,
                    
                ];
                $result = Db::name('user_steps')
                    ->where('uid', $uid)
                    ->where('date', $today)
                    ->update($updateData);
                if (false === $result) {
                    throw new \Exception("Failed to update steps record.");
                }
                $stepChange = $steps - $previousSteps;
            } else {
             
                throw new \Exception("Invalid user step data retrieved.");
            }
        }

       
         if ($stepChange != 0) {
            $result2 = Db::table('dashboard')
                ->where('username', $username)
                ->update([
                    'total_steps' => Db::raw('total_steps + ' . $stepChange),
                    'update_at' => $updated_at
                ]);
        } else {
           
            $result2 = true;
        }

        
        Db::commit();

       
			$message = $userStep ? 'updated' : 'inserted';
			if ($result && $result2) {
				return json(['status' => 'success', 'message' => 'Steps ' . $message . ' successfully']);
			} else {
				return json(['status' => 'error', 'message' => 'Failed to ' . ($userStep ? 'update' : 'insert') . ' steps']);
			}
    } catch (\Exception $e) {
        
        Db::rollback();

      
        return json(['status' => 'error', 'message' => 'Failed to update steps: ' . $e->getMessage()]);
    }
   }

protected function ajaxReturn($data, $type = 'JSON', $json_option = 0) {
		
		$supportedTypes = ['JSON', 'JSONP', 'EVAL'];

		
		$type = strtoupper($type);
		if (!in_array($type, $supportedTypes)) {
			throw new Exception("Unsupported type: {$type}. Supported types are: " . implode(', ', $supportedTypes));
		}

		
		if ($type === 'JSON') {
			header('Content-Type: application/json; charset=utf-8');
			echo json_encode($data, $json_option);
		}
		
		elseif ($type === 'JSONP') {
			header('Content-Type: application/javascript; charset=utf-8');
			
			$handler = isset($_GET['jsonp_handler']) ? $_GET['jsonp_handler'] : 'callback';
			
			if (!preg_match('/[a-zA-Z0-9_]+$/', $handler)) {
				throw new Exception("Invalid JSONP handler: {$handler}");
			}
			echo "{$handler}({json_encode($data, $json_option)});";
		}
		
		elseif ($type === 'EVAL') {
			header('Content-Type: text/html; charset=utf-8');
			
			echo 'eval(' . json_encode($data, $json_option) . ');';
		}

		
		exit;
	}

}
?>

