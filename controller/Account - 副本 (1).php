<?php
namespace app\index\controller;

use think\Request;
use think\facade\Log;
use think\facade\Session;
use think\Db;
use think\Validate;
use PHPMailer\PHPMailer\PHPMailer;
use AlibabaCloud\Client\AlibabaCloud;

class Account extends Base
{
    /**
     * 发送验证码（邮箱或短信）
     * @param Request $req
     * @return \think\response\Json
     */
    public function sendCode(Request $req)
    {
        $type = $req->param('type'); // email 或 phone
        $target = $req->param('target');

        if ($type == 'email') {
            return $this->sendEmailCode($target);
        } elseif ($type == 'phone') {
            return $this->sendSmsCode($target);
        } else {
            return json(['code' => 400, 'msg' => '无效的类型']);
        }
    }

    /**
     * 发送邮箱验证码
     * @param string $email
     * @return \think\response\Json
     */
   public function sendEmailCode($email)
    {
      //  $email = $req->param('target');
 
        // 校验邮箱格式
        if (!$email || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            Log::info('邮箱格式错误: ' . $email);
            return json(['code' => 400, 'msg' => '邮箱格式错误']);
        }

        // 检查发送频率（限制 60 秒内不能重复发送）
        $lastSent = Session::get("last_email_sent_{$email}");
        if ($lastSent && (time() - $lastSent) < 60) {
            return json(['code' => 429, 'msg' => '验证码发送过于频繁，请稍后再试']);
        }

        // 生成验证码
        $emailCode = rand(100000, 999999);

        // 发送邮件验证码
        if ($this->sendEmail($email, $emailCode)) {
            Session::set("email_code_{$email}", $emailCode);
            Session::set("last_email_sent_{$email}", time()); // 保存发送时间
            Log::info("验证码发送成功：邮箱: {$email}, 验证码: {$emailCode}");
            return json(['code' => 200, 'msg' => '验证码发送成功']);
        }

        Log::error("邮件发送失败：邮箱 " . $email);
        return json(['code' => 500, 'msg' => '邮件发送失败，请稍后再试']);
    }

    /**
     * 发送短信验证码
     * @param string $userPhone
     * @return \think\response\Json
     */
    private function sendSmsCode($userPhone)
    {
        // 校验手机号格式
        if (!$userPhone || !preg_match('/^1[3-9]\d{9}$/', $userPhone)) {
            Log::info('手机号格式错误: ' . $userPhone);
            return json(['code' => 400, 'msg' => '手机号格式错误']);
        }

        // 检查发送频率（限制 60 秒内不能重复发送）
        $lastSent = Session::get("last_phone_sent_{$userPhone}");
        if ($lastSent && (time() - $lastSent) < 60) {
            return json(['code' => 429, 'msg' => '验证码发送过于频繁，请稍后再试']);
        }

        // 生成验证码
        $smsCode = rand(100000, 999999);

        // 发送短信
        AlibabaCloud::accessKeyClient(config('sms.accessKeyId'), config('sms.accessKeySecret'))
            ->regionId('cn-hangzhou')
            ->asDefaultClient();

        try {
            $result = AlibabaCloud::rpc()
                ->product('Dysmsapi')
                ->version('2017-05-25')
                ->action('SendSms')
                ->method('POST')
                ->host('dysmsapi.aliyuncs.com')
                ->options([
                    'query' => [
                        'RegionId' => "cn-hangzhou",
                        'PhoneNumbers' => $userPhone,
                        'SignName' => config('sms.signName'),
                        'TemplateCode' => config('sms.templateCode'),
                        'TemplateParam' => json_encode(['code' => $smsCode]),
                    ],
                ])
                ->request();
           
            if ($result->Code == 'OK') {
                Session::set("phone_code_{$userPhone}", $smsCode);
                Session::set("last_phone_sent_{$userPhone}", time()); // 保存发送时间
                Log::info("验证码发送成功：手机号: {$userPhone}, 验证码: {$smsCode}");
                return json(['code' => 200, 'msg' => '验证码发送成功']);
            } else {
                Log::error("短信发送失败：手机号 " . $userPhone . "，错误信息：" . $result->Message);
                return json(['code' => 500, 'msg' => '短信发送失败，请稍后再试']);
            }
        } catch (\Exception $e) {
            Log::error("短信发送异常：手机号 " . $userPhone . "，异常信息：" . $e->getMessage());
            return json(['code' => 500, 'msg' => '短信发送失败，请稍后再试']);
        }
    }

    /**
     * 发送邮件
     * @param string $toEmail
     * @param string $code
     * @return bool
     */
    public function sendEmail($toEmail, $code)
    {
        $title = '绿步盈途 ，发送验证码';
        $content = "您的验证码是：{$code}";

        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->IsHTML(true);
        $mail->CharSet = 'UTF-8';
        $mail->SMTPAuth = true;
        $mail->From = "info@lvbuyingtu.com";
        $mail->FromName = "绿步盈途";
        $mail->Host = "mail.privateemail.com";
        $mail->Username = "info@lvbuyingtu.com";
        $mail->Password = "123456";
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;
        $mail->AddAddress($toEmail);
        $mail->Subject = $title;
        $mail->Body = $content;
       
        try {
            if ($mail->send()) {
                return true;
            } else {
                Log::error("邮件发送失败：错误信息 " . $mail->ErrorInfo);
                return false;
            }
        } catch (Exception $e) {
            Log::error("邮件发送异常：错误信息 " . $e->getMessage());
            return false;
        }
    }

    /**
     * 用户注册
     * @param Request $req
     * @return \think\response\Json
     */
    public function signup1(Request $req)
    {
        if ($req->isPost()) {
            $params = $req->param();

            // 参数验证
            $rule = [
                'type'        => 'require|in:email,phone',
                'target'      => 'require',
                'password'    => 'require|length:6,32',
                'verify_code' => 'require|number|length:6',
            ];
            $msg = [
                'type'        => '无效的注册类型！',
                'target'      => '注册目标不能为空！',
                'password'    => '密码长度必须在 6 到 32 个字符之间！',
                'verify_code' => '验证码格式错误！',
            ];
            $validate = Validate::make($rule, $msg);

            if (!$validate->check($params)) {
                //return json(['code' => 400, 'message' => $validate->getError()]);
            }

            // 验证验证码
            $type = $params['type'];
            $target = $params['target'];
            $verifyCode = $params['captcha'];
            $storedCode = Session::get("{$type}_code_{$target}");

            if (!$storedCode || $storedCode != $verifyCode) {
                return json(['code' => 401, 'message' => '验证码不正确或已过期']);
            }

            // 检查邮箱或手机号是否已注册
            if ($this->isTargetRegistered($type, $target)) {
                return json(['code' => 402, 'message' => '该邮箱或手机号已注册']);
            }

            // 创建用户
            try {
                Db::startTrans();

                $hashedPassword = password_hash($params['password'], PASSWORD_BCRYPT);
                $userId = Db::table('users')->insertGetId([
                    $type       => $target,
                    'password'  => $hashedPassword,
                    'created_at'=> date('Y-m-d H:i:s'),
                ]);

                Db::commit();
                return json(['code' => 200, 'message' => '注册成功！', 'data' => ['id' => $userId, $type => $target]]);
            } catch (\Exception $e) {
                Db::rollback();
                Log::error("注册失败：" . $e->getMessage());
                return json(['code' => 500, 'message' => '注册失败，请稍后再试']);
            }
        }

        return $this->fetch();
    }

    /**
     * 检查邮箱或手机号是否已注册
     * @param string $type
     * @param string $target
     * @return bool
     */
    private function isTargetRegistered($type, $target)
    {
        return Db::table('users')->where($type, $target)->count() > 0;
    }

    // +----------------------------------------------------------------------
    // | 私有函数
    // +----------------------------------------------------------------------

    /**
     * 生成UID
     * @return string
     * @throws \think\Exception
     */
    private function generateUID()
    {
        $prefix = chr(mt_rand(65, 90));
        do {
            $number = mt_rand(100000, 999999);
            $uid = $prefix . $number;
        } while (!空(Db::table('uuid')->where('id', '=', $uid)->find()));
        $bool = Db::table('uuid')->insert(['id' => $uid, 'type' => 1]);
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、账户编号生成失败！");
        }
        return $uid;
    }

    public function agreement(Request $req)
    {
        return $this->fetch();
    }

    // +----------------------------------------------------------------------
    // | 内部方法
    // +----------------------------------------------------------------------

    /**
     * 是否存在
     * @param string $username
     * @param bool $isUid
     * @return mixed
     */
    private function exists($username, $isUid = false)
    {
        if ($isUid) {
            $model = Db::table('account')->field('uid')->where('uid', '=', $username)->find();
        } else {
            $model = Db::table('account')->field('uid')->where('username', '=', $username)->find();
        }
        return empty($model) ? false : $model['uid'];
    }

    /**
     * 账户实例
     * @param string $username
     * @param string|null $password
     * @param string|null $safeword
     * @param bool $session
     * @return array|null
     */
    public function instance($username, $password = null, $safeword = null, $session = false)
    {
        // 查询对象
        $query = Db::table('account')->field('id, password, safeword, create_at, update_at', true)->where('username', '=', $username);
        // 按登录密码查询
        if (!is_null($password)) {
            $query->where('password', '=', encryption($password));
        }
        // 按安全密码查询
        if (!is_null($safeword)) {
            $query->where('safeword', '=', encryption($safeword));
        }
        // 找到账户
        $account = $query->find();
        if (empty($account)) {
            return null;
        }
        // 查询档案
        $profile = Db::table('profile')->field('id, create_at, update_at', true)->where('username', '=', $username)->find();
        // 查询钱包
        $wallet = Db::table('wallet')->field('id, create_at, update_at', true)->where('username', '=', $username)->find();
        // 查询仪表盘
        $dashboard = $this->dashboard($username);
        // 合并数据
        $data = [
            'account'   => $account,
            'profile'   => $profile,
            'wallet'    => $wallet,
            'dashboard' => $dashboard,
        ];
        // 会话保存
        if ($session) {
            session('user', $data);
        }
        // 返回数据
        return $data;
    }

    /**
     * UID 转 UserName
     * @param string $uid
     * @return mixed
     */
    private function uid_to_username($uid)
    {
        return Db::table('account')->where('uid', '=', $uid)->value('username');
    }

    /**
     * 账户属性
     * @param string $username
     * @param string|array $field
     * @return mixed
     */
    private function value($username, $field)
    {
        if (is_array($field)) {
            return Db::table('account')->where('username', '=', $username)->field($field)->find();
        } else {
            return Db::table('account')->where('username', '=', $username)->value($field);
        }
    }

    /**
     * 获取一批人的上级
     * @param array $users
     * @return array
     */
    private function inviters($users)
    {
        return Db::table('account')->field('username, inviter')->where('username', 'in', $users)->select();
    }

    /**
     * 创建账户
     * 外部必须开启事务
     * @param string $username
     * @param string $password
     * @param string $safeword
     * @param string|null $inviter
     * @param array|null $oauth
     * @return array
     * @throws \think\Exception
     */
    private function create($username, $password, $safeword, $inviter = null, $oauth = null)
    {
        // 是否存在
        $bool = $this->exists($username);
        if (!empty($bool)) {
            throw new \think\Exception("很抱歉、该账户已经注册了！");
        }
        // 用户编号
        $uid = $this->generateUID();
        // 基本数据
        $account = [
            'uid'           => $uid,
            'type'          => 0,
            'status'        => 1,
            'username'      => $username,
            'authen'        => 0,
            'inviter'       => $inviter,
        ];
        // 账户注册
        $bool = Db::table('account')->insert(array_merge($account, [
            'password'      => encryption($password ?: 123456),
            'safeword'      => encryption($safeword ?: 123456),
            'create_at'     => $this->timestamp,
            'update_at'     => $this->timestamp,
        ]));
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、账户注册失败请重试！");
        }
        // 存在第三方档案
        $oauth_profile = [
            'nickname'  => null,
            'avatar'    => null,
        ];
        if (!empty($oauth)) {
            // 查询档案并绑定
            $oauth_profile = (new Oauth())->bind($oauth, $username);
        }
        // 建立档案
        $profile = [
            'username'      => $username,
            'nickname'      => $oauth_profile['nickname'] ?: $uid,
            'avatar'        => $oauth_profile['avatar'],
            'wechat'        => $username,
            'qq'            => null,
            'alipay'        => null,
            'realname'      => null,
            'idcard'        => null,
            'authen_reason' => null,
            'bankname'      => null,
            'bankcard'      => null,
            'bankaddress'   => null,
        ];
        $bool = Db::table('profile')->insert(array_merge($profile, [
            'create_at'     => $this->timestamp,
            'update_at'     => $this->timestamp,
        ]));
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、档案建立失败请重试！");
        }
        // 创建钱包
        $wallet = [
            'username'      => $username,
            'money'         => 0,
            'deposit'       => 0,
            'score'         => 0,
            'score_deposit' => 0,
            'spend'         => 0,
            'profit'        => 0,
            'team_profit'   => 0,
            'bonus'         => 0,
            'trade'         => 0,
            'sell'          => 0,
            'buy'           => 0,
        ];
        $bool = Db::table('wallet')->insert(array_merge($wallet, [
            'create_at'     => $this->timestamp,
            'update_at'     => $this->timestamp,
        ]));
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、钱包创建失败请重试！");
        }

        // 初始化仪表盘
        $dashboard = [
            'username'          => $username,
            'total_steps'       => 0,
            'power'             => 0,
            'team_power'        => 0,
            'team_count'        => 0,
            'one'               => 0,
            'two'               => 0,
            'three'             => 0,
            'four'              => 0,
            'five'              => 0,
            'six'               => 0,
            'seven'             => 0,
            'eight'             => 0,
            'lv0'               => 0,
            'lv1'               => 0,
            'lv2'               => 0,
            'lv3'               => 0,
            'lv4'               => 0,
            'lv5'               => 0,
            'lv6'               => 0,
            'lv7'               => 0,
            'lv8'               => 0,
        ];
        $bool = Db::table('dashboard')->insert(array_merge($dashboard, [
            'create_at'         => $this->timestamp,
            'update_at'         => $this->timestamp,
        ]));
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、初始化账户仪表盘请重试！");
        }
        // 注册需要审核
        $register_audit = config('hello.register_audit');
        if (!empty($register_audit)) {
            // 添加记录
            $bool = Db::table('account_audit')->insert([
                'status'    => 0,
                'username'  => $username,
                'create_at' => $this->timestamp,
                'update_at' => $this->timestamp,
            ]);
            if (empty($bool)) {
                throw new \think\Exception("很抱歉、账户审核记录保存失败！");
            }
        }
        // 存在上级
        if (!empty($inviter)) {
            // 递归：更新上级仪表盘、几代的人数更新，同时更新lv0的人数
            $this->dashboard_people($inviter, 1, true);
            // 递归：上级升级
            $this->upgrade($inviter);
        }
        // 合并数据
        $data = [
            'account'   => $account,
            'profile'   => $profile,
            'wallet'    => $wallet,
            'dashboard' => $dashboard,
        ];
        // 返回数据
        return $data;
    }

    // 继续其他方法...

    /**
     * 修改账户
     * 外部必须开启事务
     */
    public function update($username, $data, $session = true)
    {
        // 更新时间
        $data['update_at'] = $this->timestamp;
        // 存在登录密码
        if (array_key_exists('password', $data)) {
            $data['password'] = encryption($data['password']);
        }
        // 存在安全密码
        if (array_key_exists('safeword', $data)) {
            $data['safeword'] = encryption($data['safeword']);
        }
        // 更新数据
        $row = Db::table('account')->where('username', '=', $username)->update($data);
        if (empty($row)) {
            throw new \think\Exception("很抱歉、账户更新失败请重试！");
        }
        // 会话更新
        if ($session) {
            $account = session('account') ?: [];
            $account = array_merge($account, $data);
            session('account', $account);
        }
        // 返回结果
        return true;
    }

    /**
     * 更新或查看仪表盘
     */
    public function dashboard($username, $data = null)
    {
        // 更新仪表盘
        if (!is_null($data)) {
            $data['update_at'] = $this->timestamp;
            $bool = Db::table('dashboard')->where('username', '=', $username)->update($data);
            if (empty($bool)) {
                throw new \think\Exception("很抱歉、仪表盘更新失败！");
            }
        } else {
            // 查询仪表盘
            $data = Db::table('dashboard')->field('id, create_at, update_at', true)->where('username', '=', $username)->find();
            // 返回数据
            return $data;
        }
        // 返回结果
        return true;
    }
  
    /**
     * 递归：上级仪表盘里的人数更新
     */
    public function dashboard_people($username, $index = 1, $lv = false, $op = '+')
    {
        // 第几代的字段
        $fields = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight'];
        // 存在这一代
        if (array_key_exists($index, $fields)) {
            // 具体字段
            $field = $fields[$index];
            // 要更新的数据
            $data = [
                'team_count'    =>  Db::raw('team_count' . $op . '1'),
                $field          =>  Db::raw($field . $op . '1'),
            ];
            // Lv0
            if ($lv === true) {
                $lv = 0;
            }
            // 更新仪表盘
            if (is_int($lv)) {
                $data['lv' . $lv]    =   Db::raw('lv' . $lv . $op . '1');
                $this->dashboard($username, $data);
            }
            // 获取上级
            $inviter = $this->value($username, 'inviter');
            if (!empty($inviter)) {
                // 上级继续更新仪表盘
                $this->dashboard_people($inviter, $index + 1, $lv, $op);
            }
        }
    }

    /**
     * 递归：上级仪表盘里的级别更新
     * @param  $index   最多8层
     */
    public function dashboard_level($inviter, $oldLevel, $newLevel, $index = 1)
    {
        // 仪表盘更新
        $this->dashboard($inviter, [
            'lv' . $oldLevel    =>  Db::raw('lv' . $oldLevel . '-1'),
            'lv' . $newLevel    =>  Db::raw('lv' . $newLevel . '+1'),
        ]);
        // 存在上级
        if ($index < 8) {
            $parent = $this->value($inviter, 'inviter');
            if (!empty($parent)) {
                $this->dashboard_level($parent, $oldLevel, $newLevel, $index + 1);
            }
        }
    }

    /**
     * 账户升级
     * 外部必须开启事务
     */
    public function upgrade($username, $level = null, $force = false)
    {
        // 用户数据
        $user = $this->instance($username);
        // 将要升级的级别
        if (is_null($level)) {
            $level = $user['account']['type'] + 1;
        }
        // 级别配置
        $levels = config('hello.level');
        // 存在这个级别
        if (array_key_exists($level, $levels)) {
            // 当前级别的配置
            $config = $levels[$level];
            // 存在升级条件
            $isCondition = true;
            if (array_key_exists('condition', $config) && !empty($config['condition'])) {
                // 具体条件
                $condition = $config['condition'];
                // 检查：实名认证
                if (array_key_exists('authen', $condition) && $user['account']['authen'] != 1) {
                    // throw new \think\Exception("很抱歉、请先通过实名认证！");
                    $isCondition = false;
                }
                // 检查：直推人数
                if (array_key_exists('direct', $condition)) {
                    // 要求人数都是已认证的
                    if (array_key_exists('direct_authen', $condition) && !empty($condition['direct_authen'])) {
                        $directCount = Db::table('account')->where('inviter', '=', $username)->where('authen', '=', 1)->count('id');
                        $directCount = $directCount ?: 0;
                        if ($directCount < $condition['direct']) {
                            $isCondition = false;
                        }
                    } else {
                        if ($user['dashboard']['one'] < $condition['direct']) {
                            $isCondition = false;
                        }
                    }
                }
                // 检查：直推 下属成员
                if (array_key_exists('direct_lv', $condition)) {
                    // 统计下级级别
                    $lvCount = Db::table('account')->fieldRaw('type, COUNT(id) AS count')->where('inviter', '=', $username)->group('type')->select();
                    $lvData = [];
                    foreach ($lvCount as $key => $value) {
                        $lvData[$value['type']] = $value['count'];
                    }
                    ksort($lvData);
                    foreach ($lvData as $key => $value) {
                        foreach ($lvData as $_key => $_value) {
                            if ($_key > $key) {
                                $lvData[$key] += $_value;
                            }
                        }
                    }
                    // 循环条件
                    foreach ($condition['direct_lv'] as $key => $value) {
                        if (!array_key_exists($key, $lvData) || $lvData[$key] < $value) {
                            // throw new \think\Exception("很抱歉、您直推中的成员级别还未达标！");
                            $isCondition = false;
                            break;
                        }
                    }
                }
                // 检查：算力
                if (array_key_exists('power', $condition) && $user['dashboard']['power'] < $condition['power']) {
                    // throw new \think\Exception("很抱歉、您的算力还未达标！");
                    $isCondition = false;
                }
                // 检查：下属成员
                if (array_key_exists('member', $condition)) {
                    $lvData = [];
                    for ($i = 0;$i <= 8; $i++) {
                        $lvData[$i] = (int) $user['dashboard']['lv' . $i];
                    }
                    ksort($lvData);
                    foreach ($lvData as $key => $value) {
                        foreach ($lvData as $_key => $_value) {
                            if ($_key > $key) {
                                $lvData[$key] += $_value;
                            }
                        }
                    }
                    foreach ($condition['member'] as $key => $value) {
                        if ($lvData[$key] < $value) {
                            // throw new \think\Exception("很抱歉、您团队中的成员级别还未达标！");
                            $isCondition = false;
                            break;
                        }
                    }
                }
                // 检查：团队人数
                if (array_key_exists('people', $condition) && $user['dashboard']['team_count'] < $condition['people']) {
                    // throw new \think\Exception("很抱歉、您的团队人数还未达标！");
                    $isCondition = false;
                }
                // 检查：是否消费
                if (array_key_exists('shop', $condition)) {
                    // 检查：是否需要购买矿机
                    if (array_key_exists('machine', $condition['shop']) && !empty($condition['shop']['machine'])) {
                        $need_machine_count = $condition['shop']['machine'];
                        if ($need_machine_count === true) {
                            $need_machine_count = 1;
                        }
                        $my_machine_count = Db::table('machine')->where('source', '=', 1)->where('username', '=', $username)->count('id');
                        if ($my_machine_count < $need_machine_count) {
                            $isCondition = false;
                        }
                    }
                }
            }
            // 通过升级条件
            if ($force || $isCondition) {
                // 查询升级发奖记录
                $upgradeLog = Db::table('upgrade')->where('username', '=', $username)->where('level', '=', $level)->find();
                // 不存在这个级别的发奖记录
                if (empty($upgradeLog)) {
                    $upgradeData = [
                        'username'  =>  $username,
                        'level'     =>  $level,
                        'create_at' =>  $this->timestamp,
                    ];
                    // 存在奖励
                    if (array_key_exists('reward', $config)) {
                        // 具体奖励
                        $reward = $config['reward'];
                        // 奖励：可用资金
                        if (array_key_exists('money', $reward)) {
                            $give_money = $reward['money'];
                            if (is_array($reward['money'])) {
                                $min = $reward['money'][0];
                                $max = $reward['money'][1];
                                $percent = $reward['money'][2];
                                $give_money = rand($min * $percent, $max * $percent) / $percent;
                            }
                            if ($give_money > 0) {
                                $upgradeData['money'] = $give_money;
                                (new Wallet())->change(
                                    $username, 50, [
                                        1 => [
                                            $user['wallet']['money'],
                                            $give_money,
                                            $user['wallet']['money'] + $give_money
                                        ]
                                    ]
                                );
                            }
                        }
                        // 奖励：矿机
                        if (array_key_exists('machine', $reward) && !empty($reward['machine'])) {
                            $upgradeData['machine'] = json_encode($reward['machine']);
                            foreach ($reward['machine'] as $key => $product) {
                                // 赠送矿机
                                (new Store())->give($product, $username);
                            }
                        }
                        // 奖励：算力
                        if (array_key_exists('power', $reward) && $reward['power'] > 0) {
                            $upgradeData['power'] = $reward['power'];
                            $this->dashboard($username, [
                                'power'    =>  Db::raw('power+' . $reward['power']),
                            ]);
                        }
                    }
                    // 增加发奖记录
                    $row = Db::table('upgrade')->insert($upgradeData);
                    if (empty($row)) {
                        throw new \think\Exception("很抱歉、升级奖励发送失败！");
                    }
                }
                // 更新当前用户的级别
                $this->update($username, [
                    'type'  =>  $level
                ]);
                // 存在上级
                if (!empty($user['account']['inviter'])) {
                    // 递归：更新上级仪表盘
                    $this->dashboard_level($user['account']['inviter'], $user['account']['type'], $level);
                    // 递归：上级升级
                    $this->upgrade($user['account']['inviter']);
                }
                // 升级成功
                return true;
            }
        }
        // 升级失败
        return false;
    }

    /**
     * 档案属性调整
     */
    public function attrs($username, $data)
    {
        // 身份证号码
        if (array_key_exists('idcard', $data)) {
            // 查询身份证
            $bool = Db::table('profile')->where('idcard', '=', $data['idcard'])->where('username', '<>', $username)->find();
            if (!empty($bool)) {
                throw new \think\Exception("很抱歉、该身份证号码已经存在！");
            }
        }
        // 修改时间
        $data['update_at'] = $this->timestamp;
        // 修改数据
        $bool = Db::table('profile')->where('username', '=', $username)->update($data);
        if (empty($bool)) {
            throw new \think\Exception("很抱歉、档案数据更新失败！");
        }
    }


        /**
     * 账户登录
     */
    public function login($username, $password, $user = null)
    {
        if (is_null($user)) {
            $user = $this->instance($username, $password);
            if (empty($user)) {
                throw new \think\Exception("很抱歉、账户或密码不正确！");
            }
            if (empty($user['account']['status'])) {
                throw new \think\Exception("很抱歉、该账户已被冻结！");
            }
        }
        session('user', $user);
        return $user;
    }

    /**
     * 快速登录
     */
    public function quick_login($username)
    {
        $user = $this->instance($username);
        if (empty($user)) {
            throw new \think\Exception("很抱歉、账户或密码不正确！");
        }
        if (empty($user['account']['status'])) {
            throw new \think\Exception("很抱歉、该账户已被冻结！");
        }
        session('user', $user);
        return $user;
    }

     public function updateLoginInfoByUsername($username)
    {
        // 获取用户的 IP 地址和设备型号
        $loginIp = request()->ip();
        $deviceType = $this->getDeviceType();

        // 更新用户的 login_ip 和 device_type
        Db::table('account')
            ->where('username', $username)
            ->update([
                'login_ip' => $loginIp,
                'device_type' => $deviceType,
            ]);

        // 不返回任何信息
    }

    /**
     * 获取设备型号的方法
     */
    private function getDeviceType()
    {
        $userAgent = request()->header('user-agent');
        // 简单解析 User-Agent 获取设备类型的示例
        if (strpos($userAgent, 'iPhone') !== false) {
            return 'iPhone';
        } elseif (strpos($userAgent, 'Android') !== false) {
            return 'Android';
        } elseif (strpos($userAgent, 'iPad') !== false) {
            return 'iPad';
        } else {
            return 'Other';
        }
    }
 /**
     * 示例方法，调用 updateLoginInfoByUsername
     */
    public function someOtherMethod()
    {
        // 假设已经验证用户并获取了用户名
        $username = 'example_user'; // 用户名示例

        // 调用 updateLoginInfoByUsername 方法更新用户的 IP 和设备型号
        $this->updateLoginInfoByUsername($username);

        // 其他逻辑
    }
    /**
     * 流水记录
     */
   public function record(Request $req)
    {
        // 查询记录
        if ($req->isPost()) {
            // 用户账号
            $username = session('user.account.username');
            // 获取货币
            $cid = $req->param('cid/d', 1);
            if (!in_array($cid, [1, 2, 3, 4])) {
                $cid = 1;
            }
            // 当前货币
            $currency = config('hello.currencys.' . $cid);
            // 所有业务
            $businesses = array_intersect_key(config('hello.businesses'), array_fill_keys($currency['businesses'], true));
            // 分页数据
            $page = $req->param('page/d', 1);
            $size = $req->param('size/d', 20);
            $offset = $page - 1 < 0 ? 0 : ($page - 1) * $size;
            // 查询对象
            $query = Db::table('record')->where('username', '=', $username)->where('currency', '=', $cid);
            // 按类型查询
            $type = $req->param('type');
            if (is_null($type)) {
                $query->where('business', 'in', $currency['businesses']);
            } else {
                $query->where('business', '=', $type);
            }
            // 查询数据
            $list = $query->field('rid, business, now, create_at')
                          ->limit($offset, $size)->order('create_at DESC')
                          ->select();
            // 查询总额
            $total = $query->sum('now');
            // 返回结果
            return json([
                'code'              =>  200,
                'message'           =>  '恭喜您、操作成功！',
                'data'              =>  [
                    'unit'          =>  config('hello.unit'),
                    'total'         =>  $total,
                    'currency'      =>  $currency,
                    'businesses'    =>  $businesses,
                    'list'          =>  $list,
                ],
            ]);
        }
        // 渲染视图，路径应为 'account/record'
        return $this->fetch('account/record');
    }
    /**
     * 账户退出
     */
    public function quit()
    {
        session('user', null);
        session('staff', null);
    }

    // +----------------------------------------------------------------------
    // | 外部接口
    // +----------------------------------------------------------------------

    /**
     * 用户首页
     */
    public function index(Request $req)
    {
        // 配置信息
        $configData = Db::table('config')->select();
        $config = [];
        foreach ($configData as $key => $item) {
            $config[$item['token']] = json_decode($item['value'], true);
        }
        // 当前用户
        $username = session('user.account.username');
        $user = $this->instance($username, null, null, true);

        // 获取一周签到状态
        $weekSign = $this->getWeekSignStatus($username);



        // 注册需要审核
        $register_audit = config('hello.register_audit');
        if (!empty($register_audit)) {
            $audit_status = Db::table('account_audit')->where('username', '=', $username)->value('status');
            if (!is_null($audit_status) && $audit_status != 1) {
                $this->assign('audit', $this->timestamp);
            }
        }
        // 最新新闻
        $news = Db::table('article')->field('id, image, title, date')->where('type', '<>', 8)->where('date', '<=', date('Y-m-d H:i:s'))->order('top DESC, sort DESC, date DESC')->limit(5)->select();
        $this->assign('news', $news);


        // 连续签到天数计算
        $consecutiveDays = 0;
        foreach ($weekSign as $day) {
            if ($day['signed']) {
                $consecutiveDays++;
            } else {
                break;
            }
        }

        // 将连续签到数据添加到用户数据中
        $user['sign'] = [
            'count' => $consecutiveDays,
        ];


        $today = date('Y-m-d'); 
        $todayWeekday = date('w'); 
      
        foreach ($weekSign as &$dayData) {
            $dayData['formatted_date'] = date('Y-m-d', strtotime($dayData['day']));
        }
        
        
        

  
        $signRecordToday = Db::table('sign_records')
            ->where('username', '=', $username)
            ->where('date', '=', $today)
            ->find();


      
        $isSignedToday = !empty($signRecordToday);

     
        if (!$isSignedToday) {
            $yesterday = date('Y-m-d', strtotime('-1 day'));
            $signRecordYesterday = Db::table('sign_records')
                ->where('username', '=', $username)
                ->where('date', '=', $yesterday)
                ->order('consecutive_days', 'desc')
                ->find();
            $lastConsecutiveDays = $signRecordYesterday ? $signRecordYesterday['consecutive_days'] : 0;
        } else {
          
            $lastConsecutiveDays = $signRecordToday['consecutive_days'];
        }
        
        
        
        
        
        
        // 显示页面 
        $user['wallet']['money'] = number_format($user['wallet']['money'], 2);
        $user['wallet']['deposit'] = number_format($user['wallet']['deposit'], 2);
        $user['dashboard']['walkingDistance'] = number_format($user['dashboard']['total_steps']*0.0007, 2);
        $this->assign('user', $user);
        $this->assign('isSignedToday', $isSignedToday);
        $this->assign('lastConsecutiveDays', $lastConsecutiveDays);
        $this->assign('weekSign', $weekSign);
        $this->assign('today', $today);
        $this->assign('todayWeekday', $todayWeekday);
        $this->assign('config', $config);
        return $this->fetch();
    }
    /**
     * 获取一周签到状态
     *
     * @param string $username 用户名
     * @return array 一周签到状态
     */
    public function getWeekSignStatus($username)
    {
        // 当前日期范围（本周）
        $monday = date('Y-m-d', strtotime('monday this week'));
        $sunday = date('Y-m-d', strtotime('sunday this week'));

        // 查询用户签到记录
        $records = Db::table('sign_records')
            ->where('username', '=', $username)
            ->whereBetween('date', [$monday, $sunday])
            ->column('date');

        // 一周签到状态
        $weekDays = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
        $weekSign = [];
        for ($i = 0; $i < 7; $i++) {
            $day = date('Y-m-d', strtotime("+$i day", strtotime($monday)));
            $weekSign[] = [
                'day' => $i + 1,
                'label' => $weekDays[$i],
                'signed' => in_array($day, $records),
            ];
        }

        return $weekSign;
    }

    /**
     * 今日签到
     *
     * @param string $username 用户名
     * @return array 签到结果
     */
    public function signToday0($username)
    {
        // 获取今天的日期
        $today = date('Y-m-d');

        // 检查是否已经签到
        $exists = Db::table('sign_records')
            ->where('username', '=', $username)
            ->where('date', '=', $today)
            ->find();

        if ($exists) {
            return [
                'code' => 400,
                'message' => '今天已经签到过了！',
            ];
        }

        // 插入签到记录
        Db::table('sign_records')->insert([
            'username' => $username,
            'date' => $today,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        return [
            'code' => 200,
            'message' => '签到成功！',
        ];
    }


    /**
     * 今日签到
     *
     * @param string $username 用户名
     * @return array 签到结果
     */
    public function signToday($username)
    {
        $uid = session('user.account.uid');;
        if (empty($uid)) {
            $data = array('code' => '001', 'msg' => '请登录后再进行签到！');
            $this->ajaxReturn($data);
        }

        // 获取今天的日期
        $today = date('Y-m-d');

        try {
            // 检查是否已经签到
            $exists = Db::table('sign_records')
                ->where('username', '=', $username)
                ->where('date', '=', $today)
                ->find();

            if ($exists) {
                return [
                    'code' => 400,
                    'message' => '今天已经签到过了！',
                ];
            }

            // 插入签到记录
            Db::table('sign_records')->insert([
                'username' => $username,
                'date' => $today,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ]);

            return [
                'code' => 200,
                'message' => '签到成功！',
            ];
        } catch (DbException $e) {
            // 捕获数据库异常并返回错误信息
            return [
                'code' => 500,
                'message' => '数据库错误：' . $e->getMessage(),
            ];
        }
    }


    /**
     * 数据同步
     */
    public function sync(Request $req)
    {
        try {
            // 开启事务
            Db::startTrans();
            // 获取账号
            $username = session('user.account.username');
            // 查询账号
            $type = $this->value($username, 'type');
            // 等级同步
            $levels = config('hello.level');
            for ($i = $type + 1; $i < count($levels); $i++) {
                $bool = $this->upgrade($username, $i);
                if (empty($bool)) {
                    break;
                }
            }
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            Db::rollback();
            return json([
                'code'      =>  555,
                'message'   =>  $e->getMessage()
            ]);
        }
        // 同步成功
        return json([
            'code'      =>  200,
            'message'   =>  'SUCCESS'
        ]);
    }

    /**
     * 用户资料
     */
    public function getUserLevel($username)
    {
        // 查询用户等级信息
        $level = Db::name('account')->where('username', $username)->value('member_level');
        
        // 如果没有找到等级信息，设置默认等级
        if (!$level) {
            $level = '未定义';
        }

        return $level;
    }

    public function profile(Request $req)
    {
        // 用户账号
        $username = session('user.account.username');
        // 用户对象
        $user = $this->instance($username, null, null, true);

        // 获取用户等级
        $level = $this->getUserLevel($username);
        $this->assign('level', $level);

        // 授权对象
        $oa = new Oauth();
        $qqconfig = config('hello.oauth.qq');
        if (!empty($qqconfig) && !empty($qqconfig['enable']) && !empty($qqconfig['appid'])) {
            $qqprofile = $oa->find(Oauth::PLATFORM_QQ, $qqconfig['appid'], $username);
            $this->assign('qqprofile', $qqprofile);
        }

        // 将用户数据传递到视图
          $this->assign('user', $user);

        return $this->fetch();
    }

    /**
     * 编辑资料
     *
     * @param Request $req
     * @return \think\response\Json
     */
    public function edit(Request $req)
    {
        // 验证提交的数据
        $validateResult = $this->validateEditRequest($req);
        if ($validateResult !== true) {
            return json($validateResult);
        }

        // 获取用户账号
        $username = session('user.account.username');

        // 获取提交的数据
        $data = $req->only(['nickname', 'wechat', 'qq', 'alipay', 'bankname', 'bankcard', 'bankaddress']);

        // 修改账户
        $this->attrs($username, $data);

        // 保存日志
        $this->log(7);

        // 返回结果
        return json([
            'code'      =>  200,
            'message'   =>  '恭喜您、操作成功！',
        ]);
    }

    /**
     * 验证编辑资料的请求数据
     *
     * @param Request $req
     * @return array|true
     */
    protected function validateEditRequest(Request $req)
    {
        $rules = [
            'nickname'     => 'require|min:1',
            'wechat'       => 'require|min:5',
            'qq'           => 'require|number|length:5,11',
            'alipay'       => 'require|min:5',
            'bankname'     => 'require|min:2',
            'bankcard'     => 'require|number|min:6',
            'bankaddress'  => 'require|min:3',
        ];

        $messages = [
            'nickname.require'    => '很抱歉、请填写个性昵称！',
            'wechat.require'      => '很抱歉、请填写微信账号！',
            'wechat.min'          => '很抱歉、微信账号长度不能小于5位！',
            'qq.require'          => '很抱歉、请填写QQ号码！',
            'qq.number'           => '很抱歉、QQ号码必须为数字！',
            'qq.length'           => '很抱歉、QQ号码长度必须在5到11位之间！',
            'alipay.require'      => '很抱歉、请填写支付宝账号！',
            'alipay.min'          => '很抱歉、支付宝账号长度不能小于5位！',
            'bankname.require'    => '很抱歉、请填写银行名称！',
            'bankname.min'        => '很抱歉、银行名称长度不能小于2位！',
            'bankcard.require'    => '很抱歉、请填写银行卡号！',
            'bankcard.number'     => '很抱歉、银行卡号必须为数字！',
            'bankcard.min'        => '很抱歉、银行卡号长度不能小于6位！',
            'bankaddress.require' => '很抱歉、请填写银行地址！',
            'bankaddress.min'     => '很抱歉、银行地址长度不能小于3位！',
        ];

        $result = $this->validate($req->param(), $rules, $messages);

        if ($result !== true) {
            return [
                'code'      =>  400,
                'message'   =>  $result
            ];
        }

        return true;
    }
    /**
     * 我的头像
     */
   
     public function avatar(Request $request)
    {
        if ($request->isPost()) {
        $username = session('user.account.username');
        if (!$username) {
          
            return json(['success' => false, 'message' => '用户未登录']);
        }

        $file = request()->file('avatar');
        if (!$file) {
           
            return json(['success' => false, 'message' => '没有文件上传']);
        }

        $validate = [
            'size' => 10485760, 
            'ext' => 'jpg,png,gif,jpeg' 
        ];
        $info = $file->validate($validate);
        if (!$info) {
            
            return json(['success' => false, 'message' => $file->getError()]);
        }

     
      $directory = './upload/avatars/';
        if (!is_dir($directory)) {
                mkdir($directory, 0777, true);
            }
        
        $info = $file->move($directory);
        if (!$info) {
          
            return json(['success' => false, 'message' => '文件上传失败']);
        }

        $filePath = $directory . $info->getSaveName();

        $result = Db::table('profile')
            ->where('username', $username)
            ->update(['avatar' => $info->getSaveName()]);

        if ($result) {
           
            return json(['success' => true,'code' =>  200, 'avatar' => $filePath]);
        } else {
         
            return json(['success' => false, 'message' => '头像更新失败']);
          }
        } else {
            
            return json(['code' => 501, 'info' => '非法请求方法']);
        }
    }


// 三方代付平台API配置
    private $apiUrl = 'https://shapi.worldp5599.com/v1/dfapi/add';
    private $apiKey = 'kHDCYB2OtZdT96IDA256ru9KDasrnxSpF690fw3irJerf1ZUKntRoiHLmfPIqfJt';
    
    private $merchantId = '5910';

    // 提现页面的渲染方法
    public function withdraw()
    {
        // 生成唯一的提现流水号
        $out_trade_no = $this->generateOutTradeNo();

        // 将流水号传递给视图
        return view('account/withdrawal', ['out_trade_no' => $out_trade_no]);
    }

    /**
     * 提交提款申请
     *
     * @param Request $request
     * @return \think\response\Json
     */
    public function submit(Request $request)
    {
    

        // 获取表单数据
        $params = $request->post();

        // 验证表单数据
        $validate = $this->validate($params, [
            'out_trade_no' => 'require|max:32',
            'money'        => 'require|number|gt:0',
            'cardnumber'   => 'require|length:16,19',
            'bankname'     => 'require|max:50',
            'subbranch'    => 'require|max:100',
            'accountname'  => 'require|max:50',
            'remark'       => 'max:255',
        ], [
            'out_trade_no.require' => '请输入提现流水号',
            'out_trade_no.max'     => '提现流水号不能超过32个字符',
            'money.require'        => '请输入提现金额',
            'money.number'         => '提现金额必须是数字',
            'money.gt'             => '提现金额必须大于0',
            'cardnumber.require'   => '请输入银行卡号',
            'cardnumber.length'    => '银行卡号长度必须在16到19位之间',
            'bankname.require'     => '请输入银行名称',
            'bankname.max'         => '银行名称不能超过50个字符',
            'subbranch.require'    => '请输入开户行地址',
            'subbranch.max'        => '开户行地址不能超过100个字符',
            'accountname.require'  => '请输入账户姓名',
            'accountname.max'      => '账户姓名不能超过50个字符',
            'remark.max'           => '备注不能超过255个字符',
        ]);

        if ($validate !== true) {
            return json(['code' => 400, 'message' => $validate]);
        }
         $uid = session('user.account.uid');
         $username = session('user.account.username');
        // 检查用户余额是否足够
        $account = Db::name('wallet')->where('username', $username)->find();
        if ($account['money'] < $params['money']) {
            return json(['code' => 400, 'message' => '余额不足']);
        }

        // 冻结用户资金
        Db::name('wallet')->where('username', $username)->update([
            'money' => $account['money'] - $params['money'],
            'deposit' => $account['deposit'] + $params['money']
        ]);

        // 添加用户UID
        $data['username'] = $username;
        $data['account_name'] = $params['accountname'];
        $data['amount'] = number_format($params['money'], 2);
        $data['bank_card'] = $params['cardnumber'];
        $data['bank_name'] = $params['bankname'];
        $data['bank_address'] = $params['subbranch'];
        $data['out_trade_no'] = $params['out_trade_no'];
        $data['status'] = 'pending'; // 状态为待处理
        $data['created_at'] = date('Y-m-d H:i:s');

        // 保存到数据库
        $result = Db::name('withdrawal')->insert($data);

        if ($result) {
            // 发起三方代付请求
            $response = $this->initiateWithdraw($data);

            if ($response['status'] === 'success') {
                return json(['code' => 200, 'message' => '提现申请提交成功']);
            } else {
                // 如果请求失败，解冻用户资金
                Db::name('wallet')->where('username', $username)->update([
                    'money' => $account['money'],
                    'deposit' => $account['deposit'] - $params['money']
                ]);
                return json(['code' => 500, 'message' => '提交失败：' . $response['msg']]);
            }
        } else {
            return json(['code' => 500, 'message' => '提交失败，请稍后再试']);
        }
    }

    /**
     * 发起三方代付提款请求
     *
     * @param array $data
     * @return array
     */
    private function initiateWithdraw($data)
    {    //accountname=1&bankname=2&cardnumber=3&mchid=4&money=200.00&notifyurl=5&out_trade_no=6&subbranch=7&key=8
       
       $sign_params = [
            'accountname' => $data['account_name'],
            'bankname' => $data['bank_name'],
            'cardnumber' => $data['bank_card'],
            'mchid' => $this->merchantId,
            'money' => $data['amount'],
            'notifyurl' => 'https://shapi.worldp5599.com/v1/dfapi/add/api/v1/Liubangdfpay/out_callback', 
            'out_trade_no' => $data['out_trade_no'],
            'subbranch' => $data['bank_address']
            
            
           
        ];
       
        $sign_params000 = [
            'accountname' => '攀枝花',
            'bankname' => '中国银行',
            'cardnumber' => '6223421837743708107',
            'mchid' => '5910',
            'money' => '101.00',
            'notifyurl' => 'https://shapi.worldp5599.com/v1/dfapi/add/api/v1/Liubangdfpay/out_callback', 
            'out_trade_no' => '1694592877958750',
            'subbranch' => '中国银行'
        
        ];
       
        $params = [
            'accountname' => $data['account_name'],
            'bankname' => $data['bank_name'],
            'cardnumber' => $data['bank_card'],
            'mchid' => $this->merchantId,
            'money' => $data['amount'],
            'notifyurl' => 'https://shapi.worldp5599.com/v1/dfapi/add/api/v1/Liubangdfpay/out_callback', 
            'out_trade_no' => $data['out_trade_no'],
            'subbranch' => $data['bank_address'],
            'cardtype' => 0, // 默认值
            
           
        ];

        $params['sign'] = $this->generateSign($sign_params, $this->apiKey);
      //  header('Content-type:text/json'); 
        //print_r($sign_params);
        //print_r($params['sign']);

        return $this->postRequest($this->apiUrl, $params);
    }

    /**
     * 处理三方代付回调通知
     *
     * @param Request $request
     * @return \think\response\Json
     */
    public function handleCallback(Request $request)
    {
        // 验证回调IP
        $allowed_ips = ['45.63.71.153'];
        if (!in_array($request->ip(), $allowed_ips)) {
            return json(['code' => 403, 'message' => 'Forbidden']);
        }

        $params = $request->post();
        $receivedSign = $params['sign'];
        unset($params['sign']);

        $calculatedSign = $this->generateSign($params);

        if ($receivedSign === $calculatedSign) {
            if ($params['status'] === 'success') {
                // 签名验证成功且状态为成功，处理逻辑
                $withdrawRequest = Db::name('withdraw_requests')
                    ->where('out_trade_no', $params['out_trade_no'])
                    ->find();

                if ($withdrawRequest && $withdrawRequest['status'] !== 'completed') {
                    // 更新提现请求状态
                    Db::name('withdraw_requests')
                        ->where('out_trade_no', $params['out_trade_no'])
                        ->update(['status' => 'completed']);

                    // 扣除用户冻结资金
                    Db::name('account')->where('uid', $withdrawRequest['uid'])->update([
                        'frozen' => Db::raw('frozen-' . $withdrawRequest['money'])
                    ]);
                }
            }
            return json(['code' => 200, 'message' => 'success']);
        } else {
            // 签名验证失败
            return json(['code' => 400, 'message' => '签名验证失败']);
        }
    }

    /**
     * 生成唯一的提现流水号
     *
     * @return string
     */
    private function generateOutTradeNo()
    {
        return uniqid('tx'); // 使用uniqid生成唯一ID，前缀为tx_
    }

    /**
     * 生成签名
     *
     * @param array $params
     * @return string
     */
    private function generateSign00($params)
    {
        ksort($params);
        $queryString = http_build_query($params) . '&key=' . $this->apiKey;
        
        return strtoupper(md5($queryString));
    }
    


function generateSign($params, $apiKey) {

    ksort($params);

    $stringA = '';
    foreach ($params as $key => $value) {
       
        if ($value !== '' && $value !== null) {
            if ($stringA !== '') {
                $stringA .= '&';
            }
            $stringA .= $key . '=' . $value;
        }
    }

    $stringSignTemp = $stringA . '&key=' . $apiKey;
  
  echo json_encode($stringSignTemp);
  
    $sign = md5($stringSignTemp);

    $sign = strtoupper($sign);

    return $sign;
}


    
   public function verifySign($params, $signature) {
        
        $expectedSignature = $this->generateSign($params);
        
       
        return $expectedSignature === $signature;
    }
    

    /**
     * 提交POST请求
     *
     * @param string $url
     * @param array $params
     * @return array
     */
    private function postRequest($url, $params)
    {
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        $response = curl_exec($ch);
        curl_close($ch);

        return json_decode($response, true);
    }
    /**
     * 修改密码
     */
    public function reset(Request $req)
    {
        if ($req->isPost()) {
            // 验证参数
            $rule = [
                'type'          =>  'require|number|between:1,2',
                'password'      =>  'require|length:6,32',
                'verify_code'   =>  'require|number|length:' . config('hello.sms.length'),
            ];
            $msg  = [
                'type'          =>  '很抱歉、修改类型不正确！',
                'password'      =>  '很抱歉、登录密码长度必须在6-32之间！',
                'verify_code'   =>  '很抱歉、短信验证码格式错误！',
            ];
            $validate = Validate::make($rule, $msg);
            if (!$validate->check($req->param())) {
                return json([
                    'code'      =>  501,
                    'message'   =>  $validate->getError(),
                ]);
            }
            // 检测短信
            $username = session('user.account.username');
            $verify_code = $req->param('verify_code');
            $Service = new Service();
            if (!$Service->smsCheck($username, $verify_code)) {
                return json([
                    'code'      =>  502,
                    'message'   =>  '很抱歉、短信验证码不正确！',
                ]);
            }
            // 根据类型修改
            $type = $req->param('type');
            $data = [];
            if ($type == 1) {
                $data = ['password' => $req->param('password')];
            } else {
                $data = ['safeword' => $req->param('password')];
            }
            // 修改账户
            $this->update($username, $data);
            // 退出登录
            if ($type == 1) {
                // 保存日志
                $this->log(5);
                $this->quit();
            } else {
                // 保存日志
                $this->log(6);
            }
            // 返回结果
            return json([
                'code'          =>  200,
                'message'       =>  '恭喜您、操作成功！',
            ]);
        }
        return $this->fetch();
    }
    
     /**
     * 处理证书上传
     */
    private function handleCertificateUpload(Request $req, $config)
    {
        if (!array_key_exists('certificate', $config)) {
            return null;
        }

        $certificate = [];
        $folder = Env::get('root_path') . 'public/cert/';
        is_dir($folder . date('Ymd')) or mkdir($folder . date('Ymd'), 0777, true);

        // 处理上传的图片
        foreach (['front', 'back'] as $key) {
            if (!empty($config['certificate'][$key])) {
                $file = $req->file($key);
                if (empty($file)) {
                    throw new \Exception("请提供身份证{$key}图片！");
                }
                // 图片检查
                $info = $file->validate(['ext' => 'jpg,jpeg,png'])->check();
                if (!$info) {
                    throw new \Exception("错误的身份证{$key}图片！");
                }
                // 图片压缩
                $image = \think\Image::open($file);
                $certificate[$key] = '/' . date('Ymd') . '/' . md5(time() . mt_rand()) . '.' . $image->type();
                $image->thumb(640, 1136)->save($folder . $certificate[$key]);
            }
        }

        return $certificate;
    }

    /**
     * 实名认证
     */
    public function authen(Request $req)
    {
        // 用户账号
        $username = session('user.account.username');
        // 用户资料
        $user = $this->instance($username, null, null, true);
        $this->assign('user', $user);

        // 提交认证
        if ($req->isPost()) {
            // 验证参数
            $rule = [
                'nickname' => 'chsAlphaNum|max:10', // 个性昵称可以是中文、字母和数字，最大长度为10
                'name'     => 'require|chs|length:2,4', // 真实姓名必须是2到4个中文字符
                'id_card'  => 'require|regex:/^[1-9]\d{5}(18|19|20)\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/', // 中国身份证号码的正则表达式
            ];
            $msg = [
                'nickname.chsAlphaNum' => '个性昵称只能包含汉字、字母和数字！',
                'nickname.max'         => '个性昵称不能超过10个字符！',
                'name.require'         => '真实姓名不能为空！',
                'name.chs'             => '真实姓名必须是中文字符！',
                'name.length'          => '真实姓名长度必须是2到4个字符！',
                'id_card.require'      => '身份证号码不能为空！',
                'id_card.regex'        => '身份证号码格式不正确！',
            ];
            $validate = Validate::make($rule, $msg);

            if (!$validate->check($req->param())) {
                return json([
                    'code'    => 501,
                    'message' => $validate->getError(),
                ]);
            }

            // 检测认证状态
            $authen = $user['account']['authen'];
            if ($authen == 1) {
                return json([
                    'code'    => 502,
                    'message' => '您已认证通过，请勿重复提交！',
                ]);
            } elseif ($authen == 2) {
                return json([
                    'code'    => 503,
                    'message' => '您的认证信息正在审核中，请耐心等待！',
                ]);
            } elseif ($authen == 3) {
                return json([
                    'code'    => 504,
                    'message' => '您的认证申请被拒绝，请重新提交！',
                ]);
            }

            // 注册需要审核
            $register_audit = config('hello.register_audit');
            if (!empty($register_audit)) {
                $audit_status = Db::table('account_audit')->where('username', '=', $username)->value('status');
                if (!is_null($audit_status) && $audit_status != 1) {
                    return json([
                        'code'    => 520,
                        'message' => '您的账户尚未通过审核！',
                    ]);
                }
            }

            try {
                // 认证配置
                $config = config('hello.authentication');
                // 调用已有的处理证书上传方法
                $certificate = $this->handleCertificateUpload($req, $config);

                // 开启事务
                Db::startTrans();
                // 档案资料
                $data = [
                    'nickname' => $req->param('nickname'),
                    'name'     => $req->param('name'),
                    'id_card'  => $req->param('id_card'),
                    'front_image' => $certificate['front'],
                    'back_image'  => $certificate['back'],
                ];
                Db::table('account')->where('uid', $user['uid'])->update($data);

                // 自动审核
                $audit = $config['audit'] ?? true;
                $authen_status = 2; // 默认审核中
                if ($audit === false) {
                    $authen_status = 1; // 审核通过
                    // 认证升级
                    $this->upgrade($username, 1);
                }
                // 更新用户状态
                $this->update($username, [
                    'authen' => $authen_status,
                ]);

                // 保存日志
                $this->log(8);
                // 提交事务
                Db::commit();
            } catch (\Exception $e) {
                Db::rollback();
                return json([
                    'code'    => 504,
                    'message' => $e->getMessage(),
                ]);
            }

            // 返回结果
            return json([
                'code'    => 200,
                'message' => '恭喜您，操作成功！',
            ]);
        }

        // 注册需要审核
        $register_audit = config('hello.register_audit');
        if (!empty($register_audit)) {
            $audit_status = Db::table('account_audit')->where('username', '=', $username)->value('status');
            if (!is_null($audit_status) && $audit_status != 1) {
                $this->assign('audit', $this->timestamp);
            }
        }

        // 显示页面
        return $this->fetch();
    }
    /**
     * 注册账户
     */
    public function signup(Request $req)
    {
        if ($req->isPost()) {
            // 验证参数
            $rule = [
              //  'username'      =>  'require|mobile',
              //  'password'      =>  'require|length:6,32',
            //    'safeword'      =>  'require|length:6,32',
                'type'        => 'require|in:email,phone',
                'target'      => 'require',
                'inviter'       =>  'require|length:6,11',
                'verify_code'   =>  'require|number|length:' . config('hello.sms.length'),
            ];
            if (empty(config('hello.inviter.enable'))) {
                $rule['inviter'] = 'length:6,11';
            }
            $msg  = [
              //  'username'      =>  't很抱歉、用户账号必须是正确的手机号码！',
                'password'      =>  '很抱歉、登录密码长度必须在6-32之间！',
                'safeword'      =>  '很抱歉、安全密码长度必须在6-32之间！',
                'inviter'       =>  '很抱歉、请填写正确的邀请码！',
                'verify_code'   =>  '很抱歉、验证码格式错误！',
                 'type'        => '无效的注册类型！',
                'target'      => '注册目标不能为空！',
            ];
            $validate = Validate::make($rule, $msg);
            if (!$validate->check($req->param())) {
                return json([
                  //  'code'      =>  501,
                  //  'message'   =>  $validate->getError(),
                ]);
            }
            // 检测短信
           // $username = $req->param('username');
          //  $verify_code = $req->param('verify_code');
            $type = $params['type'];
            $target = $params['target'];
            $verifyCode = $params['captcha'];
            $storedCode = Session::get("{$type}_code_{$target}");
            $Service = new Service();
          //  if (!$Service->smsCheck($username, $verify_code)) {
         //       return json([
         //           'code'      =>  502,
         //           'message'   =>  '很抱歉、短信验证码不正确！',
         //       ]);
           // }
            // 获取Oauth
            $o = $req->param('o') ?: null;
            // 已开启邀请制
            $inviter = $req->param('inviter');
            // 需要邀请码
            if (!empty(config('hello.inviter.enable')) && empty($inviter)) {
                return json([
                    'code'      =>  503,
                    'message'   =>  '很抱歉、请提供邀请码！',
                ]);
            }
            // 存在邀请码
            if (!empty($inviter) && strlen($inviter) == 11) {
                $uid = $this->value($inviter, 'uid');
                if (empty($uid)) {
                    return json([
                        'code'      =>  503,
                        'message'   =>  '很抱歉、该邀请码不存在！',
                    ]);
                }
            }
            // 已开启邀请人匿名制
            if (!empty(config('hello.inviter.anonymous')) && !empty($inviter) && strlen($inviter) != 11) {
                // 根据UID查询账号
                $inviter = $this->uid_to_username($inviter);
                if (empty($inviter)) {
                    return json([
                        'code'      =>  503,
                        'message'   =>  '很抱歉、该邀请码不存在！',
                    ]);
                }
            }

            try {
                // 开启事务
                Db::startTrans();
                // 创建账户
                $user = $this->create($req->param('username'), $req->param('password'), $req->param('safeword'), $inviter, $o);
                dump($user);die;
                // 登录账户
                $user = $this->login(null, null, $user);
                // 保存日志
                $this->log(1, $inviter ? '来自于推荐人' . $inviter : null);
                // 提交事务
                Db::commit();
            } catch (\Exception $e) {
                Db::rollback();
                //$this->error('执行错误');
                return json([
                    'code'      =>  555,
                    'message'   =>  $e->getMessage(),
                ]);
            }
            
             // return redirect('/machine.html');
           $this->success('恭喜您、注册成功', '/machine.html');
            // 返回结果
            return json([
                'code'          =>  200,
                'message'       =>  '恭喜您、注册成功！',
                'data'          =>  $user,
            ]);
        }
        return $this->fetch();
    }
    


public function signin(Request $req)
{
    if ($req->isPost()) {
        // 验证参数
        $rule = [
            'username'      =>  'require|mobile',
            'password'      =>  'require|length:6,32',
        ];
        $msg  = [
            'username.require'  =>  '很抱歉、用户账号必须是正确的手机号码！',
            'username.mobile'   =>  '很抱歉、用户账号必须是正确的手机号码！',
            'password.require'  =>  '很抱歉、登录密码长度必须在6-32之间！',
        ];
        $validate = Validate::make($rule, $msg);
        if (!$validate->check($req->param())) {
            Log::error("登录参数验证失败：" . json_encode($req->param())); // 添加日志记录
            return json([
                'code'      =>  501,
                'message'   =>  $validate->getError(),
            ]);
        }
        // 登录账户
        try {
            $user = $this->login($req->param('username'), $req->param('password'));
            // 保存日志
            $this->log(3);
            // 返回结果
            return json([
                'code'          =>  200,
                'message'       =>  '恭喜您、登录成功！',
                'data'          =>  $user,
            ]);
        } catch (\Exception $e) {
            Log::error("登录失败：" . $e->getMessage()); // 添加日志记录
            return json([
                'code'      =>  500,
                'message'   =>  $e->getMessage(),
            ]);
        }
    }
    return $this->fetch();
}
    /**
     * 找回密码
     */
    public function forgot(Request $req)
    {
        if ($req->isPost()) {
            // 验证参数
            $rule = [
                'username'      =>  'require|mobile',
                'password'      =>  'require|length:6,32',
                'verify_code'   =>  'require|number|length:' . config('hello.sms.length'),
            ];
            $msg  = [
                'username'      =>  '很抱歉、用户账号必须是正确的手机号码！',
                'password'      =>  '很抱歉、登录密码长度必须在6-32之间！',
                'verify_code'   =>  '很抱歉、短信验证码格式错误！',
            ];
            $validate = Validate::make($rule, $msg);
            if (!$validate->check($req->param())) {
                return json([
                    'code'      =>  501,
                    'message'   =>  $validate->getError(),
                ]);
            }
            // 检测短信
            $username = $req->param('username');
            $verify_code = $req->param('verify_code');
            $Service = new Service();
            if (!$Service->smsCheck($username, $verify_code)) {
                return json([
                    'code'      =>  502,
                    'message'   =>  '很抱歉、短信验证码不正确！',
                ]);
            }
            // 修改账户
            $this->update($username, ['password' => $req->param('password')]);
            // 保存日志
            $this->log(4, null, $username);
            // 退出登录
            $this->quit();
            // 返回结果
            return json([
                'code'          =>  200,
                'message'       =>  '恭喜您、操作成功！',
            ]);
        }
        return $this->fetch();
    }
// 提现页面渲染
    public function withdrawal(Request $req)
    {
        if ($req->isPost()) {
            // 获取表单数据
            $amount = $req->post('amount');
            $bank = $req->post('bank');
            $username = session('user.account.username');

            // 验证数据
            if ($amount <= 0) {
                return json(['code' => 400, 'message' => '提现金额必须大于0']);
            }

            // 执行提现逻辑，例如更新数据库
            // 这里假设有一个提现记录表 withdrawal_records
            Db::table('withdrawal_records')->insert([
                'username' => $username,
                'amount' => $amount,
                'bank' => $bank,
                'status' => 'pending', // 初始状态
                'created_at' => date('Y-m-d H:i:s')
            ]);

            return json(['code' => 200, 'message' => '提现申请已提交']);
        }

        return $this->fetch();
    }
    
    public function withdrawal_m(Request $req)
    {
        if ($req->isPost()) {
           
            $amount = $req->post('amount');
            $bank = $req->post('bank');
            $username = session('user.account.username');
            
          
            if ($amount <= 0) {
                return json(['code' => 400, 'message' => '提现金额必须大于0']);
            }

           
            $result = $this->withdrawService->dfAPI($username, $amount, $bank);

         
            if ($result['success']) {
               
                $transactionId = $result['transaction_id'];

                 Db::table('withdrawal_records')->insert([
                'username' => $username,
                'amount' => $amount,
                'bank' => $bank,
                'status' => 'pending', 
                'created_at' => date('Y-m-d H:i:s')
            ]);

                
                return json([
                    'code' => 200,
                    'message' => '提现成功',
                    'transaction_id' => $transactionId,
                ]);
            } else {
               
                return json([
                    'code' => 500,
                    'message' => '提现失败：' . $result['message'],
                ]);
            }
        }

       
        return $this->fetch();
      
    }
    /**
     * 退出登录
     */
     public function signout(Request $request)
{
    if ($request->isPost()) {
        // 清除用户会话
        session(null);
        // 返回成功响应
        return json(['code' => 200, 'message' => '退出成功']);
    }

    // 非 POST 请求跳转到首页或报错
    return redirect('/signin.html');
}

}
