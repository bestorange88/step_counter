<?php

namespace app\model;

use think\Model;

class Article extends Model
{
    // 设置表名，如果与类名一致可以省略
    protected $table = 'articles';

    // 开启自动时间戳
    protected $autoWriteTimestamp = true;

    // 设置时间戳字段
    protected $createTime = 'created_at';
    protected $updateTime = 'updated_at';

    // 定义获取发布状态的作用域
    public function scopePublished($query)
    {
        return $query->where('status', 1);
    }

    // 自定义访问器：格式化发布时间
    public function getPublishDateAttr($value)
    {
        return date('Y-m-d', strtotime($value));
    }
}