<?php

namespace app\index\controller;

use think\Controller;  // 确保使用正确的命名空间
use think\facade\Session;
use think\facade\Redirect;

class WelcomeController extends Controller
{
    /**
     * 欢迎页面
     *
     * @return \think\Response
     */
    public function index()
    {
        // 检查用户是否已登录
        $uid = session('user.account.uid');
		if (!empty($uid)) {
    
            $this->success('恭喜您成功登录', '/machine.html');
        }

        // 未登录，加载欢迎页面
        return $this->fetch('welcome/index');
    }

    /**
     * 关于我们页面
     *
     * @return \think\Response
     */
    public function about()
    {
        // 加载关于我们页面
        return $this->fetch('welcome/about');
    }
}