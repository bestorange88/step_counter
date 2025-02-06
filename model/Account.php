<?php
namespace app\model;

use think\Model;

class Account extends Model
{
    // 设置字段信息
    protected $schema = [
        'id' => 'int',
        'uid' => 'char(10)',
        'type' => 'tinyint',
        'status' => 'tinyint',
        'staff' => 'int',
        'username' => 'char(255)',
        'password' => 'char(32)',
        'safeword' => 'char(32)',
        'authen' => 'tinyint',
        'inviter' => 'char(11)',
        'invite_count' => 'int',
        'last_reward_time' => 'timestamp',
        'total_rewards' => 'int',
        'claimedRewards' => 'varchar(255)',
        'truntable_chance' => 'int',
        'total_setps' => 'int',
        'create_at' => 'timestamp',
        'update_at' => 'timestamp',
        'balance' => 'decimal(10,2)',
        'withdrawable_balance' => 'decimal(10,2)',
        'name' => 'varchar(50)',
        'bank_card' => 'varchar(30)', // 确保这里使用了正确的字段名
        'id_card' => 'varchar(20)',
        'wechat' => 'varchar(30)',
        'qq' => 'varchar(15)',
        'member_level' => 'int',
        'points' => 'int',
        'avatar' => 'varchar(255)',
        'wechat_openid' => 'varchar(50)',
        'wechat_nickname' => 'varchar(100)',
        'wechat_avatar' => 'varchar(255)',
        'wechat_token' => 'varchar(255)',
        'create_time' => 'timestamp',
        'last_login_time' => 'timestamp',
        'signed_in' => 'tinyint',
        'sign_in_time' => 'timestamp',
        'is_agent' => 'tinyint',
        'performance' => 'decimal(10,2)',
        'login_ip' => 'varchar(45)',
        'device_type' => 'varchar(50)',
        'team_id' => 'int',
        'team_position' => 'varchar(100)',
        'nickname' => 'varchar(16)',
        'front_image' => 'varchar(255)',
        'back_image' => 'varchar(255)',
        'frozen' => 'decimal(10,2)'
    ];
}