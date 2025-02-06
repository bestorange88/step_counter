<?php

namespace app\index\controller;
use think\facade\Request;
use think\Db;
use think\Exception;
use app\model\Article;
use think\facade\View;
class Machine extends Base
{

/**
 * 根据用户 IP 获取经纬度
 *
 * @param string $ip 用户 IP 地址
 * @return array|null
 */
private function getLocationByIP($ip) {
    // 构造 API URL
    $apiUrl = "http://ip-api.com/json/" . $ip;

    // 调用 API 获取数据
    $response = file_get_contents($apiUrl);
    if ($response === FALSE) {
        // 如果无法获取内容，则返回 null
        return null;
    }

    // 解析 JSON 数据
    $data = json_decode($response, true);

    // 检查返回数据是否成功，并提取经纬度
    if (is_array($data) && isset($data['status']) && $data['status'] === 'success') {
        // 返回经纬度数组
        return array(
            'lat' => $data['lat'],
            'lon' => $data['lon'],
        );
    }

    // 如果数据不成功或格式不正确，则返回 null
    return null;
}

      /**
 * 获取天气信息
 *
 * @param float $latitude 纬度
 * @param float $longitude 经度
 * @return string
 */
private function getWeather($latitude, $longitude) {
    // 构造 API URL
    $apiUrl = "https://api.open-meteo.com/v1/forecast?latitude=" . $latitude . "&longitude=" . $longitude . "&current_weather=true";

    try {
        // 调用 API 获取天气数据
        $response = file_get_contents($apiUrl);
        if ($response === FALSE) {
            // 无法获取内容时，返回默认天气信息
            return '未知天气';
        }

        // 解析 JSON 数据
        $data = json_decode($response, true);

        // 检查并返回天气信息
        if (is_array($data) && isset($data['current_weather']) && isset($data['current_weather']['temperature'])) {
            $temperature = $data['current_weather']['temperature']; // 温度
            $weatherCode = isset($data['current_weather']['weathercode']) ? $data['current_weather']['weathercode'] : null;

            // 根据 weatherCode 获取天气描述
            $weatherDescription = $this->getWeatherDescription($weatherCode);

            // 返回格式化的天气信息，例如：23°C 晴
            return $temperature . "°C " . $weatherDescription;
        }

        // 如果数据不正确或无法获取所需信息，则返回默认天气信息
        return '未知天气';
    } catch (\Exception $e) {
        // 捕获异常并返回默认天气信息
        return '未知天气';
    }
}


/**
 * 获取天气代码对应的中文描述
 * @param int|null $weatherCode
 * @return string
 */
private function getWeatherDescription($weatherCode) {
    $weatherDescriptions = [
        0 => '晴',               // Clear sky
        1 => '多云',             // Mainly clear
        2 => '局部多云',         // Partly cloudy
        3 => '阴天',             // Overcast
        45 => '有雾',           // Fog
        48 => '霜雾',           // Depositing rime fog
        51 => '小雨',           // Drizzle: Light
        53 => '中雨',           // Drizzle: Moderate
        55 => '大雨',           // Drizzle: Dense
        61 => '小阵雨',         // Rain: Slight
        63 => '中阵雨',         // Rain: Moderate
        65 => '大阵雨',         // Rain: Heavy
        80 => '小阵雨',         // Rain showers: Slight
        81 => '中阵雨',         // Rain showers: Moderate
        82 => '大阵雨',         // Rain showers: Violent
        95 => '雷雨',           // Thunderstorm: Slight or moderate
        96 => '雷阵雨',         // Thunderstorm with slight hail
        99 => '雷阵雨（大冰雹）' // Thunderstorm with heavy hail
    ];

    // 返回对应描述，默认“未知天气”
    return isset($weatherDescriptions[$weatherCode]) ? $weatherDescriptions[$weatherCode] : '未知天气';
}


    /**
     * 每天晚上十二点清空当天打卡的金额
     */
    public function clear_money(){
        Db::startTrans();
        try{
            $now = time(); //某个时间,可以是任意时间戳

//            $ago = strtotime('00:00:00', $now);
            $today = strtotime(date("Y-m-d"),time());
          //  $endtime = $today+60*60*3+25*60+1;
          // $endtime = $today+60*60+1;
            $endtime = $today+60*60*23+59*60+1;
           $endtime1 = $today+60*60*23+59*60+2;
//            $day = date("Y-m-d H:i:s",$endtime);

            if($endtime==time()|| $endtime1 == time()){
                $data["sum"] = Db::table("punch")->sum('power');
                $data["create_at"] = time();
                $data["status"] = 0;
                //插入瓜分日志表
                $res = Db::table('punch_log')->insert($data);
                if($res){
                            //当前打卡成功
                      $member = Db::table("punch")->select();
                            foreach($member as $v){
                              Db::table("punch")->where(array('id'=>$v['Id']))->setField('power',0);
                            }
                        }
                Db::commit();
                        echo '分完';
            }else{
                    echo  '不是0点';
            }
        }catch (Exception $e){
            Db::rollback();
        }
    }
    /**
     * 每天十二点 //挑战卷轴总价值/挑战会员数   瓜分金额
     */
     public function calculate(){
        Db::startTrans();
        try{
            $_map['a.status']=1;
            $_map['s.catalog']=2;
            $sum= Db::table("punch_log")->whereTime('create_at','today')->field('sum')->find();
            $data['power'] = $sum['sum']?:0;

            $today = strtotime(date("Y-m-d"),time());
            //  $endtime = $today+60*60*3+26*60+1;
            $endtime = $today+60*60*12+14*60+1;
            $endtime2 = $today+60*60*12+2;
          
         

                //今天已经报名
              //  $weidakai=0;
                //$today_data =  Db::table("punch")->where(array('status'=>1))->whereTime('create_at','yesterday')->select();
				
                //foreach($today_data as $kk=>$vv){
                  //  $buyer = Db::table("punch_order")->where(array('buyer'=>$vv['username']))->whereTime('create_at','yesterday')->find();
                    //$weidakai +=   $buyer['price'] ;
                //}
               $crons = Db::table("crons")->whereTime('create_time','today')->find();
            
                if($crons){
                   echo '已经执行过任务';
                   die();
                }

             	
               //计算未打卡的人数

                //全部已报名的订单 - 全部已经打卡 得出未打卡
               $order = Db::table("punch_order")->whereTime('create_at','yesterday')->field('buyer,price')->select();
			   
				//昨天报名+打卡
                $yidakai =  Db::table("punch")->where(array('status'=>2))->whereTime('create_at','today')->field('username')->select();
              
				$yidakai_arr = [];
                foreach($yidakai as $kk=>$vv){
                    $yidakai_arr[]=$vv['username'];
                }
                $order_arr = [];
                $order_arr_money = 0;
                //未打卡
                foreach ($order as $k=>$v){
                        $order_arr[]=$v['buyer'];
                }
        
          $no_daka = array_diff($order_arr,$yidakai_arr);
          
          		foreach($no_daka as $k=>$v){
                   $orderMoney = Db::table("punch_order")->where(array('buyer'=>$v))->whereTime('create_at','yesterday')->field('price')->find();
                   $order_arr_money +=$orderMoney['price'];
                }
        
          
                //已打卡
                $dahaoka=0;
                $yidakai =  Db::table("punch")->where(array('status'=>2))->whereTime('create_at','today')->select();
                foreach($yidakai as $kk=>$vv){
                    $buyers = Db::table("punch_order")->where(array('buyer'=>$vv['username']))->whereTime('create_at','yesterday')->find();
                    $dahaoka +=   $buyers['price'] ;
                }
                
                $daka_share =@(number_format($order_arr_money/$dahaoka,4)) ;
   				
                // 可获得币数
                $member = Db::table("punch")->where(array('status'=>2))->whereTime('create_at','today')->select();          
				$wallets = new Wallet();
         
                foreach($member as $v) {
                    $already_result_power = Db::table("punch_order")->where(array('buyer' => $v['username']))->whereTime('create_at','yesterday')->find();
                    $already_power = $already_result_power['price']?:0;
                   
                    $da = [
//                        'money' => @((int)$already_power * (int)$x),
                        'money' =>@( bcmul($daka_share,$already_power, 2))+$already_power,
                        'username' => $v['username'],
                        'create_at' => time()
                    ];
 				   
                    Db::table("punch_money")->where(array('username' => $v['username']))->setInc('money', $da['money']);
                   $ow = Db::table("wallet")->where(array("username" => $v['username']))->find();
                
                   Db::table("wallet")->where(array("username" => $v['username']))->setInc('money', $da['money']);
                   
                    Db::table("punch_money")->where(array('username' => $v['username']))->setInc('money', $da['money']);
                   $ow = Db::table("wallet")->where(array("username" => $v['username']))->find();
                	if(empty($ow)){
                      $wallet = [
                        'username'=>  $v['username'],
                        'money'=>  $da['money'],
                        'deposit'=>  0,
                        'score'=> 0,
                        'score_deposit'=>0,
                        'spend'=>0,
                        'profit' =>0,
                        'team_profit'=>0,
                        'bonus'=>0,
                        'trade'=>0,
                        'sell'=>0,
                        'ts_in'=>0,
                         'ts_out'=>0,
                        'create_at' =>  date('Y-m-d H:i:s'),
                        'update_at' =>  date('Y-m-d H:i:s')
                    ];
                     Db::table('wallet')->insert($wallet);
                    }else{
                      Db::table("wallet")->where(array("username" => $v['username']))->setInc('money', $da['money']);
                    }
                  
                
                   if((int)$da['money']>0){
                      $rid =  $wallets->generateRID();
              
                    $rows = [
                        'rid'       =>  $rid,
                        'username'  =>  $v['username'],
                        'currency'  =>  1,
                        'business'  =>  50,
                        'before'    => $ow['money'],
                        'now'       => $da['money'],
                        'after'     =>  (int)$ow['money']+(int)$da['money'],
                        'create_at' =>  date('Y-m-d H:i:s')
                    ];
             
                    $bool = Db::table('record')->insert($rows);
                   
                   }
                 
                }
          
          
          
            $crons_data = [
                  'create_time'=>time(),
                  'status'=>1
               ];
          
               Db::table("crons")->insert( $crons_data);
                echo '瓜分成功';
          
            if(time()==$endtime||time()==$endtime2){
             
            }else{
                //还没有到时间
                echo '还没有到十二点';
            }
            //每满一千人奖励100枣币
//            $pay = 1050;
//            $subUnit = 100;
//            $sub = 10;

//            $subTotal = floor( $pay / $subUnit ) * $sub;
//
            $_count1 = Db::table('punch')->count();
            $num1 = $_count1/1000;
            if(is_int($num1)&& $num1 > 0){
                $_push_data =Db::table('punch_count')->where(array('num'=>$num1))->find();
                if(!$_push_data){
                    $_punch_data = [
                        'num'=>$num1,
                        'create_at'=>time(),
                    ];
                    $_count_reuslt = Db::table('punch_count')->insert($_punch_data);
                    if($_count_reuslt){
                        $_punch_member =  Db::table('punch')->select();
                        foreach($_punch_member as $k1=>$v1){
                            Db::table("dashboard")->where(array("username"=>$v1['username']))->setInc('power',100);
                        }
                        echo '满一千人';
                    }

                }

            }

            Db::commit();
            
        }catch (Exception $e){
            file_put_contents('task.txt', $e->getMessage());
            Db::rollback();
        }
        file_put_contents('task.txt',0);

    }
}
