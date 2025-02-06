<?php

namespace app\index\controller;

use think\Controller;
use EasyWeChat\Factory;

class WechatController extends Controller
{
    private $config = [
        'app_id' => 'wxe0a268cbd9fb1f8e', // 您的AppID
        'secret' => '572c49398cdc3579e92d9c205fb466cd', // 您的AppSecret
        'token' => 'mysecrettoken', // 您在微信公众平台设置的Token
        'aes_key' => 'your_encoding_aes_key', // 您在微信公众平台设置的EncodingAESKey
    ];

    // 处理微信服务器的验证和消息推送
    public function index()
    {
        $app = Factory::officialAccount($this->config);

        // 验证微信服务器的请求
        $app->server->push(function ($message) {
            return "欢迎关注！";
        });

        $response = $app->server->serve();
        $response->send();
    }

    // 微信OAuth登录
    public function login()
    {
        $app = Factory::officialAccount($this->config);

        // 清除之前的授权信息
        session('wechat_user', null);
        session('user', null);

        $redirectUri = urlencode('https://lvbuyingtu.com/index/Wechat/callback');
        $state = 'random_string'; // 可选参数，用于防止CSRF攻击

        $url = $app->oauth->scopes(['snsapi_userinfo'])
            ->redirect($redirectUri, $state)
            ->getTargetUrl();

        // 重定向到微信授权页
        return redirect($url);
    }

    // 微信OAuth回调
    public function callback()
    {
        $app = Factory::officialAccount($this->config);
        $oauth = $app->oauth;

        // 获取用户信息
        $user = $oauth->user();
        $userInfo = $user->getOriginal();

        // 处理用户信息
        $userModel = D('User'); // 确保User模型已经存在
        $localUser = $userModel->where(['wechat_openid' => $userInfo['openid']])->find();

        if (!$localUser) {
            // 用户未注册，进行注册逻辑
            $data = [
                'wechat_nickname' => $userInfo['nickname'],
                'wechat_openid'   => $userInfo['openid'],
                'wechat_avatar'   => $userInfo['headimgurl'],
                'wechat_token'    => $user->getToken(),
                'wechat'          => $userInfo['unionid'],  // 假设用户微信号存储在unionid中
                // 其他用户信息
            ];
            $userModel->add($data);
            $localUser = $userModel->where(['wechat_openid' => $userInfo['openid']])->find();

            // 跳转到绑定手机号和设置登录密码的页面
            $this->redirect('/index/Wechat/bind');
        } else {
            // 存储微信用户信息到session
            session('wechat_user', $userInfo);

            // 登录用户
            session('user', $localUser);

            // 跳转到首页
            $this->redirect('/');
        }
    }

    // 绑定手机号和设置登录密码
    public function bind()
    {
        if (IS_POST) {
            $phone = I('post.phone');
            $password = I('post.password');

            // 更新用户信息
            $userModel = D('User');
            $data = [
                'phone' => $phone,
                'password' => md5($password),
            ];
            $userModel->where(['wechat_openid' => session('wechat_user.openid')])->save($data);

            // 跳转到首页
            $this->redirect('/');
        } else {
            // 显示绑定手机号和设置登录密码的页面
            return $this->fetch();
        }
    }
}