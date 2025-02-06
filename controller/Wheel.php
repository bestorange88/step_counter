<?php

namespace app\index\controller;

use think\Db;
use think\Request;


use Common\Model\LevelModel;
use Common\Model\MemberModel;
use Common\Model\PhonecodeModel;
use Common\Model\PostsApplyModel;
use Think\Model;
use Common\Model\SystemConfigModel;

class Wheel extends Base {

    protected $uid;

    /**
     * 初始化方法
     */
    public function _initialize() {
        parent::_initialize();

        if (!$this->is_login()) {
            $this->redirect('Public/login');
            //$this->error('请先登陆', U('Public/login'));
        }

        $this->uid = $this->get_member_id();

        $this->info = M('wheel_config')->find(1);
    }
    
    public function qq(){
        $detail = M('page')->where('cid=3')->find();
        $this->assign('detail', $detail);
         $this->assign("url",1);
        $this->display('Member/help_detail');
    }

    /**
     * 大转盘页面
     */
    public function index() {

        $sl = M('advert')->where('cid=3')->select();
        $this->assign('sl', $sl);
        $info = $this->info;
        $this->assign("info", $info);
        $this->display();
    }


    /*
        大转盘抽奖
    */


    public function addReward() {

        $chouConfig = $this->info;

        $info = M('account')->find($this->uid);
        // print_r($info);
       // if ($info["price"] < $chouConfig["price"]) {
       //     echo json_encode(["txt" => "余额不足", "code" => -1], 0);
       //     die();
       // }
       // $memberModel = new MemberModel();
       // $remark = '幸运转盘扣款';
       // $memberModel->decPrice($this->uid, $chouConfig["price"], 81, $remark);

      
        $prize_arr  = M("Wheel")->select();
        $count      = count($prize_arr);
        $rewardRate = M("Wheel")->sum("rate");
        $noRate     = 100 - floatval($rewardRate);
        array_push($prize_arr, array('prize' => '下次没准就能中哦', 'rate' => $noRate, "order" => -1));

        foreach ($prize_arr as $key => $val) {
            $arr[$key] = $val['rate'];
        }
        $key = $this->get_rand($arr); 

        $res         = $prize_arr[$key]; 
        $res["code"] = 1;


        $this->addRecord($res);

        echo json_encode($res, 1);
    }


    public function addRecord($res) {
        if ($res["order"] == -1) {
            return;
        }
        $uid = $this->uid;
        $arr       = array(
            "user_id"    => $uid,
            "wheel_id"   => $res["id"],
            "wheel_name" => $res["name"],
            "time"       => time()
        );

        // 次数
        if ($res["type"] == 1) {
            $arr["end_time"] = strtotime("+1 day", time());
            $arr["num"]      = $res["num"];
        }

        M("wheel_record")->add($arr);

    }


    public function get_rand($proArr) {
        $result = '';
       
        $proSum = array_sum($proArr);
        
        foreach ($proArr as $key => $proCur) {
            $randNum = mt_rand(1, $proSum);
            if ($randNum <= $proCur) {
                $result = $key;
                break;
            } else {
                $proSum -= $proCur;
            }
        }
        unset ($proArr);
        return $result;
    }


}

