<?php
namespace app\index\controller;

use think\Request;
use app\model\Article;
use think\Db;

class Index extends Base
{
    /**
     * 网站首页
     */
    public function index(Request $req)
    {
        if (empty(config('hello.site')) || $req->param('from') == 'app' || session('?user')) {
            $this->redirect('/account.html');
            exit;
        }
        return $this->fetch();
    }
  
    /**
     * 新闻列表
     */
    public function news(Request $req)
    {
        // 获取类型
        $type = $req->param('t/d', 1);

        // 查询文章
        $articles = Db::table('articles')
            ->where('type', '=', $type)
            ->where('publish_date', '<=', date('Y-m-d H:i:s'))
            ->order('publish_date DESC') // 按照发布日期降序排序
            ->select();

        // 分配数据到视图
        $this->assign('articles', $articles);

        // 显示页面，确保视图路径正确
        return $this->fetch('index/news');
    }

    /**
     * 文章详情
     */
    public function article(Request $req, $id)
    {
        // 使用模型查询文章
        $article = Article::find($id);
        if (empty($article)) {
            $this->error('很抱歉、该信息不存在！');
            exit;
        }
        // 分配文章数据到视图
        $this->assign('article', $article);
        return $this->fetch();
    }

    /**
     * 联系我们
     */
    public function contact(Request $req)
    {
        // 用户账号
        $username = session('user.account.username');
        // 提交留言
        if ($req->isPost()) {
            try {
                // 开启事务
                Db::startTrans();
                // 获取参数
                $content = $req->param('content');
                if (empty($content)) {
                    return json([
                        'code'      =>  501,
                        'message'   =>  '很抱歉、请填写内容！'
                    ]);
                }
                // 时间间隔
                $interval = config('hello.contact.interval');
                // 判断间隔
                if (!is_null($interval) || $interval > 0) {
                    // 查询记录
                    $date = Db::table('message')->where('username', '=', $username)->order('id DESC')->value('create_at');
                    if (!empty($date)) {
                        $time = strtotime($date);
                        if (time() - $time < $interval) {
                            return json([
                                'code'      =>  502,
                                'message'   =>  '很抱歉、' . $interval . '秒内只能发送一次！'
                            ]);
                        }
                    }
                }
                // 添加记录
                $bool = Db::table('message')->insert([
                    'username'      =>  $username,
                    'content'       =>  $content,
                    'reply'         =>  null,
                    'create_at'     =>  $this->timestamp,
                    'update_at'     =>  $this->timestamp,
                ]);
                if (empty($bool)) {
                    return json([
                        'code'      =>  501,
                        'message'   =>  '很抱歉、请填写内容！'
                    ]);
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
            return json([
                'code'      =>  200,
                'message'   =>  '恭喜您、操作成功！'
            ]);
        }
        // 查询数据
        $messages = Db::table('message')->where('username', '=', $username)->order('create_at DESC')->limit(20)->select();
        $this->assign('messages', $messages);
        // 显示页面
        return $this->fetch();
    }
}