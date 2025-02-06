<?php

namespace app\model;

use Think\Model;

class User extends Model
{
    // 定义允许写入的字段
    protected $fillable = ['wechat_openid', 'wechat_nickname', 'wechat_avatar', 'nickname', 'avatar', 'openid'];
}