<?php
namespace app\index\controller;

use think\Controller;
use think\facade\Session;
use think\facade\Env;
use app\model\Account; // 确保模型路径正确
use think\Request;

class Authen extends Controller
{
  
  // public function submit(Request $request, $uid)
     public function submit(Request $request)
  {
      $uid = session('user.account.uid');
    if (!$uid) {
        return json(['code' => 401, 'message' => '用户未登录']);
    }
    
    if (!$request->isPost()) {
        return json(['code' => 405, 'message' => '请求方法不正确，应使用POST方法']);
    }
   
    $data = $request->post();
    $requiredFields = ['nickname', 'name', 'id_card'];
    foreach ($requiredFields as $field) {
        if (empty($data[$field])) {
            return json(['code' => 400, 'message' => '缺少必填字段或字段为空：' . $field]);
        }
    }

    

    $uploadDir = app()->getRootPath() . 'public/cert/' . date('Ymd') . '/';
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $frontFile = $request->file('front_image');
    $backFile = $request->file('back_image');

   
    $frontInfo = $this->uploadFile($frontFile, '身份证正面图片');
    if ($frontInfo['code'] !== 200) {
        return json(['code' => $frontInfo['code'], 'message' => $frontInfo['message']]);
    }
    $frontImagePath = $frontInfo['path'];

    
    $backInfo = $this->uploadFile($backFile, '身份证反面图片');
    if ($backInfo['code'] !== 200) {
        return json(['code' => $backInfo['code'], 'message' => $backInfo['message']]);
    }
    $backImagePath = $backInfo['path'];

    $account = Account::where('uid', $uid)->find();
    if ($account) {
        $account->nickname = $data['nickname'];
        $account->name = $data['name'];
        $account->id_card = $data['id_card'];
        $account->front_image = $frontImagePath; 
        $account->back_image = $backImagePath; 
        $account->authen = 2; 

       
        if ($account->save()) {
            return json(['code' => 200, 'message' => '用户信息更新成功']);
        } else {
            return json(['code' => 500, 'message' => '数据库更新失败']);
        }
    } else {
     
        return json(['code' => 404, 'message' => '用户不存在']);
    }
}


private function uploadFile($file, $fileDescription)
{
    $validate = [
      //  'size' => 156780, 
        'ext' => 'jpg,png,gif' 
    ];
    $info = $file->validate($validate)->move(app()->getRootPath() . 'public' . DS . 'cert');
    if (!$info) {
        return ['code' => 500, 'message' => $fileDescription . '上传失败：' . $file->getError()];
    }
    return ['code' => 200, 'path' => '/cert/' . $info->getSaveName()];
}

    public function updateProfile(Request $request)
    {
   
        if ($request->isPost()) {
      
            $data = $request->post();
            $uid = session('user.account.uid');

            if (!$uid) {
                return json(['code' => 400, 'message' => '用户未登录']);
            }

            $account = Account::where('uid', $uid)->find();
            if ($account) {
                $account->nickname = $data['nickname'] ?? $account->nickname;
                $account->wechat = $data['wechat'] ?? $account->wechat;
                $account->qq = $data['qq'] ?? $account->qq;
                $account->alipay = $data['alipay'] ?? $account->alipay;
                $account->bankname = $data['bankname'] ?? $account->bankname;
                $account->bankcard = $data['bankcard'] ?? $account->bankcard;
                $account->bankaddress = $data['bankaddress'] ?? $account->bankaddress;

                if ($account->save()) {
                    return json(['code' => 200, 'message' => '资料更新成功！']);
                } else {
                    return json(['code' => 500, 'message' => '数据库更新失败！']);
                }
            } else {
                return json(['code' => 404, 'message' => '用户不存在！']);
            }
        }

        // 不是POST请求，返回错误
        return json(['code' => 400, 'message' => '无效的请求方法！']);
    }
}