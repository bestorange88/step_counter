<?php

namespace app\index\controller;

use think\Db;
use think\Request;
use think\facade\Env;
//use Endroid\QrCode\QrCode;
use BaconQrCode\Encoder\QrCode;
use BaconQrCode\Renderer\Image\Png;
use BaconQrCode\Writer;

class Team extends Base
{
    // +----------------------------------------------------------------------
    // | 私有函数
    // +----------------------------------------------------------------------
    
    // +----------------------------------------------------------------------
    // | 内部方法
    // +----------------------------------------------------------------------

    /**
     * 下级列表
     */
    public function child0($username, $page, $size, $where = [])
    {
        $page = $page - 1 < 1 ? 0 : $page - 1;
        $offset = $page * $size;
    
        $query = Db::table('account')->alias('a')
        ->join('profile p', 'p.username = a.username')
        ->join('dashboard d', 'd.username = a.username')
        ->field('p.avatar, a.type, a.username, p.phone, p.nickname AS name, p.idcard, d.one AS count');

    
        if (array_key_exists('type', $where) && !is_null($where['type'])) {
            $query->where('a.type', '=', $where['type']);
        }
    
        if (array_key_exists('key', $where) && !is_null($where['key'])) {
            $query->where(function($query) use ($where) {
                $query->whereOr('a.username', 'like', "%" . $where['key'] . "%")->whereOr('p.nickname', 'like', "%" . $where['key'] . "%");
            });
        }
    
        $accounts = $query->where('inviter', '=', $username)
            ->limit($offset, $size)
            ->select();
    
        foreach ($accounts as $key => $item) {
            $accounts[$key]['avatar'] = avatar($item['avatar'], $item['idcard']);
            unset($accounts[$key]['idcard']);
        }
    
        return $accounts;
    }

    public function child($username, $page, $size, $where = []) 
    {        
        $page = max(1, $page);
        $offset = ($page - 1) * $size;
        
        $query = Db::name('account')
            ->alias('a')
            ->join('profile p', 'p.username = a.username')
            ->join('dashboard d', 'd.username = a.username')
            ->field([
                'p.avatar',
                'a.type',
                'a.username',
                'p.nickname',
                'p.idcard',
                'd.one AS count',
                Db::raw('(SELECT COALESCE(MAX(steps), 0) FROM user_steps WHERE username = a.username) AS latest_steps')
            ]);

        if (isset($where['type']) && $where['type'] !== null) {
            $query->where('a.type', $where['type']);
        }

        if (isset($where['key']) && $where['key'] !== null) {
            $query->where(function($query) use ($where) {
                $query->whereOr('a.username', 'like', '%' . $where['key'] . '%')
                    ->whereOr('p.nickname', 'like', '%' . $where['key'] . '%');
            });
        }

        $query->where('a.inviter', $username);
        $accounts = $query->limit($offset, $size)->select();

        foreach ($accounts as $key => $item) {
            $accounts[$key]['avatar'] = avatar($item['avatar'], $item['idcard']);
        }

        return $accounts;
    }

    // +----------------------------------------------------------------------
    // | 对外接口
    // +----------------------------------------------------------------------
    public function dashboard()
    {
        // 动态获取团队排行榜数据（示例数据库查询）
        $teamRanking = Db::table('team_ranking')
            ->order('steps', 'desc') // 按步数降序
            ->limit(10) // 仅取前10名
            ->select()
            ->toArray();

        // 动态获取用户信息
        $user = [
            'dashboard' => [
                'team_count' => count($teamRanking),
            ],
        ];

        // 分配变量到视图
        $this->assign('teamRanking', $teamRanking);
        $this->assign('user', $user);

        // 渲染视图
        return $this->fetch('dashboard');
    }

    /**
     * 团队首页
     */
    public function index(Request $req)
    {
        $username = session('user.account.username');
        $user = (new Account())->instance($username);

        $rankData = $this->dailyStepRank();

        foreach ($rankData as $inviter => &$inviterSteps) {
            foreach ($inviterSteps as $index => &$step) {
                switch ($index) {
                    case 0:
                        $step['crown_image'] = '/static/index/img/jin.png';
                        $step['rank_text'] = '冠军';
                        break;
                    case 1:
                        $step['crown_image'] = '/static/index/img/yin.png';
                        $step['rank_text'] = '亚军';
                        break;
                    case 2:
                        $step['crown_image'] = '/static/index/img/tong.png';
                        $step['rank_text'] = '季军';
                        break;
                    default:
                        $step['crown_image'] = ''; 
                        $step['rank_text'] = ''; 
                        break;
                }
            }
        }

        $this->assign('user', $user);
        $this->assign('rankData', $rankData);

        return $this->fetch();
    }

    public function dailyStepRank()
    {
        // 获取当前日期
        $today = date('Y-m-d');

        // 查询当日每个用户的步数和邀请者信息，同时关联用户头像（通过username）
        $dailySteps = Db::name('user_steps')
            ->alias('us')
            ->join('profile up', 'us.username = up.username', 'LEFT')
            ->field("us.username, us.inviter, us.steps AS today_steps, up.avatar")
            ->where('us.date', '=', $today)
            ->select();

        // 按邀请者分组并排序
        $groupedSteps = [];
        foreach ($dailySteps as $step) {
            $groupedSteps[$step['inviter']][] = $step;
        }

        // 整合每个邀请者的前三名到一个数组中
        $topThreePerInviter = [];
        foreach ($groupedSteps as $inviter => $steps) {
            // 使用 usort 对步骤进行排序
            usort($steps, function($a, $b) {
                return $b['today_steps'] - $a['today_steps'];
            });

            // 取前3名
            $topThreePerInviter[$inviter] = array_slice($steps, 0, 3);
        }

        // 返回整合后的结果，包含头像信息
        return $topThreePerInviter;
    }

    /**
     * 团队成员
     */
    public function member(Request $req)
    {
        // 获取参数
        $page = $req->param('page', 1);
        $size = $req->param('size', 20);
        $username = $req->param('username', session('user.account.username'));
        $type = $req->param('type');
        $key = $req->param('key');
        // 查询数据
        $data = $this->child($username, $page, $size, [
            'type'  =>  $type,
            'key'   =>  $key,
        ]);
        // 循环处理
        foreach ($data as $key => $item) {
            $data[$key]['type'] = config('hello.level.' . $item['type'] . '.name');
        }
        // 返回数据
        return json([
            'code'      =>  200,
            'message'   =>  '恭喜您、操作成功！',
            'data'      =>  $data,
        ]);
    }

    /**
     * 成员招募
     */
    public function inviter(Request $req)
    {
        // 用户账号
        $username = session('user.account.username');

        // 邀请配置
        $config = config('hello.inviter');

        // 邀请码
        $code = $config['anonymous'] ? session('user.account.uid') : $username;

        // 链接
        $link = $req->domain() . '/signup.html?i=' . $code;

        // 图片邀请
        if (array_key_exists('image', $config)) {
            // 存放目录
            $folder = $config['image']['version'] . '/';
            if (strlen($username) == 11 && !is_nan($username)) {
                $folder .= substr($username, 0, 3) . '/';
            }

            // 目录是否存在
            $dir = Env::get('root_path') . 'public/inviter/' . $folder;
            if (!is_dir($dir)) {
                mkdir($dir, 0777, true);
            }

            // 是否存在图片
            $image = $dir . $username . '.jpg';
            if (!is_file($image) || !$config['image']['cache']) {
                // 生成二维码
                $qrcode_image = $dir . $username . '_qrcode.png';
                if (!is_file($qrcode_image)) {
                    $renderer = new Png();
                    $renderer->setWidth($config['image']['width'] - 20);  // 设置二维码的宽度
                    $renderer->setHeight($config['image']['height'] - 20);
                    $writer = new Writer($renderer);
                    $writer->writeFile($link, $qrcode_image);
                }

                // 合并背景图
                $background_image = $config['image']['path'];
                $image_1 = imagecreatefromjpeg($background_image);
                $image_2 = imagecreatefrompng($qrcode_image);

                // 确保二维码图片不会超出背景图片的范围
                $qr_width = imagesx($image_2);
                $qr_height = imagesy($image_2);
                $bg_width = imagesx($image_1);
                $bg_height = imagesy($image_1);
                $x = min($config['image']['x'], $bg_width - $qr_width);
                $y = min($config['image']['y'], $bg_height - $qr_height);

                imagecopymerge($image_1, $image_2, $x, $y, 0, 0, $qr_width, $qr_height, 100);
                imagejpeg($image_1, $image);

                // 释放内存
                imagedestroy($image_1);
                imagedestroy($image_2);
            }

            // 分配图片路径到视图
            $this->assign('image', '/inviter/' . $folder . $username . '.jpg');
        }

        // 显示页面
        return $this->fetch();
    }

    public function inviter_Endroid(Request $req) 
    {
        // 用户账号
        $username = session('user.account.username');

        // 邀请配置
        $config = config('hello.inviter');

        // 邀请码
        $code = $config['anonymous'] ? session('user.account.uid') : $username;

        // 链接
        $link = $req->domain() . '/signup.html?i=' . $code;

        // 图片邀请
        if (array_key_exists('image', $config) && $config['image']['cache'] !== false) {
            // 存放目录
            $version = $config['image']['version'];
            $folder = $version . '/';
            if (strlen($username) == 11 && is_numeric($username)) {
                $folder .= substr($username, 0, 3) . '/';
            }

            // 目录是否存在
            $dir = Env::get('root_path') . '/public/inviter/' . $folder;
            if (!is_dir($dir)) {
                mkdir($dir, 0777, true);
            }

            // 是否存在图片
            $image = $dir . $username . '.jpg';
            if (!is_file($image) || !$config['image']['cache']) {
                // 生成二维码
                $qrcode_image = $dir . $username . '_qrcode.jpg';
                if (!is_file($qrcode_image)) {
                    $qrCode = new QrCode($link);
                    $qrCode->setSize($config['image']['width']);
                    $qrCode->writeFile($qrcode_image);
                }

                // 合并背景图
                $background_image = $config['image']['path'];
                $image_1 = imagecreatefromjpeg($background_image);
                $image_2 = imagecreatefrompng($qrcode_image);
                // 确保二维码不会超出背景图的范围
                $qr_width = imagesx($image_2);
                $qr_height = imagesy($image_2);
                $bg_width = imagesx($image_1);
                $bg_height = imagesy($image_1);
                $x = min($config['image']['x'], $bg_width - $qr_width);
                $y = min($config['image']['y'], $bg_height - $qr_height);
                imagecopymerge($image_1, $image_2, $x, $y, 0, 0, $qr_width, $qr_height, 100);
                imagejpeg($image_1, $image);

                // 释放图像资源
                imagedestroy($image_1);
                imagedestroy($image_2);
            }

            // 设置图片路径以供视图使用
            $this->assign('image', '/inviter/' . $folder . $username . '.jpg');
        }

        // 显示页面
        return $this->fetch();
    }

    /**
     * 我的团队页面
     */
    public function myTeam()
    {
        return $this->fetch('team/my_team');
    }

    /**
     * 创建团队页面
     */
    public function createTeam()
    {
        return $this->fetch('team/create_team');
    }

    /**
     * 寻找团队页面
     */
    public function searchTeam()
    {
        return $this->fetch('team/search_team');
    }
}