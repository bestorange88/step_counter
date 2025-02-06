
<?php
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\facade\Route;

// 将根路径绑定到 Welcome 控制器的 index 方法
Route::rule('/', 'WelcomeController/index', 'GET');
Route::rule('about', 'index/WelcomeController/about', 'GET');

// API接口
Route::post('/sendCode', 'index/Account/sendCode');
Route::post('/sendEmailCode', 'index/Account/sendEmailCode');
Route::post('/sendPhoneCode', 'index/Account/sendPhoneCode');
Route::post('/signup', 'index/Account/signup');
Route::post('api/account/authen', 'api/Account/authen');

Route::post('api/uploadSteps', 'api/Steps/saveStepData');

// 机器接口
Route::group('machine', function(){
    Route::rule('/', 'machine/index', 'GET');
    Route::rule('index', 'machine/index', 'GET');
    Route::rule('punch_create', 'machine/punch_create', 'GET');
    Route::rule('clear_money', 'machine/clear_money', 'GET');
    Route::rule('punch_index', 'machine/punch_index', 'GET');
});

// 网站首页及其他页面
Route::rule('/news', 'index/news', 'GET');
Route::rule('/article/:id', 'index/article', 'GET')->pattern(['id' => '\d+']);
Route::rule('/contact', 'index/contact', 'GET|POST');
Route::rule('/ueditor', 'ueditor/index', 'GET|POST');
Route::get('article/:id', 'Index/article');
// 微信接口
Route::group('wechat', function(){
    Route::rule('/', 'index/WechatController/index', 'GET|POST');
    Route::rule('login', 'index/WechatController/login', 'GET');
    Route::rule('callback', 'index/WechatController/callback', 'GET');
    Route::rule('getAccessToken', 'index/WechatController/getAccessToken', 'POST');
});
// 配置POST请求的路由规则
Route::post('authen', 'index/Authen/submit');
Route::post('authen/submit', 'index/Authen/submit');
Route::post('authen/updateProfile', 'index/Authen/updateProfile');
Route::post('index/authen/updateProfile', 'index/Authen/updateProfile');
// 服务接口
Route::group('service', function(){
    Route::rule('region', 'service/region', 'POST');
    Route::rule('exchange', 'service/exchange', 'POST');
    Route::rule('captcha', 'service/captcha', 'GET|POST');
    Route::rule('sms_check', 'service/sms_check', 'POST');
    Route::rule('sms', 'service/sms', 'POST');
});
// 我的团队页面
Route::get('team/my_team', 'index/Team/myTeam');

// 创建团队页面
Route::get('team/create_team', 'index/Team/createTeam');

// 寻找团队页面
Route::get('team/search_team', 'index/Team/searchTeam');
// 提现路由
Route::get('account/withdrawal', 'Account/withdraw');
Route::post('api/withdraw/initiateWithdraw', 'Account/submit');
Route::post('api/withdraw/callback', 'Account/handleCallback');
// 账户接口
Route::group('account', function(){
    Route::rule('signup', 'account/signup', 'GET|POST');
    Route::rule('signin', 'account/signin', 'GET|POST');
    Route::rule('forgot', 'account/forgot', 'GET|POST');
    Route::rule('signout', 'account/signout', 'GET|POST');
    Route::rule('agreement', 'account/agreement', 'GET|POST');
    Route::rule('/', 'account/index', 'GET');
    Route::rule('index', 'account/index', 'GET');
    Route::rule('profile', 'account/profile', 'GET|POST');
    Route::rule('edit', 'account/edit', 'POST');
    Route::rule('authen', 'account/authen', 'GET|POST');
    Route::rule('reset', 'account/reset', 'GET|POST');
    Route::rule('safeword', 'account/safeword', 'GET|POST');
    Route::rule('check', 'account/check', 'POST');
    Route::rule('sync', 'account/sync', 'POST');
    Route::rule('avatar', 'account/avatar', 'POST');
});

Route::get('account/record', 'account/record');
// 钱包接口
Route::group('wallet', function(){
    Route::rule('/', 'wallet/index', 'GET');
    Route::rule('record', 'wallet/record', 'GET|POST');
    Route::rule('getBalance', 'index/Wallet/getBalance', 'GET');
    Route::rule('getWithdrawableBalance', 'index/Wallet/getWithdrawableBalance', 'GET');
    Route::rule('withdrawal', 'index/Wallet/withdrawal', 'GET|POST');
});

// 转账接口
Route::group('transfer', function(){
    Route::rule('/', 'transfer/index', 'GET');
    Route::rule('post', 'transfer/post', 'POST');
    Route::rule('list', 'transfer/search', 'POST');
});

// IMToken 接口
Route::group('imtoken', function(){
    Route::rule('/', 'imtoken/index', 'GET');
    Route::rule('post', 'imtoken/post', 'POST');
    Route::rule('list', 'imtoken/search', 'POST');
});

// 团队接口
Route::group('team', function(){
    Route::rule('/', 'team/index', 'GET');
    Route::rule('member', 'team/member', 'POST');
    Route::rule('inviter', 'team/inviter', 'GET');
});

// 市场接口
Route::group('market', function(){
    Route::rule('/', 'market/index', 'GET');
    Route::rule('list', 'market/search', 'POST');
    Route::rule('overview', 'market/overview', 'POST');
    Route::rule('transaction', 'market/transaction', 'GET|POST');
    Route::rule('buy', 'market/buy', 'POST');
    Route::rule('sell', 'market/sell', 'POST');
    Route::rule('action', 'market/action', 'POST');
    Route::rule('system', 'market/system', 'POST');
    Route::rule('trial', 'market/trial', 'POST');
});

// 活动接口
Route::group('event', function(){
    Route::rule('lottery', 'event/lottery', 'GET|POST');
    Route::rule('turntable', 'event/turntable', 'GET|POST');
    Route::rule('scratch', 'event/scratch', 'GET|POST');
    Route::rule('pool', 'event/pool', 'GET|POST');
    Route::rule('pickup', 'event/pickup', 'POST');
    Route::rule('look', 'event/look', 'POST');
});

// 合约接口
Route::group('contract', function(){
    Route::rule('/', 'contract/index', 'GET');
    Route::rule(':id', 'contract/detail', 'GET')->pattern(['id' => '\d+']);
    Route::rule('list', 'contract/list', 'POST');
    Route::rule('preview', 'contract/preview', 'POST');
    Route::rule('log', 'contract/log', 'POST');
    Route::rule('buy', 'contract/buy', 'POST');
    Route::rule('transfer', 'contract/transfer', 'POST');
    Route::rule('agent', 'contract/agent', 'GET|POST');
    Route::rule('agent_log', 'contract/agent_log', 'GET');
});

// 众筹接口
Route::group('funding', function(){
    Route::rule('/', 'funding/index', 'GET');
    Route::rule('index', 'funding/index', 'GET');
    Route::rule(':id', 'funding/detail', 'GET')->pattern(['id' => '\d+']);
    Route::rule('list', 'funding/list', 'POST');
    Route::rule('preview', 'funding/preview', 'POST');
    Route::rule('log', 'funding/logs', 'POST');
    Route::rule('welcome', 'funding/welcome', 'GET');
    Route::rule('publish', 'funding/publish', 'GET|POST');
    Route::rule('edit/:id', 'funding/edit', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('invest', 'funding/invest', 'POST');
    Route::rule('over', 'funding/over', 'POST');
});

// 票券接口
Route::group('ticket', function(){
    Route::rule('check', 'ticket/check', 'POST');
});

// 第三方授权接口
Route::group('oauth', function(){
    Route::group('qq', function(){
        Route::rule('login', 'oauth/qq_login', 'GET');
        Route::rule('callback', 'oauth/qq_callback', 'GET');
    });
});

// 其他接口
Route::rule('sendSms', 'handle/sendSms', 'GET|POST');
Route::rule('mark', 'handle/signToday', 'GET|POST');
Route::rule('sport_walk', 'handle/sport_walk', 'GET|POST');
Route::rule('checkSportWalkStatus', 'handle/checkSportWalkStatus', 'GET|POST');
Route::rule('updateSteps', 'handle/updateSteps', 'GET|POST');
Route::rule('buyturntablechange', 'event/receiveAmount', 'GET|POST');

Route::post('api/getSteps', 'api/Steps/getSteps');

// 帮助接口
Route::group('help', function(){
    Route::rule('/', 'help/index', 'GET');
});

// 权限管理
Route::group('admin/permission', function() {
    Route::rule('index', 'admin/Permission/index', 'GET');
    Route::rule('add', 'admin/Permission/add', 'GET|POST');
    Route::rule('edit/:id', 'admin/Permission/edit', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('delete/:id', 'admin/Permission/delete', 'GET')->pattern(['id' => '\d+']);
});

// 角色管理
Route::group('admin/role', function() {
    Route::rule('index', 'admin/Role/index', 'GET');
    Route::rule('add', 'admin/Role/add', 'GET|POST');
    Route::rule('edit/:id', 'admin/Role/edit', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('delete/:id', 'admin/Role/delete', 'GET')->pattern(['id' => '\d+']);
});

// 员工管理
Route::group('admin/company_users', function() {
    Route::rule('index', 'admin/CompanyUsers/index', 'GET');
    Route::rule('add', 'admin/CompanyUsers/add', 'GET|POST');
    Route::rule('edit/:id', 'admin/CompanyUsers/edit', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('delete/:id', 'admin/CompanyUsers/delete', 'GET')->pattern(['id' => '\d+']);
});

// 团队管理
Route::group('admin/team', function() {
    Route::rule('index', 'admin/Team/index', 'GET');
    Route::rule('add', 'admin/Team/add', 'GET|POST');
    Route::rule('edit/:id', 'admin/Team/edit', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('delete/:id', 'admin/Team/delete', 'GET')->pattern(['id' => '\d+']);
});

// 转盘抽奖
Route::group('admin/lottery', function() {
    Route::rule('index', 'admin/Lottery/index', 'GET');
    Route::rule('prizes', 'admin/Lottery/prizes', 'GET');
    Route::rule('add_prize', 'admin/Lottery/addPrize', 'GET|POST');
    Route::rule('edit_prize/:id', 'admin/Lottery/editPrize', 'GET|POST')->pattern(['id' => '\d+']);
    Route::rule('delete_prize/:id', 'admin/Lottery/deletePrize', 'GET')->pattern(['id' => '\d+']);
    Route::rule('rules', 'admin/Lottery/rules', 'GET|POST');
});

// 返回结果
return [];