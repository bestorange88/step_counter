-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2025-02-05 16:18:29
-- 服务器版本： 5.7.44-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `walk`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `uid` char(10) NOT NULL COMMENT '邀请码',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '账户类型，0：未认证，1：普通',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '账户状态，1：正常，0：冻结',
  `staff` int(2) NOT NULL DEFAULT '0',
  `username` char(255) NOT NULL COMMENT '登录账号',
  `password` char(32) NOT NULL COMMENT '登录密码',
  `safeword` char(32) DEFAULT NULL COMMENT '安全密码',
  `authen` tinyint(4) NOT NULL DEFAULT '0' COMMENT '账户状态，1：通过，0：未认证，2：审核中，3：被拒绝',
  `inviter` char(11) DEFAULT NULL COMMENT '邀请人',
  `invite_count` int(11) NOT NULL DEFAULT '0',
  `last_reward_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '运动奖励领取时间',
  `total_rewards` int(11) DEFAULT NULL,
  `claimedRewards` varchar(255) DEFAULT NULL COMMENT '档位',
  `truntable_chance` int(11) DEFAULT NULL,
  `total_setps` int(11) NOT NULL DEFAULT '0',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `withdrawable_balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '可提现金额',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `bank_card` varchar(30) DEFAULT NULL COMMENT '银行卡',
  `id_card` varchar(20) DEFAULT NULL COMMENT '身份证',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信号',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ号',
  `alipay` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `bankaddress` varchar(100) DEFAULT NULL,
  `member_level` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `avatar` varchar(255) DEFAULT '' COMMENT '用户头像',
  `wechat_openid` varchar(50) DEFAULT NULL,
  `wechat_nickname` varchar(100) DEFAULT NULL,
  `wechat_avatar` varchar(255) DEFAULT NULL,
  `wechat_token` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `signed_in` tinyint(1) DEFAULT '0',
  `sign_in_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_agent` tinyint(1) DEFAULT '0',
  `performance` decimal(10,2) DEFAULT '0.00',
  `login_ip` varchar(45) NOT NULL DEFAULT '' COMMENT '用户登录IP',
  `device_type` varchar(50) NOT NULL DEFAULT '' COMMENT '用户设备类型',
  `team_id` int(11) DEFAULT NULL COMMENT '所属团队',
  `team_position` varchar(100) NOT NULL DEFAULT '' COMMENT '团队职位',
  `nickname` varchar(16) DEFAULT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `back_image` varchar(255) DEFAULT NULL,
  `frozen` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bankcard` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='账户';

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`id`, `uid`, `type`, `status`, `staff`, `username`, `password`, `safeword`, `authen`, `inviter`, `invite_count`, `last_reward_time`, `total_rewards`, `claimedRewards`, `truntable_chance`, `total_setps`, `create_at`, `update_at`, `balance`, `withdrawable_balance`, `name`, `bank_card`, `id_card`, `wechat`, `qq`, `alipay`, `bankname`, `bankaddress`, `member_level`, `points`, `avatar`, `wechat_openid`, `wechat_nickname`, `wechat_avatar`, `wechat_token`, `create_time`, `last_login_time`, `signed_in`, `sign_in_time`, `is_agent`, `performance`, `login_ip`, `device_type`, `team_id`, `team_position`, `nickname`, `front_image`, `back_image`, `frozen`, `bankcard`) VALUES
(2, 'V999999', 1, 1, 1, '19999999999', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-02-05 06:03:20', NULL, NULL, NULL, 0, '2025-01-17 16:58:20', '2025-02-05 04:22:33', '0.00', '0.00', '张三丰', NULL, '110108198805082564', '19999999999', '123131111', '1231236666', '1236666', '123123666', 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 16:58:20', '2025-01-17 16:58:20', 0, '2025-01-17 16:58:20', 0, '0.00', '', '', NULL, '', '笨蛋', '/cert/20250205/87bd27b99f54a72ea087f990cd27cc2c.png', '/cert/20250205/bab12dab3f8a3d26e5ce538e214e1649.png', '0.00', '134342513515'),
(3, 'V111111', 1, 1, 1, '11111111111', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-02-04 08:28:36', NULL, NULL, NULL, 0, '2025-01-17 16:59:18', '2025-01-28 02:45:42', '0.00', '0.00', NULL, NULL, NULL, '11111111111', '', NULL, NULL, NULL, 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 16:59:18', '2025-01-17 16:59:18', 0, '2025-01-17 16:59:18', 0, '0.00', '', '', NULL, '', '飞翔', NULL, NULL, '0.00', ''),
(4, 'V222222', 1, 1, 1, '12222222222', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-19 03:13:37', NULL, NULL, NULL, 0, '2025-01-17 17:15:08', '2025-01-19 03:13:37', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 17:15:08', '2025-01-17 17:15:08', 0, '2025-01-17 17:15:08', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(5, 'V333333', 1, 1, 1, '13333333333', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-02-05 06:10:45', NULL, NULL, NULL, 0, '2025-01-17 17:15:20', '2025-01-31 04:43:47', '0.00', '0.00', NULL, NULL, NULL, '', '', '', '', '', 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 17:15:20', '2025-01-17 17:15:20', 0, '2025-01-17 17:15:20', 0, '0.00', '', '', NULL, '', '通通', NULL, NULL, '0.00', ''),
(6, 'V666666', 1, 1, 1, '16666666666', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-02-05 02:13:44', NULL, NULL, NULL, 0, '2025-01-17 17:15:31', '2025-02-05 02:13:44', '0.00', '0.00', NULL, NULL, NULL, '16666666666', '', NULL, NULL, NULL, 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 17:15:31', '2025-01-17 17:15:31', 0, '2025-01-17 17:15:31', 0, '0.00', '', '', NULL, '', '乌拉拉', NULL, NULL, '0.00', ''),
(7, 'V777777', 1, 1, 1, '17777777777', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-19 03:15:27', NULL, NULL, NULL, 0, '2025-01-17 17:15:41', '2025-01-19 03:15:27', '0.00', '0.00', NULL, NULL, NULL, '17777777777', '', NULL, NULL, NULL, 0, -50, '', NULL, NULL, NULL, NULL, '2025-01-17 17:15:41', '2025-01-17 17:15:41', 0, '2025-01-17 17:15:41', 0, '0.00', '', '', NULL, '', '天道', NULL, NULL, '0.00', ''),
(8, 'V888888', 1, 1, 1, '18888888888', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:15:52', '2025-01-17 17:15:52', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:15:52', '2025-01-17 17:15:52', 0, '2025-01-17 17:15:52', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(9, 'V666777', 1, 1, 1, '16677777777', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:16:04', '2025-01-17 17:16:04', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:04', '2025-01-17 17:16:04', 0, '2025-01-17 17:16:04', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(10, 'V666888', 1, 1, 1, '16688888888', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:51:29', NULL, NULL, NULL, 0, '2025-01-17 17:16:17', '2025-01-17 17:16:17', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:17', '2025-01-17 17:16:17', 0, '2025-01-17 17:16:17', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(11, 'V666999', 1, 1, 1, '16699999999', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:16:26', '2025-01-17 17:16:26', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:26', '2025-01-17 17:16:26', 0, '2025-01-17 17:16:26', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(12, 'V777666', 1, 1, 1, '17766666666', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:16:35', '2025-01-17 17:16:35', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:35', '2025-01-17 17:16:35', 0, '2025-01-17 17:16:35', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(13, 'V777888', 1, 1, 1, '17788888888', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:51:54', NULL, NULL, NULL, 0, '2025-01-17 17:16:43', '2025-01-17 17:16:43', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:43', '2025-01-17 17:16:43', 0, '2025-01-17 17:16:43', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(14, 'V777999', 1, 1, 1, '17799999999', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:16:52', '2025-01-17 17:16:52', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:16:52', '2025-01-17 17:16:52', 0, '2025-01-17 17:16:52', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(15, 'V888666', 1, 1, 1, '18866666666', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:17:02', '2025-01-17 17:17:02', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:02', '2025-01-17 17:17:02', 0, '2025-01-17 17:17:02', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(16, 'V888777', 1, 1, 1, '18877777777', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:17:11', '2025-01-17 17:17:11', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:11', '2025-01-17 17:17:11', 0, '2025-01-17 17:17:11', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(17, 'V888999', 1, 1, 1, '18899999999', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:17:19', '2025-01-17 17:17:19', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:19', '2025-01-17 17:17:19', 0, '2025-01-17 17:17:19', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(18, 'V999666', 1, 1, 1, '19966666666', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:17:32', '2025-01-17 17:17:32', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:32', '2025-01-17 17:17:32', 0, '2025-01-17 17:17:32', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(19, 'V999777', 1, 1, 1, '19977777777', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:35:57', NULL, NULL, NULL, 0, '2025-01-17 17:17:41', '2025-01-17 17:17:41', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:41', '2025-01-17 17:17:41', 0, '2025-01-17 17:17:41', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(20, 'V999888', 1, 1, 1, '19988888888', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 1, NULL, 0, '2025-01-18 02:52:34', NULL, NULL, NULL, 0, '2025-01-17 17:17:52', '2025-01-17 17:17:52', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-17 17:17:52', '2025-01-17 17:17:52', 0, '2025-01-17 17:17:52', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(222, 'D446669', 1, 1, 0, '13111111112', 'a5e61bb0383ef9ce94a8bd0f6f6d6a71', 'e67b36ddd09a671967939cfe2b0255cf', 1, '19999999999', 0, '2025-02-05 04:29:21', 5, '2025-02-05||5000||2', NULL, 0, '2025-01-18 02:59:30', '2025-02-05 04:29:21', '0.00', '0.00', '张三', NULL, '110102198010272321', NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 02:59:30', '2025-01-18 02:59:30', 0, '2025-01-18 02:59:30', 0, '0.00', '', '', NULL, '', '绿步云图', '/cert/20250118/3506d21ccf71ee3b1a60be973e3d0a5f.png', '/cert/20250118/35b5686e7d4de94b50c4df80719e9aca.png', '0.00', ''),
(223, 'J110235', 0, 1, 0, '15971016808', 'a6c2c793278fc3b92631558ca8bcf146', 'e67b36ddd09a671967939cfe2b0255cf', 0, '16666666666', 0, '2025-01-18 05:18:00', NULL, NULL, NULL, 0, '2025-01-18 05:18:00', '2025-01-18 05:18:00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 05:18:00', '2025-01-18 05:18:00', 0, '2025-01-18 05:18:00', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(224, 'V467892', 0, 1, 0, '15530807512', 'c212a080158b031900a42b5a1b695308', 'e67b36ddd09a671967939cfe2b0255cf', 0, '16666666666', 0, '2025-01-18 05:18:12', NULL, NULL, NULL, 0, '2025-01-18 05:18:12', '2025-01-18 05:18:12', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 05:18:12', '2025-01-18 05:18:12', 0, '2025-01-18 05:18:12', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(225, 'X177150', 0, 1, 0, '18727082107', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 0, '15971016808', 0, '2025-01-18 05:19:42', NULL, NULL, NULL, 0, '2025-01-18 05:19:42', '2025-01-18 05:19:42', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 05:19:42', '2025-01-18 05:19:42', 0, '2025-01-18 05:19:42', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(226, 'M610648', 0, 1, 0, '18632558605', '66b0c20150e82fa3500dbe8a4d22e123', 'e67b36ddd09a671967939cfe2b0255cf', 0, '15530807512', 0, '2025-01-18 05:23:27', NULL, NULL, NULL, 0, '2025-01-18 05:23:27', '2025-01-18 05:23:27', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 05:23:27', '2025-01-18 05:23:27', 0, '2025-01-18 05:23:27', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(227, 'E696664', 0, 1, 0, '19969799233', 'e67b36ddd09a671967939cfe2b0255cf', 'e67b36ddd09a671967939cfe2b0255cf', 0, '16666666666', 0, '2025-01-18 05:35:14', NULL, NULL, NULL, 0, '2025-01-18 05:35:14', '2025-01-18 05:35:14', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 05:35:14', '2025-01-18 05:35:14', 0, '2025-01-18 05:35:14', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(228, 'R157396', 0, 1, 0, '18204620594', '95e0b0fae2b98faeb20a7ffee4d6fc51', 'e67b36ddd09a671967939cfe2b0255cf', 0, '19969799233', 0, '2025-01-18 06:11:33', NULL, NULL, NULL, 0, '2025-01-18 06:11:33', '2025-01-18 06:11:33', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 06:11:33', '2025-01-18 06:11:33', 0, '2025-01-18 06:11:33', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(229, 'H598397', 0, 1, 0, '17629261573', 'bbbc3d4166c95a4c567982544ad3a735', 'e67b36ddd09a671967939cfe2b0255cf', 0, '18204620594', 0, '2025-01-18 06:17:55', NULL, NULL, NULL, 0, '2025-01-18 06:17:55', '2025-01-18 06:17:55', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-18 06:17:55', '2025-01-18 06:17:55', 0, '2025-01-18 06:17:55', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(230, 'P855722', 0, 1, 0, '19393141093', 'fb846a93899d3a2390ee5bbef8531c17', 'e67b36ddd09a671967939cfe2b0255cf', 0, '13333333333', 0, '2025-01-19 03:20:18', NULL, NULL, NULL, 0, '2025-01-19 03:20:18', '2025-01-19 03:20:18', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-19 03:20:18', '2025-01-19 03:20:18', 0, '2025-01-19 03:20:18', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(231, 'N222195', 0, 1, 0, '18290186822', '805aeb5e99e6164edb1469f21be97d42', 'e67b36ddd09a671967939cfe2b0255cf', 0, '13333333333', 0, '2025-01-19 03:24:31', NULL, NULL, NULL, 0, '2025-01-19 03:24:31', '2025-01-19 03:24:31', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-19 03:24:31', '2025-01-19 03:24:31', 0, '2025-01-19 03:24:31', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', ''),
(232, 'Z805187', 0, 1, 0, '15178968728', '36de690644fa6cbdcddf9242f0f75239', 'e67b36ddd09a671967939cfe2b0255cf', 0, '19999999999', 0, '2025-01-19 17:24:08', NULL, NULL, NULL, 0, '2025-01-19 17:24:08', '2025-01-19 17:24:08', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, '2025-01-19 17:24:08', '2025-01-19 17:24:08', 0, '2025-01-19 17:24:08', 0, '0.00', '', '', NULL, '', NULL, NULL, NULL, '0.00', '');

-- --------------------------------------------------------

--
-- 表的结构 `account_audit`
--

CREATE TABLE IF NOT EXISTS `account_audit` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0：未通过，1：已通过',
  `username` char(11) NOT NULL COMMENT '登录账号',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='账户审核';

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `top` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `type` tinyint(4) DEFAULT NULL COMMENT '文章类型，1：新闻，8：帮助',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `image` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `date` timestamp NULL DEFAULT NULL COMMENT '显示的时间',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章';

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `sort`, `top`, `type`, `title`, `image`, `content`, `date`, `create_at`, `update_at`) VALUES
(2, 0, 0, 8, '帮助文档', NULL, '<h1 style="text-align: center;"><strong>广而告之</strong><br/></h1><h3>一、前言</h3><p>『绿步盈途』是一款倡导健康与环保的步行习惯养成工具，通过步行记录与奖励机制，帮助用户获得健康体魄的同时，为环保贡献一份力量。步行不仅能锻炼身体、改善心情，更是减少碳排放的最佳方式。为了鼓励大家迈出更多脚步，我们推出了一系列趣味抽奖活动，助力更多人传递正能量。</p><h3>二、活动入口</h3><p>1、登录【绿步盈途】APP，即可参与活动。</p><h3>三、步行参与方式及规则</h3><p>1、用户每日步行记录自动上传至平台，步行数据将累计用户的环保贡献值和活动积分。</p><p>2、邀请好友注册并参与步行活动，每邀请1位好友即可获得1积分。</p><p>3、累计达到50积分，即可获得1次大转盘抽奖机会，赢取精美奖品或现金奖励。</p><p>4、用户如发现作弊行为（如虚假步数上传），平台有权取消其参与资格，并回收相关奖励。</p><h3>四、积分规则</h3><p>1、用户邀请好友成功注册且完成实名认证，每成功邀请1位好友即可获得1积分。</p><p>2、积分可累计，达到50积分即可兑换1次大转盘抽奖机会。</p><p><br/></p><h3>五、绿步盈途的核心理念</h3><p>绿步盈途倡导“绿色步行，健康人生”的理念，通过步行习惯的养成，让每一步都充满意义。每位用户的步行记录，都会转化为减少的碳排放量，并由平台代为进行公益捐赠，让健康与环保同行。</p><h3>六、趣味抽奖活动</h3><p>1、大转盘抽奖：累计50积分即可参与1次大转盘抽奖，赢取环保纪念品或现金奖励。。</p><p>2、公益行走：每月累计步行里程达标者，将有机会赢得&quot;绿步公益大使&quot;称号及专属礼品。</p><h3>七、团队招募</h3><p>1、实名认证即可成为普通会员，分享活动可邀请更多好友参与。</p><p>2、邀请5人认证即可升级为Lv1会员，享受平台积分兑换比例提升5%；\r\n邀请20人且团队步行总量达10万步，即可升级Lv2会员，享受兑换比例提升15%。</p><h3>八、每日鼓励语</h3><h3>【绿步盈途】健康每一步，环保每一天！</h3><p>【绿步盈途】绿色行走，健康人生！</p><p>【绿步盈途】步行，让未来更美好！</p><p style="margin-top: 0px; margin-bottom: 1em; white-space: normal; box-sizing: border-box; color: rgb(73, 80, 87); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); text-align: center;"><br/></p>', '2019-03-25 08:05:32', '2019-03-25 08:05:32', '2025-01-05 05:20:35'),
(5, 0, 0, 1, '绿色出行新政策：鼓励步行和骑行', NULL, '<pre>绿色出行新政策：鼓励步行和骑行</pre><p><br/></p>', '2024-12-23 02:35:38', '2024-12-23 02:35:38', '2024-12-23 02:35:38'),
(6, 0, 0, 1, '绿色出行新政策：鼓励步行和骑行', NULL, '<pre>绿色出行新政策：鼓励步行和骑行</pre><p><br/></p>', '2024-12-23 02:35:57', '2024-12-23 02:35:57', '2024-12-23 02:35:57'),
(7, 0, 0, 1, '走路也能赚钱？解密绿色步行计划', NULL, '<p><span style="color: rgb(55, 65, 81); font-family: ui-sans-serif, system-ui, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);">走路也能赚钱？解密绿色步行计划</span></p>', '2024-12-23 02:36:13', '2024-12-23 02:36:13', '2024-12-23 02:36:13'),
(8, 0, 0, 1, '环保出行：为地球减碳的小行动', NULL, '<p><span style="color: rgb(55, 65, 81); font-family: ui-sans-serif, system-ui, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);">环保出行：为地球减碳的小行动</span></p>', '2024-12-23 02:36:29', '2024-12-23 02:36:29', '2024-12-23 02:36:29'),
(9, 0, 0, 1, '健康生活从日行一万步开始', NULL, '<p>健康生活从日行一万步开始</p>', '2024-12-23 02:37:01', '2024-12-23 02:37:01', '2024-12-23 02:37:01');

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图路径',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '文章内容',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '匿名' COMMENT '作者',
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `views` int(11) unsigned DEFAULT '0' COMMENT '浏览量',
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '分类ID',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章标签（逗号分隔）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：发布，0：草稿）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='资讯文章表';

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `thumbnail`, `content`, `author`, `publish_date`, `views`, `category_id`, `tags`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, '绿色出行新政策：步行与骑行成为主流', '/static/images/news1.jpg', '步行与骑行正成为城市绿色出行的新潮流，不仅减少碳排放，还能强身健体。', '环保达人', '2024-12-01 10:00:00', 320, NULL, '低碳,绿色出行,骑行', 1, '2024-12-23 09:05:43', NULL, NULL),
(2, '每天8000步：开启健康生活新方式', '/static/images/news2.jpg', '专家建议每天步行8000步，有助于提升心肺健康，同时为地球减碳出一份力。', '健康生活研究者', '2024-12-02 11:30:00', 450, NULL, '健康,步行,低碳生活', 1, '2024-12-23 09:05:43', NULL, NULL),
(3, '地球日特辑：环保骑行挑战赛圆满成功', '/static/images/news3.jpg', '上万市民参加地球日骑行挑战赛，为地球减排 5 吨二氧化碳，创造绿色出行新纪录。', '活动主办方', '2024-12-03 14:00:00', 590, NULL, '地球日,骑行,环保', 1, '2024-12-23 09:05:43', NULL, NULL),
(4, '走路也能赚钱？揭秘绿色步行激励计划', '/static/images/news4.jpg', '参与绿色步行激励计划，每天步行一定步数即可兑换奖励，鼓励更多人加入环保行列。', '绿色科技团队', '2024-12-04 09:00:00', 780, NULL, '绿色科技,低碳生活,步行', 1, '2024-12-23 09:05:43', NULL, NULL),
(5, '环保先锋：城市公交全面引入新能源', '/static/images/news5.jpg', '新能源公交逐步替代传统能源车辆，为城市绿色出行贡献力量。', '城市交通局', '2024-12-05 08:00:00', 620, NULL, '新能源,公交,低碳环保', 1, '2024-12-23 09:05:43', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `clock`
--

CREATE TABLE IF NOT EXISTS `clock` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `mid` char(10) NOT NULL COMMENT '矿机编号',
  `money` decimal(30,12) DEFAULT '0.000000000000' COMMENT '本次收益',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='打卡表';

--
-- 转存表中的数据 `clock`
--

INSERT INTO `clock` (`id`, `username`, `mid`, `money`, `create_at`) VALUES
(1, '13333333333', 'H1842934', '50.925925950000', '2018-07-24 01:33:09'),
(2, '13333333333', 'U5953189', '1.225490200000', '2018-07-24 01:33:09'),
(3, '13333333333', 'V7772772', '0.462962950000', '2018-07-24 01:33:09'),
(4, '13333333333', 'E9558682', '0.041666650000', '2018-07-24 01:33:09'),
(5, '13333333333', 'J4568245', '0.004166650000', '2018-07-24 01:33:09'),
(6, '13333333333', 'H1842934', '30.555555570000', '2018-07-24 05:07:33'),
(7, '13333333333', 'U5953189', '0.735294120000', '2018-07-24 05:07:33'),
(8, '13333333333', 'V7772772', '0.277777770000', '2018-07-24 05:07:33'),
(9, '13333333333', 'E9558682', '0.024999990000', '2018-07-24 05:07:33'),
(10, '13333333333', 'J4568245', '0.002499990000', '2018-07-24 05:07:33'),
(11, '13333333333', 'H1842934', '10.185185190000', '2018-07-24 06:12:20'),
(12, '13333333333', 'U5953189', '0.245098040000', '2018-07-24 06:12:20'),
(13, '13333333333', 'V7772772', '0.092592590000', '2018-07-24 06:12:20'),
(14, '13333333333', 'E9558682', '0.016666660000', '2018-07-24 06:12:20'),
(15, '13333333333', 'J4568245', '0.001666660000', '2018-07-24 06:12:20'),
(16, '13333333333', 'H3038940', '0.066666640000', '2018-07-24 14:29:28'),
(17, '13333333333', 'H1842934', '91.666666710000', '2018-07-24 14:29:28'),
(18, '13333333333', 'U5953189', '2.205882360000', '2018-07-24 14:29:28'),
(19, '13333333333', 'V7772772', '0.833333310000', '2018-07-24 14:29:28'),
(20, '13333333333', 'E9558682', '0.066666640000', '2018-07-24 14:29:28'),
(21, '13333333333', 'J4568245', '0.006666640000', '2018-07-24 14:29:28'),
(22, '13333333333', 'H3038940', '0.141666610000', '2018-07-25 06:51:37'),
(23, '13333333333', 'H1842934', '162.962963040000', '2018-07-25 06:51:37'),
(24, '13333333333', 'U5953189', '3.921568640000', '2018-07-25 06:51:37'),
(25, '13333333333', 'V7772772', '1.481481440000', '2018-07-25 06:51:37'),
(26, '13333333333', 'E9558682', '0.133333280000', '2018-07-25 06:51:37'),
(27, '13333333333', 'J4568245', '0.013333280000', '2018-07-25 06:51:37');

-- --------------------------------------------------------

--
-- 表的结构 `company_users`
--

CREATE TABLE IF NOT EXISTS `company_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:字符，2:数值，3:布尔，4:文件，5:json，6:数组',
  `parent` int(11) DEFAULT '0' COMMENT '上级编号',
  `token` varchar(50) NOT NULL COMMENT '唯一标志',
  `name` varchar(30) NOT NULL COMMENT '配置名称',
  `value` text COMMENT '配置的数据',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置';

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`id`, `type`, `parent`, `token`, `name`, `value`, `create_at`, `update_at`) VALUES
(1, 5, 0, 'imtoken', 'imToken', '{"enable":1,"charge":10,"code":"ccjsjsjis6766767","qrcode":"","min":10,"max":100}', '2018-07-03 06:17:43', '2019-07-12 09:23:45'),
(2, 5, 0, 'hello.popup', 'hello.popup', '{"switch":true,"content":"<ol class=\\" list-paddingleft-2\\" style=\\"list-style-type: decimal;\\"><li><p>\\u4ea4\\u6613\\u65f6\\u95f4\\uff1a9\\uff1a00\\uff5e23\\uff1a00\\uff0c\\u8bf7\\u5728\\u89c4\\u5b9a\\u65f6\\u95f4\\u5185\\u64cd\\u4f5c\\u3002<br\\/><\\/p><\\/li><li><p>\\u7981\\u6b62\\u4efb\\u4f55\\u5f62\\u5f0f\\u7684\\u4e0a\\u4f20\\u865a\\u5047\\u6253\\u6b3e\\u51ed\\u8bc1\\uff0c\\u8bf7\\u8ba4\\u771f\\u4eba\\u64cd\\u4f5c\\uff0c\\u4e0d\\u5c0f\\u5fc3\\u64cd\\u4f5c\\u884c\\u4e3a\\uff0c\\u8d26\\u53f7\\u51bb\\u7ed37\\u5929\\uff0c\\u6076\\u610f\\u884c\\u4e3a\\uff0c\\u7ecf\\u6838\\u5b9e\\uff0c\\u6c38\\u4e45\\u5c01\\u53f7\\u3002<\\/p><\\/li><li><p>\\u5e73\\u53f0\\u4e0d\\u4fdd\\u62a4\\u4efb\\u4f55\\u573a\\u5916\\u9ed1\\u5e02\\u4ef7\\u683c\\uff0c\\u5982\\u679c\\u60f3\\u5feb\\u901f\\u83b7\\u5f97\\u66f4\\u591a\\u4e50\\u8c46\\uff0c\\u53ef\\u70b9\\u51fb\\u4e70\\u5165\\u6302\\u5355\\u6c42\\u8d2d\\u6216\\u8d2d\\u4e70\\u6311\\u6218\\u5361\\u4efb\\u52a1\\u3002<\\/p><\\/li><li><p>\\u5b9e\\u540d\\u8ba4\\u8bc1\\u90019\\u70b9\\u6d3b\\u529b\\uff0c\\u53ef\\u7528\\u4e8e\\u76f4\\u63a5\\u6311\\u6218\\u521d\\u7ea7\\u5377\\u8f74\\u4efb\\u52a1\\u4e5d\\u6b21\\u3002<\\/p><\\/li><li><p>\\u65b0\\u7528\\u6237\\u4e0d\\u77e5\\u73a9\\u6cd5\\u7684\\u53c2\\u89c1\\u89c4\\u5219\\u8be6\\u60c5\\u3002<br\\/><\\/p><\\/li><\\/ol>","date":"2019-07-28 14:27:39"}', '2018-07-03 06:40:42', '2019-07-28 06:27:39'),
(3, 5, 0, 'hello.event.pool', 'hello.event.pool', '{"enable":false,"volume":10000000,"complexity":1850123315,"percent":"0.0000002","float":null,"interval":3600,"background":"\\/static\\/image\\/pool\\/bg.png"}', '2018-07-04 03:33:37', '2019-03-25 09:19:44'),
(4, 5, 0, 'hello.group', 'hello.group', '{"content":"<p>QQ\\uff1a1541911018<\\/p><p>\\u516c\\u4f17\\u53f7\\uff1a<\\/p><p>\\u5b98\\u7f51\\uff1aqcymw.cn<\\/p><p><br\\/><\\/p><p><span style=\\"display: inline !important; float: none; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1,Tahoma,\\u5b8b\\u4f53; font-size: 16px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; widows: 1; word-spacing: 0px;\\">\\u4e50\\u6b65app\\u4e0b\\u8f7d\\u5730\\u5740http:\\/\\/qcymw.cn<\\/span><\\/p>","date":"2021-01-10 13:47:27"}', '2019-03-25 08:31:48', '2021-01-10 05:47:27');

-- --------------------------------------------------------

--
-- 表的结构 `contract`
--

CREATE TABLE IF NOT EXISTS `contract` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `visible` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否可见，1：可见，0：隐藏',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1：空闲，2：有主，3：瓜分',
  `agent` char(11) DEFAULT NULL COMMENT '代理商',
  `owner` char(11) DEFAULT NULL COMMENT '归属人',
  `catalog` tinyint(4) NOT NULL DEFAULT '1' COMMENT '项目分类',
  `title` varchar(50) NOT NULL COMMENT '合约名称',
  `image` varchar(100) NOT NULL COMMENT '合约图片',
  `content` text COMMENT '合约介绍',
  `base_price` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '基础价格',
  `now_price` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '当前价格',
  `inc` decimal(30,12) NOT NULL DEFAULT '1.000000000000' COMMENT '增幅比例',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费比例',
  `loop` int(11) NOT NULL DEFAULT '1' COMMENT '当前第几轮',
  `profit` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '每秒收益',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合约';

-- --------------------------------------------------------

--
-- 表的结构 `contract_log`
--

CREATE TABLE IF NOT EXISTS `contract_log` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `cid` int(11) NOT NULL COMMENT '具体合约的编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `action` tinyint(4) NOT NULL DEFAULT '1' COMMENT '动作类型，很重要',
  `loop` int(11) NOT NULL DEFAULT '0' COMMENT '当前操作是在第几轮执行的',
  `money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '本次操作花的钱，或是赚的钱',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '本次操作的手续费',
  `target` char(11) DEFAULT NULL COMMENT '转让对象的账号',
  `ratio` float NOT NULL DEFAULT '0' COMMENT '涨跌比例',
  `remark` text COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合约记录';

-- --------------------------------------------------------

--
-- 表的结构 `contract_percent`
--

CREATE TABLE IF NOT EXISTS `contract_percent` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `cid` int(11) NOT NULL COMMENT '具体合约的编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `loop` int(11) NOT NULL DEFAULT '1' COMMENT '哪一轮买入的',
  `ratio` float NOT NULL DEFAULT '0' COMMENT '所占比例',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='合约比例';

-- --------------------------------------------------------

--
-- 表的结构 `crons`
--

CREATE TABLE IF NOT EXISTS `crons` (
  `id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 未执行 1 已执行'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- 转存表中的数据 `crons`
--

INSERT INTO `crons` (`id`, `create_time`, `status`) VALUES
(0, 1559276161, 1),
(0, 1559362562, 1),
(0, 1559448962, 1),
(0, 1559535361, 1),
(0, 1559621762, 1),
(0, 1559708162, 1),
(0, 1559734180, 1),
(0, 1559794561, 1),
(0, 1559880962, 1),
(0, 1559967361, 1),
(0, 1560053761, 1),
(0, 1560140161, 1),
(0, 1560226562, 1),
(0, 1560312961, 1),
(0, 1560399361, 1),
(0, 1560485761, 1),
(0, 1560572161, 1),
(0, 1560658562, 1),
(0, 1560744961, 1),
(0, 1560831361, 1),
(0, 1560917761, 1),
(0, 1561004161, 1),
(0, 1561090562, 1),
(0, 1561176961, 1),
(0, 1561263362, 1),
(0, 1561269949, 1),
(0, 1561349762, 1),
(0, 1561436161, 1),
(0, 1561522561, 1),
(0, 1561608961, 1),
(0, 1561695361, 1),
(0, 1561781761, 1),
(0, 1561868161, 1),
(0, 1561954561, 1),
(0, 1562040961, 1),
(0, 1562076223, 1),
(0, 1562559362, 1),
(0, 1562645761, 1),
(0, 1562732161, 1),
(0, 1562818561, 1),
(0, 1562904961, 1),
(0, 1562991361, 1),
(0, 1563077761, 1),
(0, 1563164162, 1),
(0, 1563250561, 1),
(0, 1563336961, 1),
(0, 1563423361, 1),
(0, 1563509761, 1),
(0, 1563596161, 1),
(0, 1563682561, 1),
(0, 1564028161, 1),
(0, 1564114562, 1),
(0, 1564200961, 1),
(0, 1564287362, 1),
(0, 1564311257, 1),
(0, 1564311284, 1),
(0, 1564311993, 1),
(0, 1564312129, 1),
(0, 1564374601, 1),
(0, 1564461001, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dashboard`
--

CREATE TABLE IF NOT EXISTS `dashboard` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账户',
  `total_steps` int(30) NOT NULL DEFAULT '0',
  `power` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '个人算力（包含个人、矿机、团队等所有）',
  `team_power` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '团队算力',
  `team_count` int(11) NOT NULL DEFAULT '0' COMMENT '团队总人数',
  `authen` int(11) NOT NULL DEFAULT '0' COMMENT '实名认证人数',
  `machine_count` int(11) NOT NULL DEFAULT '0' COMMENT '矿机数量',
  `machine_power` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '矿机算力',
  `machine_expire` int(11) NOT NULL DEFAULT '0' COMMENT '过期矿机数量',
  `one` int(11) NOT NULL DEFAULT '0' COMMENT '1代数量',
  `two` int(11) NOT NULL DEFAULT '0' COMMENT '2代数量',
  `three` int(11) NOT NULL DEFAULT '0' COMMENT '3代数量',
  `four` int(11) NOT NULL DEFAULT '0' COMMENT '4代数量',
  `five` int(11) NOT NULL DEFAULT '0' COMMENT '5代数量',
  `six` int(11) NOT NULL DEFAULT '0' COMMENT '6代数量',
  `seven` int(11) NOT NULL DEFAULT '0' COMMENT '7代数量',
  `eight` int(11) NOT NULL DEFAULT '0' COMMENT '8代数量',
  `lv0` int(11) NOT NULL DEFAULT '0' COMMENT '未认证用户数量',
  `lv1` int(11) NOT NULL DEFAULT '0' COMMENT '1级用户数量',
  `lv2` int(11) NOT NULL DEFAULT '0' COMMENT '2级用户数量',
  `lv3` int(11) NOT NULL DEFAULT '0' COMMENT '3级用户数量',
  `lv4` int(11) NOT NULL DEFAULT '0' COMMENT '4级用户数量',
  `lv5` int(11) NOT NULL DEFAULT '0' COMMENT '5级用户数量',
  `lv6` int(11) NOT NULL DEFAULT '0' COMMENT '6级用户数量',
  `lv7` int(11) NOT NULL DEFAULT '0' COMMENT '7级用户数量',
  `lv8` int(11) NOT NULL DEFAULT '0' COMMENT '8级用户数量',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='仪表盘';

--
-- 转存表中的数据 `dashboard`
--

INSERT INTO `dashboard` (`id`, `username`, `total_steps`, `power`, `team_power`, `team_count`, `authen`, `machine_count`, `machine_power`, `machine_expire`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `lv0`, `lv1`, `lv2`, `lv3`, `lv4`, `lv5`, `lv6`, `lv7`, `lv8`, `create_at`, `update_at`) VALUES
(1, '19999999999', 0, '0.000000000000', '0.000000000000', 2, 0, 0, '0.000000000000', 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 16:58:20', '2025-01-19 17:24:08'),
(2, '11111111111', 750, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 16:59:18', '2025-02-04 09:09:07'),
(3, '12222222222', 5314, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:15:08', '2025-02-04 04:25:35'),
(4, '13333333333', 186, '0.000000000000', '0.000000000000', 2, 0, 0, '0.000000000000', 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:15:20', '2025-02-05 06:52:28'),
(5, '16666666666', 491, '0.000000000000', '0.000000000000', 7, 0, 0, '0.000000000000', 0, 3, 3, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:15:31', '2025-02-05 02:18:12'),
(6, '17777777777', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:15:41', '2025-01-17 17:15:41'),
(7, '18888888888', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:15:52', '2025-01-17 17:15:52'),
(8, '16677777777', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:04', '2025-01-17 17:16:04'),
(9, '16688888888', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:17', '2025-01-17 17:16:17'),
(10, '16699999999', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:26', '2025-01-17 17:16:26'),
(11, '17766666666', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:35', '2025-01-17 17:16:35'),
(12, '17788888888', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:43', '2025-01-17 17:16:43'),
(13, '17799999999', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:16:52', '2025-01-17 17:16:52'),
(14, '18866666666', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:02', '2025-01-17 17:17:02'),
(15, '18877777777', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:11', '2025-01-17 17:17:11'),
(16, '18899999999', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:19', '2025-01-17 17:17:19'),
(17, '19966666666', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:32', '2025-01-17 17:17:32'),
(18, '19977777777', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:41', '2025-01-17 17:17:41'),
(19, '19988888888', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-17 17:17:52', '2025-01-17 17:17:52'),
(20, '13111111112', 12796, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 02:59:30', '2025-02-05 02:57:26'),
(21, '15971016808', 0, '0.000000000000', '0.000000000000', 1, 0, 0, '0.000000000000', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 05:18:00', '2025-01-18 05:19:42'),
(22, '15530807512', 0, '0.000000000000', '0.000000000000', 1, 0, 0, '0.000000000000', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 05:18:12', '2025-01-18 05:23:27'),
(23, '18727082107', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 05:19:42', '2025-01-18 05:19:42'),
(24, '18632558605', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 05:23:27', '2025-01-18 05:23:27'),
(25, '19969799233', 0, '0.000000000000', '0.000000000000', 2, 0, 0, '0.000000000000', 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 05:35:14', '2025-01-18 06:17:55'),
(26, '18204620594', 0, '0.000000000000', '0.000000000000', 1, 0, 0, '0.000000000000', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 06:11:33', '2025-01-18 06:17:55'),
(27, '17629261573', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-18 06:17:55', '2025-01-18 06:17:55'),
(28, '19393141093', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 03:20:18', '2025-01-19 03:20:18'),
(29, '18290186822', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 03:24:31', '2025-01-19 03:24:31'),
(30, '15178968728', 0, '0.000000000000', '0.000000000000', 0, 0, 0, '0.000000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-19 17:24:08', '2025-01-19 17:24:08');

-- --------------------------------------------------------

--
-- 表的结构 `event_log`
--

CREATE TABLE IF NOT EXISTS `event_log` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型，1：刮刮卡',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态，0：待提货，1：已发货，2：待发货',
  `hit` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否中奖，0：没有，1：中奖',
  `reward` int(11) NOT NULL DEFAULT '0' COMMENT '中的具体奖品的编号',
  `reward_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '奖品类型，1：矿机，2：实物，3：话费',
  `receive` text COMMENT '收货地址信息',
  `send` text COMMENT '发货信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动记录';

--
-- 转存表中的数据 `event_log`
--

INSERT INTO `event_log` (`id`, `username`, `type`, `status`, `hit`, `reward`, `reward_type`, `receive`, `send`, `create_at`, `update_at`) VALUES
(1, '12222222222', 2, 1, 1, 1008, 8, NULL, NULL, '2025-01-19 03:13:37', '2025-01-19 03:13:37'),
(2, '17777777777', 2, 0, 1, 1005, 2, NULL, NULL, '2025-01-19 03:15:27', '2025-01-19 03:15:27'),
(3, '19999999999', 2, 0, 1, 1006, 2, NULL, NULL, '2025-01-19 04:12:36', '2025-01-19 04:12:36'),
(4, '11111111111', 2, 1, 1, 1004, 8, NULL, NULL, '2025-01-28 02:45:42', '2025-01-28 02:45:42'),
(5, '13333333333', 2, 1, 1, 1009, 8, NULL, NULL, '2025-01-31 04:43:47', '2025-01-31 04:43:47'),
(6, '16666666666', 2, 1, 1, 1009, 8, NULL, NULL, '2025-02-05 02:13:43', '2025-02-05 02:13:43');

-- --------------------------------------------------------

--
-- 表的结构 `funding`
--

CREATE TABLE IF NOT EXISTS `funding` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `visible` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否可见，1：可见，0：隐藏',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型，1：普通项目，8：官方项目',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1：进行中，2：审核中，3：已结束',
  `currency` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：可用资金，8：RMB',
  `owner` char(11) DEFAULT NULL COMMENT '项目归属人',
  `catalog` tinyint(4) NOT NULL DEFAULT '1' COMMENT '项目分类',
  `title` varchar(50) NOT NULL COMMENT '项目名称',
  `image` varchar(100) NOT NULL COMMENT '项目图片',
  `content` text COMMENT '项目介绍',
  `target` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '目标金额',
  `current` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '当前金额',
  `people` int(11) NOT NULL DEFAULT '0' COMMENT '参与人数',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '参与次数',
  `expire_at` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='众筹';

-- --------------------------------------------------------

--
-- 表的结构 `funding_log`
--

CREATE TABLE IF NOT EXISTS `funding_log` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `fid` int(11) NOT NULL COMMENT '项目编号',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型，1：普通项目，8：官方项目',
  `currency` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：可用资金，8：RMB',
  `action` tinyint(4) NOT NULL DEFAULT '1' COMMENT '操作类型，1：投资，8：结束',
  `username` char(11) DEFAULT NULL COMMENT '用户账号',
  `money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '投资金额',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='众筹记录';

-- --------------------------------------------------------

--
-- 表的结构 `global_bonus`
--

CREATE TABLE IF NOT EXISTS `global_bonus` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `date` date NOT NULL COMMENT '具体日期',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '本次手续费',
  `rate` text NOT NULL COMMENT '各级别的比例配置',
  `people` int(11) NOT NULL DEFAULT '0' COMMENT '总发放人数',
  `money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '总发放金额',
  `lv0` text COMMENT 'lv0的情况',
  `lv1` text COMMENT 'lv1的情况',
  `lv2` text COMMENT 'lv2的情况',
  `lv3` text COMMENT 'lv3的情况',
  `lv4` text COMMENT 'lv4的情况',
  `lv5` text COMMENT 'lv5的情况',
  `lv6` text COMMENT 'lv6的情况',
  `lv7` text COMMENT 'lv7的情况',
  `lv8` text COMMENT 'lv8的情况',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='全球分红';

--
-- 转存表中的数据 `global_bonus`
--

INSERT INTO `global_bonus` (`id`, `date`, `charge`, `rate`, `people`, `money`, `lv0`, `lv1`, `lv2`, `lv3`, `lv4`, `lv5`, `lv6`, `lv7`, `lv8`, `create_at`, `update_at`) VALUES
(1, '2019-09-11', '3000.000000000000', '{"lv3":"0.1","lv2":"0.05"}', 6, '450.000000000000', NULL, NULL, '{"13333333333":{"username":"13333333333","rate":"0.05","money":37.5,"time":"2019-07-11 14:58:40"},"18031040584":{"username":"18031040584","rate":"0.05","money":37.5,"time":"2019-07-11 14:58:40"},"18888888888":{"username":"18888888888","rate":"0.05","money":37.5,"time":"2019-07-11 14:58:41"},"15030116666":{"username":"15030116666","rate":"0.05","money":37.5,"time":"2019-07-11 14:58:41"}}', '{"13399135409":{"username":"13399135409","rate":"0.1","money":150,"time":"2019-07-11 14:58:40"},"16888888888":{"username":"16888888888","rate":"0.1","money":150,"time":"2019-07-11 14:58:40"}}', NULL, NULL, NULL, NULL, NULL, '2019-07-11 06:58:40', '2019-07-11 06:58:41');

-- --------------------------------------------------------

--
-- 表的结构 `imtoken`
--

CREATE TABLE IF NOT EXISTS `imtoken` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `tid` char(10) NOT NULL COMMENT '订单编号',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1充值，2提现',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1成功，2待审核，0失败',
  `username` char(11) NOT NULL COMMENT '自己的账号',
  `number` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '数量',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费',
  `address` varchar(100) DEFAULT NULL COMMENT '我的钱包地址',
  `qrcode` varchar(100) DEFAULT NULL COMMENT '我的钱包二维码',
  `certificate` text COMMENT '凭证，图片列表',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='imtoken';

-- --------------------------------------------------------

--
-- 表的结构 `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `text` text COMMENT '描述',
  `ip` char(20) DEFAULT NULL COMMENT 'IP地址',
  `ua` text COMMENT 'UserAgent',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='日志表';

--
-- 转存表中的数据 `log`
--

INSERT INTO `log` (`id`, `username`, `type`, `text`, `ip`, `ua`, `create_at`) VALUES
(1, '12222222222', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:15:08'),
(2, '13333333333', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:15:20'),
(3, '16666666666', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:15:31'),
(4, '17777777777', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:15:41'),
(5, '18888888888', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:15:52'),
(6, '16677777777', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:04'),
(7, '16688888888', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:17'),
(8, '16699999999', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:26'),
(9, '17766666666', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:35'),
(10, '17788888888', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:43'),
(11, '17799999999', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:16:52'),
(12, '18866666666', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:02'),
(13, '18877777777', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:11'),
(14, '18899999999', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:19'),
(15, '19966666666', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:32'),
(16, '19977777777', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:41'),
(17, '19988888888', 2, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-17 17:17:52'),
(18, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Safari/537.36 Core/1.116.457.400 QQBrowser/13.4.6233.400', '2025-01-18 00:44:02'),
(19, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:44:34'),
(20, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:44:42'),
(21, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:46:43'),
(22, '19988888888', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:51:19'),
(23, '19977777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:53:00'),
(24, '19966666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:53:24'),
(25, '18899999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:53:48'),
(26, '18877777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:54:14'),
(27, '18866666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:54:45'),
(28, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:54:58'),
(29, '17799999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:55:10'),
(30, '19988888888', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:55:30'),
(31, '17788888888', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:55:36'),
(32, '19977777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:55:51'),
(33, '17766666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:55:53'),
(34, '11111111111', 13, '登录密码：123456', '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-18 00:56:19'),
(35, '16699999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:56:28'),
(36, '12222222222', 13, '登录密码：123456', '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-18 00:56:38'),
(37, '16688888888', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:56:58'),
(38, '17777777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:57:19'),
(39, '16666666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:57:36'),
(40, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:58:00'),
(41, '19999999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 00:58:18'),
(42, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 00:59:20'),
(43, '19999999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-18 00:59:46'),
(44, '16666666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-18 01:03:44'),
(45, '16666666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 01:04:56'),
(46, '17777777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-18 01:04:59'),
(47, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 01:06:45'),
(48, '19999999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-18 01:31:05'),
(49, '13111111112', 1, '来自于推荐人19999999999', '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 02:59:30'),
(50, '13111111112', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:21:04'),
(51, '11111111111', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:25:27'),
(52, '11111111111', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:29:07'),
(53, '11111111111', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:38:09'),
(54, '19999999999', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:40:09'),
(55, '19999999999', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 03:54:18'),
(56, '15971016808', 1, '来自于推荐人16666666666', '23.247.138.194', 'Mozilla/5.0 (Linux; Android 14; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-18 05:18:00'),
(57, '15530807512', 1, '来自于推荐人16666666666', '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 05:18:12'),
(58, '15971016808', 3, NULL, '23.247.138.194', 'Mozilla/5.0 (Linux; Android 14; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-18 05:18:17'),
(59, '15530807512', 3, NULL, '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 05:18:30'),
(60, '18727082107', 1, '来自于推荐人15971016808', '117.154.120.95', 'Mozilla/5.0 (Linux; Android 15; PKM110 Build/UKQ1.231108.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.103 Mobile Safari/537.36 XWEB/1300333 MMWEBSDK/20241202 MMWEBID/1343 MicroMessenger/8.0.56.2800(0x28003836) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64', '2025-01-18 05:19:42'),
(61, '15530807512', 3, NULL, '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 05:20:00'),
(62, '16666666666', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Mobile Safari/537.36', '2025-01-18 05:22:45'),
(63, '18632558605', 1, '来自于推荐人15530807512', '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 05:23:27'),
(64, '18632558605', 3, NULL, '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 05:23:42'),
(65, '15971016808', 3, NULL, '23.247.138.194', 'Mozilla/5.0 (Linux; Android 14; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-18 05:32:07'),
(66, '18727082107', 3, NULL, '223.104.119.132', 'Mozilla/5.0 (Linux; Android 15; PKM110 Build/UKQ1.231108.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.103 Mobile Safari/537.36 XWEB/1300333 MMWEBSDK/20241202 MMWEBID/1343 MicroMessenger/8.0.56.2800(0x28003836) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64', '2025-01-18 05:32:50'),
(67, '19969799233', 1, '来自于推荐人16666666666', '153.119.127.250', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', '2025-01-18 05:35:14'),
(68, '19969799233', 3, NULL, '153.119.127.250', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', '2025-01-18 05:35:30'),
(69, '18727082107', 3, NULL, '223.104.119.132', 'Mozilla/5.0 (Linux; Android 15; PKM110 Build/UKQ1.231108.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.103 Mobile Safari/537.36 XWEB/1300333 MMWEBSDK/20241202 MMWEBID/1343 MicroMessenger/8.0.56.2800(0x28003836) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64', '2025-01-18 05:51:11'),
(70, '18727082107', 3, NULL, '223.104.119.132', 'Mozilla/5.0 (Linux; Android 15; PKM110 Build/UKQ1.231108.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.103 Mobile Safari/537.36 XWEB/1300333 MMWEBSDK/20241202 MMWEBID/1343 MicroMessenger/8.0.56.2800(0x28003836) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64', '2025-01-18 05:51:13'),
(71, '18632558605', 3, NULL, '221.192.127.124', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; ELS-AN00; HMSCore 6.14.0.322) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.10.302 Mobile Safari/537.36', '2025-01-18 06:05:49'),
(72, '18204620594', 1, '来自于推荐人19969799233', '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:11:33'),
(73, '18204620594', 3, NULL, '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:11:57'),
(74, '18204620594', 3, NULL, '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:13:22'),
(75, '18204620594', 3, NULL, '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:14:03'),
(76, '18204620594', 3, NULL, '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:14:51'),
(77, '17629261573', 1, '来自于推荐人18204620594', '110.166.218.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090c11) XWEB/11581 Flue', '2025-01-18 06:17:55'),
(78, '17629261573', 3, NULL, '110.166.218.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090c11) XWEB/11581 Flue', '2025-01-18 06:18:07'),
(79, '17629261573', 3, NULL, '110.166.218.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 NetType/WIFI MicroMessenger/7.0.20.1781(0x6700143B) WindowsWechat(0x63090c11) XWEB/11581 Flue', '2025-01-18 06:18:09'),
(80, '18204620594', 3, NULL, '223.104.191.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.54(0x1800363a) NetType/4G Language/zh_CN', '2025-01-18 06:25:21'),
(81, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2025-01-18 06:58:35'),
(82, '13111111112', 3, NULL, '103.232.212.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 08:01:48'),
(83, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2025-01-18 08:46:04'),
(84, '13111111112', 3, NULL, '103.115.173.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-18 09:40:15'),
(85, '13111111112', 5, NULL, '156.224.31.81', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 16:41:15'),
(86, '13111111112', 3, NULL, '156.224.31.81', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 16:49:36'),
(87, '19988888888', 3, NULL, '156.224.31.81', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-18 17:11:13'),
(88, '17777777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 01:13:11'),
(89, '11111111111', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 01:18:03'),
(90, '12222222222', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 01:18:20'),
(91, '12222222222', 20, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 03:13:37'),
(92, '17777777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 03:14:33'),
(93, '17777777777', 20, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-19 03:15:27'),
(94, '19393141093', 1, '来自于推荐人13333333333', '36.142.86.131', 'Mozilla/5.0 (Linux; Android 15; V2301A Build/AP3A.240905.015.A2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/126.0.6478.71 Mobile Safari/537.36', '2025-01-19 03:20:18'),
(95, '19393141093', 3, NULL, '36.142.86.131', 'Mozilla/5.0 (Linux; Android 15; V2301A Build/AP3A.240905.015.A2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/126.0.6478.71 Mobile Safari/537.36', '2025-01-19 03:20:31'),
(96, '18290186822', 1, '来自于推荐人13333333333', '111.58.248.130', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo Y71A Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36', '2025-01-19 03:24:31'),
(97, '18290186822', 3, NULL, '111.58.248.130', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo Y71A Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36', '2025-01-19 03:24:54'),
(98, '19999999999', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-19 03:45:57'),
(99, '19999999999', 20, NULL, '103.68.44.73', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-19 04:12:36'),
(100, '19999999999', 3, NULL, '103.68.44.73', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-19 05:57:22'),
(101, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Safari/537.36 Core/1.116.457.400 QQBrowser/13.4.6233.400', '2025-01-19 06:01:51'),
(102, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.97 Safari/537.36 Core/1.116.457.400 QQBrowser/13.4.6233.400', '2025-01-19 06:01:56'),
(103, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2025-01-19 07:51:32'),
(104, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2025-01-19 07:51:34'),
(105, '15178968728', 1, '来自于推荐人19999999999', '202.53.146.145', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-19 17:24:08'),
(106, '15178968728', 3, NULL, '202.53.146.145', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-19 17:24:35'),
(107, '17777777777', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2025-01-20 01:44:02'),
(108, '15178968728', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2025-01-20 07:13:37'),
(109, '13111111112', 3, NULL, '103.232.212.93', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-20 08:00:54'),
(110, '13111111112', 3, NULL, '156.224.31.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-26 13:39:06'),
(111, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-26 13:54:15'),
(112, '13111111112', 3, NULL, '58.62.252.62', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-26 14:22:04'),
(113, '19999999999', 3, NULL, '175.100.10.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-27 01:59:05'),
(114, '19999999999', 3, NULL, '175.100.10.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-27 02:05:51'),
(115, '19999999999', 3, NULL, '175.100.10.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-27 02:12:22'),
(116, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 11; V2026 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/046291 Mobile Safari/537.36', '2025-01-27 05:05:26'),
(117, '19999999999', 3, NULL, '175.100.10.66', 'Mozilla/5.0 (Linux; Android 12; AGM3-AL09HN Build/HONORAGM3-AL09HN; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.262 Safari/537.36', '2025-01-27 18:55:56'),
(118, '11111111111', 3, NULL, '119.13.63.238', 'Mozilla/5.0 (Linux; Android 13; 23124RN87C Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-28 02:45:14'),
(119, '11111111111', 20, NULL, '119.13.63.238', 'Mozilla/5.0 (Linux; Android 13; 23124RN87C Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-28 02:45:42'),
(120, '13111111112', 3, NULL, '116.23.16.59', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-28 09:28:26'),
(121, '11111111111', 3, NULL, '119.13.63.238', 'Mozilla/5.0 (Linux; Android 13; 23124RN87C Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.260 Mobile Safari/537.36', '2025-01-28 09:33:46'),
(122, '13111111112', 3, NULL, '103.232.212.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2025-01-28 16:10:43'),
(123, '13111111112', 3, NULL, '185.135.77.237', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36', '2025-01-28 16:12:16'),
(124, '13111111112', 3, NULL, '185.135.77.237', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36', '2025-01-28 16:12:59'),
(125, '13111111112', 3, NULL, '116.23.16.59', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-29 03:19:30'),
(126, '13111111112', 3, NULL, '116.23.16.59', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-29 05:12:32'),
(127, '13111111112', 3, NULL, '14.31.168.32', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-29 05:34:43'),
(128, '13111111112', 3, NULL, '58.62.252.39', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-29 14:33:21'),
(129, '16666666666', 3, NULL, '119.13.62.216', 'Mozilla/5.0 (Linux; Android 10; LYA-AL00P Build/HUAWEILYA-AL00P; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 00:57:09'),
(130, '16666666666', 3, NULL, '119.13.62.216', 'Mozilla/5.0 (Linux; Android 10; LYA-AL00P Build/HUAWEILYA-AL00P; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 00:57:11'),
(131, '16666666666', 3, NULL, '119.13.62.216', 'Mozilla/5.0 (Linux; Android 10; LYA-AL00P Build/HUAWEILYA-AL00P; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 01:05:36'),
(132, '13111111112', 3, NULL, '183.46.96.38', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 08:55:58'),
(133, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 12:40:36'),
(134, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 12:40:42'),
(135, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 12:40:50'),
(136, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 12:41:38'),
(137, '13111111112', 3, NULL, '103.232.212.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-01-30 13:34:14'),
(138, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 13:42:08'),
(139, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 13:59:49'),
(140, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 14:06:42'),
(141, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 14:07:11'),
(142, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 15:15:33'),
(143, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 15:16:43'),
(144, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 18:55:59'),
(145, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 18:56:32'),
(146, '19999999999', 3, NULL, '175.100.10.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-01-30 18:57:52'),
(147, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 19:04:16'),
(148, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 19:04:34'),
(149, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 19:05:22'),
(150, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 19:32:46'),
(151, '13111111112', 3, NULL, '121.32.176.194', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-01-30 19:33:15'),
(152, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 11; V2026 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/046291 Mobile Safari/537.36', '2025-01-31 04:35:39'),
(153, '13333333333', 20, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 11; V2026 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/046291 Mobile Safari/537.36', '2025-01-31 04:43:47'),
(154, '13111111112', 3, NULL, '14.150.96.86', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-01 03:38:38'),
(155, '13111111112', 3, NULL, '156.224.31.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-02-02 06:57:31'),
(156, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-02 08:14:53'),
(157, '13111111112', 3, NULL, '156.224.31.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-02-02 08:15:49'),
(158, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36', '2025-02-02 08:20:58'),
(159, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36', '2025-02-02 08:21:00'),
(160, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.96 Mobile Safari/537.36', '2025-02-02 08:21:27'),
(161, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-02 09:12:06'),
(162, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-02 09:37:14'),
(163, '11111111111', 3, NULL, '103.106.206.176', 'Mozilla/5.0 (Linux; Android 9; V1824A Build/PQ3B.190801.01161429; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/91.0.4472.114 Mobile Safari/537.36', '2025-02-02 10:34:51'),
(164, '13111111112', 3, NULL, '119.143.64.226', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-02 22:47:52'),
(165, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-03 09:43:26'),
(166, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-03 10:46:29'),
(167, '12222222222', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-03 11:16:14'),
(168, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-04 04:31:49'),
(169, '11111111111', 3, NULL, '36.37.206.253', 'Mozilla/5.0 (Linux; Android 13; 23124RN87C Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/132.0.6834.122 Mobile Safari/537.36', '2025-02-04 08:26:43'),
(170, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-04 17:01:24'),
(171, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-04 17:05:10'),
(172, '13333333333', 3, NULL, '103.114.89.67', 'Mozilla/5.0 (Linux; Android 11; V2026 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/132.0.6834.163 Mobile Safari/537.36', '2025-02-05 01:20:10'),
(173, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 01:43:48'),
(174, '16666666666', 3, NULL, '36.37.152.232', 'Mozilla/5.0 (Linux; Android 10; LYA-AL00P Build/HUAWEILYA-AL00P; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 01:51:27'),
(175, '16666666666', 20, NULL, '36.37.152.232', 'Mozilla/5.0 (Linux; Android 10; LYA-AL00P Build/HUAWEILYA-AL00P; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 02:13:43'),
(176, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 02:23:03'),
(177, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 02:24:04'),
(178, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 02:54:17'),
(179, '13111111112', 3, NULL, '116.23.17.13', 'Mozilla/5.0 (Linux; Android 10; CDY-AN90 Build/HUAWEICDY-AN90; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/99.0.4844.88 Mobile Safari/537.36', '2025-02-05 03:26:44'),
(180, '19999999999', 3, NULL, '175.100.11.147', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Mobile Safari/537.36', '2025-02-05 04:11:57'),
(181, '19999999999', 12, NULL, '175.100.11.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-02-05 04:22:33'),
(182, '13111111112', 12, NULL, '175.100.11.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '2025-02-05 04:29:21');

-- --------------------------------------------------------

--
-- 表的结构 `lottery`
--

CREATE TABLE IF NOT EXISTS `lottery` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `draw_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `lottery_prizes`
--

CREATE TABLE IF NOT EXISTS `lottery_prizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `lottery_records`
--

CREATE TABLE IF NOT EXISTS `lottery_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prize_id` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `machine`
--

CREATE TABLE IF NOT EXISTS `machine` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `mid` char(10) NOT NULL COMMENT '矿机编号',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1：正常，0：停止',
  `source` tinyint(4) DEFAULT '1' COMMENT '来源，1：购买，2：赠送',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `product` int(11) NOT NULL COMMENT '产品编号',
  `divide` tinyint(4) DEFAULT '0' COMMENT '级别，0：仅自己收益，1：1级也能获益，2：2级也能获益，以此类推',
  `name` varchar(30) NOT NULL COMMENT '产品名称',
  `cycle` int(11) NOT NULL COMMENT '周期，单位小时',
  `income` decimal(30,12) NOT NULL COMMENT '预计收益',
  `power` decimal(30,12) NOT NULL COMMENT '算力，hash/h',
  `price` decimal(30,12) NOT NULL COMMENT '价格',
  `profit` decimal(30,12) DEFAULT '0.000000000000' COMMENT '累计收益',
  `count` int(11) DEFAULT '0' COMMENT '收矿次数',
  `profit_at` timestamp NULL DEFAULT NULL COMMENT '上次收矿时间',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='矿机表';

--
-- 转存表中的数据 `machine`
--

INSERT INTO `machine` (`id`, `mid`, `status`, `source`, `username`, `product`, `divide`, `name`, `cycle`, `income`, `power`, `price`, `profit`, `count`, `profit_at`, `create_at`, `update_at`) VALUES
(24, 'G2594641', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-03 17:06:21', '2019-06-03 17:06:21'),
(23, 'T5116136', 1, 1, '13333333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-03 05:40:31', '2019-06-03 05:40:31'),
(22, 'F4533979', 1, 1, '13399135409', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-02 15:59:57', '2019-06-02 15:59:57'),
(21, 'V3711091', 1, 1, '15030116666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-01 15:31:15', '2019-06-01 15:31:15'),
(20, 'P9273033', 1, 1, '18031040584', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-05-30 12:37:22', '2019-05-30 12:37:22'),
(19, 'B1714491', 1, 1, '13399135409', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-05-29 15:36:28', '2019-05-29 15:36:28'),
(18, 'X7056600', 1, 1, '15030116666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-05-25 14:55:54', '2019-05-25 14:55:54'),
(17, 'G2761283', 1, 1, '16888888888', 1, 1, '初级挑战卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-05-24 22:32:55', '2019-05-24 22:32:55'),
(16, 'G9957421', 1, 1, '13333333333', 3, 3, '高级挑战卡', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-05-23 16:55:38', '2019-05-23 16:55:38'),
(15, 'F3131926', 1, 1, '13333333333', 3, 3, '高级挑战卡', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-05-22 16:07:24', '2019-05-22 16:07:24'),
(14, 'E5761609', 1, 1, '13333333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-05-21 15:35:19', '2019-05-21 15:35:19'),
(13, 'S2293675', 1, 1, '13333333333', 1, 1, '初级挑战卡', 1, '1.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-05-21 14:53:58', '2019-05-21 14:53:58'),
(25, 'D8902131', 1, 1, '15030116666', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-04 13:30:52', '2019-06-04 13:30:52'),
(26, 'F5267047', 1, 1, '13399135409', 3, 3, '高级任务卷轴', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-06-04 13:32:17', '2019-06-04 13:32:17'),
(27, 'U3846379', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-06 03:01:53', '2019-06-06 03:01:53'),
(28, 'V2855159', 1, 1, '15030116666', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-07 08:12:29', '2019-06-07 08:12:29'),
(29, 'I9377675', 1, 1, '18031040584', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-07 08:15:07', '2019-06-07 08:15:07'),
(30, 'U8295023', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-08 14:58:59', '2019-06-08 14:58:59'),
(31, 'D3458280', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-10 15:35:30', '2019-06-10 15:35:30'),
(32, 'Q6217236', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-11 15:09:07', '2019-06-11 15:09:07'),
(33, 'A7544862', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-12 14:39:18', '2019-06-12 14:39:18'),
(34, 'X3968982', 1, 1, '18031040584', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-12 21:43:15', '2019-06-12 21:43:15'),
(35, 'X7449926', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-24 15:13:50', '2019-06-24 15:13:50'),
(36, 'T4962172', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-26 08:09:58', '2019-06-26 08:09:58'),
(37, 'Z7151831', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-06-27 04:13:24', '2019-06-27 04:13:24'),
(38, 'U9010953', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-06 08:00:33', '2019-07-06 08:00:33'),
(39, 'G7915239', 1, 1, '16888888888', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-06 08:00:55', '2019-07-06 08:00:55'),
(40, 'I1339513', 1, 1, '15030116666', 3, 3, '高级任务卷轴', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-07-06 08:01:17', '2019-07-06 08:01:17'),
(41, 'N8907947', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-08 04:06:18', '2019-07-08 04:06:18'),
(42, 'O3099524', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-08 19:03:18', '2019-07-08 19:03:18'),
(43, 'F3794048', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-09 09:02:41', '2019-07-09 09:02:41'),
(44, 'F3732053', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-10 07:14:33', '2019-07-10 07:14:33'),
(45, 'V5594470', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-10 07:36:23', '2019-07-10 07:36:23'),
(46, 'Z5149469', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-10 10:29:28', '2019-07-10 10:29:28'),
(47, 'X7960248', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-10 16:53:46', '2019-07-10 16:53:46'),
(48, 'M3839324', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-11 04:01:54', '2019-07-11 04:01:54'),
(49, 'D9609141', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-11 10:50:27', '2019-07-11 10:50:27'),
(50, 'I9315109', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-11 11:23:24', '2019-07-11 11:23:24'),
(51, 'W4389017', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-11 13:00:44', '2019-07-11 13:00:44'),
(52, 'G3266720', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-11 13:07:05', '2019-07-11 13:07:05'),
(53, 'E4331368', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-12 07:48:44', '2019-07-12 07:48:44'),
(54, 'I5403790', 1, 1, '13333333333', 3, 3, '高级任务卷轴', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-07-12 09:17:14', '2019-07-12 09:17:14'),
(55, 'N1626475', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-12 09:17:40', '2019-07-12 09:17:40'),
(56, 'H8727767', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-12 09:34:56', '2019-07-12 09:34:56'),
(57, 'L6795680', 1, 1, '13333333333', 3, 3, '高级任务卷轴', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-07-12 09:36:21', '2019-07-12 09:36:21'),
(58, 'J5262348', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-12 13:48:43', '2019-07-12 13:48:43'),
(59, 'H5312823', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-12 13:48:59', '2019-07-12 13:48:59'),
(60, 'A2411974', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-12 17:07:11', '2019-07-12 17:07:11'),
(61, 'F3225643', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-12 17:53:12', '2019-07-12 17:53:12'),
(62, 'D1666955', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-13 07:10:49', '2019-07-13 07:10:49'),
(63, 'Y7927861', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-14 05:11:13', '2019-07-14 05:11:13'),
(64, 'M5766230', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-14 06:23:53', '2019-07-14 06:23:53'),
(65, 'G5912825', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-14 06:41:24', '2019-07-14 06:41:24'),
(66, 'I5946758', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-14 10:00:01', '2019-07-14 10:00:01'),
(67, 'W2049420', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-14 10:34:11', '2019-07-14 10:34:11'),
(68, 'G7581762', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-15 12:21:40', '2019-07-15 12:21:40'),
(69, 'M8215257', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-16 02:33:27', '2019-07-16 02:33:27'),
(70, 'F9273065', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-16 09:10:08', '2019-07-16 09:10:08'),
(71, 'W6361660', 1, 1, '13399135409', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-16 15:03:45', '2019-07-16 15:03:45'),
(72, 'F6317407', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-17 04:12:26', '2019-07-17 04:12:26'),
(73, 'Z6483877', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-18 02:15:18', '2019-07-18 02:15:18'),
(74, 'X9091614', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-18 06:53:22', '2019-07-18 06:53:22'),
(75, 'M6910746', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-19 02:13:24', '2019-07-19 02:13:24'),
(76, 'W4248116', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-19 02:14:06', '2019-07-19 02:14:06'),
(77, 'J8438280', 1, 1, '13333333333', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-19 05:36:46', '2019-07-19 05:36:46'),
(78, 'S5221484', 1, 1, '13333333333', 3, 3, '高级任务卷轴', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, NULL, '2019-07-19 05:37:13', '2019-07-19 05:37:13'),
(79, 'D1198735', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-19 08:49:20', '2019-07-19 08:49:20'),
(80, 'B4063739', 1, 1, '13333333333', 10, 0, '激活', 0, '0.000000000000', '0.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-19 09:24:19', '2019-07-19 09:24:19'),
(81, 'Q6942112', 1, 1, '13333333333', 10, 0, '激活', 0, '0.000000000000', '0.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-19 09:26:57', '2019-07-19 09:26:57'),
(82, 'B9816094', 1, 1, '13333333333', 2, 2, '中级任务卷轴', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-19 09:30:13', '2019-07-19 09:30:13'),
(83, 'E5644428', 1, 1, '13333333333', 10, 0, '激活', 0, '0.000000000000', '0.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-19 10:03:21', '2019-07-19 10:03:21'),
(84, 'G9943947', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-19 10:03:39', '2019-07-19 10:03:39'),
(85, 'G8036580', 1, 1, '13333333333', 10, 0, '激活', 0, '0.000000000000', '0.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-19 13:20:49', '2019-07-19 13:20:49'),
(86, 'S1287192', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-19 13:53:15', '2019-07-19 13:53:15'),
(87, 'D8703383', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-20 02:36:50', '2019-07-20 02:36:50'),
(88, 'C8043955', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-20 11:18:47', '2019-07-20 11:18:47'),
(89, 'H8654590', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-20 15:16:43', '2019-07-20 15:16:43'),
(90, 'C2946084', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-20 15:16:51', '2019-07-20 15:16:51'),
(91, 'E5311088', 1, 1, '13333333333', 5, 5, '精英任务卷轴', 1, '1.000000000000', '500.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-20 15:17:00', '2019-07-20 15:17:00'),
(92, 'X5374414', 1, 1, '13333333333', 1, 1, '初级任务卷轴', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-20 23:06:39', '2019-07-20 23:06:39'),
(93, 'O8855832', 1, 1, '13333333333', 5, 5, '精英任务卷轴', 1, '1.000000000000', '500.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-21 08:16:26', '2019-07-21 08:16:26'),
(94, 'T1452196', 1, 1, '17681371015', 10, 0, '激活', 0, '0.000000000000', '0.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-24 18:06:39', '2019-07-24 18:06:39'),
(95, 'F4055652', 1, 1, '17681371015', 5, 5, '精英任务卷轴', 1, '1.000000000000', '500.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-24 18:06:48', '2019-07-24 18:06:48'),
(96, 'H7413480', 1, 1, '17681371015', 4, 4, '超级任务卷轴', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-25 12:01:44', '2019-07-25 12:01:44'),
(97, 'J5369757', 1, 1, '17627921813', 1, 1, '初级体验卡', 1, '0.000000000000', '30.000000000000', '25.000000000000', '0.000000000000', 0, NULL, '2019-07-25 12:29:42', '2019-07-25 12:29:42'),
(98, 'D9139070', 1, 1, '17681371015', 5, 5, '精英挑战卡', 1, '0.000000000000', '3920.000000000000', '3000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 04:03:40', '2019-07-26 04:03:40'),
(99, 'T8539107', 1, 1, '17627921813', 3, 3, '高级挑战卡', 1, '0.000000000000', '920.000000000000', '750.000000000000', '0.000000000000', 0, NULL, '2019-07-26 04:19:09', '2019-07-26 04:19:09'),
(100, 'V1981996', 1, 1, '13111111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '1930.000000000000', '1500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 04:22:24', '2019-07-26 04:22:24'),
(101, 'C2116855', 1, 1, '13111111112', 3, 3, '高级挑战卡', 1, '0.000000000000', '920.000000000000', '750.000000000000', '0.000000000000', 0, NULL, '2019-07-26 04:27:16', '2019-07-26 04:27:16'),
(102, 'R6835845', 1, 1, '13111111111', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1040.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 06:34:13', '2019-07-26 06:34:13'),
(103, 'U3472019', 1, 1, '13399999999', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:51:48', '2019-07-26 07:51:48'),
(104, 'C3191889', 1, 1, '13399999999', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:51:56', '2019-07-26 07:51:56'),
(105, 'H5980799', 1, 1, '13399999999', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:13', '2019-07-26 07:54:13'),
(106, 'F6564065', 1, 1, '13399999999', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:27', '2019-07-26 07:54:27'),
(107, 'N8404243', 1, 1, '13399999999', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:33', '2019-07-26 07:54:33'),
(108, 'M3751961', 1, 1, '13399999999', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:37', '2019-07-26 07:54:37'),
(109, 'U4435951', 1, 1, '13399999999', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:41', '2019-07-26 07:54:41'),
(110, 'V8514226', 1, 1, '13399999999', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:54:47', '2019-07-26 07:54:47'),
(111, 'P7158100', 1, 1, '13000000000', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:57:12', '2019-07-26 07:57:12'),
(112, 'V6658778', 1, 1, '13000000000', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:57:42', '2019-07-26 07:57:42'),
(113, 'B7436585', 1, 1, '13000000000', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:57:59', '2019-07-26 07:57:59'),
(114, 'Y6359578', 1, 1, '13000000000', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:58:41', '2019-07-26 07:58:41'),
(115, 'A2566279', 1, 1, '13000000000', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:58:53', '2019-07-26 07:58:53'),
(116, 'X8042908', 1, 1, '13000000000', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:03', '2019-07-26 07:59:03'),
(117, 'E3735930', 1, 1, '13000000000', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:14', '2019-07-26 07:59:14'),
(118, 'L3869143', 1, 1, '13000000000', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:18', '2019-07-26 07:59:18'),
(119, 'E2174064', 1, 1, '13011111111', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:42', '2019-07-26 07:59:42'),
(120, 'L1113758', 1, 1, '13011111111', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:48', '2019-07-26 07:59:48'),
(121, 'B9826772', 1, 1, '13011111111', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 07:59:56', '2019-07-26 07:59:56'),
(122, 'G8696002', 1, 1, '13011111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:00:04', '2019-07-26 08:00:04'),
(123, 'W7794883', 1, 1, '13011111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:00:09', '2019-07-26 08:00:09'),
(124, 'Y4390802', 1, 1, '13011111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:00:13', '2019-07-26 08:00:13'),
(125, 'V2927059', 1, 1, '13011111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:00:18', '2019-07-26 08:00:18'),
(126, 'L5100090', 1, 1, '13011111111', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:00:22', '2019-07-26 08:00:22'),
(127, 'Y4495776', 1, 1, '13022222222', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:01:05', '2019-07-26 08:01:05'),
(128, 'N3264487', 1, 1, '13022222222', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:05:39', '2019-07-26 08:05:39'),
(129, 'S3002178', 1, 1, '13022222222', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:05:46', '2019-07-26 08:05:46'),
(130, 'R6927912', 1, 1, '13022222222', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:05:53', '2019-07-26 08:05:53'),
(131, 'F8808617', 1, 1, '13022222222', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:06:03', '2019-07-26 08:06:03'),
(132, 'F3801704', 1, 1, '13022222222', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:06:08', '2019-07-26 08:06:08'),
(133, 'V5227040', 1, 1, '13022222222', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:06:12', '2019-07-26 08:06:12'),
(134, 'N7056182', 1, 1, '13022222222', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:06:16', '2019-07-26 08:06:16'),
(135, 'N8788251', 1, 1, '13033333333', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:08:21', '2019-07-26 08:08:21'),
(136, 'R2319361', 1, 1, '13033333333', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:08:42', '2019-07-26 08:08:42'),
(137, 'Q3522261', 1, 1, '13033333333', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:08:57', '2019-07-26 08:08:57'),
(138, 'X4598402', 1, 1, '13033333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:09:04', '2019-07-26 08:09:04'),
(139, 'T7719252', 1, 1, '13033333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:09:14', '2019-07-26 08:09:14'),
(140, 'X3564394', 1, 1, '13033333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:09:20', '2019-07-26 08:09:20'),
(141, 'F2127280', 1, 1, '13033333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:09:24', '2019-07-26 08:09:24'),
(142, 'V6185953', 1, 1, '13033333333', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:09:28', '2019-07-26 08:09:28'),
(143, 'C9972811', 1, 1, '17681371015', 12, 3, '挑战卡Lv4', 0, '0.000000000000', '8000.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:10:04', '2019-07-26 08:10:04'),
(144, 'O3334416', 1, 1, '17681371015', 12, 3, '挑战卡Lv4', 0, '0.000000000000', '8000.000000000000', '5000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:10:58', '2019-07-26 08:10:58'),
(145, 'T6627109', 1, 1, '13044444444', 15, 2, '挑战卡Lv3', 0, '0.000000000000', '3900.000000000000', '3000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:15:17', '2019-07-26 08:15:17'),
(146, 'J6442930', 1, 1, '13044444444', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:15:58', '2019-07-26 08:15:58'),
(147, 'R2266530', 1, 1, '13044444444', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:16:10', '2019-07-26 08:16:10'),
(148, 'F8100856', 1, 1, '13044444444', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:16:15', '2019-07-26 08:16:15'),
(149, 'H8110605', 1, 1, '13044444444', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:16:20', '2019-07-26 08:16:20'),
(150, 'P5697324', 1, 1, '13044444444', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:16:24', '2019-07-26 08:16:24'),
(151, 'F5850550', 1, 1, '13055555555', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:17:22', '2019-07-26 08:17:22'),
(152, 'S8549097', 1, 1, '13055555555', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:17:49', '2019-07-26 08:17:49'),
(153, 'V6338453', 1, 1, '13055555555', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:17:55', '2019-07-26 08:17:55'),
(154, 'N9309945', 1, 1, '13055555555', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:18:00', '2019-07-26 08:18:00'),
(155, 'B6588063', 1, 1, '13055555555', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:18:04', '2019-07-26 08:18:04'),
(156, 'J8432077', 1, 1, '13055555555', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:18:08', '2019-07-26 08:18:08'),
(157, 'H1772870', 1, 1, '13055555555', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:18:12', '2019-07-26 08:18:12'),
(158, 'D3354832', 1, 1, '13055555555', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:18:17', '2019-07-26 08:18:17'),
(159, 'K8539159', 1, 1, '13066666666', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:19:56', '2019-07-26 08:19:56'),
(160, 'F2677656', 1, 1, '13066666666', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:08', '2019-07-26 08:20:08'),
(161, 'Z5000046', 1, 1, '13066666666', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:18', '2019-07-26 08:20:18'),
(162, 'C2429580', 1, 1, '13066666666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:28', '2019-07-26 08:20:28'),
(163, 'J9955045', 1, 1, '13066666666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:32', '2019-07-26 08:20:32'),
(164, 'W5917201', 1, 1, '13066666666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:36', '2019-07-26 08:20:36'),
(165, 'J8962242', 1, 1, '13066666666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:40', '2019-07-26 08:20:40'),
(166, 'T6740066', 1, 1, '13066666666', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:20:44', '2019-07-26 08:20:44'),
(167, 'X3430996', 1, 1, '13077777777', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:31:36', '2019-07-26 08:31:36'),
(168, 'B7580689', 1, 1, '13077777777', 14, 3, '挑战卡Lv2', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:31:45', '2019-07-26 08:31:45'),
(169, 'S8590953', 1, 1, '13077777777', 13, 2, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:31:53', '2019-07-26 08:31:53'),
(170, 'T6714324', 1, 1, '13077777777', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:31:59', '2019-07-26 08:31:59'),
(171, 'Y4054425', 1, 1, '13077777777', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:32:03', '2019-07-26 08:32:03'),
(172, 'F9354187', 1, 1, '13077777777', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:32:07', '2019-07-26 08:32:07'),
(173, 'A9517495', 1, 1, '13077777777', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:32:10', '2019-07-26 08:32:10'),
(174, 'X5511346', 1, 1, '13077777777', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 08:32:13', '2019-07-26 08:32:13'),
(175, 'W9556889', 1, 1, '17627921813', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 10:53:19', '2019-07-26 10:53:19'),
(176, 'W7399585', 1, 1, '17681371015', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-26 15:56:24', '2019-07-26 15:56:24'),
(177, 'Z2063804', 1, 1, '17681371015', 13, 3, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 15:57:37', '2019-07-26 15:57:37'),
(178, 'O2756723', 1, 1, '13099999999', 15, 3, '挑战卡Lv3', 0, '0.000000000000', '3900.000000000000', '3000.000000000000', '0.000000000000', 0, NULL, '2019-07-26 16:38:41', '2019-07-26 16:38:41'),
(179, 'K5447889', 1, 1, '17681371015', 13, 3, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-26 17:02:42', '2019-07-26 17:02:42'),
(180, 'G8370321', 1, 1, '17627921813', 2, 2, '中级挑战卡', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-27 06:17:25', '2019-07-27 06:17:25'),
(181, 'V9422120', 1, 1, '17681371016', 4, 4, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-28 04:01:55', '2019-07-28 04:01:55'),
(182, 'G6477976', 1, 2, '17681371015', 1, 1, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 05:05:12', '2019-07-28 05:05:12'),
(183, 'N7044052', 1, 2, '17355331619', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:55:45', '2019-07-28 09:55:45'),
(184, 'W1140192', 1, 2, '13992686712', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:56:26', '2019-07-28 09:56:26'),
(185, 'W7019415', 1, 2, '1761371015', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:56:26', '2019-07-28 09:56:26'),
(186, 'M5418046', 1, 2, '13992686712', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:56:36', '2019-07-28 09:56:36'),
(187, 'B3451600', 1, 2, '17681371015', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:56:50', '2019-07-28 09:56:50'),
(188, 'Q4581519', 1, 2, '17681371015', 2, 3, '中级挑战卡', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:57:21', '2019-07-28 09:57:21'),
(189, 'L8175334', 1, 2, '17681371015', 13, 3, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:58:08', '2019-07-28 09:58:08'),
(190, 'G2755492', 1, 2, '17681371015', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:58:44', '2019-07-28 09:58:44'),
(191, 'J4718382', 1, 2, '18552320267', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 09:59:59', '2019-07-28 09:59:59'),
(192, 'Z1255144', 1, 2, '17355877155', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 10:00:55', '2019-07-28 10:00:55'),
(193, 'G2021008', 1, 1, '17681371015', 4, 5, '超级挑战卡', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 0, NULL, '2019-07-28 12:19:21', '2019-07-28 12:19:21'),
(194, 'S3851216', 1, 1, '13681203820', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-28 23:35:13', '2019-07-28 23:35:13'),
(195, 'Z2506539', 1, 2, '17789816229', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-29 03:31:36', '2019-07-29 03:31:36'),
(196, 'I4117825', 1, 1, '17681371015', 13, 3, '挑战卡Lv1', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 0, NULL, '2019-07-29 04:07:50', '2019-07-29 04:07:50'),
(197, 'F5114611', 1, 1, '17681371016', 2, 3, '中级挑战卡', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-29 05:29:28', '2019-07-29 05:29:28'),
(198, 'N2623393', 1, 1, '17681371016', 2, 3, '中级挑战卡', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, NULL, '2019-07-29 05:29:35', '2019-07-29 05:29:35'),
(199, 'B2737199', 1, 1, '17681371016', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2019-07-30 05:35:14', '2019-07-30 05:35:14'),
(200, 'R7944092', 1, 1, '13300000000', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2020-05-07 14:23:49', '2020-05-07 14:23:49'),
(201, 'J2100493', 1, 1, '17789816229', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2021-01-10 05:58:45', '2021-01-10 05:58:45'),
(202, 'M2362114', 1, 1, '13111111112', 1, 3, '初级体验卡', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, NULL, '2024-12-18 15:18:45', '2024-12-18 15:18:45');

-- --------------------------------------------------------

--
-- 表的结构 `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `date` date NOT NULL COMMENT '具体日期',
  `price` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '指导价格',
  `high` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '最高价格',
  `low` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '最低价格',
  `buy_count` int(11) NOT NULL DEFAULT '0' COMMENT '买入订单数量',
  `buy_money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '买入货币数量',
  `sell_count` int(11) NOT NULL DEFAULT '0' COMMENT '卖出订单数量',
  `sell_money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '卖入货币数量',
  `success_count` int(11) NOT NULL DEFAULT '0' COMMENT '成交订单数量',
  `success_money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '成交金额数量',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '总收取手续费',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行情';

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `content` text COMMENT '具体内容',
  `reply` text COMMENT '系统回复',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) DEFAULT '0' COMMENT '是否已读',
  `is_replied` tinyint(1) DEFAULT '0' COMMENT '是否已回复'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留言';

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `username`, `content`, `reply`, `create_at`, `update_at`, `create_time`, `is_read`, `is_replied`) VALUES
(2, '13681203820', '我今天点签到说，5点到八点才可以签到，现在就是呀，咋回事', NULL, '2019-07-28 23:20:21', '2019-07-28 23:20:21', '2025-01-06 19:32:08', 0, 0),
(3, '13681203820', '我点错活跃度，能给我退回来吧', '我们活跃度是无法退还的，请您确定在购买。', '2019-07-29 00:36:57', '2019-07-29 04:28:36', '2025-01-06 19:32:08', 0, 0),
(4, '13681203820', '挑战那个需要乐豆吗', NULL, '2019-07-29 04:24:56', '2019-07-29 04:24:56', '2025-01-06 19:32:08', 0, 0),
(5, '13681203820', '不是不需要乐豆就能挑战呀，怎么还需要乐豆呢', '亲，你遇到什么问题了呢？\r\n', '2019-07-29 04:26:17', '2019-07-29 04:26:58', '2025-01-06 19:32:08', 0, 0),
(6, '13681203820', '挑战不了了', NULL, '2019-07-29 04:35:45', '2019-07-29 04:35:45', '2025-01-06 19:32:08', 0, 0),
(7, '13681203820', '啥可用额度呀', '这边已经有玩家向我们反映了，我们互尽快为您处理好的。感谢你的理解。', '2019-07-29 04:38:16', '2019-07-29 04:39:54', '2025-01-06 19:32:08', 0, 0),
(8, '13681203820', '今天还能上吗', NULL, '2019-07-29 09:05:30', '2019-07-29 09:05:30', '2025-01-06 19:32:08', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oauth`
--

CREATE TABLE IF NOT EXISTS `oauth` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `oid` char(32) NOT NULL COMMENT '唯一编号，md5(p+a+o)',
  `platform` tinyint(4) NOT NULL DEFAULT '1' COMMENT '平台，1：微信，2：QQ',
  `appid` varchar(50) NOT NULL COMMENT 'AppID',
  `openid` varchar(50) NOT NULL COMMENT 'OpenID',
  `unionid` varchar(50) DEFAULT NULL COMMENT 'UnionID',
  `username` char(11) DEFAULT NULL COMMENT '用户账号，没有代表仅授权但并未注册成功',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `gender` tinyint(4) NOT NULL DEFAULT '1' COMMENT '性别，1：男，2：女',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `county` varchar(20) DEFAULT NULL COMMENT '区县',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='第三方授权登录';

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `oid` char(10) NOT NULL COMMENT '订单编号',
  `status` tinyint(4) DEFAULT '2' COMMENT '状态，1：正常（已发货），0：失败，2：待发货，3：待确认',
  `seller` char(11) DEFAULT NULL COMMENT '卖家账号',
  `buyer` char(11) NOT NULL COMMENT '买家账号',
  `product` int(11) NOT NULL COMMENT '产品编号',
  `title` varchar(30) NOT NULL COMMENT '产品名称',
  `currency` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付的货币类型',
  `price` decimal(30,12) NOT NULL COMMENT '价格',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费',
  `code` char(32) DEFAULT NULL COMMENT '激活码',
  `power` decimal(30,12) NOT NULL COMMENT '奖励算力',
  `address` text COMMENT '收货地址',
  `express` text COMMENT '快递信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=496 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商城订单';

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `oid`, `status`, `seller`, `buyer`, `product`, `title`, `currency`, `price`, `charge`, `code`, `power`, `address`, `express`, `create_at`, `update_at`) VALUES
(34, 'Y989880408', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:15:07', '2019-04-06 00:15:07'),
(33, 'Y408890151', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:10:59', '2019-04-06 00:10:59'),
(32, 'K834362081', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:10:45', '2019-04-06 00:10:45'),
(31, 'M350967318', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:09:25', '2019-04-06 00:09:25'),
(28, 'K705575966', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 00:08:39', '2019-04-06 00:08:39'),
(29, 'O577620950', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:08:53', '2019-04-06 00:08:53'),
(30, 'Y989983317', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-06 00:09:01', '2019-04-06 00:09:01'),
(27, 'P948071184', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 00:08:28', '2019-04-06 00:08:28'),
(26, 'S780010444', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-04 06:18:57', '2019-04-04 06:18:57'),
(25, 'Z236546052', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-03 23:21:10', '2019-04-03 23:21:10'),
(24, 'W644988131', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-03 01:01:04', '2019-04-03 01:01:04'),
(35, 'K709079333', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:17:49', '2019-04-06 00:17:49'),
(36, 'A602006034', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 00:18:16', '2019-04-06 00:18:16'),
(37, 'Y332057345', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:18:54', '2019-04-06 00:18:54'),
(38, 'W254906890', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-06 00:19:06', '2019-04-06 00:19:06'),
(39, 'Y902628732', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:19:50', '2019-04-06 00:19:50'),
(40, 'K386061699', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:20:39', '2019-04-06 00:20:39'),
(41, 'T426684331', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:21:04', '2019-04-06 00:21:04'),
(42, 'A479182928', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 00:21:18', '2019-04-06 00:21:18'),
(43, 'H386415482', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:23:00', '2019-04-06 00:23:00'),
(44, 'F364301108', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:23:19', '2019-04-06 00:23:19'),
(45, 'F521811822', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:29:25', '2019-04-06 00:29:25'),
(46, 'E389768315', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-06 00:30:55', '2019-04-06 00:30:55'),
(47, 'G490197668', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:31:52', '2019-04-06 00:31:52'),
(48, 'F931008216', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-06 00:35:36', '2019-04-06 00:35:36'),
(49, 'R988816776', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 00:39:07', '2019-04-06 00:39:07'),
(50, 'Q498207249', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-06 00:45:21', '2019-04-06 00:45:21'),
(51, 'Q586510709', 1, NULL, '13786393215', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-06 04:09:13', '2019-04-06 04:09:13'),
(52, 'D659877301', 1, NULL, '13786393215', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-06 04:09:31', '2019-04-06 04:09:31'),
(53, 'H796756929', 1, NULL, '13786393215', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 04:09:54', '2019-04-06 04:09:54'),
(54, 'J143668748', 1, NULL, '18331419752', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-06 04:14:42', '2019-04-06 04:14:42'),
(55, 'T252252328', 1, NULL, '18331419752', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-06 04:15:27', '2019-04-06 04:15:27'),
(56, 'R934176985', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-06 22:04:50', '2019-04-06 22:04:50'),
(57, 'C815082188', 1, NULL, '13786393215', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-07 03:31:14', '2019-04-07 03:31:14'),
(58, 'M360182348', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-07 05:17:10', '2019-04-07 05:17:10'),
(59, 'K617374179', 1, NULL, '13786393215', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-07 10:39:04', '2019-04-07 10:39:04'),
(60, 'V667526503', 1, NULL, '18331419752', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-07 10:39:37', '2019-04-07 10:39:37'),
(61, 'J707616717', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-07 10:42:22', '2019-04-07 10:42:22'),
(62, 'T264037587', 1, NULL, '18331419752', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-07 11:36:45', '2019-04-07 11:36:45'),
(63, 'H603487876', 1, NULL, '13399135409', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-07 11:38:36', '2019-04-07 11:38:36'),
(64, 'O876286704', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-07 16:15:55', '2019-04-07 16:15:55'),
(65, 'Z467620570', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-07 16:17:54', '2019-04-07 16:17:54'),
(66, 'K406757962', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-08 05:34:59', '2019-04-08 05:34:59'),
(67, 'Z205418097', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-08 05:36:53', '2019-04-08 05:36:53'),
(68, 'O280301367', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-08 06:00:19', '2019-04-08 06:00:19'),
(69, 'B546113471', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-08 15:10:45', '2019-04-08 15:10:45'),
(70, 'B847068448', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-08 15:10:55', '2019-04-08 15:10:55'),
(71, 'U289112119', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-08 19:24:38', '2019-04-08 19:24:38'),
(72, 'D908378239', 1, NULL, '13395267212', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-09 06:57:29', '2019-04-09 06:57:29'),
(73, 'I683519108', 1, NULL, '13395267212', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-09 06:57:37', '2019-04-09 06:57:37'),
(74, 'L731694256', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-09 08:41:25', '2019-04-09 08:41:25'),
(75, 'J550057861', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-09 08:48:27', '2019-04-09 08:48:27'),
(76, 'D549875831', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-10 01:56:21', '2019-04-10 01:56:21'),
(77, 'Q410333569', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 07:08:31', '2019-04-10 07:08:31'),
(78, 'H518492869', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-10 07:09:05', '2019-04-10 07:09:05'),
(79, 'O376758288', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 07:12:00', '2019-04-10 07:12:00'),
(80, 'U755736626', 1, NULL, '18331419752', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-10 07:14:17', '2019-04-10 07:14:17'),
(81, 'Z803618575', 1, NULL, '13786393215', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 07:21:56', '2019-04-10 07:21:56'),
(82, 'U591069687', 1, NULL, '13395267212', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 07:25:41', '2019-04-10 07:25:41'),
(83, 'V488370567', 1, NULL, '13395267212', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-10 07:44:26', '2019-04-10 07:44:26'),
(84, 'W192899404', 1, NULL, '17821522007', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 08:07:09', '2019-04-10 08:07:09'),
(85, 'F667968438', 1, NULL, '17821522007', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-10 08:07:25', '2019-04-10 08:07:25'),
(86, 'B445639903', 1, NULL, '13395267212', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-10 08:11:42', '2019-04-10 08:11:42'),
(87, 'I922061662', 1, NULL, '13395267212', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 08:12:27', '2019-04-10 08:12:27'),
(88, 'W194337375', 1, NULL, '13395267212', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-10 08:12:46', '2019-04-10 08:12:46'),
(89, 'N457321208', 1, NULL, '13395267212', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-10 08:13:33', '2019-04-10 08:13:33'),
(90, 'R408927075', 1, NULL, '18907454545', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 08:31:11', '2019-04-10 08:31:11'),
(91, 'E101393590', 1, NULL, '18907454545', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-10 08:31:22', '2019-04-10 08:31:22'),
(92, 'F762174362', 1, NULL, '18908454545', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-10 08:46:55', '2019-04-10 08:46:55'),
(93, 'N341363054', 1, NULL, '18908454545', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-10 08:47:06', '2019-04-10 08:47:06'),
(94, 'Y837168764', 1, NULL, '13395267212', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-10 08:52:21', '2019-04-10 08:52:21'),
(95, 'Y589219879', 1, NULL, '13395267212', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 08:52:42', '2019-04-10 08:52:42'),
(96, 'A378220370', 1, NULL, '13395267212', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 08:53:12', '2019-04-10 08:53:12'),
(97, 'D468811999', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 09:00:01', '2019-04-10 09:00:01'),
(98, 'A478642988', 1, NULL, '18909454545', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 09:02:50', '2019-04-10 09:02:50'),
(99, 'Q585430200', 1, NULL, '18909454545', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-10 09:03:08', '2019-04-10 09:03:08'),
(100, 'L181431160', 1, NULL, '18909454545', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-10 09:03:18', '2019-04-10 09:03:18'),
(101, 'T277790570', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-04-10 09:03:56', '2019-04-10 09:03:56'),
(102, 'Q311483069', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-10 09:04:02', '2019-04-10 09:04:02'),
(103, 'U707716904', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-10 09:04:03', '2019-04-10 09:04:03'),
(104, 'J204788068', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-10 09:04:32', '2019-04-10 09:04:32'),
(105, 'D909175550', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-12 09:52:57', '2019-04-12 09:52:57'),
(106, 'Y662361973', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-12 09:53:34', '2019-04-12 09:53:34'),
(107, 'F821591670', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-12 09:57:03', '2019-04-12 09:57:03'),
(108, 'Q652062866', 1, NULL, '13399135409', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-12 09:57:58', '2019-04-12 09:57:58'),
(109, 'N819392808', 1, NULL, '13399135409', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-12 09:58:04', '2019-04-12 09:58:04'),
(110, 'N147670423', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-12 09:58:26', '2019-04-12 09:58:26'),
(111, 'P678487381', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-13 08:21:03', '2019-04-13 08:21:03'),
(112, 'O816974681', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-13 08:21:10', '2019-04-13 08:21:10'),
(113, 'T923736859', 1, NULL, '15030116666', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-13 08:21:41', '2019-04-13 08:21:41'),
(114, 'G595320085', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-13 08:21:52', '2019-04-13 08:21:52'),
(115, 'L296822024', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-04-13 08:22:11', '2019-04-13 08:22:11'),
(116, 'H462108747', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-13 08:22:20', '2019-04-13 08:22:20'),
(117, 'P403732006', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-13 08:22:33', '2019-04-13 08:22:33'),
(118, 'B229914853', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-13 16:42:32', '2019-04-13 16:42:32'),
(119, 'V442364647', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-14 10:56:55', '2019-04-14 10:56:55'),
(120, 'P183419255', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-14 10:57:08', '2019-04-14 10:57:08'),
(121, 'B708919351', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-14 10:57:22', '2019-04-14 10:57:22'),
(122, 'W445428357', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-14 10:58:05', '2019-04-14 10:58:05'),
(123, 'C360725142', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-14 18:56:49', '2019-04-14 18:56:49'),
(124, 'Z896298619', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-15 15:25:52', '2019-04-15 15:25:52'),
(125, 'X430976727', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-15 15:26:16', '2019-04-15 15:26:16'),
(126, 'S528358397', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-15 15:26:34', '2019-04-15 15:26:34'),
(127, 'B986728502', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-15 16:03:22', '2019-04-15 16:03:22'),
(128, 'O265249089', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-04-16 17:47:12', '2019-04-16 17:47:12'),
(129, 'Q939077372', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-16 17:47:21', '2019-04-16 17:47:21'),
(130, 'E699178599', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-16 17:47:42', '2019-04-16 17:47:42'),
(131, 'N364709879', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-16 17:47:50', '2019-04-16 17:47:50'),
(132, 'X477202978', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-18 08:44:27', '2019-04-18 08:44:27'),
(133, 'N944869157', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-19 02:02:05', '2019-04-19 02:02:05'),
(134, 'U125661219', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-04-20 10:08:33', '2019-04-20 10:08:33'),
(135, 'W989920561', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-20 10:08:47', '2019-04-20 10:08:47'),
(136, 'Y755447831', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-20 10:08:58', '2019-04-20 10:08:58'),
(137, 'U227114887', 1, NULL, '18031040584', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-04-20 10:09:24', '2019-04-20 10:09:24'),
(138, 'X962751720', 1, NULL, '18031040584', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-04-20 10:09:32', '2019-04-20 10:09:32'),
(139, 'M745810696', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-20 16:01:42', '2019-04-20 16:01:42'),
(140, 'J936396466', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-22 16:26:18', '2019-04-22 16:26:18'),
(141, 'J437050066', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-22 16:26:33', '2019-04-22 16:26:33'),
(142, 'I352326619', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-22 16:26:50', '2019-04-22 16:26:50'),
(143, 'D614012313', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-23 16:09:57', '2019-04-23 16:09:57'),
(144, 'B776754463', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-04-25 19:11:27', '2019-04-25 19:11:27'),
(145, 'T416367519', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-25 19:11:39', '2019-04-25 19:11:39'),
(146, 'P527580404', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-04-25 19:11:49', '2019-04-25 19:11:49'),
(147, 'C634246547', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-04 07:50:05', '2019-05-04 07:50:05'),
(148, 'B815625573', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-04 07:50:27', '2019-05-04 07:50:27'),
(149, 'D909376420', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-04 07:53:35', '2019-05-04 07:53:35'),
(150, 'S234076293', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-04 07:54:13', '2019-05-04 07:54:13'),
(151, 'D554038417', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-04 07:54:38', '2019-05-04 07:54:38'),
(152, 'H545744945', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-05 06:08:48', '2019-05-05 06:08:48'),
(153, 'K131022005', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-05 06:08:57', '2019-05-05 06:08:57'),
(154, 'U907004578', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-05-05 06:10:12', '2019-05-05 06:10:12'),
(155, 'B891175795', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-05 06:10:22', '2019-05-05 06:10:22'),
(156, 'E514322834', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-05 06:10:39', '2019-05-05 06:10:39'),
(157, 'Y765543749', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-05-05 06:10:59', '2019-05-05 06:10:59'),
(158, 'I474459433', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-05 06:11:06', '2019-05-05 06:11:06'),
(159, 'Z258528430', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-05 20:50:58', '2019-05-05 20:50:58'),
(160, 'F263219100', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-05 20:51:07', '2019-05-05 20:51:07'),
(161, 'W532024834', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-07 01:30:03', '2019-05-07 01:30:03'),
(162, 'Y927564938', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-07 05:36:55', '2019-05-07 05:36:55'),
(163, 'S854548789', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-07 05:37:08', '2019-05-07 05:37:08'),
(164, 'B779331129', 1, NULL, '15030116666', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-07 05:37:30', '2019-05-07 05:37:30'),
(165, 'E606130860', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-07 05:37:37', '2019-05-07 05:37:37'),
(166, 'V721955414', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-07 05:38:19', '2019-05-07 05:38:19'),
(167, 'I205927808', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-07 16:18:02', '2019-05-07 16:18:02'),
(168, 'H103338075', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-07 20:07:34', '2019-05-07 20:07:34'),
(169, 'W991018817', 1, NULL, '15030116666', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-08 04:27:23', '2019-05-08 04:27:23'),
(170, 'W471485867', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-12 07:38:01', '2019-05-12 07:38:01'),
(171, 'G778876483', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-15 09:56:06', '2019-05-15 09:56:06'),
(172, 'L153044039', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-15 09:56:21', '2019-05-15 09:56:21'),
(173, 'D429052753', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-15 09:56:38', '2019-05-15 09:56:38'),
(174, 'O802942012', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-15 09:56:51', '2019-05-15 09:56:51'),
(175, 'E715992552', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-15 09:57:03', '2019-05-15 09:57:03'),
(176, 'W384680673', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-15 16:12:19', '2019-05-15 16:12:19'),
(177, 'Q635811253', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-15 16:12:25', '2019-05-15 16:12:25'),
(178, 'T752834033', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-16 00:01:56', '2019-05-16 00:01:56'),
(179, 'U445560105', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-18 13:26:52', '2019-05-18 13:26:52'),
(180, 'Q260187103', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-18 13:27:00', '2019-05-18 13:27:00'),
(181, 'O560521508', 1, NULL, '15030116666', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-18 13:27:40', '2019-05-18 13:27:40'),
(182, 'M103973902', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-18 13:27:46', '2019-05-18 13:27:46'),
(183, 'U300097827', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-18 13:28:00', '2019-05-18 13:28:00'),
(184, 'W548112576', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-18 13:28:14', '2019-05-18 13:28:14'),
(185, 'M375974333', 1, NULL, '16888888888', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-19 13:50:19', '2019-05-19 13:50:19'),
(186, 'S918878840', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-21 14:07:08', '2019-05-21 14:07:08'),
(187, 'C660825278', 1, NULL, '13333333333', 1, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-05-21 14:53:58', '2019-05-21 14:53:58'),
(188, 'U885110599', 1, NULL, '13333333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-21 15:35:19', '2019-05-21 15:35:19'),
(189, 'R445663575', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-21 16:27:22', '2019-05-21 16:27:22'),
(190, 'F438221431', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-22 11:09:29', '2019-05-22 11:09:29'),
(191, 'J762572868', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-22 13:18:34', '2019-05-22 13:18:34'),
(192, 'R697548035', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-22 13:19:26', '2019-05-22 13:19:26'),
(193, 'R562418836', 1, NULL, '13333333333', 3, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-05-22 16:07:24', '2019-05-22 16:07:24'),
(194, 'J358661068', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-22 16:07:30', '2019-05-22 16:07:30'),
(195, 'F678161978', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-23 14:09:13', '2019-05-23 14:09:13'),
(196, 'Y256747693', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-23 16:51:34', '2019-05-23 16:51:34'),
(197, 'O145361836', 1, NULL, '13333333333', 3, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-05-23 16:55:38', '2019-05-23 16:55:38'),
(198, 'K208273552', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-05-23 16:56:02', '2019-05-23 16:56:02'),
(199, 'I643184498', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-23 16:56:17', '2019-05-23 16:56:17'),
(200, 'M238940877', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-05-23 16:56:45', '2019-05-23 16:56:45'),
(201, 'Y786015341', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-24 03:27:17', '2019-05-24 03:27:17'),
(202, 'A919849369', 1, NULL, '16888888888', 1, '初级挑战卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-05-24 22:32:55', '2019-05-24 22:32:55'),
(203, 'H542866111', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-25 14:55:37', '2019-05-25 14:55:37'),
(204, 'Z981294891', 1, NULL, '15030116666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-25 14:55:54', '2019-05-25 14:55:54'),
(205, 'R270980868', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-25 14:55:59', '2019-05-25 14:55:59'),
(206, 'S983895558', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-25 14:56:12', '2019-05-25 14:56:12'),
(207, 'O414096256', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-25 14:56:24', '2019-05-25 14:56:24'),
(208, 'M242533571', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-27 01:09:54', '2019-05-27 01:09:54'),
(209, 'H856940220', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-28 12:57:32', '2019-05-28 12:57:32'),
(210, 'N788062122', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-29 11:13:07', '2019-05-29 11:13:07'),
(211, 'V429478332', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-29 15:35:07', '2019-05-29 15:35:07'),
(212, 'Y330722236', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-29 15:35:30', '2019-05-29 15:35:30'),
(213, 'R788957409', 1, NULL, '13399135409', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-29 15:36:28', '2019-05-29 15:36:28'),
(214, 'Z602166827', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-29 15:36:38', '2019-05-29 15:36:38'),
(215, 'D847971264', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-29 15:37:02', '2019-05-29 15:37:02'),
(216, 'Q640014623', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-30 12:35:10', '2019-05-30 12:35:10'),
(217, 'N778388650', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-05-30 12:36:40', '2019-05-30 12:36:40'),
(218, 'F785015632', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-05-30 12:36:56', '2019-05-30 12:36:56'),
(219, 'R115113756', 1, NULL, '18031040584', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-05-30 12:37:22', '2019-05-30 12:37:22'),
(220, 'T371306330', 1, NULL, '18031040584', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-05-30 12:37:33', '2019-05-30 12:37:33'),
(221, 'Z500857249', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-05-30 16:56:16', '2019-05-30 16:56:16'),
(222, 'C107410467', 1, NULL, '16888888888', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-01 08:35:17', '2019-06-01 08:35:17'),
(223, 'Q789412275', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-01 09:00:31', '2019-06-01 09:00:31'),
(224, 'C746374124', 1, NULL, '15030116666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-01 15:31:15', '2019-06-01 15:31:15'),
(225, 'D302153739', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-01 15:31:26', '2019-06-01 15:31:26'),
(226, 'M100934182', 1, NULL, '13399135409', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-01 15:31:41', '2019-06-01 15:31:41'),
(227, 'X723115912', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-01 15:31:58', '2019-06-01 15:31:58'),
(228, 'J354285194', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-01 16:08:14', '2019-06-01 16:08:14'),
(229, 'D431867767', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-02 15:59:28', '2019-06-02 15:59:28'),
(230, 'F521728954', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-02 15:59:39', '2019-06-02 15:59:39'),
(231, 'L774908739', 1, NULL, '13399135409', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-02 15:59:57', '2019-06-02 15:59:57'),
(232, 'F478003511', 1, NULL, '13399135409', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-02 16:00:05', '2019-06-02 16:00:05'),
(233, 'Y881294847', 1, NULL, '13333333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-03 05:40:31', '2019-06-03 05:40:31'),
(234, 'U581058911', 1, NULL, '13786393215', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-03 05:41:45', '2019-06-03 05:41:45'),
(235, 'Q711435214', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-03 07:56:40', '2019-06-03 07:56:40'),
(236, 'A604883713', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-03 07:59:49', '2019-06-03 07:59:49'),
(237, 'W692179448', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-03 17:06:21', '2019-06-03 17:06:21'),
(238, 'U923649401', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-04 13:30:07', '2019-06-04 13:30:07'),
(239, 'E184105606', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-04 13:30:33', '2019-06-04 13:30:33'),
(240, 'S358886393', 1, NULL, '15030116666', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-04 13:30:52', '2019-06-04 13:30:52'),
(241, 'I210205185', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-04 13:30:59', '2019-06-04 13:30:59'),
(242, 'A285525830', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-04 13:31:15', '2019-06-04 13:31:15'),
(243, 'M549373274', 1, NULL, '13399135409', 3, '高级任务卷轴', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-06-04 13:32:17', '2019-06-04 13:32:17'),
(244, 'C693608890', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-05 03:52:06', '2019-06-05 03:52:06'),
(245, 'I265651543', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-06 03:01:53', '2019-06-06 03:01:53'),
(246, 'V541353420', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-06 03:02:00', '2019-06-06 03:02:00'),
(247, 'V431022377', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-06 03:04:02', '2019-06-06 03:04:02'),
(248, 'N559407649', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-06 03:04:14', '2019-06-06 03:04:14'),
(249, 'H725316664', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-06 03:04:27', '2019-06-06 03:04:27'),
(250, 'V226560051', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-06 16:38:38', '2019-06-06 16:38:38'),
(251, 'U113077518', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-07 07:18:57', '2019-06-07 07:18:57'),
(252, 'K663885605', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-07 07:24:00', '2019-06-07 07:24:00'),
(253, 'D592636767', 1, NULL, '15030116666', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-07 08:12:29', '2019-06-07 08:12:29'),
(254, 'E681669302', 1, NULL, '15030116666', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-07 08:12:36', '2019-06-07 08:12:36'),
(255, 'W758078721', 1, NULL, '18031040584', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-07 08:15:07', '2019-06-07 08:15:07'),
(256, 'I305717663', 1, NULL, '18031040584', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-07 08:15:14', '2019-06-07 08:15:14'),
(257, 'M888369284', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-08 14:58:59', '2019-06-08 14:58:59'),
(258, 'C105300904', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-08 14:59:55', '2019-06-08 14:59:55'),
(259, 'F608169305', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-08 15:00:08', '2019-06-08 15:00:08'),
(260, 'V699883364', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-08 15:00:20', '2019-06-08 15:00:20'),
(261, 'W328591717', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-08 15:00:31', '2019-06-08 15:00:31'),
(262, 'I682788152', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-10 15:35:30', '2019-06-10 15:35:30'),
(263, 'V546901474', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-10 15:35:37', '2019-06-10 15:35:37'),
(264, 'A342660872', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-10 15:40:44', '2019-06-10 15:40:44'),
(265, 'Y749298701', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-10 15:41:02', '2019-06-10 15:41:02'),
(266, 'P525972369', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-10 15:41:14', '2019-06-10 15:41:14'),
(267, 'E399404441', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-11 15:09:07', '2019-06-11 15:09:07'),
(268, 'M150971471', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-11 15:09:13', '2019-06-11 15:09:13'),
(269, 'Y750801875', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-11 15:09:26', '2019-06-11 15:09:26'),
(270, 'P486900811', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-11 15:09:39', '2019-06-11 15:09:39'),
(271, 'L533081030', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-11 15:09:59', '2019-06-11 15:09:59'),
(272, 'Q356982534', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-12 14:39:18', '2019-06-12 14:39:18'),
(273, 'B252863933', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-12 14:39:26', '2019-06-12 14:39:26'),
(274, 'G250967430', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-12 14:39:45', '2019-06-12 14:39:45'),
(275, 'T722753505', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-12 14:39:59', '2019-06-12 14:39:59'),
(276, 'V175548526', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-12 14:40:12', '2019-06-12 14:40:12'),
(277, 'O342263332', 1, NULL, '18031040584', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-12 21:43:15', '2019-06-12 21:43:15'),
(278, 'O495303897', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-19 04:09:18', '2019-06-19 04:09:18'),
(279, 'P229934177', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-22 05:15:43', '2019-06-22 05:15:43'),
(280, 'Z721859280', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-22 05:16:32', '2019-06-22 05:16:32'),
(281, 'Q551240395', 1, NULL, '13399135409', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-22 05:16:50', '2019-06-22 05:16:50'),
(282, 'D562494558', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-24 15:13:50', '2019-06-24 15:13:50'),
(283, 'A113524790', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-24 15:13:58', '2019-06-24 15:13:58'),
(284, 'G262106328', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-24 15:14:12', '2019-06-24 15:14:12'),
(285, 'H265935329', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-24 15:14:25', '2019-06-24 15:14:25'),
(286, 'B301242070', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-24 15:15:56', '2019-06-24 15:15:56'),
(287, 'H161404187', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-26 08:09:58', '2019-06-26 08:09:58'),
(288, 'C570368364', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-06-26 08:10:14', '2019-06-26 08:10:14'),
(289, 'N989585895', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-26 08:10:38', '2019-06-26 08:10:38'),
(290, 'I277519346', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-26 08:10:52', '2019-06-26 08:10:52'),
(291, 'I586692066', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-26 08:11:12', '2019-06-26 08:11:12'),
(292, 'Q653023329', 1, NULL, '18031040584', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-06-26 08:11:27', '2019-06-26 08:11:27'),
(293, 'J691705121', 1, NULL, '18331419752', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-06-26 17:56:27', '2019-06-26 17:56:27'),
(294, 'V544751816', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-06-27 04:13:24', '2019-06-27 04:13:24'),
(295, 'W939925035', 1, NULL, '13333333333', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-06-27 04:13:31', '2019-06-27 04:13:31'),
(296, 'Q153086837', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-06 08:00:33', '2019-07-06 08:00:33'),
(297, 'O674076070', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-06 08:00:42', '2019-07-06 08:00:42'),
(298, 'N172980092', 1, NULL, '16888888888', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-06 08:00:55', '2019-07-06 08:00:55'),
(299, 'S649116464', 1, NULL, '16888888888', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-07-06 08:01:03', '2019-07-06 08:01:03'),
(300, 'N351649014', 1, NULL, '15030116666', 3, '高级任务卷轴', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-07-06 08:01:17', '2019-07-06 08:01:17'),
(301, 'U994156944', 1, NULL, '15030116666', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-06 08:01:23', '2019-07-06 08:01:23'),
(302, 'F621380601', 1, NULL, '13399135409', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-06 08:01:36', '2019-07-06 08:01:36'),
(303, 'U782183924', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-08 04:06:18', '2019-07-08 04:06:18'),
(304, 'M961818372', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-08 19:03:18', '2019-07-08 19:03:18'),
(305, 'W109986371', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-08 19:03:27', '2019-07-08 19:03:27');
INSERT INTO `order` (`id`, `oid`, `status`, `seller`, `buyer`, `product`, `title`, `currency`, `price`, `charge`, `code`, `power`, `address`, `express`, `create_at`, `update_at`) VALUES
(306, 'F135249570', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-09 09:02:41', '2019-07-09 09:02:41'),
(307, 'T311748094', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-10 04:36:03', '2019-07-10 04:36:03'),
(308, 'O849876916', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-10 07:14:33', '2019-07-10 07:14:33'),
(309, 'N501826825', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-10 07:36:23', '2019-07-10 07:36:23'),
(310, 'P476813865', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-10 10:29:28', '2019-07-10 10:29:28'),
(311, 'G458955040', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-10 16:53:46', '2019-07-10 16:53:46'),
(312, 'P515300867', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-11 04:01:54', '2019-07-11 04:01:54'),
(313, 'A131344654', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-11 06:50:22', '2019-07-11 06:50:22'),
(314, 'D762544066', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-11 10:50:27', '2019-07-11 10:50:27'),
(315, 'M621238801', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-11 11:23:24', '2019-07-11 11:23:24'),
(316, 'L873121690', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-11 13:00:44', '2019-07-11 13:00:44'),
(317, 'F771795576', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-11 13:07:05', '2019-07-11 13:07:05'),
(318, 'Q547811262', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-12 07:48:44', '2019-07-12 07:48:44'),
(319, 'I543808616', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-12 09:07:43', '2019-07-12 09:07:43'),
(320, 'W563287110', 1, NULL, '13333333333', 3, '高级任务卷轴', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-07-12 09:17:14', '2019-07-12 09:17:14'),
(321, 'H275282034', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-12 09:17:40', '2019-07-12 09:17:40'),
(322, 'U175830616', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-12 09:34:56', '2019-07-12 09:34:56'),
(323, 'Q293863860', 1, NULL, '13333333333', 3, '高级任务卷轴', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-07-12 09:36:21', '2019-07-12 09:36:21'),
(324, 'K653119946', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-12 13:48:42', '2019-07-12 13:48:42'),
(325, 'L130280996', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-12 13:48:59', '2019-07-12 13:48:59'),
(326, 'S383584444', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-12 17:07:11', '2019-07-12 17:07:11'),
(327, 'L657250860', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-12 17:53:12', '2019-07-12 17:53:12'),
(328, 'Z394833008', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-13 07:10:49', '2019-07-13 07:10:49'),
(329, 'N832333644', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-13 07:12:36', '2019-07-13 07:12:36'),
(330, 'Z307461277', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-14 05:11:13', '2019-07-14 05:11:13'),
(331, 'N720301972', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-14 06:23:53', '2019-07-14 06:23:53'),
(332, 'L377185709', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-14 06:41:24', '2019-07-14 06:41:24'),
(333, 'O213127660', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-14 07:07:43', '2019-07-14 07:07:43'),
(334, 'Y976236488', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-14 10:00:01', '2019-07-14 10:00:01'),
(335, 'X420575373', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-14 10:34:11', '2019-07-14 10:34:11'),
(336, 'X659993377', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-15 12:21:40', '2019-07-15 12:21:40'),
(337, 'C810527703', 1, NULL, '13333333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-15 12:22:38', '2019-07-15 12:22:38'),
(338, 'I457103949', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-16 02:33:27', '2019-07-16 02:33:27'),
(339, 'U766556381', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-16 06:22:00', '2019-07-16 06:22:00'),
(340, 'G775307197', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-16 09:10:08', '2019-07-16 09:10:08'),
(341, 'E595839562', 1, NULL, '16888888888', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-16 15:03:15', '2019-07-16 15:03:15'),
(342, 'T488338815', 1, NULL, '15030116666', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-07-16 15:03:29', '2019-07-16 15:03:29'),
(343, 'M264938804', 1, NULL, '13399135409', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-16 15:03:45', '2019-07-16 15:03:45'),
(344, 'X527530529', 1, NULL, '13399135409', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-16 15:03:53', '2019-07-16 15:03:53'),
(345, 'C630862587', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-17 04:12:26', '2019-07-17 04:12:26'),
(346, 'D515871864', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-18 02:15:18', '2019-07-18 02:15:18'),
(347, 'S646372066', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-18 06:53:22', '2019-07-18 06:53:22'),
(348, 'D157441723', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-18 06:54:08', '2019-07-18 06:54:08'),
(349, 'S645759450', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-19 02:13:24', '2019-07-19 02:13:24'),
(350, 'W357766749', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-19 02:14:06', '2019-07-19 02:14:06'),
(351, 'Y202097075', 1, NULL, '13333333333', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-19 05:36:46', '2019-07-19 05:36:46'),
(352, 'C747276048', 1, NULL, '13333333333', 3, '高级任务卷轴', 1, '50.000000000000', '0.000000000000', NULL, '50.000000000000', NULL, NULL, '2019-07-19 05:37:13', '2019-07-19 05:37:13'),
(353, 'C203668846', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-19 08:49:20', '2019-07-19 08:49:20'),
(354, 'J669393303', 1, NULL, '13333333333', 10, '激活', 1, '5000.000000000000', '0.000000000000', NULL, '0.000000000000', NULL, NULL, '2019-07-19 09:24:19', '2019-07-19 09:24:19'),
(355, 'L644280502', 1, NULL, '13333333333', 10, '激活', 1, '5000.000000000000', '0.000000000000', NULL, '0.000000000000', NULL, NULL, '2019-07-19 09:26:57', '2019-07-19 09:26:57'),
(356, 'O589116683', 1, NULL, '13333333333', 2, '中级任务卷轴', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-19 09:30:13', '2019-07-19 09:30:13'),
(357, 'H837499206', 1, NULL, '13333333333', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-19 10:02:43', '2019-07-19 10:02:43'),
(358, 'J911525962', 1, NULL, '13333333333', 10, '激活', 1, '5000.000000000000', '0.000000000000', NULL, '0.000000000000', NULL, NULL, '2019-07-19 10:03:21', '2019-07-19 10:03:21'),
(359, 'M726341661', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-19 10:03:39', '2019-07-19 10:03:39'),
(360, 'E230638812', 1, NULL, '13333333333', 10, '激活', 1, '5000.000000000000', '0.000000000000', NULL, '0.000000000000', NULL, NULL, '2019-07-19 13:20:49', '2019-07-19 13:20:49'),
(361, 'F117873101', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-19 13:53:15', '2019-07-19 13:53:15'),
(362, 'R271889641', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-20 02:36:50', '2019-07-20 02:36:50'),
(363, 'G571796718', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-20 11:18:46', '2019-07-20 11:18:46'),
(364, 'B583560638', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-20 15:15:58', '2019-07-20 15:15:58'),
(365, 'V186203847', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-20 15:16:43', '2019-07-20 15:16:43'),
(366, 'H103527580', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-20 15:16:51', '2019-07-20 15:16:51'),
(367, 'B352338295', 1, NULL, '13333333333', 5, '精英任务卷轴', 1, '500.000000000000', '0.000000000000', NULL, '500.000000000000', NULL, NULL, '2019-07-20 15:17:00', '2019-07-20 15:17:00'),
(368, 'Q370470204', 1, NULL, '13333333333', 1, '初级任务卷轴', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-20 23:06:39', '2019-07-20 23:06:39'),
(369, 'Y929345950', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-21 04:35:18', '2019-07-21 04:35:18'),
(370, 'Z252618347', 1, NULL, '13333333333', 5, '精英任务卷轴', 1, '500.000000000000', '0.000000000000', NULL, '500.000000000000', NULL, NULL, '2019-07-21 08:16:26', '2019-07-21 08:16:26'),
(371, 'H812397392', 1, NULL, '13333333333', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-24 16:35:30', '2019-07-24 16:35:30'),
(372, 'D398977940', 1, NULL, '18031040584', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-24 16:35:54', '2019-07-24 16:35:54'),
(373, 'N949511453', 1, NULL, '17681371015', 10, '激活', 1, '5000.000000000000', '0.000000000000', NULL, '0.000000000000', NULL, NULL, '2019-07-24 18:06:39', '2019-07-24 18:06:39'),
(374, 'J276712362', 1, NULL, '17681371015', 5, '精英任务卷轴', 1, '500.000000000000', '0.000000000000', NULL, '500.000000000000', NULL, NULL, '2019-07-24 18:06:48', '2019-07-24 18:06:48'),
(375, 'D671420092', 1, NULL, '17681371015', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-24 18:06:55', '2019-07-24 18:06:55'),
(376, 'U197138037', 1, NULL, '17681371015', 4, '超级任务卷轴', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-25 12:01:44', '2019-07-25 12:01:44'),
(377, 'O768487076', 1, NULL, '17627921813', 1, '初级体验卡', 1, '25.000000000000', '0.000000000000', NULL, '30.000000000000', NULL, NULL, '2019-07-25 12:29:42', '2019-07-25 12:29:42'),
(378, 'S774211846', 1, NULL, '17627921813', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-25 12:29:54', '2019-07-25 12:29:54'),
(379, 'U362727610', 1, NULL, '17681371015', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 01:26:16', '2019-07-26 01:26:16'),
(380, 'K932328644', 1, NULL, '17681371015', 5, '精英挑战卡', 1, '3000.000000000000', '0.000000000000', NULL, '3920.000000000000', NULL, NULL, '2019-07-26 04:03:40', '2019-07-26 04:03:40'),
(381, 'S544598185', 1, NULL, '17627921813', 3, '高级挑战卡', 1, '750.000000000000', '0.000000000000', NULL, '920.000000000000', NULL, NULL, '2019-07-26 04:19:08', '2019-07-26 04:19:08'),
(382, 'O222898482', 1, NULL, '17627921813', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-26 04:20:13', '2019-07-26 04:20:13'),
(383, 'C182811867', 1, NULL, '13111111111', 4, '超级挑战卡', 1, '1500.000000000000', '0.000000000000', NULL, '1930.000000000000', NULL, NULL, '2019-07-26 04:22:24', '2019-07-26 04:22:24'),
(384, 'D175993806', 1, NULL, '13111111111', 9, '超级挑战卡', 1, '1000.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 04:22:32', '2019-07-26 04:22:32'),
(385, 'V825552996', 1, NULL, '13111111112', 3, '高级挑战卡', 1, '750.000000000000', '0.000000000000', NULL, '920.000000000000', NULL, NULL, '2019-07-26 04:27:16', '2019-07-26 04:27:16'),
(386, 'I868119557', 1, NULL, '13111111112', 9, '超级挑战卡', 1, '1000.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 04:27:23', '2019-07-26 04:27:23'),
(387, 'H625248742', 1, NULL, '18908454545', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-26 05:50:37', '2019-07-26 05:50:37'),
(388, 'M677001053', 1, NULL, '13111111111', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1040.000000000000', NULL, NULL, '2019-07-26 06:34:13', '2019-07-26 06:34:13'),
(389, 'D867780840', 1, NULL, '13399999999', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:51:48', '2019-07-26 07:51:48'),
(390, 'Y819775714', 1, NULL, '13399999999', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:51:56', '2019-07-26 07:51:56'),
(391, 'W791831652', 1, NULL, '13399999999', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 07:54:13', '2019-07-26 07:54:13'),
(392, 'O760888330', 1, NULL, '13399999999', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:54:27', '2019-07-26 07:54:27'),
(393, 'N504245375', 1, NULL, '13399999999', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:54:33', '2019-07-26 07:54:33'),
(394, 'S935013326', 1, NULL, '13399999999', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:54:37', '2019-07-26 07:54:37'),
(395, 'M242211696', 1, NULL, '13399999999', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:54:41', '2019-07-26 07:54:41'),
(396, 'J145192541', 1, NULL, '13399999999', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:54:47', '2019-07-26 07:54:47'),
(397, 'V157944456', 1, NULL, '13000000000', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:57:12', '2019-07-26 07:57:12'),
(398, 'D267874428', 1, NULL, '13000000000', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 07:57:17', '2019-07-26 07:57:17'),
(399, 'U202141868', 1, NULL, '13000000000', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:57:42', '2019-07-26 07:57:42'),
(400, 'O155788724', 1, NULL, '13000000000', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:57:59', '2019-07-26 07:57:59'),
(401, 'S160919252', 1, NULL, '13000000000', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 07:58:41', '2019-07-26 07:58:41'),
(402, 'I681541230', 1, NULL, '13000000000', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:58:53', '2019-07-26 07:58:53'),
(403, 'H274475420', 1, NULL, '13000000000', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:59:03', '2019-07-26 07:59:03'),
(404, 'C535750698', 1, NULL, '13000000000', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:59:14', '2019-07-26 07:59:14'),
(405, 'P713362435', 1, NULL, '13000000000', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 07:59:18', '2019-07-26 07:59:18'),
(406, 'V613254857', 1, NULL, '13011111111', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:59:42', '2019-07-26 07:59:42'),
(407, 'U186797233', 1, NULL, '13011111111', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 07:59:48', '2019-07-26 07:59:48'),
(408, 'Q268166369', 1, NULL, '13011111111', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 07:59:56', '2019-07-26 07:59:56'),
(409, 'Q295290689', 1, NULL, '13011111111', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:00:04', '2019-07-26 08:00:04'),
(410, 'W742087622', 1, NULL, '13011111111', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:00:09', '2019-07-26 08:00:09'),
(411, 'L647159126', 1, NULL, '13011111111', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:00:13', '2019-07-26 08:00:13'),
(412, 'C665760001', 1, NULL, '13011111111', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:00:18', '2019-07-26 08:00:18'),
(413, 'G670755566', 1, NULL, '13011111111', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:00:22', '2019-07-26 08:00:22'),
(414, 'S736540123', 1, NULL, '13022222222', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:01:04', '2019-07-26 08:01:04'),
(415, 'A348261775', 1, NULL, '13022222222', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 08:01:09', '2019-07-26 08:01:09'),
(416, 'A942600319', 1, NULL, '13022222222', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:05:39', '2019-07-26 08:05:39'),
(417, 'K657676542', 1, NULL, '13022222222', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:05:46', '2019-07-26 08:05:46'),
(418, 'E211524565', 1, NULL, '13022222222', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:05:53', '2019-07-26 08:05:53'),
(419, 'G914584623', 1, NULL, '13022222222', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:06:03', '2019-07-26 08:06:03'),
(420, 'I899778571', 1, NULL, '13022222222', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:06:08', '2019-07-26 08:06:08'),
(421, 'U728744648', 1, NULL, '13022222222', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:06:12', '2019-07-26 08:06:12'),
(422, 'U861624826', 1, NULL, '13022222222', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:06:16', '2019-07-26 08:06:16'),
(423, 'N645563996', 1, NULL, '13033333333', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:08:21', '2019-07-26 08:08:21'),
(424, 'H916546777', 1, NULL, '13033333333', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 08:08:26', '2019-07-26 08:08:26'),
(425, 'U467451943', 1, NULL, '13033333333', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:08:42', '2019-07-26 08:08:42'),
(426, 'M986497332', 1, NULL, '13033333333', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:08:57', '2019-07-26 08:08:57'),
(427, 'N777865056', 1, NULL, '13033333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:09:04', '2019-07-26 08:09:04'),
(428, 'W685761860', 1, NULL, '13033333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:09:14', '2019-07-26 08:09:14'),
(429, 'W655745283', 1, NULL, '13033333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:09:20', '2019-07-26 08:09:20'),
(430, 'M844257656', 1, NULL, '13033333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:09:24', '2019-07-26 08:09:24'),
(431, 'P203453303', 1, NULL, '13033333333', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:09:28', '2019-07-26 08:09:28'),
(432, 'K816094012', 1, NULL, '17681371015', 12, '挑战卡Lv4', 1, '5000.000000000000', '0.000000000000', NULL, '8000.000000000000', NULL, NULL, '2019-07-26 08:10:04', '2019-07-26 08:10:04'),
(433, 'W672362224', 1, NULL, '17681371015', 12, '挑战卡Lv4', 1, '5000.000000000000', '0.000000000000', NULL, '8000.000000000000', NULL, NULL, '2019-07-26 08:10:58', '2019-07-26 08:10:58'),
(434, 'C449285759', 1, NULL, '13044444444', 15, '挑战卡Lv3', 1, '3000.000000000000', '0.000000000000', NULL, '3900.000000000000', NULL, NULL, '2019-07-26 08:15:17', '2019-07-26 08:15:17'),
(435, 'G351407637', 1, NULL, '13044444444', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 08:15:47', '2019-07-26 08:15:47'),
(436, 'P438902102', 1, NULL, '13044444444', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:15:58', '2019-07-26 08:15:58'),
(437, 'D793960610', 1, NULL, '13044444444', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:16:10', '2019-07-26 08:16:10'),
(438, 'I925260927', 1, NULL, '13044444444', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:16:15', '2019-07-26 08:16:15'),
(439, 'R387650088', 1, NULL, '13044444444', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:16:20', '2019-07-26 08:16:20'),
(440, 'D503220066', 1, NULL, '13044444444', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:16:24', '2019-07-26 08:16:24'),
(441, 'K702842212', 1, NULL, '13055555555', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:17:22', '2019-07-26 08:17:22'),
(442, 'Z687893352', 1, NULL, '13055555555', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 08:17:33', '2019-07-26 08:17:33'),
(443, 'T686398990', 1, NULL, '13055555555', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:17:49', '2019-07-26 08:17:49'),
(444, 'W710561915', 1, NULL, '13055555555', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:17:55', '2019-07-26 08:17:55'),
(445, 'W536944559', 1, NULL, '13055555555', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:18:00', '2019-07-26 08:18:00'),
(446, 'J777820640', 1, NULL, '13055555555', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:18:04', '2019-07-26 08:18:04'),
(447, 'L280232923', 1, NULL, '13055555555', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:18:08', '2019-07-26 08:18:08'),
(448, 'A622242582', 1, NULL, '13055555555', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:18:12', '2019-07-26 08:18:12'),
(449, 'D133922493', 1, NULL, '13055555555', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:18:16', '2019-07-26 08:18:16'),
(450, 'B224028551', 1, NULL, '13066666666', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:19:56', '2019-07-26 08:19:56'),
(451, 'R793834881', 1, NULL, '13066666666', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-26 08:20:01', '2019-07-26 08:20:01'),
(452, 'L533788326', 1, NULL, '13066666666', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:20:08', '2019-07-26 08:20:08'),
(453, 'T268702204', 1, NULL, '13066666666', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:20:18', '2019-07-26 08:20:18'),
(454, 'K998904617', 1, NULL, '13066666666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:20:28', '2019-07-26 08:20:28'),
(455, 'W168662902', 1, NULL, '13066666666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:20:32', '2019-07-26 08:20:32'),
(456, 'I506199395', 1, NULL, '13066666666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:20:36', '2019-07-26 08:20:36'),
(457, 'K361495862', 1, NULL, '13066666666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:20:40', '2019-07-26 08:20:40'),
(458, 'Z123375408', 1, NULL, '13066666666', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:20:44', '2019-07-26 08:20:44'),
(459, 'W328415853', 1, NULL, '13077777777', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:31:36', '2019-07-26 08:31:36'),
(460, 'R575187325', 1, NULL, '13077777777', 14, '挑战卡Lv2', 1, '1000.000000000000', '0.000000000000', NULL, '1090.000000000000', NULL, NULL, '2019-07-26 08:31:44', '2019-07-26 08:31:44'),
(461, 'O799075787', 1, NULL, '13077777777', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 08:31:53', '2019-07-26 08:31:53'),
(462, 'H253062086', 1, NULL, '13077777777', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:31:59', '2019-07-26 08:31:59'),
(463, 'B265562696', 1, NULL, '13077777777', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:32:03', '2019-07-26 08:32:03'),
(464, 'P958616139', 1, NULL, '13077777777', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:32:07', '2019-07-26 08:32:07'),
(465, 'B996230848', 1, NULL, '13077777777', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:32:10', '2019-07-26 08:32:10'),
(466, 'H530712435', 1, NULL, '13077777777', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 08:32:13', '2019-07-26 08:32:13'),
(467, 'P684902435', 1, NULL, '17627921813', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 10:53:19', '2019-07-26 10:53:19'),
(468, 'Q844405622', 1, NULL, '17681371015', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-26 15:56:24', '2019-07-26 15:56:24'),
(469, 'B486733457', 1, NULL, '17681371015', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 15:57:37', '2019-07-26 15:57:37'),
(470, 'B965457941', 1, NULL, '13099999999', 15, '挑战卡Lv3', 1, '3000.000000000000', '0.000000000000', NULL, '3900.000000000000', NULL, NULL, '2019-07-26 16:38:41', '2019-07-26 16:38:41'),
(471, 'L368076918', 1, NULL, '17681371015', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-26 17:02:42', '2019-07-26 17:02:42'),
(472, 'T666367771', 1, NULL, '17627921813', 2, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-27 06:17:25', '2019-07-27 06:17:25'),
(473, 'J755955020', 1, NULL, '17627921813', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-27 06:17:30', '2019-07-27 06:17:30'),
(474, 'L545178138', 1, NULL, '17681371016', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-27 13:26:51', '2019-07-27 13:26:51'),
(475, 'E640364190', 1, NULL, '17681371016', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-28 04:01:55', '2019-07-28 04:01:55'),
(476, 'Y900062880', 1, NULL, '17627921813', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-28 04:03:04', '2019-07-28 04:03:04'),
(477, 'J634097587', 1, NULL, '17681371016', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-28 04:23:51', '2019-07-28 04:23:51'),
(478, 'Q532787769', 1, NULL, '18552320267', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-28 10:34:30', '2019-07-28 10:34:30'),
(479, 'V262573878', 1, NULL, '17681371015', 4, '超级挑战卡', 1, '100.000000000000', '0.000000000000', NULL, '100.000000000000', NULL, NULL, '2019-07-28 12:19:21', '2019-07-28 12:19:21'),
(480, 'U563539295', 1, NULL, '17681371015', 7, '中级挑战卡', 1, '10.000000000000', '0.000000000000', '', '10.000000000000', NULL, NULL, '2019-07-28 12:19:30', '2019-07-28 12:19:30'),
(481, 'H305456408', 1, NULL, '13681203820', 1, '初级体验卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-28 23:35:13', '2019-07-28 23:35:13'),
(482, 'E410217961', 1, NULL, '17681371016', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-29 04:07:22', '2019-07-29 04:07:22'),
(483, 'G122623053', 1, NULL, '17681371015', 13, '挑战卡Lv1', 1, '500.000000000000', '0.000000000000', NULL, '520.000000000000', NULL, NULL, '2019-07-29 04:07:50', '2019-07-29 04:07:50'),
(484, 'X821172141', 1, NULL, '17681371015', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-29 04:07:54', '2019-07-29 04:07:54'),
(485, 'Z358595198', 1, NULL, '17627921813', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-29 04:08:28', '2019-07-29 04:08:28'),
(486, 'V387932725', 1, NULL, '18552320267', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-29 04:32:59', '2019-07-29 04:32:59'),
(487, 'P365908838', 1, NULL, '17681371016', 2, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-29 05:29:28', '2019-07-29 05:29:28'),
(488, 'X226930825', 1, NULL, '17681371016', 2, '中级挑战卡', 1, '10.000000000000', '0.000000000000', NULL, '10.000000000000', NULL, NULL, '2019-07-29 05:29:35', '2019-07-29 05:29:35'),
(489, 'T532657353', 1, NULL, '17681371015', 9, '超级挑战卡', 1, '100.000000000000', '0.000000000000', '', '100.000000000000', NULL, NULL, '2019-07-30 03:07:22', '2019-07-30 03:07:22'),
(490, 'P613973192', 1, NULL, '17627921813', 8, '高级挑战卡', 1, '50.000000000000', '0.000000000000', '', '50.000000000000', NULL, NULL, '2019-07-30 03:07:46', '2019-07-30 03:07:46'),
(491, 'L950456029', 1, NULL, '17681371016', 6, '初级挑战卡', 1, '1.000000000000', '0.000000000000', '', '1.000000000000', NULL, NULL, '2019-07-30 03:08:20', '2019-07-30 03:08:20'),
(492, 'E395249584', 1, NULL, '17681371016', 1, '初级体验卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2019-07-30 05:35:14', '2019-07-30 05:35:14'),
(493, 'Y281832857', 1, NULL, '13300000000', 1, '初级体验卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2020-05-07 14:23:49', '2020-05-07 14:23:49'),
(494, 'G991756911', 1, NULL, '17789816229', 1, '初级体验卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2021-01-10 05:58:45', '2021-01-10 05:58:45'),
(495, 'R643008416', 1, NULL, '13111111112', 1, '初级体验卡', 1, '1.000000000000', '0.000000000000', NULL, '1.000000000000', NULL, NULL, '2024-12-18 15:18:45', '2024-12-18 15:18:45');

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `platform_info`
--

CREATE TABLE IF NOT EXISTS `platform_info` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `total_days` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `platform_info`
--

INSERT INTO `platform_info` (`id`, `start_date`, `total_days`) VALUES
(1, '2023-01-01', 766);

-- --------------------------------------------------------

--
-- 表的结构 `pool`
--

CREATE TABLE IF NOT EXISTS `pool` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `action` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型，1：领取收益，2：使用道具，3：加入矿池',
  `power` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '当前的算力是多少，使用道具之前的',
  `prop` varchar(30) DEFAULT NULL COMMENT '当前使用的道具名称',
  `spend` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '花费了多少',
  `reward` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '奖励了多少',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='共享矿池';

--
-- 转存表中的数据 `pool`
--

INSERT INTO `pool` (`id`, `username`, `action`, `power`, `prop`, `spend`, `reward`, `create_at`) VALUES
(1, '13333333333', 3, '0.000000000000', NULL, '0.000000000000', '0.000000000000', '2018-07-23 20:16:14'),
(2, '13333333333', 1, '4.690000000000', NULL, '0.000000000000', '0.003376800000', '2018-07-24 14:29:03'),
(3, '16888888888', 2, '4.360000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-03-26 14:24:47'),
(4, '16888888888', 2, '5.360000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-03-26 14:25:39'),
(5, '16888888888', 2, '6.360000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-03-28 00:42:04'),
(6, '16888888888', 2, '7.360000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-03-28 00:43:03'),
(7, '16888888888', 2, '17.360000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-03-28 00:47:59'),
(8, '15030116666', 2, '0.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-03-31 15:51:56'),
(9, '18031040584', 2, '0.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-01 05:28:50'),
(10, '18031040584', 2, '1.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-01 05:29:01'),
(11, '16888888888', 2, '5.360000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-02 20:12:26'),
(12, '16888888888', 2, '40.640000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-02 20:16:48'),
(13, '13333333333', 2, '2.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-03 00:42:53'),
(14, '13333333333', 2, '2.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-03 01:01:04'),
(15, '16888888888', 2, '50.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-03 23:21:10'),
(16, '13333333333', 2, '1.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-04 06:18:57'),
(17, '16888888888', 2, '50.640000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 00:08:28'),
(18, '16888888888', 2, '150.640000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 00:08:39'),
(19, '16888888888', 2, '250.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:08:53'),
(20, '16888888888', 2, '251.640000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 00:09:01'),
(21, '16888888888', 2, '261.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:09:25'),
(22, '16888888888', 2, '262.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:10:45'),
(23, '16888888888', 2, '263.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:10:59'),
(24, '16888888888', 2, '264.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:15:07'),
(25, '16888888888', 2, '265.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:17:49'),
(26, '16888888888', 2, '266.640000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 00:18:16'),
(27, '16888888888', 2, '366.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:18:54'),
(28, '16888888888', 2, '367.640000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 00:19:06'),
(29, '16888888888', 2, '377.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:19:50'),
(30, '16888888888', 2, '378.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:20:39'),
(31, '16888888888', 2, '379.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:21:04'),
(32, '16888888888', 2, '380.640000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 00:21:18'),
(33, '16888888888', 2, '480.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:23:00'),
(34, '16888888888', 2, '481.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:23:19'),
(35, '16888888888', 2, '482.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:29:25'),
(36, '16888888888', 2, '483.640000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 00:30:55'),
(37, '16888888888', 2, '493.640000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:31:52'),
(38, '16888888888', 2, '494.640000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 00:35:36'),
(39, '16888888888', 2, '50.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 00:39:07'),
(40, '16888888888', 2, '150.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 00:45:21'),
(41, '13786393215', 2, '0.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-06 04:09:13'),
(42, '13786393215', 2, '1.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 04:09:31'),
(43, '13786393215', 2, '1.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 04:09:54'),
(44, '18331419752', 2, '0.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-06 04:14:42'),
(45, '18331419752', 2, '0.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-06 04:15:27'),
(46, '16888888888', 2, '51.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-06 22:04:50'),
(47, '13786393215', 2, '101.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-07 03:31:14'),
(48, '16888888888', 2, '61.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-07 05:17:10'),
(49, '13786393215', 2, '151.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-07 10:39:04'),
(50, '18331419752', 2, '100.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-07 10:39:37'),
(51, '13333333333', 2, '2.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-07 10:42:22'),
(52, '18331419752', 2, '110.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-07 11:36:45'),
(53, '13399135409', 2, '0.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-07 11:38:36'),
(54, '13399135409', 2, '0.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-07 16:15:55'),
(55, '13399135409', 2, '1.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-07 16:17:54'),
(56, '13333333333', 2, '52.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-08 05:34:59'),
(57, '13399135409', 2, '11.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-08 05:36:53'),
(58, '16888888888', 2, '52.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-08 06:00:19'),
(59, '13399135409', 2, '12.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-08 15:10:45'),
(60, '13399135409', 2, '22.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-08 15:10:55'),
(61, '13333333333', 2, '152.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-08 19:24:38'),
(62, '13395267212', 2, '0.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-09 06:57:29'),
(63, '13395267212', 2, '0.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-09 06:57:37'),
(64, '16888888888', 2, '53.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-09 08:41:25'),
(65, '16888888888', 2, '3.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-09 08:48:27'),
(66, '13333333333', 2, '202.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 01:56:21'),
(67, '15030116666', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 07:08:31'),
(68, '13399135409', 2, '22.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-10 07:09:05'),
(69, '16888888888', 2, '53.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 07:12:00'),
(70, '18331419752', 2, '120.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 07:14:17'),
(71, '13786393215', 2, '102.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 07:21:56'),
(72, '13395267212', 2, '1.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 07:25:41'),
(73, '13395267212', 2, '51.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 07:44:26'),
(74, '17821522007', 2, '0.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 08:07:09'),
(75, '17821522007', 2, '50.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-10 08:07:25'),
(76, '13395267212', 2, '1.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 08:11:42'),
(77, '13395267212', 2, '101.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 08:12:27'),
(78, '13395267212', 2, '151.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 08:12:46'),
(79, '13395267212', 2, '152.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 08:13:33'),
(80, '18907454545', 2, '0.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 08:31:11'),
(81, '18907454545', 2, '50.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-10 08:31:22'),
(82, '18908454545', 2, '0.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 08:46:55'),
(83, '18908454545', 2, '100.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 08:47:06'),
(84, '13395267212', 2, '252.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-10 08:52:21'),
(85, '13395267212', 2, '262.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 08:52:42'),
(86, '13395267212', 2, '312.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 08:53:12'),
(87, '16888888888', 2, '52.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 09:00:01'),
(88, '18909454545', 2, '0.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 09:02:50'),
(89, '18909454545', 2, '50.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 09:03:08'),
(90, '18909454545', 2, '100.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-10 09:03:18'),
(91, '15030116666', 2, '8.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 09:03:56'),
(92, '15030116666', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-10 09:04:02'),
(93, '13399135409', 2, '12.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-10 09:04:03'),
(94, '13333333333', 2, '102.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-10 09:04:32'),
(95, '13333333333', 2, '2.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-12 09:52:57'),
(96, '13333333333', 2, '52.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-12 09:53:34'),
(97, '15030116666', 2, '8.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-12 09:57:03'),
(98, '13399135409', 2, '2.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-12 09:57:58'),
(99, '13399135409', 2, '52.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-12 09:58:04'),
(100, '16888888888', 2, '309.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-12 09:58:26'),
(101, '13333333333', 2, '42.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-13 08:21:03'),
(102, '13333333333', 2, '142.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-13 08:21:10'),
(103, '15030116666', 2, '7.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-13 08:21:41'),
(104, '15030116666', 2, '107.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-13 08:21:52'),
(105, '16888888888', 2, '299.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-13 08:22:11'),
(106, '16888888888', 2, '309.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-13 08:22:20'),
(107, '18031040584', 2, '11.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-13 08:22:33'),
(108, '18031040584', 2, '10.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-13 16:42:32'),
(109, '13333333333', 2, '204.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-14 10:56:55'),
(110, '15030116666', 2, '57.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-14 10:57:08'),
(111, '16888888888', 2, '299.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-14 10:57:22'),
(112, '13399135409', 2, '2.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-14 10:58:05'),
(113, '15030116666', 2, '7.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-14 18:56:49'),
(114, '13333333333', 2, '104.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-15 15:25:52'),
(115, '16888888888', 2, '289.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-15 15:26:16'),
(116, '18031040584', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-15 15:26:34'),
(117, '13333333333', 2, '4.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-15 16:03:22'),
(118, '15030116666', 2, '6.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-16 17:47:12'),
(119, '15030116666', 2, '56.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-16 17:47:21'),
(120, '13333333333', 2, '3.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-16 17:47:42'),
(121, '13333333333', 2, '103.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-16 17:47:50'),
(122, '13333333333', 2, '93.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-18 08:44:27'),
(123, '13333333333', 2, '92.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-19 02:02:05'),
(124, '13333333333', 2, '91.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-04-20 10:08:33'),
(125, '15030116666', 2, '46.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-20 10:08:47'),
(126, '16888888888', 2, '279.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-20 10:08:58'),
(127, '18031040584', 2, '8.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-20 10:09:24'),
(128, '18031040584', 2, '108.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-04-20 10:09:32'),
(129, '15030116666', 2, '36.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-20 16:01:42'),
(130, '13333333333', 2, '41.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-22 16:26:18'),
(131, '16888888888', 2, '278.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-22 16:26:33'),
(132, '15030116666', 2, '26.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-22 16:26:50'),
(133, '15030116666', 2, '25.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-23 16:09:57'),
(134, '13333333333', 2, '31.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-04-25 19:11:27'),
(135, '15030116666', 2, '24.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-25 19:11:39'),
(136, '16888888888', 2, '268.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-04-25 19:11:49'),
(137, '13333333333', 2, '21.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-04 07:50:05'),
(138, '13333333333', 2, '121.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-04 07:50:27'),
(139, '15030116666', 2, '23.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-04 07:53:35'),
(140, '16888888888', 2, '267.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-04 07:54:13'),
(141, '13399135409', 2, '1.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-04 07:54:38'),
(142, '13333333333', 2, '21.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-05 06:08:48'),
(143, '13333333333', 2, '121.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-05 06:08:57'),
(144, '15030116666', 2, '13.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-05 06:10:12'),
(145, '15030116666', 2, '63.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-05 06:10:22'),
(146, '16888888888', 2, '217.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-05 06:10:39'),
(147, '13399135409', 2, '0.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-05 06:10:59'),
(148, '13399135409', 2, '10.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-05 06:11:06'),
(149, '13333333333', 2, '21.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-05 20:50:58'),
(150, '13333333333', 2, '121.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-05 20:51:07'),
(151, '16888888888', 2, '207.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-07 01:30:03'),
(152, '13333333333', 2, '21.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-07 05:36:55'),
(153, '13333333333', 2, '121.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-07 05:37:08'),
(154, '15030116666', 2, '13.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-07 05:37:30'),
(155, '15030116666', 2, '113.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-07 05:37:37'),
(156, '13399135409', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-07 05:38:19'),
(157, '13333333333', 2, '21.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-07 16:18:02'),
(158, '16888888888', 2, '206.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-07 20:07:34'),
(159, '15030116666', 2, '63.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-08 04:27:23'),
(160, '16888888888', 2, '205.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-12 07:38:01'),
(161, '13333333333', 2, '11.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-15 09:56:06'),
(162, '13333333333', 2, '111.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-15 09:56:21'),
(163, '15030116666', 2, '62.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-15 09:56:38'),
(164, '16888888888', 2, '204.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-15 09:56:51'),
(165, '13399135409', 2, '8.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-15 09:57:03'),
(166, '13333333333', 2, '11.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-15 16:12:19'),
(167, '13333333333', 2, '111.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-15 16:12:25'),
(168, '16888888888', 2, '194.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-16 00:01:56'),
(169, '13333333333', 2, '61.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-18 13:26:52'),
(170, '13333333333', 2, '161.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-18 13:27:00'),
(171, '15030116666', 2, '12.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-18 13:27:40'),
(172, '15030116666', 2, '112.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-18 13:27:46'),
(173, '16888888888', 2, '193.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-18 13:28:00'),
(174, '13399135409', 2, '7.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-18 13:28:14'),
(175, '16888888888', 2, '183.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-19 13:50:19'),
(176, '13333333333', 2, '61.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-21 14:07:08'),
(177, '15030116666', 2, '62.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-21 16:27:22'),
(178, '16888888888', 2, '182.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-22 11:09:29'),
(179, '13333333333', 2, '112.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-22 13:18:34'),
(180, '13399135409', 2, '6.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-22 13:19:26'),
(181, '13333333333', 2, '62.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-22 16:07:30'),
(182, '16888888888', 2, '172.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-23 14:09:13'),
(183, '13333333333', 2, '12.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-23 16:51:34'),
(184, '13333333333', 2, '61.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-23 16:56:02'),
(185, '13333333333', 2, '111.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-23 16:56:17'),
(186, '13333333333', 2, '211.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-23 16:56:45'),
(187, '16888888888', 2, '122.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-24 03:27:17'),
(188, '13333333333', 2, '221.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-25 14:55:37'),
(189, '15030116666', 2, '112.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-25 14:55:59'),
(190, '16888888888', 2, '198.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-25 14:56:12'),
(191, '13399135409', 2, '5.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-25 14:56:24'),
(192, '16888888888', 2, '188.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-27 01:09:54'),
(193, '16888888888', 2, '88.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-28 12:57:32'),
(194, '16888888888', 2, '78.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-29 11:13:07'),
(195, '13333333333', 2, '121.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-29 15:35:07'),
(196, '15030116666', 2, '62.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-29 15:35:30'),
(197, '13399135409', 2, '104.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-29 15:36:38'),
(198, '18031040584', 2, '8.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-29 15:37:02'),
(199, '13333333333', 2, '21.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-30 12:35:10'),
(200, '15030116666', 2, '12.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-05-30 12:36:40'),
(201, '16888888888', 2, '128.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-05-30 12:36:56'),
(202, '18031040584', 2, '107.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-05-30 12:37:33'),
(203, '13333333333', 2, '20.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-05-30 16:56:16'),
(204, '16888888888', 2, '178.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-01 08:35:17'),
(205, '16888888888', 2, '78.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-01 09:00:31'),
(206, '15030116666', 2, '102.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-01 15:31:26'),
(207, '13399135409', 2, '94.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-01 15:31:41'),
(208, '18031040584', 2, '7.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-01 15:31:58'),
(209, '13333333333', 2, '19.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-01 16:08:14'),
(210, '16888888888', 2, '128.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-02 15:59:28'),
(211, '15030116666', 2, '52.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-02 15:59:39'),
(212, '13399135409', 2, '184.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-02 16:00:05'),
(213, '13786393215', 2, '101.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-03 05:41:45'),
(214, '16888888888', 2, '218.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-03 07:56:40'),
(215, '13333333333', 2, '118.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-03 07:59:49'),
(216, '13333333333', 2, '208.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-04 13:30:07'),
(217, '16888888888', 2, '168.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-04 13:30:33'),
(218, '15030116666', 2, '102.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-04 13:30:59'),
(219, '18031040584', 2, '6.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-04 13:31:15'),
(220, '13333333333', 2, '108.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-05 03:52:06'),
(221, '13333333333', 2, '108.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-06 03:02:00'),
(222, '16888888888', 2, '268.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-06 03:04:02'),
(223, '15030116666', 2, '92.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-06 03:04:14'),
(224, '18031040584', 2, '5.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-06 03:04:27'),
(225, '13333333333', 2, '8.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-06 16:38:38'),
(226, '16888888888', 2, '218.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-07 07:18:57'),
(227, '16888888888', 2, '168.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-07 07:24:00'),
(228, '15030116666', 2, '182.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-07 08:12:36'),
(229, '18031040584', 2, '104.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-07 08:15:14'),
(230, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-08 14:59:55'),
(231, '16888888888', 2, '318.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-08 15:00:08'),
(232, '15030116666', 2, '82.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-08 15:00:20'),
(233, '18031040584', 2, '4.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-08 15:00:31'),
(234, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-10 15:35:37'),
(235, '16888888888', 2, '268.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-10 15:40:44'),
(236, '15030116666', 2, '72.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-10 15:41:02'),
(237, '18031040584', 2, '3.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-10 15:41:14'),
(238, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-11 15:09:13'),
(239, '16888888888', 2, '218.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-11 15:09:26'),
(240, '15030116666', 2, '62.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-11 15:09:39'),
(241, '18031040584', 2, '2.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-11 15:09:59'),
(242, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-12 14:39:26'),
(243, '16888888888', 2, '168.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-12 14:39:45'),
(244, '15030116666', 2, '52.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-12 14:39:59'),
(245, '18031040584', 2, '1.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-12 14:40:12'),
(246, '16888888888', 2, '218.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-19 04:09:18'),
(247, '16888888888', 2, '168.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-22 05:15:43'),
(248, '15030116666', 2, '42.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-22 05:16:32'),
(249, '13399135409', 2, '134.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-22 05:16:50'),
(250, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-24 15:13:58'),
(251, '16888888888', 2, '118.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-24 15:14:12'),
(252, '15030116666', 2, '32.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-24 15:14:25'),
(253, '13399135409', 2, '34.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-24 15:15:56'),
(254, '13333333333', 2, '107.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-06-26 08:10:14'),
(255, '16888888888', 2, '68.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-26 08:10:38'),
(256, '15030116666', 2, '22.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-26 08:10:52'),
(257, '13399135409', 2, '33.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-26 08:11:12'),
(258, '18031040584', 2, '100.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-06-26 08:11:27'),
(259, '18331419752', 2, '20.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-06-26 17:56:27'),
(260, '13333333333', 2, '107.690000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-06-27 04:13:31'),
(261, '13333333333', 2, '157.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-06 08:00:42'),
(262, '16888888888', 2, '118.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-07-06 08:01:03'),
(263, '15030116666', 2, '62.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-06 08:01:23'),
(264, '13399135409', 2, '32.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-06 08:01:36'),
(265, '13333333333', 2, '158.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-08 19:03:27'),
(266, '13333333333', 2, '68.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-10 04:36:03'),
(267, '13333333333', 2, '369.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-11 06:50:22'),
(268, '13333333333', 2, '274.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-12 09:07:43'),
(269, '13333333333', 2, '578.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-13 07:12:36'),
(270, '13333333333', 2, '490.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-14 07:07:43'),
(271, '13333333333', 2, '600.690000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-15 12:22:38'),
(272, '13333333333', 2, '600.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-16 06:22:00'),
(273, '16888888888', 2, '118.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-16 15:03:15'),
(274, '15030116666', 2, '52.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-07-16 15:03:29'),
(275, '13399135409', 2, '131.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-16 15:03:53'),
(276, '13333333333', 2, '612.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-18 06:54:08'),
(277, '13333333333', 2, '882.690000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-19 10:02:43'),
(278, '13333333333', 2, '876.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-20 15:15:58'),
(279, '13333333333', 2, '1378.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-21 04:35:18'),
(280, '13333333333', 2, '1877.690000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-24 16:35:30'),
(281, '18031040584', 2, '99.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-24 16:35:54'),
(282, '17681371015', 2, '500.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-24 18:06:55'),
(283, '17627921813', 2, '30.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-25 12:29:54'),
(284, '17681371015', 2, '530.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 01:26:16'),
(285, '17627921813', 2, '940.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-26 04:20:13'),
(286, '13111111111', 2, '1930.000000000000', '超级挑战卡', '1000.000000000000', '100.000000000000', '2019-07-26 04:22:32'),
(287, '13111111112', 2, '920.000000000000', '超级挑战卡', '1000.000000000000', '100.000000000000', '2019-07-26 04:27:23'),
(288, '18908454545', 2, '50.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-26 05:50:37'),
(289, '13000000000', 2, '101.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 07:57:17'),
(290, '13022222222', 2, '101.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 08:01:09'),
(291, '13033333333', 2, '1091.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 08:08:26'),
(292, '13044444444', 2, '3901.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 08:15:47'),
(293, '13055555555', 2, '1091.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 08:17:33'),
(294, '13066666666', 2, '1091.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-26 08:20:01'),
(295, '17627921813', 2, '1040.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-27 06:17:30'),
(296, '17681371016', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-27 13:26:51'),
(297, '17627921813', 2, '1030.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-28 04:03:04'),
(298, '17681371016', 2, '108.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-28 04:23:51'),
(299, '18552320267', 2, '10.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-28 10:34:30'),
(300, '17681371015', 2, '100.000000000000', '中级挑战卡', '10.000000000000', '10.000000000000', '2019-07-28 12:19:30'),
(301, '17681371016', 2, '107.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-29 04:07:22'),
(302, '17681371015', 2, '612.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-29 04:07:54'),
(303, '17627921813', 2, '932.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-29 04:08:28'),
(304, '18552320267', 2, '9.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-29 04:32:59'),
(305, '17681371015', 2, '532.000000000000', '超级挑战卡', '100.000000000000', '100.000000000000', '2019-07-30 03:07:22'),
(306, '17627921813', 2, '832.000000000000', '高级挑战卡', '50.000000000000', '50.000000000000', '2019-07-30 03:07:46'),
(307, '17681371016', 2, '126.000000000000', '初级挑战卡', '1.000000000000', '1.000000000000', '2019-07-30 03:08:20');

-- --------------------------------------------------------

--
-- 表的结构 `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账户',
  `nickname` varchar(10) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `wechat` varchar(32) DEFAULT NULL COMMENT '微信账号',
  `qq` varchar(11) DEFAULT NULL COMMENT 'QQ号码',
  `alipay` varchar(32) DEFAULT NULL COMMENT '支付宝',
  `realname` char(4) DEFAULT NULL COMMENT '真实姓名',
  `idcard` char(18) DEFAULT NULL COMMENT '身份证号码',
  `certificate` text COMMENT '证件图片',
  `authen_reason` text COMMENT '实名拒绝认证理由',
  `bankname` varchar(10) DEFAULT NULL COMMENT '银行名称',
  `bankcard` varchar(30) DEFAULT NULL COMMENT '银行卡号',
  `bankaddress` varchar(30) DEFAULT NULL COMMENT '分行地址',
  `phone` char(11) DEFAULT NULL COMMENT '预留手机号',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  `sport_jf` int(11) DEFAULT NULL COMMENT '运动积分',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='档案';

--
-- 转存表中的数据 `profile`
--

INSERT INTO `profile` (`id`, `username`, `nickname`, `avatar`, `wechat`, `qq`, `alipay`, `realname`, `idcard`, `certificate`, `authen_reason`, `bankname`, `bankcard`, `bankaddress`, `phone`, `province`, `city`, `county`, `sport_jf`, `create_at`, `update_at`) VALUES
(1, '19999999999', 'X481414', '20250205/c5eb3937eec37af0c14234b3893241ed.png', '19999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 16:58:20', '2025-01-17 16:58:20'),
(2, '11111111111', 'P444160', NULL, '11111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 16:59:18', '2025-01-17 16:59:18'),
(3, '12222222222', 'A678795', NULL, '12222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:15:08', '2025-01-17 17:15:08'),
(4, '13333333333', 'R343998', '20250127/d26ced75b390638108071f0308386e45.jpg', '13333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:15:20', '2025-01-17 17:15:20'),
(5, '16666666666', 'C905836', NULL, '16666666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:15:31', '2025-01-17 17:15:31'),
(6, '17777777777', 'X867446', '20250119/ac9fe5958a8287a58a39456863a9052b.jpg', '17777777777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:15:41', '2025-01-17 17:15:41'),
(7, '18888888888', 'W915179', NULL, '18888888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:15:52', '2025-01-17 17:15:52'),
(8, '16677777777', 'I699630', NULL, '16677777777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:04', '2025-01-17 17:16:04'),
(9, '16688888888', 'V592451', NULL, '16688888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:17', '2025-01-17 17:16:17'),
(10, '16699999999', 'Q118619', NULL, '16699999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:26', '2025-01-17 17:16:26'),
(11, '17766666666', 'J552469', NULL, '17766666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:35', '2025-01-17 17:16:35'),
(12, '17788888888', 'H613405', NULL, '17788888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:43', '2025-01-17 17:16:43'),
(13, '17799999999', 'Z610091', NULL, '17799999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:16:52', '2025-01-17 17:16:52'),
(14, '18866666666', 'Y855168', NULL, '18866666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:02', '2025-01-17 17:17:02'),
(15, '18877777777', 'B585396', NULL, '18877777777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:11', '2025-01-17 17:17:11'),
(16, '18899999999', 'N480698', NULL, '18899999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:19', '2025-01-17 17:17:19'),
(17, '19966666666', 'N323164', NULL, '19966666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:32', '2025-01-17 17:17:32'),
(18, '19977777777', 'E278879', NULL, '19977777777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:41', '2025-01-17 17:17:41'),
(19, '19988888888', 'W342585', NULL, '19988888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17 17:17:52', '2025-01-17 17:17:52'),
(20, '13111111112', 'D446669', NULL, '13111111112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 02:59:30', '2025-01-18 02:59:30'),
(21, '15971016808', 'J110235', NULL, '15971016808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 05:18:00', '2025-01-18 05:18:00'),
(22, '15530807512', 'V467892', NULL, '15530807512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 05:18:12', '2025-01-18 05:18:12'),
(23, '18727082107', 'X177150', NULL, '18727082107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 05:19:42', '2025-01-18 05:19:42'),
(24, '18632558605', 'M610648', NULL, '18632558605', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 05:23:27', '2025-01-18 05:23:27'),
(25, '19969799233', 'E696664', NULL, '19969799233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 05:35:14', '2025-01-18 05:35:14'),
(26, '18204620594', 'R157396', NULL, '18204620594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 06:11:33', '2025-01-18 06:11:33'),
(27, '17629261573', 'H598397', NULL, '17629261573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-18 06:17:55', '2025-01-18 06:17:55'),
(28, '19393141093', 'P855722', NULL, '19393141093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 03:20:18', '2025-01-19 03:20:18'),
(29, '18290186822', 'N222195', NULL, '18290186822', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 03:24:31', '2025-01-19 03:24:31'),
(30, '15178968728', 'Z805187', NULL, '15178968728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 17:24:08', '2025-01-19 17:24:08');

-- --------------------------------------------------------

--
-- 表的结构 `punch`
--

CREATE TABLE IF NOT EXISTS `punch` (
  `Id` int(11) NOT NULL,
  `username` char(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0' COMMENT '打卡状态 0 未打卡 1 已经打卡',
  `create_at` int(11) DEFAULT NULL COMMENT '打卡时间',
  `power` decimal(30,10) DEFAULT '0.0000000000' COMMENT '挑战卡',
  `powerid` int(11) DEFAULT NULL COMMENT '挑战卡id',
  `count` int(11) DEFAULT '0' COMMENT '连续签到天数'
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- 转存表中的数据 `punch`
--

INSERT INTO `punch` (`Id`, `username`, `status`, `create_at`, `power`, `powerid`, `count`) VALUES
(30, '13333333333', 0, 1561571787, '0.0000000000', 0, 0),
(57, '13992686712', 1, 1564450538, '1.0000000000', 0, 0),
(56, '17789816229', 2, 1564352228, '0.0000000000', 0, 1),
(55, '13617081712', 1, 1564325071, '0.0000000000', 0, 0),
(54, '13000000000', 2, 1564349164, '0.0000000000', 0, 1),
(53, '17355331619', 1, 1564273167, '0.0000000000', 0, 0),
(52, '15990058751', 2, 1564347872, '0.0000000000', 0, 1),
(51, '17355877155', 2, 1564353997, '0.0000000000', 0, 1),
(50, '17681371016', 1, 1564456100, '1.0000000000', 0, 3),
(49, '13681203820', 2, 1564264571, '0.0000000000', 0, 1),
(48, '18552320267', 2, 1564440343, '0.0000000000', 0, 3),
(47, '17627921813', 1, 1564456066, '50.0000000000', 0, 3),
(46, '17681371015', 1, 1564456042, '100.0000000000', 0, 3);

-- --------------------------------------------------------

--
-- 表的结构 `punch_count`
--

CREATE TABLE IF NOT EXISTS `punch_count` (
  `Id` int(11) NOT NULL,
  `num` int(11) DEFAULT '0',
  `create_at` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- 表的结构 `punch_log`
--

CREATE TABLE IF NOT EXISTS `punch_log` (
  `Id` int(11) NOT NULL,
  `sum` int(11) DEFAULT '0' COMMENT '打卡总价值',
  `status` varchar(255) DEFAULT '0' COMMENT '是否已瓜分 0 未瓜分 1 已瓜分',
  `create_at` int(11) DEFAULT '0',
  `update_at` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='记录每天0点前打卡金额总数';

--
-- 转存表中的数据 `punch_log`
--

INSERT INTO `punch_log` (`Id`, `sum`, `status`, `create_at`, `update_at`) VALUES
(7, 71, '0', 1555092601, 0),
(6, 172, '1', 1555010701, 0),
(8, 162, '1', 1555185001, 0),
(9, 274, '0', 1555352161, 0),
(10, 0, '0', 1555431181, 0),
(11, 21, '0', 1555603501, 0),
(12, 1, '0', 1555689901, 0),
(13, 171, '0', 1555776301, 0),
(14, 0, '0', 1555862701, 0),
(15, 0, '0', 1555949101, 0),
(16, 22, '0', 1556121901, 0),
(17, 0, '0', 1556208301, 0),
(18, 12, '0', 1556294701, 0),
(19, 0, '0', 1556381101, 0),
(20, 0, '0', 1556467501, 0),
(21, 0, '0', 1556553901, 0),
(22, 0, '0', 1556640301, 0),
(23, 0, '0', 1556726702, 0),
(24, 0, '0', 1556813101, 0),
(25, 0, '0', 1556899501, 0),
(26, 161, '0', 1556985901, 0),
(27, 161, '0', 1557072301, 0),
(28, 100, '0', 1557158701, 0),
(29, 152, '0', 1557245101, 0),
(30, 12, '0', 1557331501, 0),
(31, 0, '0', 1557417901, 0),
(32, 0, '0', 1557504301, 0),
(33, 0, '0', 1557590701, 0),
(34, 1, '0', 1557677101, 0),
(35, 0, '0', 1557763501, 0),
(36, 0, '0', 1557849902, 0),
(37, 161, '0', 1557936301, 0),
(38, 51, '0', 1558022701, 0),
(39, 0, '0', 1558109101, 0),
(40, 161, '0', 1558195501, 0),
(41, 1, '0', 1558281901, 0),
(42, 0, '0', 1558368301, 0),
(43, 50, '0', 1558454701, 0),
(44, 161, '0', 1558541102, 0),
(45, 100, '0', 1558627502, 0),
(46, 51, '0', 1558713901, 0),
(47, 161, '0', 1558800301, 0),
(48, 0, '0', 1558886701, 0),
(49, 150, '0', 1558973101, 0),
(50, 10, '0', 1559059501, 0),
(51, 211, '0', 1559145901, 0),
(52, 161, '0', 1559232301, 0),
(53, 1, '0', 1559318701, 0),
(54, 161, '0', 1559405101, 0),
(55, 161, '0', 1559491501, 0),
(56, 61, '0', 1559577541, 0),
(57, 161, '0', 1559663941, 0),
(58, 100, '0', 1559750341, 0),
(59, 161, '0', 1559836741, 0),
(60, 301, '0', 1559923141, 0),
(61, 161, '0', 1560009541, 0),
(62, 0, '0', 1560095941, 0),
(63, 161, '0', 1560182341, 0),
(64, 161, '0', 1560268741, 0),
(65, 161, '0', 1560355141, 0),
(66, 0, '0', 1560441542, 0),
(67, 0, '0', 1560527941, 0),
(68, 0, '0', 1560614342, 0),
(69, 0, '0', 1560700741, 0),
(70, 0, '0', 1560787141, 0),
(71, 0, '0', 1560873541, 0),
(72, 50, '0', 1560959941, 0),
(73, 0, '0', 1561046342, 0),
(74, 0, '0', 1561132741, 0),
(75, 160, '0', 1561219141, 0),
(76, 0, '0', 1561305541, 0),
(77, 161, '0', 1561391941, 0),
(78, 0, '0', 1561478341, 0),
(79, 162, '0', 1561564742, 0),
(80, 60, '0', 1561651141, 0),
(81, 0, '0', 1561737542, 0),
(82, 0, '0', 1561823942, 0),
(83, 0, '0', 1561910341, 0),
(84, 0, '0', 1561996741, 0),
(85, 0, '0', 1562083142, 0),
(86, 0, '0', 1562169541, 0),
(87, 0, '0', 1562255941, 0),
(88, 0, '0', 1562342341, 0),
(89, 161, '0', 1562428741, 0),
(90, 0, '0', 1562515141, 0),
(91, 0, '0', 1562601541, 0),
(92, 100, '0', 1562687941, 0),
(93, 1, '0', 1562774341, 0),
(94, 100, '0', 1562860741, 0),
(95, 1, '0', 1562947141, 0),
(96, 100, '0', 1563033541, 0),
(97, 1, '0', 1563119941, 0),
(98, 100, '0', 1563206341, 0),
(99, 161, '0', 1563292741, 0),
(100, 0, '0', 1563379142, 0),
(101, 1, '0', 1563465541, 0),
(102, 10, '0', 1563551941, 0),
(103, 1, '0', 1563638342, 0),
(104, 122, '0', 1564070341, 0),
(105, 1212, '0', 1564156742, 0),
(106, 113, '0', 1564243142, 0),
(107, 127, '0', 1564329541, 0),
(108, 202, '0', 1564415941, 0);

-- --------------------------------------------------------

--
-- 表的结构 `punch_money`
--

CREATE TABLE IF NOT EXISTS `punch_money` (
  `Id` int(11) NOT NULL,
  `money` decimal(30,10) DEFAULT NULL COMMENT '瓜分金额',
  `username` char(11) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='打卡瓜分金额';

--
-- 转存表中的数据 `punch_money`
--

INSERT INTO `punch_money` (`Id`, `money`, `username`, `create_at`) VALUES
(1, '7872.3000000000', '16888888888', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `punch_order`
--

CREATE TABLE IF NOT EXISTS `punch_order` (
  `Id` int(11) NOT NULL,
  `oid` char(1) DEFAULT NULL COMMENT '订单编号',
  `status` tinyint(3) DEFAULT '2' COMMENT '状态，1：正常（已发货），0：失败，2：待发货，3：待确认',
  `buyer` char(11) DEFAULT NULL COMMENT '买家',
  `price` decimal(30,2) DEFAULT NULL COMMENT '价格',
  `title` varchar(30) DEFAULT NULL COMMENT '产品名称',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `power` decimal(30,2) DEFAULT NULL COMMENT '奖励算力'
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='挑战卡';

--
-- 转存表中的数据 `punch_order`
--

INSERT INTO `punch_order` (`Id`, `oid`, `status`, `buyer`, `price`, `title`, `create_at`, `power`) VALUES
(1, '1', 1, '16888888888', '100.00', '超级挑战卡', 0, '50.64'),
(2, '1', 1, '16888888888', '100.00', '超级挑战卡', 0, '150.64'),
(3, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '250.64'),
(4, '1', 1, '16888888888', '10.00', '中级挑战卡', 0, '251.64'),
(5, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '261.64'),
(6, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '262.64'),
(7, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '263.64'),
(8, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '264.64'),
(9, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '265.64'),
(10, '1', 1, '16888888888', '100.00', '超级挑战卡', 0, '266.64'),
(11, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '366.64'),
(12, '1', 1, '16888888888', '10.00', '中级挑战卡', 0, '367.64'),
(13, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '377.64'),
(14, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '378.64'),
(15, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '379.64'),
(16, '1', 1, '16888888888', '100.00', '超级挑战卡', 0, '380.64'),
(17, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '480.64'),
(18, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '481.64'),
(19, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '482.64'),
(20, '1', 1, '16888888888', '10.00', '中级挑战卡', 0, '483.64'),
(21, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '493.64'),
(22, '1', 1, '16888888888', '10.00', '中级挑战卡', 0, '494.64'),
(23, '1', 1, '16888888888', '100.00', '超级挑战卡', 0, '50.00'),
(24, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '150.00'),
(25, '1', 1, '13786393215', '100.00', '超级挑战卡', 0, '1.00'),
(26, '1', 1, '18331419752', '100.00', '超级挑战卡', 0, '0.00'),
(27, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '61.00'),
(28, '1', 1, '13786393215', '1.00', '初级挑战卡', 0, '151.00'),
(29, '1', 1, '18331419752', '10.00', '中级挑战卡', 0, '100.00'),
(30, '1', 1, '13333333333', '50.00', '高级挑战卡', 0, '2.69'),
(31, '1', 1, '13333333333', '100.00', '超级挑战卡', 0, '52.69'),
(32, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '52.00'),
(33, '1', 1, '13399135409', '10.00', '中级挑战卡', 0, '22.00'),
(34, '1', 1, '13333333333', '50.00', '高级挑战卡', 0, '152.69'),
(35, '1', 1, '13395267212', '1.00', '初级挑战卡', 0, '0.00'),
(36, '1', 1, '16888888888', '50.00', '高级挑战卡', 0, '50.00'),
(37, '1', 1, '13333333333', '100.00', '超级挑战卡', 0, '100.00'),
(38, '1', 1, '15030116666', '1.00', '初级挑战卡', 0, '1.00'),
(39, '1', 1, '13399135409', '10.00', '中级挑战卡', 0, '10.00'),
(40, '1', 1, '16888888888', '1.00', '初级挑战卡', 0, '1.00'),
(41, '1', 1, '18331419752', '100.00', '超级挑战卡', 0, '100.00'),
(42, '1', 1, '13786393215', '1.00', '初级挑战卡', 0, '1.00'),
(43, '1', 1, '13395267212', '50.00', '高级挑战卡', 0, '50.00'),
(44, '1', 1, '17821522007', '10.00', '中级挑战卡', 0, '10.00'),
(45, '1', 1, '18907454545', '10.00', '中级挑战卡', 0, '10.00'),
(46, '1', 1, '18908454545', '50.00', '高级挑战卡', 1554886026, '50.00'),
(47, '1', 1, '13395267212', '1.00', '初级挑战卡', 1554886392, '1.00'),
(48, '1', 1, '16888888888', '1.00', '初级挑战卡', 1554886801, '1.00'),
(49, '1', 1, '18909454545', '50.00', '高级挑战卡', 1554886998, '50.00'),
(50, '1', 1, '15030116666', '1.00', '初级挑战卡', 1554887042, '1.00'),
(51, '1', 1, '13399135409', '10.00', '中级挑战卡', 1554887043, '10.00'),
(52, '1', 1, '13333333333', '100.00', '超级挑战卡', 1554887072, '100.00'),
(53, '1', 1, '13333333333', '10.00', '中级挑战卡', 1555062814, '10.00'),
(54, '1', 1, '15030116666', '1.00', '初级挑战卡', 1555063023, '1.00'),
(55, '1', 1, '13399135409', '50.00', '高级挑战卡', 1555063084, '50.00'),
(56, '1', 1, '16888888888', '10.00', '中级挑战卡', 1555063106, '10.00'),
(57, '1', 1, '13333333333', '100.00', '超级挑战卡', 1555143670, '100.00'),
(58, '1', 1, '15030116666', '50.00', '高级挑战卡', 1555143712, '50.00'),
(59, '1', 1, '16888888888', '10.00', '中级挑战卡', 1555143740, '10.00'),
(60, '1', 1, '18031040584', '1.00', '初级挑战卡', 1555143753, '1.00'),
(61, '1', 1, '18031040584', '1.00', '初级挑战卡', 1555173752, '1.00'),
(62, '1', 1, '13333333333', '100.00', '超级挑战卡', 1555239415, '100.00'),
(63, '1', 1, '15030116666', '50.00', '高级挑战卡', 1555239428, '50.00'),
(64, '1', 1, '16888888888', '10.00', '中级挑战卡', 1555239442, '10.00'),
(65, '1', 1, '13399135409', '1.00', '初级挑战卡', 1555239485, '1.00'),
(66, '1', 1, '15030116666', '1.00', '初级挑战卡', 1555268209, '1.00'),
(67, '1', 1, '13333333333', '100.00', '超级挑战卡', 1555341952, '100.00'),
(68, '1', 1, '16888888888', '10.00', '中级挑战卡', 1555341976, '10.00'),
(69, '1', 1, '18031040584', '1.00', '初级挑战卡', 1555341994, '1.00'),
(70, '1', 1, '13333333333', '1.00', '初级挑战卡', 1555344202, '1.00'),
(71, '1', 1, '15030116666', '10.00', '中级挑战卡', 1555436841, '10.00'),
(72, '1', 1, '13333333333', '10.00', '中级挑战卡', 1555436870, '10.00'),
(73, '1', 1, '13333333333', '1.00', '初级挑战卡', 1555577067, '1.00'),
(74, '1', 1, '13333333333', '1.00', '初级挑战卡', 1555639325, '1.00'),
(75, '1', 1, '13333333333', '50.00', '高级挑战卡', 1555754913, '50.00'),
(76, '1', 1, '15030116666', '10.00', '中级挑战卡', 1555754927, '10.00'),
(77, '1', 1, '16888888888', '1.00', '初级挑战卡', 1555754938, '1.00'),
(78, '1', 1, '18031040584', '100.00', '超级挑战卡', 1555754972, '100.00'),
(79, '1', 1, '15030116666', '10.00', '中级挑战卡', 1555776102, '10.00'),
(80, '1', 1, '13333333333', '10.00', '中级挑战卡', 1555950378, '10.00'),
(81, '1', 1, '16888888888', '10.00', '中级挑战卡', 1555950393, '10.00'),
(82, '1', 1, '15030116666', '1.00', '初级挑战卡', 1555950410, '1.00'),
(83, '1', 1, '15030116666', '1.00', '初级挑战卡', 1556035797, '1.00'),
(84, '1', 1, '13333333333', '10.00', '中级挑战卡', 1556219487, '10.00'),
(85, '1', 1, '15030116666', '1.00', '初级挑战卡', 1556219499, '1.00'),
(86, '1', 1, '16888888888', '1.00', '初级挑战卡', 1556219509, '1.00'),
(87, '1', 1, '13333333333', '100.00', '超级挑战卡', 1556956227, '100.00'),
(88, '1', 1, '15030116666', '10.00', '中级挑战卡', 1556956415, '10.00'),
(89, '1', 1, '16888888888', '50.00', '高级挑战卡', 1556956453, '50.00'),
(90, '1', 1, '13399135409', '1.00', '初级挑战卡', 1556956478, '1.00'),
(91, '1', 1, '13333333333', '100.00', '超级挑战卡', 1557036537, '100.00'),
(92, '1', 1, '15030116666', '50.00', '高级挑战卡', 1557036622, '50.00'),
(93, '1', 1, '16888888888', '10.00', '中级挑战卡', 1557036639, '10.00'),
(94, '1', 1, '13399135409', '1.00', '初级挑战卡', 1557036666, '1.00'),
(95, '1', 1, '13333333333', '100.00', '超级挑战卡', 1557089467, '100.00'),
(96, '1', 1, '16888888888', '1.00', '初级挑战卡', 1557192603, '1.00'),
(97, '1', 1, '13333333333', '100.00', '超级挑战卡', 1557207428, '100.00'),
(98, '1', 1, '15030116666', '50.00', '高级挑战卡', 1557207457, '50.00'),
(99, '1', 1, '13399135409', '1.00', '初级挑战卡', 1557207499, '1.00'),
(100, '1', 1, '13333333333', '10.00', '中级挑战卡', 1557245882, '10.00'),
(101, '1', 1, '16888888888', '1.00', '初级挑战卡', 1557259654, '1.00'),
(102, '1', 1, '15030116666', '1.00', '初级挑战卡', 1557289643, '1.00'),
(103, '1', 1, '16888888888', '1.00', '初级挑战卡', 1557646681, '1.00'),
(104, '1', 1, '13333333333', '100.00', '超级挑战卡', 1557914181, '100.00'),
(105, '1', 1, '15030116666', '50.00', '高级挑战卡', 1557914198, '50.00'),
(106, '1', 1, '16888888888', '10.00', '中级挑战卡', 1557914211, '10.00'),
(107, '1', 1, '13399135409', '1.00', '初级挑战卡', 1557914223, '1.00'),
(108, '1', 1, '13333333333', '50.00', '高级挑战卡', 1557936745, '50.00'),
(110, '1', 1, '13333333333', '100.00', '超级挑战卡', 1558186020, '100.00'),
(111, '1', 1, '15030116666', '50.00', '高级挑战卡', 1558186066, '50.00'),
(112, '1', 1, '16888888888', '10.00', '中级挑战卡', 1558186080, '10.00'),
(113, '1', 1, '13399135409', '1.00', '初级挑战卡', 1558186094, '1.00'),
(114, '1', 1, '16888888888', '1.00', '初级挑战卡', 1558273819, '1.00'),
(115, '1', 1, '13333333333', '50.00', '高级挑战卡', 1558447628, '50.00'),
(116, '1', 1, '15030116666', '50.00', '高级挑战卡', 1558456042, '50.00'),
(117, '1', 1, '16888888888', '10.00', '中级挑战卡', 1558523369, '10.00'),
(118, '1', 1, '13333333333', '100.00', '超级挑战卡', 1558531114, '100.00'),
(119, '1', 1, '13399135409', '1.00', '初级挑战卡', 1558531166, '1.00'),
(120, '1', 1, '13333333333', '50.00', '高级挑战卡', 1558541250, '50.00'),
(121, '1', 1, '16888888888', '50.00', '高级挑战卡', 1558620553, '50.00'),
(122, '1', 1, '13333333333', '1.00', '初级挑战卡', 1558630294, '1.00'),
(123, '1', 1, '16888888888', '50.00', '高级挑战卡', 1558668437, '50.00'),
(124, '1', 1, '13333333333', '100.00', '超级挑战卡', 1558796137, '100.00'),
(125, '1', 1, '15030116666', '50.00', '高级挑战卡', 1558796159, '50.00'),
(126, '1', 1, '16888888888', '10.00', '中级挑战卡', 1558796172, '10.00'),
(127, '1', 1, '13399135409', '1.00', '初级挑战卡', 1558796184, '1.00'),
(128, '1', 1, '16888888888', '100.00', '超级挑战卡', 1558832400, '100.00'),
(129, '1', 1, '18909454545', '10.00', '中级挑战卡', 1558927799, '10.00'),
(130, '1', 1, '16888888888', '100.00', '中级挑战卡', 1559048252, '10.00'),
(131, '1', 2, '13395267212', '10.00', '中级挑战卡', 1559005810, '10.00'),
(132, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559128387, '50.00'),
(133, '1', 1, '13333333333', '100.00', '超级挑战卡', 1559144107, '100.00'),
(134, '1', 1, '15030116666', '50.00', '高级挑战卡', 1559144130, '50.00'),
(135, '1', 1, '13399135409', '10.00', '中级挑战卡', 1559144198, '10.00'),
(136, '1', 1, '18031040584', '1.00', '初级挑战卡', 1559144222, '1.00'),
(137, '1', 1, '13333333333', '1.00', '初级挑战卡', 1559219710, '1.00'),
(138, '1', 1, '15030116666', '10.00', '中级挑战卡', 1559219800, '10.00'),
(139, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559219816, '50.00'),
(140, '1', 1, '18031040584', '100.00', '超级挑战卡', 1559219853, '100.00'),
(141, '1', 1, '13333333333', '1.00', '初级挑战卡', 1559235376, '1.00'),
(142, '1', 1, '16888888888', '100.00', '超级挑战卡', 1559378117, '100.00'),
(144, '1', 1, '15030116666', '50.00', '高级挑战卡', 1559403086, '50.00'),
(145, '1', 1, '13399135409', '10.00', '中级挑战卡', 1559403101, '10.00'),
(146, '1', 1, '18031040584', '1.00', '初级挑战卡', 1559403118, '1.00'),
(147, '1', 1, '13333333333', '1.00', '初级挑战卡', 1559405294, '1.00'),
(148, '1', 1, '16888888888', '10.00', '中级挑战卡', 1559491168, '10.00'),
(149, '1', 1, '15030116666', '50.00', '高级挑战卡', 1559491179, '50.00'),
(150, '1', 1, '13399135409', '100.00', '超级挑战卡', 1559491205, '100.00'),
(151, '1', 1, '13786393215', '1.00', '初级挑战卡', 1559540505, '1.00'),
(152, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559548600, '50.00'),
(153, '1', 1, '13333333333', '10.00', '中级挑战卡', 1559548789, '10.00'),
(154, '1', 1, '13333333333', '100.00', '超级挑战卡', 1559655007, '100.00'),
(155, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559655033, '50.00'),
(156, '1', 1, '15030116666', '10.00', '中级挑战卡', 1559655059, '10.00'),
(157, '1', 1, '18031040584', '1.00', '初级挑战卡', 1559655075, '1.00'),
(158, '1', 1, '13333333333', '100.00', '超级挑战卡', 1559706726, '100.00'),
(159, '1', 1, '13333333333', '100.00', '超级挑战卡', 1559790120, '100.00'),
(160, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559790242, '50.00'),
(161, '1', 1, '15030116666', '10.00', '中级挑战卡', 1559790254, '10.00'),
(162, '1', 1, '18031040584', '1.00', '初级挑战卡', 1559790267, '1.00'),
(163, '1', 1, '13333333333', '1.00', '初级挑战卡', 1559839118, '1.00'),
(166, '1', 1, '15030116666', '100.00', '超级挑战卡', 1559895156, '100.00'),
(165, '1', 1, '16888888888', '50.00', '高级挑战卡', 1559892240, '50.00'),
(167, '1', 1, '18031040584', '100.00', '超级挑战卡', 1559895314, '100.00'),
(168, '1', 1, '13333333333', '100.00', '超级挑战卡', 1560005995, '100.00'),
(169, '1', 1, '16888888888', '50.00', '高级挑战卡', 1560006008, '50.00'),
(170, '1', 1, '15030116666', '10.00', '中级挑战卡', 1560006020, '10.00'),
(171, '1', 1, '18031040584', '1.00', '初级挑战卡', 1560006031, '1.00'),
(172, '1', 1, '13333333333', '100.00', '超级挑战卡', 1560180937, '100.00'),
(173, '1', 1, '16888888888', '50.00', '高级挑战卡', 1560181244, '50.00'),
(174, '1', 1, '15030116666', '10.00', '中级挑战卡', 1560181262, '10.00'),
(175, '1', 1, '18031040584', '1.00', '初级挑战卡', 1560181274, '1.00'),
(176, '1', 1, '13333333333', '100.00', '超级挑战卡', 1560265753, '100.00'),
(177, '1', 1, '16888888888', '50.00', '高级挑战卡', 1560265766, '50.00'),
(178, '1', 1, '15030116666', '10.00', '中级挑战卡', 1560265779, '10.00'),
(179, '1', 1, '18031040584', '1.00', '初级挑战卡', 1560265799, '1.00'),
(180, '1', 1, '13333333333', '100.00', '超级挑战卡', 1560350366, '100.00'),
(181, '1', 1, '16888888888', '50.00', '高级挑战卡', 1560350385, '50.00'),
(182, '1', 1, '15030116666', '10.00', '中级挑战卡', 1560350399, '10.00'),
(183, '1', 1, '18031040584', '1.00', '初级挑战卡', 1560350412, '1.00'),
(184, '1', 1, '13333333333', '100.00', '高级挑战卡', 1561180592, '50.00'),
(185, '1', 1, '16888888888', '50.00', '高级挑战卡', 1561219141, '50.00'),
(186, '1', 1, '15030116666', '10.00', '中级挑战卡', 1561180592, '10.00'),
(187, '1', 1, '13399135409', '1.00', '超级挑战卡', 1561180610, '100.00'),
(188, '1', 1, '13333333333', '100.00', '超级挑战卡', 1561389238, '100.00'),
(189, '1', 1, '16888888888', '50.00', '高级挑战卡', 1561389252, '50.00'),
(190, '1', 1, '15030116666', '10.00', '中级挑战卡', 1561389265, '10.00'),
(191, '1', 1, '13399135409', '1.00', '初级挑战卡', 1561389356, '1.00'),
(192, '1', 1, '13333333333', '100.00', '超级挑战卡', 1561917387, '100.00'),
(193, '1', 1, '16888888888', '50.00', '高级挑战卡', 1561917387, '50.00'),
(194, '1', 1, '15030116666', '10.00', '中级挑战卡', 1561917387, '10.00'),
(195, '1', 1, '13399135409', '1.00', '初级挑战卡', 1561917387, '1.00'),
(196, '1', 1, '18031040584', '1.00', '初级挑战卡', 1561917387, '1.00'),
(197, '1', 1, '18331419752', '10.00', '中级挑战卡', 1561571787, '10.00'),
(198, '1', 1, '13333333333', '50.00', '高级挑战卡', 1561608811, '50.00'),
(199, '1', 1, '13333333333', '100.00', '超级挑战卡', 1562400042, '100.00'),
(200, '1', 1, '16888888888', '50.00', '高级挑战卡', 1562400063, '50.00'),
(201, '1', 1, '15030116666', '10.00', '中级挑战卡', 1562400083, '10.00'),
(202, '1', 1, '13399135409', '1.00', '初级挑战卡', 1562400096, '1.00'),
(203, '1', 1, '13333333333', '100.00', '超级挑战卡', 1562612607, '100.00'),
(204, '1', 1, '13333333333', '1.00', '初级挑战卡', 1562733363, '1.00'),
(205, '1', 1, '13333333333', '100.00', '超级挑战卡', 1562827822, '100.00'),
(206, '1', 1, '13333333333', '1.00', '初级挑战卡', 1562922463, '1.00'),
(207, '1', 1, '13333333333', '100.00', '超级挑战卡', 1563001956, '100.00'),
(208, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563088063, '1.00'),
(209, '1', 1, '13333333333', '100.00', '超级挑战卡', 1563193358, '100.00'),
(210, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563258120, '1.00'),
(211, '1', 1, '16888888888', '10.00', '中级挑战卡', 1563289395, '10.00'),
(212, '1', 1, '15030116666', '50.00', '高级挑战卡', 1563289409, '50.00'),
(213, '1', 1, '13399135409', '100.00', '超级挑战卡', 1563289433, '100.00'),
(214, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563432848, '1.00'),
(215, '1', 1, '13333333333', '10.00', '中级挑战卡', 1563530563, '10.00'),
(216, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563635758, '1.00'),
(217, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563683718, '1.00'),
(218, '1', 1, '13333333333', '1.00', '初级挑战卡', 1563986130, '1.00'),
(219, '1', 1, '18031040584', '10.00', '中级挑战卡', 1563986154, '10.00'),
(220, '1', 1, '17681371015', '100.00', '超级挑战卡', 1563991615, '100.00'),
(221, '1', 1, '17627921813', '10.00', '中级挑战卡', 1564057794, '10.00'),
(222, '1', 1, '17681371015', '100.00', '超级挑战卡', 1564104376, '100.00'),
(223, '1', 1, '17627921813', '10.00', '中级挑战卡', 1564114813, '10.00'),
(224, '1', 1, '13111111111', '1000.00', '超级挑战卡', 1564114952, '100.00'),
(225, '1', 1, '13111111112', '1000.00', '超级挑战卡', 1564115243, '100.00'),
(226, '1', 1, '18908454545', '1.00', '初级挑战卡', 1564120237, '1.00'),
(227, '1', 1, '13000000000', '100.00', '超级挑战卡', 1564127837, '100.00'),
(228, '1', 1, '13022222222', '100.00', '超级挑战卡', 1564128069, '100.00'),
(229, '1', 1, '13033333333', '100.00', '超级挑战卡', 1564128506, '100.00'),
(230, '1', 1, '13044444444', '100.00', '超级挑战卡', 1564128947, '100.00'),
(231, '1', 1, '13055555555', '100.00', '超级挑战卡', 1564129053, '100.00'),
(232, '1', 1, '13066666666', '100.00', '超级挑战卡', 1564129201, '100.00'),
(233, '1', 1, '17627921813', '10.00', '中级挑战卡', 1564208250, '10.00'),
(234, '1', 1, '17681371016', '1.00', '初级挑战卡', 1564234011, '1.00'),
(235, '1', 1, '17627921813', '100.00', '超级挑战卡', 1564286584, '100.00'),
(236, '1', 1, '17681371016', '1.00', '初级挑战卡', 1564287831, '1.00'),
(237, '1', 1, '18552320267', '1.00', '初级挑战卡', 1564310070, '1.00'),
(238, '1', 1, '17681371015', '10.00', '中级挑战卡', 1564316370, '10.00'),
(239, '1', 1, '17681371016', '1.00', '初级挑战卡', 1564373242, '1.00'),
(240, '1', 1, '17681371015', '100.00', '超级挑战卡', 1564373274, '100.00'),
(241, '1', 1, '17627921813', '100.00', '超级挑战卡', 1564373308, '100.00'),
(242, '1', 1, '18552320267', '1.00', '初级挑战卡', 1564374779, '1.00'),
(243, '1', 1, '17681371015', '100.00', '超级挑战卡', 1564456042, '100.00'),
(244, '1', 1, '17627921813', '50.00', '高级挑战卡', 1564456066, '50.00'),
(245, '1', 1, '17681371016', '1.00', '初级挑战卡', 1564456100, '1.00');

-- --------------------------------------------------------

--
-- 表的结构 `recharge`
--

CREATE TABLE IF NOT EXISTS `recharge` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `rid` char(32) NOT NULL COMMENT '对外编号',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `currency` tinyint(4) NOT NULL COMMENT '具体货币',
  `business` tinyint(4) NOT NULL COMMENT '具体业务',
  `before` decimal(30,12) DEFAULT '0.000000000000' COMMENT '原本货币数量',
  `now` decimal(30,12) DEFAULT '0.000000000000' COMMENT '本次货币数量',
  `after` decimal(30,12) DEFAULT '0.000000000000' COMMENT '最后货币数量',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='流水';

--
-- 转存表中的数据 `record`
--

INSERT INTO `record` (`id`, `rid`, `username`, `currency`, `business`, `before`, `now`, `after`, `create_at`) VALUES
(1, 'W25011956873137', '12222222222', 1, 25, '0.000000000000', '50.000000000000', '50.000000000000', '2025-01-19 03:13:37'),
(2, 'F25012811422334', '11111111111', 1, 25, '0.000000000000', '50.000000000000', '50.000000000000', '2025-01-28 02:45:42'),
(3, 'L25013169629632', '13333333333', 1, 25, '0.000000000000', '50.000000000000', '50.000000000000', '2025-01-31 04:43:47'),
(4, 'X25020535566975', '16666666666', 1, 25, '0.000000000000', '50.000000000000', '50.000000000000', '2025-02-05 02:13:43');

-- --------------------------------------------------------

--
-- 表的结构 `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `code` int(11) NOT NULL COMMENT '地区编码',
  `type` tinyint(4) NOT NULL DEFAULT '3' COMMENT '类型，1省，2市，3区',
  `province` int(11) DEFAULT NULL COMMENT '省编码',
  `province_name` varchar(30) DEFAULT NULL COMMENT '省名字',
  `city` int(11) DEFAULT NULL COMMENT '市编码',
  `city_name` varchar(30) DEFAULT NULL COMMENT '市名字',
  `name` varchar(30) DEFAULT NULL COMMENT '地区名字',
  `address` varchar(90) DEFAULT NULL COMMENT '完整地区'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地区';

--
-- 转存表中的数据 `region`
--

INSERT INTO `region` (`code`, `type`, `province`, `province_name`, `city`, `city_name`, `name`, `address`) VALUES
(110000, 1, 0, '', 0, '', '北京市', '北京市'),
(110101, 3, 110000, '北京市', 0, '', '东城区', '北京市东城区'),
(110102, 3, 110000, '北京市', 0, '', '西城区', '北京市西城区'),
(110105, 3, 110000, '北京市', 0, '', '朝阳区', '北京市朝阳区'),
(110106, 3, 110000, '北京市', 0, '', '丰台区', '北京市丰台区'),
(110107, 3, 110000, '北京市', 0, '', '石景山区', '北京市石景山区'),
(110108, 3, 110000, '北京市', 0, '', '海淀区', '北京市海淀区'),
(110109, 3, 110000, '北京市', 0, '', '门头沟区', '北京市门头沟区'),
(110111, 3, 110000, '北京市', 0, '', '房山区', '北京市房山区'),
(110112, 3, 110000, '北京市', 0, '', '通州区', '北京市通州区'),
(110113, 3, 110000, '北京市', 0, '', '顺义区', '北京市顺义区'),
(110114, 3, 110000, '北京市', 0, '', '昌平区', '北京市昌平区'),
(110115, 3, 110000, '北京市', 0, '', '大兴区', '北京市大兴区'),
(110116, 3, 110000, '北京市', 0, '', '怀柔区', '北京市怀柔区'),
(110117, 3, 110000, '北京市', 0, '', '平谷区', '北京市平谷区'),
(110118, 3, 110000, '北京市', 0, '', '密云区', '北京市密云区'),
(110119, 3, 110000, '北京市', 0, '', '延庆区', '北京市延庆区'),
(120000, 1, 0, '', 0, '', '天津市', '天津市'),
(120101, 3, 120000, '天津市', 0, '', '和平区', '天津市和平区'),
(120102, 3, 120000, '天津市', 0, '', '河东区', '天津市河东区'),
(120103, 3, 120000, '天津市', 0, '', '河西区', '天津市河西区'),
(120104, 3, 120000, '天津市', 0, '', '南开区', '天津市南开区'),
(120105, 3, 120000, '天津市', 0, '', '河北区', '天津市河北区'),
(120106, 3, 120000, '天津市', 0, '', '红桥区', '天津市红桥区'),
(120110, 3, 120000, '天津市', 0, '', '东丽区', '天津市东丽区'),
(120111, 3, 120000, '天津市', 0, '', '西青区', '天津市西青区'),
(120112, 3, 120000, '天津市', 0, '', '津南区', '天津市津南区'),
(120113, 3, 120000, '天津市', 0, '', '北辰区', '天津市北辰区'),
(120114, 3, 120000, '天津市', 0, '', '武清区', '天津市武清区'),
(120115, 3, 120000, '天津市', 0, '', '宝坻区', '天津市宝坻区'),
(120116, 3, 120000, '天津市', 0, '', '滨海新区', '天津市滨海新区'),
(120117, 3, 120000, '天津市', 0, '', '宁河区', '天津市宁河区'),
(120118, 3, 120000, '天津市', 0, '', '静海区', '天津市静海区'),
(120119, 3, 120000, '天津市', 0, '', '蓟州区', '天津市蓟州区'),
(130000, 1, 0, '', 0, '', '河北省', '河北省'),
(130100, 2, 130000, '河北省', 0, '', '石家庄市', '河北省石家庄市'),
(130102, 3, 130000, '河北省', 130100, '石家庄市', '长安区', '河北省石家庄市长安区'),
(130104, 3, 130000, '河北省', 130100, '石家庄市', '桥西区', '河北省石家庄市桥西区'),
(130105, 3, 130000, '河北省', 130100, '石家庄市', '新华区', '河北省石家庄市新华区'),
(130107, 3, 130000, '河北省', 130100, '石家庄市', '井陉矿区', '河北省石家庄市井陉矿区'),
(130108, 3, 130000, '河北省', 130100, '石家庄市', '裕华区', '河北省石家庄市裕华区'),
(130109, 3, 130000, '河北省', 130100, '石家庄市', '藁城区', '河北省石家庄市藁城区'),
(130110, 3, 130000, '河北省', 130100, '石家庄市', '鹿泉区', '河北省石家庄市鹿泉区'),
(130111, 3, 130000, '河北省', 130100, '石家庄市', '栾城区', '河北省石家庄市栾城区'),
(130121, 3, 130000, '河北省', 130100, '石家庄市', '井陉县', '河北省石家庄市井陉县'),
(130123, 3, 130000, '河北省', 130100, '石家庄市', '正定县', '河北省石家庄市正定县'),
(130125, 3, 130000, '河北省', 130100, '石家庄市', '行唐县', '河北省石家庄市行唐县'),
(130126, 3, 130000, '河北省', 130100, '石家庄市', '灵寿县', '河北省石家庄市灵寿县'),
(130127, 3, 130000, '河北省', 130100, '石家庄市', '高邑县', '河北省石家庄市高邑县'),
(130128, 3, 130000, '河北省', 130100, '石家庄市', '深泽县', '河北省石家庄市深泽县'),
(130129, 3, 130000, '河北省', 130100, '石家庄市', '赞皇县', '河北省石家庄市赞皇县'),
(130130, 3, 130000, '河北省', 130100, '石家庄市', '无极县', '河北省石家庄市无极县'),
(130131, 3, 130000, '河北省', 130100, '石家庄市', '平山县', '河北省石家庄市平山县'),
(130132, 3, 130000, '河北省', 130100, '石家庄市', '元氏县', '河北省石家庄市元氏县'),
(130133, 3, 130000, '河北省', 130100, '石家庄市', '赵县', '河北省石家庄市赵县'),
(130181, 3, 130000, '河北省', 130100, '石家庄市', '辛集市', '河北省石家庄市辛集市'),
(130183, 3, 130000, '河北省', 130100, '石家庄市', '晋州市', '河北省石家庄市晋州市'),
(130184, 3, 130000, '河北省', 130100, '石家庄市', '新乐市', '河北省石家庄市新乐市'),
(130200, 2, 130000, '河北省', 0, '', '唐山市', '河北省唐山市'),
(130202, 3, 130000, '河北省', 130200, '唐山市', '路南区', '河北省唐山市路南区'),
(130203, 3, 130000, '河北省', 130200, '唐山市', '路北区', '河北省唐山市路北区'),
(130204, 3, 130000, '河北省', 130200, '唐山市', '古冶区', '河北省唐山市古冶区'),
(130205, 3, 130000, '河北省', 130200, '唐山市', '开平区', '河北省唐山市开平区'),
(130207, 3, 130000, '河北省', 130200, '唐山市', '丰南区', '河北省唐山市丰南区'),
(130208, 3, 130000, '河北省', 130200, '唐山市', '丰润区', '河北省唐山市丰润区'),
(130209, 3, 130000, '河北省', 130200, '唐山市', '曹妃甸区', '河北省唐山市曹妃甸区'),
(130223, 3, 130000, '河北省', 130200, '唐山市', '滦县', '河北省唐山市滦县'),
(130224, 3, 130000, '河北省', 130200, '唐山市', '滦南县', '河北省唐山市滦南县'),
(130225, 3, 130000, '河北省', 130200, '唐山市', '乐亭县', '河北省唐山市乐亭县'),
(130227, 3, 130000, '河北省', 130200, '唐山市', '迁西县', '河北省唐山市迁西县'),
(130229, 3, 130000, '河北省', 130200, '唐山市', '玉田县', '河北省唐山市玉田县'),
(130281, 3, 130000, '河北省', 130200, '唐山市', '遵化市', '河北省唐山市遵化市'),
(130283, 3, 130000, '河北省', 130200, '唐山市', '迁安市', '河北省唐山市迁安市'),
(130300, 2, 130000, '河北省', 0, '', '秦皇岛市', '河北省秦皇岛市'),
(130302, 3, 130000, '河北省', 130300, '秦皇岛市', '海港区', '河北省秦皇岛市海港区'),
(130303, 3, 130000, '河北省', 130300, '秦皇岛市', '山海关区', '河北省秦皇岛市山海关区'),
(130304, 3, 130000, '河北省', 130300, '秦皇岛市', '北戴河区', '河北省秦皇岛市北戴河区'),
(130306, 3, 130000, '河北省', 130300, '秦皇岛市', '抚宁区', '河北省秦皇岛市抚宁区'),
(130321, 3, 130000, '河北省', 130300, '秦皇岛市', '青龙满族自治县', '河北省秦皇岛市青龙满族自治县'),
(130322, 3, 130000, '河北省', 130300, '秦皇岛市', '昌黎县', '河北省秦皇岛市昌黎县'),
(130324, 3, 130000, '河北省', 130300, '秦皇岛市', '卢龙县', '河北省秦皇岛市卢龙县'),
(130400, 2, 130000, '河北省', 0, '', '邯郸市', '河北省邯郸市'),
(130402, 3, 130000, '河北省', 130400, '邯郸市', '邯山区', '河北省邯郸市邯山区'),
(130403, 3, 130000, '河北省', 130400, '邯郸市', '丛台区', '河北省邯郸市丛台区'),
(130404, 3, 130000, '河北省', 130400, '邯郸市', '复兴区', '河北省邯郸市复兴区'),
(130406, 3, 130000, '河北省', 130400, '邯郸市', '峰峰矿区', '河北省邯郸市峰峰矿区'),
(130407, 3, 130000, '河北省', 130400, '邯郸市', '肥乡区', '河北省邯郸市肥乡区'),
(130408, 3, 130000, '河北省', 130400, '邯郸市', '永年区', '河北省邯郸市永年区'),
(130423, 3, 130000, '河北省', 130400, '邯郸市', '临漳县', '河北省邯郸市临漳县'),
(130424, 3, 130000, '河北省', 130400, '邯郸市', '成安县', '河北省邯郸市成安县'),
(130425, 3, 130000, '河北省', 130400, '邯郸市', '大名县', '河北省邯郸市大名县'),
(130426, 3, 130000, '河北省', 130400, '邯郸市', '涉县', '河北省邯郸市涉县'),
(130427, 3, 130000, '河北省', 130400, '邯郸市', '磁县', '河北省邯郸市磁县'),
(130430, 3, 130000, '河北省', 130400, '邯郸市', '邱县', '河北省邯郸市邱县'),
(130431, 3, 130000, '河北省', 130400, '邯郸市', '鸡泽县', '河北省邯郸市鸡泽县'),
(130432, 3, 130000, '河北省', 130400, '邯郸市', '广平县', '河北省邯郸市广平县'),
(130433, 3, 130000, '河北省', 130400, '邯郸市', '馆陶县', '河北省邯郸市馆陶县'),
(130434, 3, 130000, '河北省', 130400, '邯郸市', '魏县', '河北省邯郸市魏县'),
(130435, 3, 130000, '河北省', 130400, '邯郸市', '曲周县', '河北省邯郸市曲周县'),
(130481, 3, 130000, '河北省', 130400, '邯郸市', '武安市', '河北省邯郸市武安市'),
(130500, 2, 130000, '河北省', 0, '', '邢台市', '河北省邢台市'),
(130502, 3, 130000, '河北省', 130500, '邢台市', '桥东区', '河北省邢台市桥东区'),
(130503, 3, 130000, '河北省', 130500, '邢台市', '桥西区', '河北省邢台市桥西区'),
(130521, 3, 130000, '河北省', 130500, '邢台市', '邢台县', '河北省邢台市邢台县'),
(130522, 3, 130000, '河北省', 130500, '邢台市', '临城县', '河北省邢台市临城县'),
(130523, 3, 130000, '河北省', 130500, '邢台市', '内丘县', '河北省邢台市内丘县'),
(130524, 3, 130000, '河北省', 130500, '邢台市', '柏乡县', '河北省邢台市柏乡县'),
(130525, 3, 130000, '河北省', 130500, '邢台市', '隆尧县', '河北省邢台市隆尧县'),
(130526, 3, 130000, '河北省', 130500, '邢台市', '任县', '河北省邢台市任县'),
(130527, 3, 130000, '河北省', 130500, '邢台市', '南和县', '河北省邢台市南和县'),
(130528, 3, 130000, '河北省', 130500, '邢台市', '宁晋县', '河北省邢台市宁晋县'),
(130529, 3, 130000, '河北省', 130500, '邢台市', '巨鹿县', '河北省邢台市巨鹿县'),
(130530, 3, 130000, '河北省', 130500, '邢台市', '新河县', '河北省邢台市新河县'),
(130531, 3, 130000, '河北省', 130500, '邢台市', '广宗县', '河北省邢台市广宗县'),
(130532, 3, 130000, '河北省', 130500, '邢台市', '平乡县', '河北省邢台市平乡县'),
(130533, 3, 130000, '河北省', 130500, '邢台市', '威县', '河北省邢台市威县'),
(130534, 3, 130000, '河北省', 130500, '邢台市', '清河县', '河北省邢台市清河县'),
(130535, 3, 130000, '河北省', 130500, '邢台市', '临西县', '河北省邢台市临西县'),
(130581, 3, 130000, '河北省', 130500, '邢台市', '南宫市', '河北省邢台市南宫市'),
(130582, 3, 130000, '河北省', 130500, '邢台市', '沙河市', '河北省邢台市沙河市'),
(130600, 2, 130000, '河北省', 0, '', '保定市', '河北省保定市'),
(130602, 3, 130000, '河北省', 130600, '保定市', '竞秀区', '河北省保定市竞秀区'),
(130606, 3, 130000, '河北省', 130600, '保定市', '莲池区', '河北省保定市莲池区'),
(130607, 3, 130000, '河北省', 130600, '保定市', '满城区', '河北省保定市满城区'),
(130608, 3, 130000, '河北省', 130600, '保定市', '清苑区', '河北省保定市清苑区'),
(130609, 3, 130000, '河北省', 130600, '保定市', '徐水区', '河北省保定市徐水区'),
(130623, 3, 130000, '河北省', 130600, '保定市', '涞水县', '河北省保定市涞水县'),
(130624, 3, 130000, '河北省', 130600, '保定市', '阜平县', '河北省保定市阜平县'),
(130626, 3, 130000, '河北省', 130600, '保定市', '定兴县', '河北省保定市定兴县'),
(130627, 3, 130000, '河北省', 130600, '保定市', '唐县', '河北省保定市唐县'),
(130628, 3, 130000, '河北省', 130600, '保定市', '高阳县', '河北省保定市高阳县'),
(130629, 3, 130000, '河北省', 130600, '保定市', '容城县', '河北省保定市容城县'),
(130630, 3, 130000, '河北省', 130600, '保定市', '涞源县', '河北省保定市涞源县'),
(130631, 3, 130000, '河北省', 130600, '保定市', '望都县', '河北省保定市望都县'),
(130632, 3, 130000, '河北省', 130600, '保定市', '安新县', '河北省保定市安新县'),
(130633, 3, 130000, '河北省', 130600, '保定市', '易县', '河北省保定市易县'),
(130634, 3, 130000, '河北省', 130600, '保定市', '曲阳县', '河北省保定市曲阳县'),
(130635, 3, 130000, '河北省', 130600, '保定市', '蠡县', '河北省保定市蠡县'),
(130636, 3, 130000, '河北省', 130600, '保定市', '顺平县', '河北省保定市顺平县'),
(130637, 3, 130000, '河北省', 130600, '保定市', '博野县', '河北省保定市博野县'),
(130638, 3, 130000, '河北省', 130600, '保定市', '雄县', '河北省保定市雄县'),
(130681, 3, 130000, '河北省', 130600, '保定市', '涿州市', '河北省保定市涿州市'),
(130682, 3, 130000, '河北省', 130600, '保定市', '定州市', '河北省保定市定州市'),
(130683, 3, 130000, '河北省', 130600, '保定市', '安国市', '河北省保定市安国市'),
(130684, 3, 130000, '河北省', 130600, '保定市', '高碑店市', '河北省保定市高碑店市'),
(130700, 2, 130000, '河北省', 0, '', '张家口市', '河北省张家口市'),
(130702, 3, 130000, '河北省', 130700, '张家口市', '桥东区', '河北省张家口市桥东区'),
(130703, 3, 130000, '河北省', 130700, '张家口市', '桥西区', '河北省张家口市桥西区'),
(130705, 3, 130000, '河北省', 130700, '张家口市', '宣化区', '河北省张家口市宣化区'),
(130706, 3, 130000, '河北省', 130700, '张家口市', '下花园区', '河北省张家口市下花园区'),
(130708, 3, 130000, '河北省', 130700, '张家口市', '万全区', '河北省张家口市万全区'),
(130709, 3, 130000, '河北省', 130700, '张家口市', '崇礼区', '河北省张家口市崇礼区'),
(130722, 3, 130000, '河北省', 130700, '张家口市', '张北县', '河北省张家口市张北县'),
(130723, 3, 130000, '河北省', 130700, '张家口市', '康保县', '河北省张家口市康保县'),
(130724, 3, 130000, '河北省', 130700, '张家口市', '沽源县', '河北省张家口市沽源县'),
(130725, 3, 130000, '河北省', 130700, '张家口市', '尚义县', '河北省张家口市尚义县'),
(130726, 3, 130000, '河北省', 130700, '张家口市', '蔚县', '河北省张家口市蔚县'),
(130727, 3, 130000, '河北省', 130700, '张家口市', '阳原县', '河北省张家口市阳原县'),
(130728, 3, 130000, '河北省', 130700, '张家口市', '怀安县', '河北省张家口市怀安县'),
(130730, 3, 130000, '河北省', 130700, '张家口市', '怀来县', '河北省张家口市怀来县'),
(130731, 3, 130000, '河北省', 130700, '张家口市', '涿鹿县', '河北省张家口市涿鹿县'),
(130732, 3, 130000, '河北省', 130700, '张家口市', '赤城县', '河北省张家口市赤城县'),
(130800, 2, 130000, '河北省', 0, '', '承德市', '河北省承德市'),
(130802, 3, 130000, '河北省', 130800, '承德市', '双桥区', '河北省承德市双桥区'),
(130803, 3, 130000, '河北省', 130800, '承德市', '双滦区', '河北省承德市双滦区'),
(130804, 3, 130000, '河北省', 130800, '承德市', '鹰手营子矿区', '河北省承德市鹰手营子矿区'),
(130821, 3, 130000, '河北省', 130800, '承德市', '承德县', '河北省承德市承德县'),
(130822, 3, 130000, '河北省', 130800, '承德市', '兴隆县', '河北省承德市兴隆县'),
(130824, 3, 130000, '河北省', 130800, '承德市', '滦平县', '河北省承德市滦平县'),
(130825, 3, 130000, '河北省', 130800, '承德市', '隆化县', '河北省承德市隆化县'),
(130826, 3, 130000, '河北省', 130800, '承德市', '丰宁满族自治县', '河北省承德市丰宁满族自治县'),
(130827, 3, 130000, '河北省', 130800, '承德市', '宽城满族自治县', '河北省承德市宽城满族自治县'),
(130828, 3, 130000, '河北省', 130800, '承德市', '围场满族蒙古族自治县', '河北省承德市围场满族蒙古族自治县'),
(130881, 3, 130000, '河北省', 130800, '承德市', '平泉市', '河北省承德市平泉市'),
(130900, 2, 130000, '河北省', 0, '', '沧州市', '河北省沧州市'),
(130902, 3, 130000, '河北省', 130900, '沧州市', '新华区', '河北省沧州市新华区'),
(130903, 3, 130000, '河北省', 130900, '沧州市', '运河区', '河北省沧州市运河区'),
(130921, 3, 130000, '河北省', 130900, '沧州市', '沧县', '河北省沧州市沧县'),
(130922, 3, 130000, '河北省', 130900, '沧州市', '青县', '河北省沧州市青县'),
(130923, 3, 130000, '河北省', 130900, '沧州市', '东光县', '河北省沧州市东光县'),
(130924, 3, 130000, '河北省', 130900, '沧州市', '海兴县', '河北省沧州市海兴县'),
(130925, 3, 130000, '河北省', 130900, '沧州市', '盐山县', '河北省沧州市盐山县'),
(130926, 3, 130000, '河北省', 130900, '沧州市', '肃宁县', '河北省沧州市肃宁县'),
(130927, 3, 130000, '河北省', 130900, '沧州市', '南皮县', '河北省沧州市南皮县'),
(130928, 3, 130000, '河北省', 130900, '沧州市', '吴桥县', '河北省沧州市吴桥县'),
(130929, 3, 130000, '河北省', 130900, '沧州市', '献县', '河北省沧州市献县'),
(130930, 3, 130000, '河北省', 130900, '沧州市', '孟村回族自治县', '河北省沧州市孟村回族自治县'),
(130981, 3, 130000, '河北省', 130900, '沧州市', '泊头市', '河北省沧州市泊头市'),
(130982, 3, 130000, '河北省', 130900, '沧州市', '任丘市', '河北省沧州市任丘市'),
(130983, 3, 130000, '河北省', 130900, '沧州市', '黄骅市', '河北省沧州市黄骅市'),
(130984, 3, 130000, '河北省', 130900, '沧州市', '河间市', '河北省沧州市河间市'),
(131000, 2, 130000, '河北省', 0, '', '廊坊市', '河北省廊坊市'),
(131002, 3, 130000, '河北省', 131000, '廊坊市', '安次区', '河北省廊坊市安次区'),
(131003, 3, 130000, '河北省', 131000, '廊坊市', '广阳区', '河北省廊坊市广阳区'),
(131022, 3, 130000, '河北省', 131000, '廊坊市', '固安县', '河北省廊坊市固安县'),
(131023, 3, 130000, '河北省', 131000, '廊坊市', '永清县', '河北省廊坊市永清县'),
(131024, 3, 130000, '河北省', 131000, '廊坊市', '香河县', '河北省廊坊市香河县'),
(131025, 3, 130000, '河北省', 131000, '廊坊市', '大城县', '河北省廊坊市大城县'),
(131026, 3, 130000, '河北省', 131000, '廊坊市', '文安县', '河北省廊坊市文安县'),
(131028, 3, 130000, '河北省', 131000, '廊坊市', '大厂回族自治县', '河北省廊坊市大厂回族自治县'),
(131081, 3, 130000, '河北省', 131000, '廊坊市', '霸州市', '河北省廊坊市霸州市'),
(131082, 3, 130000, '河北省', 131000, '廊坊市', '三河市', '河北省廊坊市三河市'),
(131100, 2, 130000, '河北省', 0, '', '衡水市', '河北省衡水市'),
(131102, 3, 130000, '河北省', 131100, '衡水市', '桃城区', '河北省衡水市桃城区'),
(131103, 3, 130000, '河北省', 131100, '衡水市', '冀州区', '河北省衡水市冀州区'),
(131121, 3, 130000, '河北省', 131100, '衡水市', '枣强县', '河北省衡水市枣强县'),
(131122, 3, 130000, '河北省', 131100, '衡水市', '武邑县', '河北省衡水市武邑县'),
(131123, 3, 130000, '河北省', 131100, '衡水市', '武强县', '河北省衡水市武强县'),
(131124, 3, 130000, '河北省', 131100, '衡水市', '饶阳县', '河北省衡水市饶阳县'),
(131125, 3, 130000, '河北省', 131100, '衡水市', '安平县', '河北省衡水市安平县'),
(131126, 3, 130000, '河北省', 131100, '衡水市', '故城县', '河北省衡水市故城县'),
(131127, 3, 130000, '河北省', 131100, '衡水市', '景县', '河北省衡水市景县'),
(131128, 3, 130000, '河北省', 131100, '衡水市', '阜城县', '河北省衡水市阜城县'),
(131182, 3, 130000, '河北省', 131100, '衡水市', '深州市', '河北省衡水市深州市'),
(140000, 1, 0, '', 0, '', '山西省', '山西省'),
(140100, 2, 140000, '山西省', 0, '', '太原市', '山西省太原市'),
(140105, 3, 140000, '山西省', 140100, '太原市', '小店区', '山西省太原市小店区'),
(140106, 3, 140000, '山西省', 140100, '太原市', '迎泽区', '山西省太原市迎泽区'),
(140107, 3, 140000, '山西省', 140100, '太原市', '杏花岭区', '山西省太原市杏花岭区'),
(140108, 3, 140000, '山西省', 140100, '太原市', '尖草坪区', '山西省太原市尖草坪区'),
(140109, 3, 140000, '山西省', 140100, '太原市', '万柏林区', '山西省太原市万柏林区'),
(140110, 3, 140000, '山西省', 140100, '太原市', '晋源区', '山西省太原市晋源区'),
(140121, 3, 140000, '山西省', 140100, '太原市', '清徐县', '山西省太原市清徐县'),
(140122, 3, 140000, '山西省', 140100, '太原市', '阳曲县', '山西省太原市阳曲县'),
(140123, 3, 140000, '山西省', 140100, '太原市', '娄烦县', '山西省太原市娄烦县'),
(140181, 3, 140000, '山西省', 140100, '太原市', '古交市', '山西省太原市古交市'),
(140200, 2, 140000, '山西省', 0, '', '大同市', '山西省大同市'),
(140202, 3, 140000, '山西省', 140200, '大同市', '城区', '山西省大同市城区'),
(140203, 3, 140000, '山西省', 140200, '大同市', '矿区', '山西省大同市矿区'),
(140211, 3, 140000, '山西省', 140200, '大同市', '南郊区', '山西省大同市南郊区'),
(140212, 3, 140000, '山西省', 140200, '大同市', '新荣区', '山西省大同市新荣区'),
(140221, 3, 140000, '山西省', 140200, '大同市', '阳高县', '山西省大同市阳高县'),
(140222, 3, 140000, '山西省', 140200, '大同市', '天镇县', '山西省大同市天镇县'),
(140223, 3, 140000, '山西省', 140200, '大同市', '广灵县', '山西省大同市广灵县'),
(140224, 3, 140000, '山西省', 140200, '大同市', '灵丘县', '山西省大同市灵丘县'),
(140225, 3, 140000, '山西省', 140200, '大同市', '浑源县', '山西省大同市浑源县'),
(140226, 3, 140000, '山西省', 140200, '大同市', '左云县', '山西省大同市左云县'),
(140227, 3, 140000, '山西省', 140200, '大同市', '大同县', '山西省大同市大同县'),
(140300, 2, 140000, '山西省', 0, '', '阳泉市', '山西省阳泉市'),
(140302, 3, 140000, '山西省', 140300, '阳泉市', '城区', '山西省阳泉市城区'),
(140303, 3, 140000, '山西省', 140300, '阳泉市', '矿区', '山西省阳泉市矿区'),
(140311, 3, 140000, '山西省', 140300, '阳泉市', '郊区', '山西省阳泉市郊区'),
(140321, 3, 140000, '山西省', 140300, '阳泉市', '平定县', '山西省阳泉市平定县'),
(140322, 3, 140000, '山西省', 140300, '阳泉市', '盂县', '山西省阳泉市盂县'),
(140400, 2, 140000, '山西省', 0, '', '长治市', '山西省长治市'),
(140402, 3, 140000, '山西省', 140400, '长治市', '城区', '山西省长治市城区'),
(140411, 3, 140000, '山西省', 140400, '长治市', '郊区', '山西省长治市郊区'),
(140421, 3, 140000, '山西省', 140400, '长治市', '长治县', '山西省长治市长治县'),
(140423, 3, 140000, '山西省', 140400, '长治市', '襄垣县', '山西省长治市襄垣县'),
(140424, 3, 140000, '山西省', 140400, '长治市', '屯留县', '山西省长治市屯留县'),
(140425, 3, 140000, '山西省', 140400, '长治市', '平顺县', '山西省长治市平顺县'),
(140426, 3, 140000, '山西省', 140400, '长治市', '黎城县', '山西省长治市黎城县'),
(140427, 3, 140000, '山西省', 140400, '长治市', '壶关县', '山西省长治市壶关县'),
(140428, 3, 140000, '山西省', 140400, '长治市', '长子县', '山西省长治市长子县'),
(140429, 3, 140000, '山西省', 140400, '长治市', '武乡县', '山西省长治市武乡县'),
(140430, 3, 140000, '山西省', 140400, '长治市', '沁县', '山西省长治市沁县'),
(140431, 3, 140000, '山西省', 140400, '长治市', '沁源县', '山西省长治市沁源县'),
(140481, 3, 140000, '山西省', 140400, '长治市', '潞城市', '山西省长治市潞城市'),
(140500, 2, 140000, '山西省', 0, '', '晋城市', '山西省晋城市'),
(140502, 3, 140000, '山西省', 140500, '晋城市', '城区', '山西省晋城市城区'),
(140521, 3, 140000, '山西省', 140500, '晋城市', '沁水县', '山西省晋城市沁水县'),
(140522, 3, 140000, '山西省', 140500, '晋城市', '阳城县', '山西省晋城市阳城县'),
(140524, 3, 140000, '山西省', 140500, '晋城市', '陵川县', '山西省晋城市陵川县'),
(140525, 3, 140000, '山西省', 140500, '晋城市', '泽州县', '山西省晋城市泽州县'),
(140581, 3, 140000, '山西省', 140500, '晋城市', '高平市', '山西省晋城市高平市'),
(140600, 2, 140000, '山西省', 0, '', '朔州市', '山西省朔州市'),
(140602, 3, 140000, '山西省', 140600, '朔州市', '朔城区', '山西省朔州市朔城区'),
(140603, 3, 140000, '山西省', 140600, '朔州市', '平鲁区', '山西省朔州市平鲁区'),
(140621, 3, 140000, '山西省', 140600, '朔州市', '山阴县', '山西省朔州市山阴县'),
(140622, 3, 140000, '山西省', 140600, '朔州市', '应县', '山西省朔州市应县'),
(140623, 3, 140000, '山西省', 140600, '朔州市', '右玉县', '山西省朔州市右玉县'),
(140624, 3, 140000, '山西省', 140600, '朔州市', '怀仁县', '山西省朔州市怀仁县'),
(140700, 2, 140000, '山西省', 0, '', '晋中市', '山西省晋中市'),
(140702, 3, 140000, '山西省', 140700, '晋中市', '榆次区', '山西省晋中市榆次区'),
(140721, 3, 140000, '山西省', 140700, '晋中市', '榆社县', '山西省晋中市榆社县'),
(140722, 3, 140000, '山西省', 140700, '晋中市', '左权县', '山西省晋中市左权县'),
(140723, 3, 140000, '山西省', 140700, '晋中市', '和顺县', '山西省晋中市和顺县'),
(140724, 3, 140000, '山西省', 140700, '晋中市', '昔阳县', '山西省晋中市昔阳县'),
(140725, 3, 140000, '山西省', 140700, '晋中市', '寿阳县', '山西省晋中市寿阳县'),
(140726, 3, 140000, '山西省', 140700, '晋中市', '太谷县', '山西省晋中市太谷县'),
(140727, 3, 140000, '山西省', 140700, '晋中市', '祁县', '山西省晋中市祁县'),
(140728, 3, 140000, '山西省', 140700, '晋中市', '平遥县', '山西省晋中市平遥县'),
(140729, 3, 140000, '山西省', 140700, '晋中市', '灵石县', '山西省晋中市灵石县'),
(140781, 3, 140000, '山西省', 140700, '晋中市', '介休市', '山西省晋中市介休市'),
(140800, 2, 140000, '山西省', 0, '', '运城市', '山西省运城市'),
(140802, 3, 140000, '山西省', 140800, '运城市', '盐湖区', '山西省运城市盐湖区'),
(140821, 3, 140000, '山西省', 140800, '运城市', '临猗县', '山西省运城市临猗县'),
(140822, 3, 140000, '山西省', 140800, '运城市', '万荣县', '山西省运城市万荣县'),
(140823, 3, 140000, '山西省', 140800, '运城市', '闻喜县', '山西省运城市闻喜县'),
(140824, 3, 140000, '山西省', 140800, '运城市', '稷山县', '山西省运城市稷山县'),
(140825, 3, 140000, '山西省', 140800, '运城市', '新绛县', '山西省运城市新绛县'),
(140826, 3, 140000, '山西省', 140800, '运城市', '绛县', '山西省运城市绛县'),
(140827, 3, 140000, '山西省', 140800, '运城市', '垣曲县', '山西省运城市垣曲县'),
(140828, 3, 140000, '山西省', 140800, '运城市', '夏县', '山西省运城市夏县'),
(140829, 3, 140000, '山西省', 140800, '运城市', '平陆县', '山西省运城市平陆县'),
(140830, 3, 140000, '山西省', 140800, '运城市', '芮城县', '山西省运城市芮城县'),
(140881, 3, 140000, '山西省', 140800, '运城市', '永济市', '山西省运城市永济市'),
(140882, 3, 140000, '山西省', 140800, '运城市', '河津市', '山西省运城市河津市'),
(140900, 2, 140000, '山西省', 0, '', '忻州市', '山西省忻州市'),
(140902, 3, 140000, '山西省', 140900, '忻州市', '忻府区', '山西省忻州市忻府区'),
(140921, 3, 140000, '山西省', 140900, '忻州市', '定襄县', '山西省忻州市定襄县'),
(140922, 3, 140000, '山西省', 140900, '忻州市', '五台县', '山西省忻州市五台县'),
(140923, 3, 140000, '山西省', 140900, '忻州市', '代县', '山西省忻州市代县'),
(140924, 3, 140000, '山西省', 140900, '忻州市', '繁峙县', '山西省忻州市繁峙县'),
(140925, 3, 140000, '山西省', 140900, '忻州市', '宁武县', '山西省忻州市宁武县'),
(140926, 3, 140000, '山西省', 140900, '忻州市', '静乐县', '山西省忻州市静乐县'),
(140927, 3, 140000, '山西省', 140900, '忻州市', '神池县', '山西省忻州市神池县'),
(140928, 3, 140000, '山西省', 140900, '忻州市', '五寨县', '山西省忻州市五寨县'),
(140929, 3, 140000, '山西省', 140900, '忻州市', '岢岚县', '山西省忻州市岢岚县'),
(140930, 3, 140000, '山西省', 140900, '忻州市', '河曲县', '山西省忻州市河曲县'),
(140931, 3, 140000, '山西省', 140900, '忻州市', '保德县', '山西省忻州市保德县'),
(140932, 3, 140000, '山西省', 140900, '忻州市', '偏关县', '山西省忻州市偏关县'),
(140981, 3, 140000, '山西省', 140900, '忻州市', '原平市', '山西省忻州市原平市'),
(141000, 2, 140000, '山西省', 0, '', '临汾市', '山西省临汾市'),
(141002, 3, 140000, '山西省', 141000, '临汾市', '尧都区', '山西省临汾市尧都区'),
(141021, 3, 140000, '山西省', 141000, '临汾市', '曲沃县', '山西省临汾市曲沃县'),
(141022, 3, 140000, '山西省', 141000, '临汾市', '翼城县', '山西省临汾市翼城县'),
(141023, 3, 140000, '山西省', 141000, '临汾市', '襄汾县', '山西省临汾市襄汾县'),
(141024, 3, 140000, '山西省', 141000, '临汾市', '洪洞县', '山西省临汾市洪洞县'),
(141025, 3, 140000, '山西省', 141000, '临汾市', '古县', '山西省临汾市古县'),
(141026, 3, 140000, '山西省', 141000, '临汾市', '安泽县', '山西省临汾市安泽县'),
(141027, 3, 140000, '山西省', 141000, '临汾市', '浮山县', '山西省临汾市浮山县'),
(141028, 3, 140000, '山西省', 141000, '临汾市', '吉县', '山西省临汾市吉县'),
(141029, 3, 140000, '山西省', 141000, '临汾市', '乡宁县', '山西省临汾市乡宁县'),
(141030, 3, 140000, '山西省', 141000, '临汾市', '大宁县', '山西省临汾市大宁县'),
(141031, 3, 140000, '山西省', 141000, '临汾市', '隰县', '山西省临汾市隰县'),
(141032, 3, 140000, '山西省', 141000, '临汾市', '永和县', '山西省临汾市永和县'),
(141033, 3, 140000, '山西省', 141000, '临汾市', '蒲县', '山西省临汾市蒲县'),
(141034, 3, 140000, '山西省', 141000, '临汾市', '汾西县', '山西省临汾市汾西县'),
(141081, 3, 140000, '山西省', 141000, '临汾市', '侯马市', '山西省临汾市侯马市'),
(141082, 3, 140000, '山西省', 141000, '临汾市', '霍州市', '山西省临汾市霍州市'),
(141100, 2, 140000, '山西省', 0, '', '吕梁市', '山西省吕梁市'),
(141102, 3, 140000, '山西省', 141100, '吕梁市', '离石区', '山西省吕梁市离石区'),
(141121, 3, 140000, '山西省', 141100, '吕梁市', '文水县', '山西省吕梁市文水县'),
(141122, 3, 140000, '山西省', 141100, '吕梁市', '交城县', '山西省吕梁市交城县'),
(141123, 3, 140000, '山西省', 141100, '吕梁市', '兴县', '山西省吕梁市兴县'),
(141124, 3, 140000, '山西省', 141100, '吕梁市', '临县', '山西省吕梁市临县'),
(141125, 3, 140000, '山西省', 141100, '吕梁市', '柳林县', '山西省吕梁市柳林县'),
(141126, 3, 140000, '山西省', 141100, '吕梁市', '石楼县', '山西省吕梁市石楼县'),
(141127, 3, 140000, '山西省', 141100, '吕梁市', '岚县', '山西省吕梁市岚县'),
(141128, 3, 140000, '山西省', 141100, '吕梁市', '方山县', '山西省吕梁市方山县'),
(141129, 3, 140000, '山西省', 141100, '吕梁市', '中阳县', '山西省吕梁市中阳县'),
(141130, 3, 140000, '山西省', 141100, '吕梁市', '交口县', '山西省吕梁市交口县'),
(141181, 3, 140000, '山西省', 141100, '吕梁市', '孝义市', '山西省吕梁市孝义市'),
(141182, 3, 140000, '山西省', 141100, '吕梁市', '汾阳市', '山西省吕梁市汾阳市'),
(150000, 1, 0, '', 0, '', '内蒙古自治区', '内蒙古自治区'),
(150100, 2, 150000, '内蒙古自治区', 0, '', '呼和浩特市', '内蒙古自治区呼和浩特市'),
(150102, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '新城区', '内蒙古自治区呼和浩特市新城区'),
(150103, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '回民区', '内蒙古自治区呼和浩特市回民区'),
(150104, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '玉泉区', '内蒙古自治区呼和浩特市玉泉区'),
(150105, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '赛罕区', '内蒙古自治区呼和浩特市赛罕区'),
(150121, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '土默特左旗', '内蒙古自治区呼和浩特市土默特左旗'),
(150122, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '托克托县', '内蒙古自治区呼和浩特市托克托县'),
(150123, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '和林格尔县', '内蒙古自治区呼和浩特市和林格尔县'),
(150124, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '清水河县', '内蒙古自治区呼和浩特市清水河县'),
(150125, 3, 150000, '内蒙古自治区', 150100, '呼和浩特市', '武川县', '内蒙古自治区呼和浩特市武川县'),
(150200, 2, 150000, '内蒙古自治区', 0, '', '包头市', '内蒙古自治区包头市'),
(150202, 3, 150000, '内蒙古自治区', 150200, '包头市', '东河区', '内蒙古自治区包头市东河区'),
(150203, 3, 150000, '内蒙古自治区', 150200, '包头市', '昆都仑区', '内蒙古自治区包头市昆都仑区'),
(150204, 3, 150000, '内蒙古自治区', 150200, '包头市', '青山区', '内蒙古自治区包头市青山区'),
(150205, 3, 150000, '内蒙古自治区', 150200, '包头市', '石拐区', '内蒙古自治区包头市石拐区'),
(150206, 3, 150000, '内蒙古自治区', 150200, '包头市', '白云鄂博矿区', '内蒙古自治区包头市白云鄂博矿区'),
(150207, 3, 150000, '内蒙古自治区', 150200, '包头市', '九原区', '内蒙古自治区包头市九原区'),
(150221, 3, 150000, '内蒙古自治区', 150200, '包头市', '土默特右旗', '内蒙古自治区包头市土默特右旗'),
(150222, 3, 150000, '内蒙古自治区', 150200, '包头市', '固阳县', '内蒙古自治区包头市固阳县'),
(150223, 3, 150000, '内蒙古自治区', 150200, '包头市', '达尔罕茂明安联合旗', '内蒙古自治区包头市达尔罕茂明安联合旗'),
(150300, 2, 150000, '内蒙古自治区', 0, '', '乌海市', '内蒙古自治区乌海市'),
(150302, 3, 150000, '内蒙古自治区', 150300, '乌海市', '海勃湾区', '内蒙古自治区乌海市海勃湾区'),
(150303, 3, 150000, '内蒙古自治区', 150300, '乌海市', '海南区', '内蒙古自治区乌海市海南区'),
(150304, 3, 150000, '内蒙古自治区', 150300, '乌海市', '乌达区', '内蒙古自治区乌海市乌达区'),
(150400, 2, 150000, '内蒙古自治区', 0, '', '赤峰市', '内蒙古自治区赤峰市'),
(150402, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '红山区', '内蒙古自治区赤峰市红山区'),
(150403, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '元宝山区', '内蒙古自治区赤峰市元宝山区'),
(150404, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '松山区', '内蒙古自治区赤峰市松山区'),
(150421, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '阿鲁科尔沁旗', '内蒙古自治区赤峰市阿鲁科尔沁旗'),
(150422, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '巴林左旗', '内蒙古自治区赤峰市巴林左旗'),
(150423, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '巴林右旗', '内蒙古自治区赤峰市巴林右旗'),
(150424, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '林西县', '内蒙古自治区赤峰市林西县'),
(150425, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '克什克腾旗', '内蒙古自治区赤峰市克什克腾旗'),
(150426, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '翁牛特旗', '内蒙古自治区赤峰市翁牛特旗'),
(150428, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '喀喇沁旗', '内蒙古自治区赤峰市喀喇沁旗'),
(150429, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '宁城县', '内蒙古自治区赤峰市宁城县'),
(150430, 3, 150000, '内蒙古自治区', 150400, '赤峰市', '敖汉旗', '内蒙古自治区赤峰市敖汉旗'),
(150500, 2, 150000, '内蒙古自治区', 0, '', '通辽市', '内蒙古自治区通辽市'),
(150502, 3, 150000, '内蒙古自治区', 150500, '通辽市', '科尔沁区', '内蒙古自治区通辽市科尔沁区'),
(150521, 3, 150000, '内蒙古自治区', 150500, '通辽市', '科尔沁左翼中旗', '内蒙古自治区通辽市科尔沁左翼中旗'),
(150522, 3, 150000, '内蒙古自治区', 150500, '通辽市', '科尔沁左翼后旗', '内蒙古自治区通辽市科尔沁左翼后旗'),
(150523, 3, 150000, '内蒙古自治区', 150500, '通辽市', '开鲁县', '内蒙古自治区通辽市开鲁县'),
(150524, 3, 150000, '内蒙古自治区', 150500, '通辽市', '库伦旗', '内蒙古自治区通辽市库伦旗'),
(150525, 3, 150000, '内蒙古自治区', 150500, '通辽市', '奈曼旗', '内蒙古自治区通辽市奈曼旗'),
(150526, 3, 150000, '内蒙古自治区', 150500, '通辽市', '扎鲁特旗', '内蒙古自治区通辽市扎鲁特旗'),
(150581, 3, 150000, '内蒙古自治区', 150500, '通辽市', '霍林郭勒市', '内蒙古自治区通辽市霍林郭勒市'),
(150600, 2, 150000, '内蒙古自治区', 0, '', '鄂尔多斯市', '内蒙古自治区鄂尔多斯市'),
(150602, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '东胜区', '内蒙古自治区鄂尔多斯市东胜区'),
(150603, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '康巴什区', '内蒙古自治区鄂尔多斯市康巴什区'),
(150621, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '达拉特旗', '内蒙古自治区鄂尔多斯市达拉特旗'),
(150622, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '准格尔旗', '内蒙古自治区鄂尔多斯市准格尔旗'),
(150623, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '鄂托克前旗', '内蒙古自治区鄂尔多斯市鄂托克前旗'),
(150624, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '鄂托克旗', '内蒙古自治区鄂尔多斯市鄂托克旗'),
(150625, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '杭锦旗', '内蒙古自治区鄂尔多斯市杭锦旗'),
(150626, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '乌审旗', '内蒙古自治区鄂尔多斯市乌审旗'),
(150627, 3, 150000, '内蒙古自治区', 150600, '鄂尔多斯市', '伊金霍洛旗', '内蒙古自治区鄂尔多斯市伊金霍洛旗'),
(150700, 2, 150000, '内蒙古自治区', 0, '', '呼伦贝尔市', '内蒙古自治区呼伦贝尔市'),
(150702, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '海拉尔区', '内蒙古自治区呼伦贝尔市海拉尔区'),
(150703, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '扎赉诺尔区', '内蒙古自治区呼伦贝尔市扎赉诺尔区'),
(150721, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '阿荣旗', '内蒙古自治区呼伦贝尔市阿荣旗'),
(150722, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '莫力达瓦达斡尔族自治旗', '内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族自治旗'),
(150723, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '鄂伦春自治旗', '内蒙古自治区呼伦贝尔市鄂伦春自治旗'),
(150724, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '鄂温克族自治旗', '内蒙古自治区呼伦贝尔市鄂温克族自治旗'),
(150725, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '陈巴尔虎旗', '内蒙古自治区呼伦贝尔市陈巴尔虎旗'),
(150726, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '新巴尔虎左旗', '内蒙古自治区呼伦贝尔市新巴尔虎左旗'),
(150727, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '新巴尔虎右旗', '内蒙古自治区呼伦贝尔市新巴尔虎右旗'),
(150781, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '满洲里市', '内蒙古自治区呼伦贝尔市满洲里市'),
(150782, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '牙克石市', '内蒙古自治区呼伦贝尔市牙克石市'),
(150783, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '扎兰屯市', '内蒙古自治区呼伦贝尔市扎兰屯市'),
(150784, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '额尔古纳市', '内蒙古自治区呼伦贝尔市额尔古纳市'),
(150785, 3, 150000, '内蒙古自治区', 150700, '呼伦贝尔市', '根河市', '内蒙古自治区呼伦贝尔市根河市'),
(150800, 2, 150000, '内蒙古自治区', 0, '', '巴彦淖尔市', '内蒙古自治区巴彦淖尔市'),
(150802, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '临河区', '内蒙古自治区巴彦淖尔市临河区'),
(150821, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '五原县', '内蒙古自治区巴彦淖尔市五原县'),
(150822, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '磴口县', '内蒙古自治区巴彦淖尔市磴口县'),
(150823, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '乌拉特前旗', '内蒙古自治区巴彦淖尔市乌拉特前旗'),
(150824, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '乌拉特中旗', '内蒙古自治区巴彦淖尔市乌拉特中旗'),
(150825, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '乌拉特后旗', '内蒙古自治区巴彦淖尔市乌拉特后旗'),
(150826, 3, 150000, '内蒙古自治区', 150800, '巴彦淖尔市', '杭锦后旗', '内蒙古自治区巴彦淖尔市杭锦后旗'),
(150900, 2, 150000, '内蒙古自治区', 0, '', '乌兰察布市', '内蒙古自治区乌兰察布市'),
(150902, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '集宁区', '内蒙古自治区乌兰察布市集宁区'),
(150921, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '卓资县', '内蒙古自治区乌兰察布市卓资县'),
(150922, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '化德县', '内蒙古自治区乌兰察布市化德县'),
(150923, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '商都县', '内蒙古自治区乌兰察布市商都县'),
(150924, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '兴和县', '内蒙古自治区乌兰察布市兴和县'),
(150925, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '凉城县', '内蒙古自治区乌兰察布市凉城县'),
(150926, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '察哈尔右翼前旗', '内蒙古自治区乌兰察布市察哈尔右翼前旗'),
(150927, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '察哈尔右翼中旗', '内蒙古自治区乌兰察布市察哈尔右翼中旗'),
(150928, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '察哈尔右翼后旗', '内蒙古自治区乌兰察布市察哈尔右翼后旗'),
(150929, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '四子王旗', '内蒙古自治区乌兰察布市四子王旗'),
(150981, 3, 150000, '内蒙古自治区', 150900, '乌兰察布市', '丰镇市', '内蒙古自治区乌兰察布市丰镇市'),
(152200, 2, 150000, '内蒙古自治区', 0, '', '兴安盟', '内蒙古自治区兴安盟'),
(152201, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '乌兰浩特市', '内蒙古自治区兴安盟乌兰浩特市'),
(152202, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '阿尔山市', '内蒙古自治区兴安盟阿尔山市'),
(152221, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '科尔沁右翼前旗', '内蒙古自治区兴安盟科尔沁右翼前旗'),
(152222, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '科尔沁右翼中旗', '内蒙古自治区兴安盟科尔沁右翼中旗'),
(152223, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '扎赉特旗', '内蒙古自治区兴安盟扎赉特旗'),
(152224, 3, 150000, '内蒙古自治区', 152200, '兴安盟', '突泉县', '内蒙古自治区兴安盟突泉县'),
(152500, 2, 150000, '内蒙古自治区', 0, '', '锡林郭勒盟', '内蒙古自治区锡林郭勒盟'),
(152501, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '二连浩特市', '内蒙古自治区锡林郭勒盟二连浩特市'),
(152502, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '锡林浩特市', '内蒙古自治区锡林郭勒盟锡林浩特市'),
(152522, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '阿巴嘎旗', '内蒙古自治区锡林郭勒盟阿巴嘎旗'),
(152523, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '苏尼特左旗', '内蒙古自治区锡林郭勒盟苏尼特左旗'),
(152524, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '苏尼特右旗', '内蒙古自治区锡林郭勒盟苏尼特右旗'),
(152525, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '东乌珠穆沁旗', '内蒙古自治区锡林郭勒盟东乌珠穆沁旗'),
(152526, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '西乌珠穆沁旗', '内蒙古自治区锡林郭勒盟西乌珠穆沁旗'),
(152527, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '太仆寺旗', '内蒙古自治区锡林郭勒盟太仆寺旗'),
(152528, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '镶黄旗', '内蒙古自治区锡林郭勒盟镶黄旗'),
(152529, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '正镶白旗', '内蒙古自治区锡林郭勒盟正镶白旗'),
(152530, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '正蓝旗', '内蒙古自治区锡林郭勒盟正蓝旗'),
(152531, 3, 150000, '内蒙古自治区', 152500, '锡林郭勒盟', '多伦县', '内蒙古自治区锡林郭勒盟多伦县'),
(152900, 2, 150000, '内蒙古自治区', 0, '', '阿拉善盟', '内蒙古自治区阿拉善盟'),
(152921, 3, 150000, '内蒙古自治区', 152900, '阿拉善盟', '阿拉善左旗', '内蒙古自治区阿拉善盟阿拉善左旗'),
(152922, 3, 150000, '内蒙古自治区', 152900, '阿拉善盟', '阿拉善右旗', '内蒙古自治区阿拉善盟阿拉善右旗'),
(152923, 3, 150000, '内蒙古自治区', 152900, '阿拉善盟', '额济纳旗', '内蒙古自治区阿拉善盟额济纳旗'),
(210000, 1, 0, '', 0, '', '辽宁省', '辽宁省'),
(210100, 2, 210000, '辽宁省', 0, '', '沈阳市', '辽宁省沈阳市'),
(210102, 3, 210000, '辽宁省', 210100, '沈阳市', '和平区', '辽宁省沈阳市和平区'),
(210103, 3, 210000, '辽宁省', 210100, '沈阳市', '沈河区', '辽宁省沈阳市沈河区'),
(210104, 3, 210000, '辽宁省', 210100, '沈阳市', '大东区', '辽宁省沈阳市大东区'),
(210105, 3, 210000, '辽宁省', 210100, '沈阳市', '皇姑区', '辽宁省沈阳市皇姑区'),
(210106, 3, 210000, '辽宁省', 210100, '沈阳市', '铁西区', '辽宁省沈阳市铁西区'),
(210111, 3, 210000, '辽宁省', 210100, '沈阳市', '苏家屯区', '辽宁省沈阳市苏家屯区'),
(210112, 3, 210000, '辽宁省', 210100, '沈阳市', '浑南区', '辽宁省沈阳市浑南区'),
(210113, 3, 210000, '辽宁省', 210100, '沈阳市', '沈北新区', '辽宁省沈阳市沈北新区'),
(210114, 3, 210000, '辽宁省', 210100, '沈阳市', '于洪区', '辽宁省沈阳市于洪区'),
(210115, 3, 210000, '辽宁省', 210100, '沈阳市', '辽中区', '辽宁省沈阳市辽中区'),
(210123, 3, 210000, '辽宁省', 210100, '沈阳市', '康平县', '辽宁省沈阳市康平县'),
(210124, 3, 210000, '辽宁省', 210100, '沈阳市', '法库县', '辽宁省沈阳市法库县'),
(210181, 3, 210000, '辽宁省', 210100, '沈阳市', '新民市', '辽宁省沈阳市新民市'),
(210200, 2, 210000, '辽宁省', 0, '', '大连市', '辽宁省大连市'),
(210202, 3, 210000, '辽宁省', 210200, '大连市', '中山区', '辽宁省大连市中山区'),
(210203, 3, 210000, '辽宁省', 210200, '大连市', '西岗区', '辽宁省大连市西岗区'),
(210204, 3, 210000, '辽宁省', 210200, '大连市', '沙河口区', '辽宁省大连市沙河口区'),
(210211, 3, 210000, '辽宁省', 210200, '大连市', '甘井子区', '辽宁省大连市甘井子区'),
(210212, 3, 210000, '辽宁省', 210200, '大连市', '旅顺口区', '辽宁省大连市旅顺口区'),
(210213, 3, 210000, '辽宁省', 210200, '大连市', '金州区', '辽宁省大连市金州区'),
(210214, 3, 210000, '辽宁省', 210200, '大连市', '普兰店区', '辽宁省大连市普兰店区'),
(210224, 3, 210000, '辽宁省', 210200, '大连市', '长海县', '辽宁省大连市长海县'),
(210281, 3, 210000, '辽宁省', 210200, '大连市', '瓦房店市', '辽宁省大连市瓦房店市'),
(210283, 3, 210000, '辽宁省', 210200, '大连市', '庄河市', '辽宁省大连市庄河市'),
(210300, 2, 210000, '辽宁省', 0, '', '鞍山市', '辽宁省鞍山市'),
(210302, 3, 210000, '辽宁省', 210300, '鞍山市', '铁东区', '辽宁省鞍山市铁东区'),
(210303, 3, 210000, '辽宁省', 210300, '鞍山市', '铁西区', '辽宁省鞍山市铁西区'),
(210304, 3, 210000, '辽宁省', 210300, '鞍山市', '立山区', '辽宁省鞍山市立山区'),
(210311, 3, 210000, '辽宁省', 210300, '鞍山市', '千山区', '辽宁省鞍山市千山区'),
(210321, 3, 210000, '辽宁省', 210300, '鞍山市', '台安县', '辽宁省鞍山市台安县'),
(210323, 3, 210000, '辽宁省', 210300, '鞍山市', '岫岩满族自治县', '辽宁省鞍山市岫岩满族自治县'),
(210381, 3, 210000, '辽宁省', 210300, '鞍山市', '海城市', '辽宁省鞍山市海城市'),
(210400, 2, 210000, '辽宁省', 0, '', '抚顺市', '辽宁省抚顺市'),
(210402, 3, 210000, '辽宁省', 210400, '抚顺市', '新抚区', '辽宁省抚顺市新抚区'),
(210403, 3, 210000, '辽宁省', 210400, '抚顺市', '东洲区', '辽宁省抚顺市东洲区'),
(210404, 3, 210000, '辽宁省', 210400, '抚顺市', '望花区', '辽宁省抚顺市望花区'),
(210411, 3, 210000, '辽宁省', 210400, '抚顺市', '顺城区', '辽宁省抚顺市顺城区'),
(210421, 3, 210000, '辽宁省', 210400, '抚顺市', '抚顺县', '辽宁省抚顺市抚顺县'),
(210422, 3, 210000, '辽宁省', 210400, '抚顺市', '新宾满族自治县', '辽宁省抚顺市新宾满族自治县'),
(210423, 3, 210000, '辽宁省', 210400, '抚顺市', '清原满族自治县', '辽宁省抚顺市清原满族自治县'),
(210500, 2, 210000, '辽宁省', 0, '', '本溪市', '辽宁省本溪市'),
(210502, 3, 210000, '辽宁省', 210500, '本溪市', '平山区', '辽宁省本溪市平山区'),
(210503, 3, 210000, '辽宁省', 210500, '本溪市', '溪湖区', '辽宁省本溪市溪湖区'),
(210504, 3, 210000, '辽宁省', 210500, '本溪市', '明山区', '辽宁省本溪市明山区'),
(210505, 3, 210000, '辽宁省', 210500, '本溪市', '南芬区', '辽宁省本溪市南芬区'),
(210521, 3, 210000, '辽宁省', 210500, '本溪市', '本溪满族自治县', '辽宁省本溪市本溪满族自治县'),
(210522, 3, 210000, '辽宁省', 210500, '本溪市', '桓仁满族自治县', '辽宁省本溪市桓仁满族自治县'),
(210600, 2, 210000, '辽宁省', 0, '', '丹东市', '辽宁省丹东市'),
(210602, 3, 210000, '辽宁省', 210600, '丹东市', '元宝区', '辽宁省丹东市元宝区'),
(210603, 3, 210000, '辽宁省', 210600, '丹东市', '振兴区', '辽宁省丹东市振兴区'),
(210604, 3, 210000, '辽宁省', 210600, '丹东市', '振安区', '辽宁省丹东市振安区'),
(210624, 3, 210000, '辽宁省', 210600, '丹东市', '宽甸满族自治县', '辽宁省丹东市宽甸满族自治县'),
(210681, 3, 210000, '辽宁省', 210600, '丹东市', '东港市', '辽宁省丹东市东港市'),
(210682, 3, 210000, '辽宁省', 210600, '丹东市', '凤城市', '辽宁省丹东市凤城市'),
(210700, 2, 210000, '辽宁省', 0, '', '锦州市', '辽宁省锦州市'),
(210702, 3, 210000, '辽宁省', 210700, '锦州市', '古塔区', '辽宁省锦州市古塔区'),
(210703, 3, 210000, '辽宁省', 210700, '锦州市', '凌河区', '辽宁省锦州市凌河区'),
(210711, 3, 210000, '辽宁省', 210700, '锦州市', '太和区', '辽宁省锦州市太和区'),
(210726, 3, 210000, '辽宁省', 210700, '锦州市', '黑山县', '辽宁省锦州市黑山县'),
(210727, 3, 210000, '辽宁省', 210700, '锦州市', '义县', '辽宁省锦州市义县'),
(210781, 3, 210000, '辽宁省', 210700, '锦州市', '凌海市', '辽宁省锦州市凌海市'),
(210782, 3, 210000, '辽宁省', 210700, '锦州市', '北镇市', '辽宁省锦州市北镇市'),
(210800, 2, 210000, '辽宁省', 0, '', '营口市', '辽宁省营口市'),
(210802, 3, 210000, '辽宁省', 210800, '营口市', '站前区', '辽宁省营口市站前区'),
(210803, 3, 210000, '辽宁省', 210800, '营口市', '西市区', '辽宁省营口市西市区'),
(210804, 3, 210000, '辽宁省', 210800, '营口市', '鲅鱼圈区', '辽宁省营口市鲅鱼圈区'),
(210811, 3, 210000, '辽宁省', 210800, '营口市', '老边区', '辽宁省营口市老边区'),
(210881, 3, 210000, '辽宁省', 210800, '营口市', '盖州市', '辽宁省营口市盖州市'),
(210882, 3, 210000, '辽宁省', 210800, '营口市', '大石桥市', '辽宁省营口市大石桥市'),
(210900, 2, 210000, '辽宁省', 0, '', '阜新市', '辽宁省阜新市'),
(210902, 3, 210000, '辽宁省', 210900, '阜新市', '海州区', '辽宁省阜新市海州区'),
(210903, 3, 210000, '辽宁省', 210900, '阜新市', '新邱区', '辽宁省阜新市新邱区'),
(210904, 3, 210000, '辽宁省', 210900, '阜新市', '太平区', '辽宁省阜新市太平区'),
(210905, 3, 210000, '辽宁省', 210900, '阜新市', '清河门区', '辽宁省阜新市清河门区'),
(210911, 3, 210000, '辽宁省', 210900, '阜新市', '细河区', '辽宁省阜新市细河区'),
(210921, 3, 210000, '辽宁省', 210900, '阜新市', '阜新蒙古族自治县', '辽宁省阜新市阜新蒙古族自治县'),
(210922, 3, 210000, '辽宁省', 210900, '阜新市', '彰武县', '辽宁省阜新市彰武县'),
(211000, 2, 210000, '辽宁省', 0, '', '辽阳市', '辽宁省辽阳市'),
(211002, 3, 210000, '辽宁省', 211000, '辽阳市', '白塔区', '辽宁省辽阳市白塔区'),
(211003, 3, 210000, '辽宁省', 211000, '辽阳市', '文圣区', '辽宁省辽阳市文圣区'),
(211004, 3, 210000, '辽宁省', 211000, '辽阳市', '宏伟区', '辽宁省辽阳市宏伟区'),
(211005, 3, 210000, '辽宁省', 211000, '辽阳市', '弓长岭区', '辽宁省辽阳市弓长岭区'),
(211011, 3, 210000, '辽宁省', 211000, '辽阳市', '太子河区', '辽宁省辽阳市太子河区'),
(211021, 3, 210000, '辽宁省', 211000, '辽阳市', '辽阳县', '辽宁省辽阳市辽阳县'),
(211081, 3, 210000, '辽宁省', 211000, '辽阳市', '灯塔市', '辽宁省辽阳市灯塔市'),
(211100, 2, 210000, '辽宁省', 0, '', '盘锦市', '辽宁省盘锦市'),
(211102, 3, 210000, '辽宁省', 211100, '盘锦市', '双台子区', '辽宁省盘锦市双台子区'),
(211103, 3, 210000, '辽宁省', 211100, '盘锦市', '兴隆台区', '辽宁省盘锦市兴隆台区'),
(211104, 3, 210000, '辽宁省', 211100, '盘锦市', '大洼区', '辽宁省盘锦市大洼区'),
(211122, 3, 210000, '辽宁省', 211100, '盘锦市', '盘山县', '辽宁省盘锦市盘山县'),
(211200, 2, 210000, '辽宁省', 0, '', '铁岭市', '辽宁省铁岭市'),
(211202, 3, 210000, '辽宁省', 211200, '铁岭市', '银州区', '辽宁省铁岭市银州区'),
(211204, 3, 210000, '辽宁省', 211200, '铁岭市', '清河区', '辽宁省铁岭市清河区'),
(211221, 3, 210000, '辽宁省', 211200, '铁岭市', '铁岭县', '辽宁省铁岭市铁岭县'),
(211223, 3, 210000, '辽宁省', 211200, '铁岭市', '西丰县', '辽宁省铁岭市西丰县'),
(211224, 3, 210000, '辽宁省', 211200, '铁岭市', '昌图县', '辽宁省铁岭市昌图县'),
(211281, 3, 210000, '辽宁省', 211200, '铁岭市', '调兵山市', '辽宁省铁岭市调兵山市'),
(211282, 3, 210000, '辽宁省', 211200, '铁岭市', '开原市', '辽宁省铁岭市开原市'),
(211300, 2, 210000, '辽宁省', 0, '', '朝阳市', '辽宁省朝阳市'),
(211302, 3, 210000, '辽宁省', 211300, '朝阳市', '双塔区', '辽宁省朝阳市双塔区'),
(211303, 3, 210000, '辽宁省', 211300, '朝阳市', '龙城区', '辽宁省朝阳市龙城区'),
(211321, 3, 210000, '辽宁省', 211300, '朝阳市', '朝阳县', '辽宁省朝阳市朝阳县'),
(211322, 3, 210000, '辽宁省', 211300, '朝阳市', '建平县', '辽宁省朝阳市建平县'),
(211324, 3, 210000, '辽宁省', 211300, '朝阳市', '喀喇沁左翼蒙古族自治县', '辽宁省朝阳市喀喇沁左翼蒙古族自治县'),
(211381, 3, 210000, '辽宁省', 211300, '朝阳市', '北票市', '辽宁省朝阳市北票市'),
(211382, 3, 210000, '辽宁省', 211300, '朝阳市', '凌源市', '辽宁省朝阳市凌源市'),
(211400, 2, 210000, '辽宁省', 0, '', '葫芦岛市', '辽宁省葫芦岛市'),
(211402, 3, 210000, '辽宁省', 211400, '葫芦岛市', '连山区', '辽宁省葫芦岛市连山区'),
(211403, 3, 210000, '辽宁省', 211400, '葫芦岛市', '龙港区', '辽宁省葫芦岛市龙港区'),
(211404, 3, 210000, '辽宁省', 211400, '葫芦岛市', '南票区', '辽宁省葫芦岛市南票区'),
(211421, 3, 210000, '辽宁省', 211400, '葫芦岛市', '绥中县', '辽宁省葫芦岛市绥中县'),
(211422, 3, 210000, '辽宁省', 211400, '葫芦岛市', '建昌县', '辽宁省葫芦岛市建昌县'),
(211481, 3, 210000, '辽宁省', 211400, '葫芦岛市', '兴城市', '辽宁省葫芦岛市兴城市'),
(220000, 1, 0, '', 0, '', '吉林省', '吉林省'),
(220100, 2, 220000, '吉林省', 0, '', '长春市', '吉林省长春市'),
(220102, 3, 220000, '吉林省', 220100, '长春市', '南关区', '吉林省长春市南关区'),
(220103, 3, 220000, '吉林省', 220100, '长春市', '宽城区', '吉林省长春市宽城区'),
(220104, 3, 220000, '吉林省', 220100, '长春市', '朝阳区', '吉林省长春市朝阳区'),
(220105, 3, 220000, '吉林省', 220100, '长春市', '二道区', '吉林省长春市二道区'),
(220106, 3, 220000, '吉林省', 220100, '长春市', '绿园区', '吉林省长春市绿园区'),
(220112, 3, 220000, '吉林省', 220100, '长春市', '双阳区', '吉林省长春市双阳区'),
(220113, 3, 220000, '吉林省', 220100, '长春市', '九台区', '吉林省长春市九台区'),
(220122, 3, 220000, '吉林省', 220100, '长春市', '农安县', '吉林省长春市农安县'),
(220182, 3, 220000, '吉林省', 220100, '长春市', '榆树市', '吉林省长春市榆树市'),
(220183, 3, 220000, '吉林省', 220100, '长春市', '德惠市', '吉林省长春市德惠市'),
(220200, 2, 220000, '吉林省', 0, '', '吉林市', '吉林省吉林市'),
(220202, 3, 220000, '吉林省', 220200, '吉林市', '昌邑区', '吉林省吉林市昌邑区'),
(220203, 3, 220000, '吉林省', 220200, '吉林市', '龙潭区', '吉林省吉林市龙潭区'),
(220204, 3, 220000, '吉林省', 220200, '吉林市', '船营区', '吉林省吉林市船营区'),
(220211, 3, 220000, '吉林省', 220200, '吉林市', '丰满区', '吉林省吉林市丰满区'),
(220221, 3, 220000, '吉林省', 220200, '吉林市', '永吉县', '吉林省吉林市永吉县'),
(220281, 3, 220000, '吉林省', 220200, '吉林市', '蛟河市', '吉林省吉林市蛟河市'),
(220282, 3, 220000, '吉林省', 220200, '吉林市', '桦甸市', '吉林省吉林市桦甸市'),
(220283, 3, 220000, '吉林省', 220200, '吉林市', '舒兰市', '吉林省吉林市舒兰市'),
(220284, 3, 220000, '吉林省', 220200, '吉林市', '磐石市', '吉林省吉林市磐石市'),
(220300, 2, 220000, '吉林省', 0, '', '四平市', '吉林省四平市'),
(220302, 3, 220000, '吉林省', 220300, '四平市', '铁西区', '吉林省四平市铁西区'),
(220303, 3, 220000, '吉林省', 220300, '四平市', '铁东区', '吉林省四平市铁东区'),
(220322, 3, 220000, '吉林省', 220300, '四平市', '梨树县', '吉林省四平市梨树县'),
(220323, 3, 220000, '吉林省', 220300, '四平市', '伊通满族自治县', '吉林省四平市伊通满族自治县'),
(220381, 3, 220000, '吉林省', 220300, '四平市', '公主岭市', '吉林省四平市公主岭市'),
(220382, 3, 220000, '吉林省', 220300, '四平市', '双辽市', '吉林省四平市双辽市'),
(220400, 2, 220000, '吉林省', 0, '', '辽源市', '吉林省辽源市'),
(220402, 3, 220000, '吉林省', 220400, '辽源市', '龙山区', '吉林省辽源市龙山区'),
(220403, 3, 220000, '吉林省', 220400, '辽源市', '西安区', '吉林省辽源市西安区'),
(220421, 3, 220000, '吉林省', 220400, '辽源市', '东丰县', '吉林省辽源市东丰县'),
(220422, 3, 220000, '吉林省', 220400, '辽源市', '东辽县', '吉林省辽源市东辽县'),
(220500, 2, 220000, '吉林省', 0, '', '通化市', '吉林省通化市'),
(220502, 3, 220000, '吉林省', 220500, '通化市', '东昌区', '吉林省通化市东昌区'),
(220503, 3, 220000, '吉林省', 220500, '通化市', '二道江区', '吉林省通化市二道江区'),
(220521, 3, 220000, '吉林省', 220500, '通化市', '通化县', '吉林省通化市通化县'),
(220523, 3, 220000, '吉林省', 220500, '通化市', '辉南县', '吉林省通化市辉南县'),
(220524, 3, 220000, '吉林省', 220500, '通化市', '柳河县', '吉林省通化市柳河县'),
(220581, 3, 220000, '吉林省', 220500, '通化市', '梅河口市', '吉林省通化市梅河口市'),
(220582, 3, 220000, '吉林省', 220500, '通化市', '集安市', '吉林省通化市集安市'),
(220600, 2, 220000, '吉林省', 0, '', '白山市', '吉林省白山市'),
(220602, 3, 220000, '吉林省', 220600, '白山市', '浑江区', '吉林省白山市浑江区'),
(220605, 3, 220000, '吉林省', 220600, '白山市', '江源区', '吉林省白山市江源区'),
(220621, 3, 220000, '吉林省', 220600, '白山市', '抚松县', '吉林省白山市抚松县'),
(220622, 3, 220000, '吉林省', 220600, '白山市', '靖宇县', '吉林省白山市靖宇县'),
(220623, 3, 220000, '吉林省', 220600, '白山市', '长白朝鲜族自治县', '吉林省白山市长白朝鲜族自治县'),
(220681, 3, 220000, '吉林省', 220600, '白山市', '临江市', '吉林省白山市临江市'),
(220700, 2, 220000, '吉林省', 0, '', '松原市', '吉林省松原市'),
(220702, 3, 220000, '吉林省', 220700, '松原市', '宁江区', '吉林省松原市宁江区'),
(220721, 3, 220000, '吉林省', 220700, '松原市', '前郭尔罗斯蒙古族自治县', '吉林省松原市前郭尔罗斯蒙古族自治县'),
(220722, 3, 220000, '吉林省', 220700, '松原市', '长岭县', '吉林省松原市长岭县'),
(220723, 3, 220000, '吉林省', 220700, '松原市', '乾安县', '吉林省松原市乾安县'),
(220781, 3, 220000, '吉林省', 220700, '松原市', '扶余市', '吉林省松原市扶余市'),
(220800, 2, 220000, '吉林省', 0, '', '白城市', '吉林省白城市'),
(220802, 3, 220000, '吉林省', 220800, '白城市', '洮北区', '吉林省白城市洮北区'),
(220821, 3, 220000, '吉林省', 220800, '白城市', '镇赉县', '吉林省白城市镇赉县'),
(220822, 3, 220000, '吉林省', 220800, '白城市', '通榆县', '吉林省白城市通榆县'),
(220881, 3, 220000, '吉林省', 220800, '白城市', '洮南市', '吉林省白城市洮南市'),
(220882, 3, 220000, '吉林省', 220800, '白城市', '大安市', '吉林省白城市大安市'),
(222400, 2, 220000, '吉林省', 0, '', '延边朝鲜族自治州', '吉林省延边朝鲜族自治州'),
(222401, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '延吉市', '吉林省延边朝鲜族自治州延吉市'),
(222402, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '图们市', '吉林省延边朝鲜族自治州图们市'),
(222403, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '敦化市', '吉林省延边朝鲜族自治州敦化市'),
(222404, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '珲春市', '吉林省延边朝鲜族自治州珲春市'),
(222405, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '龙井市', '吉林省延边朝鲜族自治州龙井市'),
(222406, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '和龙市', '吉林省延边朝鲜族自治州和龙市'),
(222424, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '汪清县', '吉林省延边朝鲜族自治州汪清县'),
(222426, 3, 220000, '吉林省', 222400, '延边朝鲜族自治州', '安图县', '吉林省延边朝鲜族自治州安图县'),
(230000, 1, 0, '', 0, '', '黑龙江省', '黑龙江省'),
(230100, 2, 230000, '黑龙江省', 0, '', '哈尔滨市', '黑龙江省哈尔滨市'),
(230102, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '道里区', '黑龙江省哈尔滨市道里区'),
(230103, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '南岗区', '黑龙江省哈尔滨市南岗区'),
(230104, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '道外区', '黑龙江省哈尔滨市道外区'),
(230108, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '平房区', '黑龙江省哈尔滨市平房区'),
(230109, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '松北区', '黑龙江省哈尔滨市松北区'),
(230110, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '香坊区', '黑龙江省哈尔滨市香坊区'),
(230111, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '呼兰区', '黑龙江省哈尔滨市呼兰区'),
(230112, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '阿城区', '黑龙江省哈尔滨市阿城区'),
(230113, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '双城区', '黑龙江省哈尔滨市双城区'),
(230123, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '依兰县', '黑龙江省哈尔滨市依兰县'),
(230124, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '方正县', '黑龙江省哈尔滨市方正县'),
(230125, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '宾县', '黑龙江省哈尔滨市宾县'),
(230126, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '巴彦县', '黑龙江省哈尔滨市巴彦县'),
(230127, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '木兰县', '黑龙江省哈尔滨市木兰县'),
(230128, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '通河县', '黑龙江省哈尔滨市通河县'),
(230129, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '延寿县', '黑龙江省哈尔滨市延寿县'),
(230183, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '尚志市', '黑龙江省哈尔滨市尚志市'),
(230184, 3, 230000, '黑龙江省', 230100, '哈尔滨市', '五常市', '黑龙江省哈尔滨市五常市'),
(230200, 2, 230000, '黑龙江省', 0, '', '齐齐哈尔市', '黑龙江省齐齐哈尔市'),
(230202, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '龙沙区', '黑龙江省齐齐哈尔市龙沙区'),
(230203, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '建华区', '黑龙江省齐齐哈尔市建华区'),
(230204, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '铁锋区', '黑龙江省齐齐哈尔市铁锋区'),
(230205, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '昂昂溪区', '黑龙江省齐齐哈尔市昂昂溪区'),
(230206, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '富拉尔基区', '黑龙江省齐齐哈尔市富拉尔基区'),
(230207, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '碾子山区', '黑龙江省齐齐哈尔市碾子山区'),
(230208, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '梅里斯达斡尔族区', '黑龙江省齐齐哈尔市梅里斯达斡尔族区'),
(230221, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '龙江县', '黑龙江省齐齐哈尔市龙江县'),
(230223, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '依安县', '黑龙江省齐齐哈尔市依安县'),
(230224, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '泰来县', '黑龙江省齐齐哈尔市泰来县'),
(230225, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '甘南县', '黑龙江省齐齐哈尔市甘南县'),
(230227, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '富裕县', '黑龙江省齐齐哈尔市富裕县'),
(230229, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '克山县', '黑龙江省齐齐哈尔市克山县'),
(230230, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '克东县', '黑龙江省齐齐哈尔市克东县'),
(230231, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '拜泉县', '黑龙江省齐齐哈尔市拜泉县'),
(230281, 3, 230000, '黑龙江省', 230200, '齐齐哈尔市', '讷河市', '黑龙江省齐齐哈尔市讷河市'),
(230300, 2, 230000, '黑龙江省', 0, '', '鸡西市', '黑龙江省鸡西市'),
(230302, 3, 230000, '黑龙江省', 230300, '鸡西市', '鸡冠区', '黑龙江省鸡西市鸡冠区'),
(230303, 3, 230000, '黑龙江省', 230300, '鸡西市', '恒山区', '黑龙江省鸡西市恒山区'),
(230304, 3, 230000, '黑龙江省', 230300, '鸡西市', '滴道区', '黑龙江省鸡西市滴道区'),
(230305, 3, 230000, '黑龙江省', 230300, '鸡西市', '梨树区', '黑龙江省鸡西市梨树区'),
(230306, 3, 230000, '黑龙江省', 230300, '鸡西市', '城子河区', '黑龙江省鸡西市城子河区'),
(230307, 3, 230000, '黑龙江省', 230300, '鸡西市', '麻山区', '黑龙江省鸡西市麻山区'),
(230321, 3, 230000, '黑龙江省', 230300, '鸡西市', '鸡东县', '黑龙江省鸡西市鸡东县'),
(230381, 3, 230000, '黑龙江省', 230300, '鸡西市', '虎林市', '黑龙江省鸡西市虎林市'),
(230382, 3, 230000, '黑龙江省', 230300, '鸡西市', '密山市', '黑龙江省鸡西市密山市'),
(230400, 2, 230000, '黑龙江省', 0, '', '鹤岗市', '黑龙江省鹤岗市'),
(230402, 3, 230000, '黑龙江省', 230400, '鹤岗市', '向阳区', '黑龙江省鹤岗市向阳区'),
(230403, 3, 230000, '黑龙江省', 230400, '鹤岗市', '工农区', '黑龙江省鹤岗市工农区'),
(230404, 3, 230000, '黑龙江省', 230400, '鹤岗市', '南山区', '黑龙江省鹤岗市南山区'),
(230405, 3, 230000, '黑龙江省', 230400, '鹤岗市', '兴安区', '黑龙江省鹤岗市兴安区'),
(230406, 3, 230000, '黑龙江省', 230400, '鹤岗市', '东山区', '黑龙江省鹤岗市东山区'),
(230407, 3, 230000, '黑龙江省', 230400, '鹤岗市', '兴山区', '黑龙江省鹤岗市兴山区'),
(230421, 3, 230000, '黑龙江省', 230400, '鹤岗市', '萝北县', '黑龙江省鹤岗市萝北县'),
(230422, 3, 230000, '黑龙江省', 230400, '鹤岗市', '绥滨县', '黑龙江省鹤岗市绥滨县'),
(230500, 2, 230000, '黑龙江省', 0, '', '双鸭山市', '黑龙江省双鸭山市'),
(230502, 3, 230000, '黑龙江省', 230500, '双鸭山市', '尖山区', '黑龙江省双鸭山市尖山区'),
(230503, 3, 230000, '黑龙江省', 230500, '双鸭山市', '岭东区', '黑龙江省双鸭山市岭东区'),
(230505, 3, 230000, '黑龙江省', 230500, '双鸭山市', '四方台区', '黑龙江省双鸭山市四方台区'),
(230506, 3, 230000, '黑龙江省', 230500, '双鸭山市', '宝山区', '黑龙江省双鸭山市宝山区'),
(230521, 3, 230000, '黑龙江省', 230500, '双鸭山市', '集贤县', '黑龙江省双鸭山市集贤县'),
(230522, 3, 230000, '黑龙江省', 230500, '双鸭山市', '友谊县', '黑龙江省双鸭山市友谊县'),
(230523, 3, 230000, '黑龙江省', 230500, '双鸭山市', '宝清县', '黑龙江省双鸭山市宝清县'),
(230524, 3, 230000, '黑龙江省', 230500, '双鸭山市', '饶河县', '黑龙江省双鸭山市饶河县'),
(230600, 2, 230000, '黑龙江省', 0, '', '大庆市', '黑龙江省大庆市'),
(230602, 3, 230000, '黑龙江省', 230600, '大庆市', '萨尔图区', '黑龙江省大庆市萨尔图区'),
(230603, 3, 230000, '黑龙江省', 230600, '大庆市', '龙凤区', '黑龙江省大庆市龙凤区'),
(230604, 3, 230000, '黑龙江省', 230600, '大庆市', '让胡路区', '黑龙江省大庆市让胡路区'),
(230605, 3, 230000, '黑龙江省', 230600, '大庆市', '红岗区', '黑龙江省大庆市红岗区'),
(230606, 3, 230000, '黑龙江省', 230600, '大庆市', '大同区', '黑龙江省大庆市大同区'),
(230621, 3, 230000, '黑龙江省', 230600, '大庆市', '肇州县', '黑龙江省大庆市肇州县'),
(230622, 3, 230000, '黑龙江省', 230600, '大庆市', '肇源县', '黑龙江省大庆市肇源县'),
(230623, 3, 230000, '黑龙江省', 230600, '大庆市', '林甸县', '黑龙江省大庆市林甸县'),
(230624, 3, 230000, '黑龙江省', 230600, '大庆市', '杜尔伯特蒙古族自治县', '黑龙江省大庆市杜尔伯特蒙古族自治县'),
(230700, 2, 230000, '黑龙江省', 0, '', '伊春市', '黑龙江省伊春市'),
(230702, 3, 230000, '黑龙江省', 230700, '伊春市', '伊春区', '黑龙江省伊春市伊春区'),
(230703, 3, 230000, '黑龙江省', 230700, '伊春市', '南岔区', '黑龙江省伊春市南岔区'),
(230704, 3, 230000, '黑龙江省', 230700, '伊春市', '友好区', '黑龙江省伊春市友好区'),
(230705, 3, 230000, '黑龙江省', 230700, '伊春市', '西林区', '黑龙江省伊春市西林区'),
(230706, 3, 230000, '黑龙江省', 230700, '伊春市', '翠峦区', '黑龙江省伊春市翠峦区'),
(230707, 3, 230000, '黑龙江省', 230700, '伊春市', '新青区', '黑龙江省伊春市新青区'),
(230708, 3, 230000, '黑龙江省', 230700, '伊春市', '美溪区', '黑龙江省伊春市美溪区'),
(230709, 3, 230000, '黑龙江省', 230700, '伊春市', '金山屯区', '黑龙江省伊春市金山屯区'),
(230710, 3, 230000, '黑龙江省', 230700, '伊春市', '五营区', '黑龙江省伊春市五营区'),
(230711, 3, 230000, '黑龙江省', 230700, '伊春市', '乌马河区', '黑龙江省伊春市乌马河区'),
(230712, 3, 230000, '黑龙江省', 230700, '伊春市', '汤旺河区', '黑龙江省伊春市汤旺河区'),
(230713, 3, 230000, '黑龙江省', 230700, '伊春市', '带岭区', '黑龙江省伊春市带岭区'),
(230714, 3, 230000, '黑龙江省', 230700, '伊春市', '乌伊岭区', '黑龙江省伊春市乌伊岭区'),
(230715, 3, 230000, '黑龙江省', 230700, '伊春市', '红星区', '黑龙江省伊春市红星区'),
(230716, 3, 230000, '黑龙江省', 230700, '伊春市', '上甘岭区', '黑龙江省伊春市上甘岭区'),
(230722, 3, 230000, '黑龙江省', 230700, '伊春市', '嘉荫县', '黑龙江省伊春市嘉荫县'),
(230781, 3, 230000, '黑龙江省', 230700, '伊春市', '铁力市', '黑龙江省伊春市铁力市'),
(230800, 2, 230000, '黑龙江省', 0, '', '佳木斯市', '黑龙江省佳木斯市'),
(230803, 3, 230000, '黑龙江省', 230800, '佳木斯市', '向阳区', '黑龙江省佳木斯市向阳区'),
(230804, 3, 230000, '黑龙江省', 230800, '佳木斯市', '前进区', '黑龙江省佳木斯市前进区'),
(230805, 3, 230000, '黑龙江省', 230800, '佳木斯市', '东风区', '黑龙江省佳木斯市东风区'),
(230811, 3, 230000, '黑龙江省', 230800, '佳木斯市', '郊区', '黑龙江省佳木斯市郊区'),
(230822, 3, 230000, '黑龙江省', 230800, '佳木斯市', '桦南县', '黑龙江省佳木斯市桦南县'),
(230826, 3, 230000, '黑龙江省', 230800, '佳木斯市', '桦川县', '黑龙江省佳木斯市桦川县'),
(230828, 3, 230000, '黑龙江省', 230800, '佳木斯市', '汤原县', '黑龙江省佳木斯市汤原县'),
(230881, 3, 230000, '黑龙江省', 230800, '佳木斯市', '同江市', '黑龙江省佳木斯市同江市'),
(230882, 3, 230000, '黑龙江省', 230800, '佳木斯市', '富锦市', '黑龙江省佳木斯市富锦市'),
(230883, 3, 230000, '黑龙江省', 230800, '佳木斯市', '抚远市', '黑龙江省佳木斯市抚远市'),
(230900, 2, 230000, '黑龙江省', 0, '', '七台河市', '黑龙江省七台河市'),
(230902, 3, 230000, '黑龙江省', 230900, '七台河市', '新兴区', '黑龙江省七台河市新兴区'),
(230903, 3, 230000, '黑龙江省', 230900, '七台河市', '桃山区', '黑龙江省七台河市桃山区'),
(230904, 3, 230000, '黑龙江省', 230900, '七台河市', '茄子河区', '黑龙江省七台河市茄子河区'),
(230921, 3, 230000, '黑龙江省', 230900, '七台河市', '勃利县', '黑龙江省七台河市勃利县'),
(231000, 2, 230000, '黑龙江省', 0, '', '牡丹江市', '黑龙江省牡丹江市'),
(231002, 3, 230000, '黑龙江省', 231000, '牡丹江市', '东安区', '黑龙江省牡丹江市东安区'),
(231003, 3, 230000, '黑龙江省', 231000, '牡丹江市', '阳明区', '黑龙江省牡丹江市阳明区'),
(231004, 3, 230000, '黑龙江省', 231000, '牡丹江市', '爱民区', '黑龙江省牡丹江市爱民区'),
(231005, 3, 230000, '黑龙江省', 231000, '牡丹江市', '西安区', '黑龙江省牡丹江市西安区'),
(231025, 3, 230000, '黑龙江省', 231000, '牡丹江市', '林口县', '黑龙江省牡丹江市林口县'),
(231081, 3, 230000, '黑龙江省', 231000, '牡丹江市', '绥芬河市', '黑龙江省牡丹江市绥芬河市'),
(231083, 3, 230000, '黑龙江省', 231000, '牡丹江市', '海林市', '黑龙江省牡丹江市海林市'),
(231084, 3, 230000, '黑龙江省', 231000, '牡丹江市', '宁安市', '黑龙江省牡丹江市宁安市'),
(231085, 3, 230000, '黑龙江省', 231000, '牡丹江市', '穆棱市', '黑龙江省牡丹江市穆棱市'),
(231086, 3, 230000, '黑龙江省', 231000, '牡丹江市', '东宁市', '黑龙江省牡丹江市东宁市'),
(231100, 2, 230000, '黑龙江省', 0, '', '黑河市', '黑龙江省黑河市'),
(231102, 3, 230000, '黑龙江省', 231100, '黑河市', '爱辉区', '黑龙江省黑河市爱辉区'),
(231121, 3, 230000, '黑龙江省', 231100, '黑河市', '嫩江县', '黑龙江省黑河市嫩江县'),
(231123, 3, 230000, '黑龙江省', 231100, '黑河市', '逊克县', '黑龙江省黑河市逊克县'),
(231124, 3, 230000, '黑龙江省', 231100, '黑河市', '孙吴县', '黑龙江省黑河市孙吴县'),
(231181, 3, 230000, '黑龙江省', 231100, '黑河市', '北安市', '黑龙江省黑河市北安市'),
(231182, 3, 230000, '黑龙江省', 231100, '黑河市', '五大连池市', '黑龙江省黑河市五大连池市'),
(231200, 2, 230000, '黑龙江省', 0, '', '绥化市', '黑龙江省绥化市'),
(231202, 3, 230000, '黑龙江省', 231200, '绥化市', '北林区', '黑龙江省绥化市北林区'),
(231221, 3, 230000, '黑龙江省', 231200, '绥化市', '望奎县', '黑龙江省绥化市望奎县'),
(231222, 3, 230000, '黑龙江省', 231200, '绥化市', '兰西县', '黑龙江省绥化市兰西县'),
(231223, 3, 230000, '黑龙江省', 231200, '绥化市', '青冈县', '黑龙江省绥化市青冈县'),
(231224, 3, 230000, '黑龙江省', 231200, '绥化市', '庆安县', '黑龙江省绥化市庆安县'),
(231225, 3, 230000, '黑龙江省', 231200, '绥化市', '明水县', '黑龙江省绥化市明水县'),
(231226, 3, 230000, '黑龙江省', 231200, '绥化市', '绥棱县', '黑龙江省绥化市绥棱县'),
(231281, 3, 230000, '黑龙江省', 231200, '绥化市', '安达市', '黑龙江省绥化市安达市'),
(231282, 3, 230000, '黑龙江省', 231200, '绥化市', '肇东市', '黑龙江省绥化市肇东市'),
(231283, 3, 230000, '黑龙江省', 231200, '绥化市', '海伦市', '黑龙江省绥化市海伦市'),
(232700, 2, 230000, '黑龙江省', 0, '', '大兴安岭地区', '黑龙江省大兴安岭地区'),
(232721, 3, 230000, '黑龙江省', 232700, '大兴安岭地区', '呼玛县', '黑龙江省大兴安岭地区呼玛县'),
(232722, 3, 230000, '黑龙江省', 232700, '大兴安岭地区', '塔河县', '黑龙江省大兴安岭地区塔河县'),
(232723, 3, 230000, '黑龙江省', 232700, '大兴安岭地区', '漠河县', '黑龙江省大兴安岭地区漠河县'),
(310000, 1, 0, '', 0, '', '上海市', '上海市'),
(310101, 3, 310000, '上海市', 0, '', '黄浦区', '上海市黄浦区'),
(310104, 3, 310000, '上海市', 0, '', '徐汇区', '上海市徐汇区'),
(310105, 3, 310000, '上海市', 0, '', '长宁区', '上海市长宁区'),
(310106, 3, 310000, '上海市', 0, '', '静安区', '上海市静安区'),
(310107, 3, 310000, '上海市', 0, '', '普陀区', '上海市普陀区'),
(310109, 3, 310000, '上海市', 0, '', '虹口区', '上海市虹口区'),
(310110, 3, 310000, '上海市', 0, '', '杨浦区', '上海市杨浦区'),
(310112, 3, 310000, '上海市', 0, '', '闵行区', '上海市闵行区'),
(310113, 3, 310000, '上海市', 0, '', '宝山区', '上海市宝山区'),
(310114, 3, 310000, '上海市', 0, '', '嘉定区', '上海市嘉定区'),
(310115, 3, 310000, '上海市', 0, '', '浦东新区', '上海市浦东新区'),
(310116, 3, 310000, '上海市', 0, '', '金山区', '上海市金山区'),
(310117, 3, 310000, '上海市', 0, '', '松江区', '上海市松江区'),
(310118, 3, 310000, '上海市', 0, '', '青浦区', '上海市青浦区'),
(310120, 3, 310000, '上海市', 0, '', '奉贤区', '上海市奉贤区'),
(310151, 3, 310000, '上海市', 0, '', '崇明区', '上海市崇明区'),
(320000, 1, 0, '', 0, '', '江苏省', '江苏省'),
(320100, 2, 320000, '江苏省', 0, '', '南京市', '江苏省南京市');
INSERT INTO `region` (`code`, `type`, `province`, `province_name`, `city`, `city_name`, `name`, `address`) VALUES
(320102, 3, 320000, '江苏省', 320100, '南京市', '玄武区', '江苏省南京市玄武区'),
(320104, 3, 320000, '江苏省', 320100, '南京市', '秦淮区', '江苏省南京市秦淮区'),
(320105, 3, 320000, '江苏省', 320100, '南京市', '建邺区', '江苏省南京市建邺区'),
(320106, 3, 320000, '江苏省', 320100, '南京市', '鼓楼区', '江苏省南京市鼓楼区'),
(320111, 3, 320000, '江苏省', 320100, '南京市', '浦口区', '江苏省南京市浦口区'),
(320113, 3, 320000, '江苏省', 320100, '南京市', '栖霞区', '江苏省南京市栖霞区'),
(320114, 3, 320000, '江苏省', 320100, '南京市', '雨花台区', '江苏省南京市雨花台区'),
(320115, 3, 320000, '江苏省', 320100, '南京市', '江宁区', '江苏省南京市江宁区'),
(320116, 3, 320000, '江苏省', 320100, '南京市', '六合区', '江苏省南京市六合区'),
(320117, 3, 320000, '江苏省', 320100, '南京市', '溧水区', '江苏省南京市溧水区'),
(320118, 3, 320000, '江苏省', 320100, '南京市', '高淳区', '江苏省南京市高淳区'),
(320200, 2, 320000, '江苏省', 0, '', '无锡市', '江苏省无锡市'),
(320205, 3, 320000, '江苏省', 320200, '无锡市', '锡山区', '江苏省无锡市锡山区'),
(320206, 3, 320000, '江苏省', 320200, '无锡市', '惠山区', '江苏省无锡市惠山区'),
(320211, 3, 320000, '江苏省', 320200, '无锡市', '滨湖区', '江苏省无锡市滨湖区'),
(320213, 3, 320000, '江苏省', 320200, '无锡市', '梁溪区', '江苏省无锡市梁溪区'),
(320214, 3, 320000, '江苏省', 320200, '无锡市', '新吴区', '江苏省无锡市新吴区'),
(320281, 3, 320000, '江苏省', 320200, '无锡市', '江阴市', '江苏省无锡市江阴市'),
(320282, 3, 320000, '江苏省', 320200, '无锡市', '宜兴市', '江苏省无锡市宜兴市'),
(320300, 2, 320000, '江苏省', 0, '', '徐州市', '江苏省徐州市'),
(320302, 3, 320000, '江苏省', 320300, '徐州市', '鼓楼区', '江苏省徐州市鼓楼区'),
(320303, 3, 320000, '江苏省', 320300, '徐州市', '云龙区', '江苏省徐州市云龙区'),
(320305, 3, 320000, '江苏省', 320300, '徐州市', '贾汪区', '江苏省徐州市贾汪区'),
(320311, 3, 320000, '江苏省', 320300, '徐州市', '泉山区', '江苏省徐州市泉山区'),
(320312, 3, 320000, '江苏省', 320300, '徐州市', '铜山区', '江苏省徐州市铜山区'),
(320321, 3, 320000, '江苏省', 320300, '徐州市', '丰县', '江苏省徐州市丰县'),
(320322, 3, 320000, '江苏省', 320300, '徐州市', '沛县', '江苏省徐州市沛县'),
(320324, 3, 320000, '江苏省', 320300, '徐州市', '睢宁县', '江苏省徐州市睢宁县'),
(320381, 3, 320000, '江苏省', 320300, '徐州市', '新沂市', '江苏省徐州市新沂市'),
(320382, 3, 320000, '江苏省', 320300, '徐州市', '邳州市', '江苏省徐州市邳州市'),
(320400, 2, 320000, '江苏省', 0, '', '常州市', '江苏省常州市'),
(320402, 3, 320000, '江苏省', 320400, '常州市', '天宁区', '江苏省常州市天宁区'),
(320404, 3, 320000, '江苏省', 320400, '常州市', '钟楼区', '江苏省常州市钟楼区'),
(320411, 3, 320000, '江苏省', 320400, '常州市', '新北区', '江苏省常州市新北区'),
(320412, 3, 320000, '江苏省', 320400, '常州市', '武进区', '江苏省常州市武进区'),
(320413, 3, 320000, '江苏省', 320400, '常州市', '金坛区', '江苏省常州市金坛区'),
(320481, 3, 320000, '江苏省', 320400, '常州市', '溧阳市', '江苏省常州市溧阳市'),
(320500, 2, 320000, '江苏省', 0, '', '苏州市', '江苏省苏州市'),
(320505, 3, 320000, '江苏省', 320500, '苏州市', '虎丘区', '江苏省苏州市虎丘区'),
(320506, 3, 320000, '江苏省', 320500, '苏州市', '吴中区', '江苏省苏州市吴中区'),
(320507, 3, 320000, '江苏省', 320500, '苏州市', '相城区', '江苏省苏州市相城区'),
(320508, 3, 320000, '江苏省', 320500, '苏州市', '姑苏区', '江苏省苏州市姑苏区'),
(320509, 3, 320000, '江苏省', 320500, '苏州市', '吴江区', '江苏省苏州市吴江区'),
(320581, 3, 320000, '江苏省', 320500, '苏州市', '常熟市', '江苏省苏州市常熟市'),
(320582, 3, 320000, '江苏省', 320500, '苏州市', '张家港市', '江苏省苏州市张家港市'),
(320583, 3, 320000, '江苏省', 320500, '苏州市', '昆山市', '江苏省苏州市昆山市'),
(320585, 3, 320000, '江苏省', 320500, '苏州市', '太仓市', '江苏省苏州市太仓市'),
(320600, 2, 320000, '江苏省', 0, '', '南通市', '江苏省南通市'),
(320602, 3, 320000, '江苏省', 320600, '南通市', '崇川区', '江苏省南通市崇川区'),
(320611, 3, 320000, '江苏省', 320600, '南通市', '港闸区', '江苏省南通市港闸区'),
(320612, 3, 320000, '江苏省', 320600, '南通市', '通州区', '江苏省南通市通州区'),
(320621, 3, 320000, '江苏省', 320600, '南通市', '海安县', '江苏省南通市海安县'),
(320623, 3, 320000, '江苏省', 320600, '南通市', '如东县', '江苏省南通市如东县'),
(320681, 3, 320000, '江苏省', 320600, '南通市', '启东市', '江苏省南通市启东市'),
(320682, 3, 320000, '江苏省', 320600, '南通市', '如皋市', '江苏省南通市如皋市'),
(320684, 3, 320000, '江苏省', 320600, '南通市', '海门市', '江苏省南通市海门市'),
(320700, 2, 320000, '江苏省', 0, '', '连云港市', '江苏省连云港市'),
(320703, 3, 320000, '江苏省', 320700, '连云港市', '连云区', '江苏省连云港市连云区'),
(320706, 3, 320000, '江苏省', 320700, '连云港市', '海州区', '江苏省连云港市海州区'),
(320707, 3, 320000, '江苏省', 320700, '连云港市', '赣榆区', '江苏省连云港市赣榆区'),
(320722, 3, 320000, '江苏省', 320700, '连云港市', '东海县', '江苏省连云港市东海县'),
(320723, 3, 320000, '江苏省', 320700, '连云港市', '灌云县', '江苏省连云港市灌云县'),
(320724, 3, 320000, '江苏省', 320700, '连云港市', '灌南县', '江苏省连云港市灌南县'),
(320800, 2, 320000, '江苏省', 0, '', '淮安市', '江苏省淮安市'),
(320803, 3, 320000, '江苏省', 320800, '淮安市', '淮安区', '江苏省淮安市淮安区'),
(320804, 3, 320000, '江苏省', 320800, '淮安市', '淮阴区', '江苏省淮安市淮阴区'),
(320812, 3, 320000, '江苏省', 320800, '淮安市', '清江浦区', '江苏省淮安市清江浦区'),
(320813, 3, 320000, '江苏省', 320800, '淮安市', '洪泽区', '江苏省淮安市洪泽区'),
(320826, 3, 320000, '江苏省', 320800, '淮安市', '涟水县', '江苏省淮安市涟水县'),
(320830, 3, 320000, '江苏省', 320800, '淮安市', '盱眙县', '江苏省淮安市盱眙县'),
(320831, 3, 320000, '江苏省', 320800, '淮安市', '金湖县', '江苏省淮安市金湖县'),
(320900, 2, 320000, '江苏省', 0, '', '盐城市', '江苏省盐城市'),
(320902, 3, 320000, '江苏省', 320900, '盐城市', '亭湖区', '江苏省盐城市亭湖区'),
(320903, 3, 320000, '江苏省', 320900, '盐城市', '盐都区', '江苏省盐城市盐都区'),
(320904, 3, 320000, '江苏省', 320900, '盐城市', '大丰区', '江苏省盐城市大丰区'),
(320921, 3, 320000, '江苏省', 320900, '盐城市', '响水县', '江苏省盐城市响水县'),
(320922, 3, 320000, '江苏省', 320900, '盐城市', '滨海县', '江苏省盐城市滨海县'),
(320923, 3, 320000, '江苏省', 320900, '盐城市', '阜宁县', '江苏省盐城市阜宁县'),
(320924, 3, 320000, '江苏省', 320900, '盐城市', '射阳县', '江苏省盐城市射阳县'),
(320925, 3, 320000, '江苏省', 320900, '盐城市', '建湖县', '江苏省盐城市建湖县'),
(320981, 3, 320000, '江苏省', 320900, '盐城市', '东台市', '江苏省盐城市东台市'),
(321000, 2, 320000, '江苏省', 0, '', '扬州市', '江苏省扬州市'),
(321002, 3, 320000, '江苏省', 321000, '扬州市', '广陵区', '江苏省扬州市广陵区'),
(321003, 3, 320000, '江苏省', 321000, '扬州市', '邗江区', '江苏省扬州市邗江区'),
(321012, 3, 320000, '江苏省', 321000, '扬州市', '江都区', '江苏省扬州市江都区'),
(321023, 3, 320000, '江苏省', 321000, '扬州市', '宝应县', '江苏省扬州市宝应县'),
(321081, 3, 320000, '江苏省', 321000, '扬州市', '仪征市', '江苏省扬州市仪征市'),
(321084, 3, 320000, '江苏省', 321000, '扬州市', '高邮市', '江苏省扬州市高邮市'),
(321100, 2, 320000, '江苏省', 0, '', '镇江市', '江苏省镇江市'),
(321102, 3, 320000, '江苏省', 321100, '镇江市', '京口区', '江苏省镇江市京口区'),
(321111, 3, 320000, '江苏省', 321100, '镇江市', '润州区', '江苏省镇江市润州区'),
(321112, 3, 320000, '江苏省', 321100, '镇江市', '丹徒区', '江苏省镇江市丹徒区'),
(321181, 3, 320000, '江苏省', 321100, '镇江市', '丹阳市', '江苏省镇江市丹阳市'),
(321182, 3, 320000, '江苏省', 321100, '镇江市', '扬中市', '江苏省镇江市扬中市'),
(321183, 3, 320000, '江苏省', 321100, '镇江市', '句容市', '江苏省镇江市句容市'),
(321200, 2, 320000, '江苏省', 0, '', '泰州市', '江苏省泰州市'),
(321202, 3, 320000, '江苏省', 321200, '泰州市', '海陵区', '江苏省泰州市海陵区'),
(321203, 3, 320000, '江苏省', 321200, '泰州市', '高港区', '江苏省泰州市高港区'),
(321204, 3, 320000, '江苏省', 321200, '泰州市', '姜堰区', '江苏省泰州市姜堰区'),
(321281, 3, 320000, '江苏省', 321200, '泰州市', '兴化市', '江苏省泰州市兴化市'),
(321282, 3, 320000, '江苏省', 321200, '泰州市', '靖江市', '江苏省泰州市靖江市'),
(321283, 3, 320000, '江苏省', 321200, '泰州市', '泰兴市', '江苏省泰州市泰兴市'),
(321300, 2, 320000, '江苏省', 0, '', '宿迁市', '江苏省宿迁市'),
(321302, 3, 320000, '江苏省', 321300, '宿迁市', '宿城区', '江苏省宿迁市宿城区'),
(321311, 3, 320000, '江苏省', 321300, '宿迁市', '宿豫区', '江苏省宿迁市宿豫区'),
(321322, 3, 320000, '江苏省', 321300, '宿迁市', '沭阳县', '江苏省宿迁市沭阳县'),
(321323, 3, 320000, '江苏省', 321300, '宿迁市', '泗阳县', '江苏省宿迁市泗阳县'),
(321324, 3, 320000, '江苏省', 321300, '宿迁市', '泗洪县', '江苏省宿迁市泗洪县'),
(330000, 1, 0, '', 0, '', '浙江省', '浙江省'),
(330100, 2, 330000, '浙江省', 0, '', '杭州市', '浙江省杭州市'),
(330102, 3, 330000, '浙江省', 330100, '杭州市', '上城区', '浙江省杭州市上城区'),
(330103, 3, 330000, '浙江省', 330100, '杭州市', '下城区', '浙江省杭州市下城区'),
(330104, 3, 330000, '浙江省', 330100, '杭州市', '江干区', '浙江省杭州市江干区'),
(330105, 3, 330000, '浙江省', 330100, '杭州市', '拱墅区', '浙江省杭州市拱墅区'),
(330106, 3, 330000, '浙江省', 330100, '杭州市', '西湖区', '浙江省杭州市西湖区'),
(330108, 3, 330000, '浙江省', 330100, '杭州市', '滨江区', '浙江省杭州市滨江区'),
(330109, 3, 330000, '浙江省', 330100, '杭州市', '萧山区', '浙江省杭州市萧山区'),
(330110, 3, 330000, '浙江省', 330100, '杭州市', '余杭区', '浙江省杭州市余杭区'),
(330111, 3, 330000, '浙江省', 330100, '杭州市', '富阳区', '浙江省杭州市富阳区'),
(330112, 3, 330000, '浙江省', 330100, '杭州市', '临安区', '浙江省杭州市临安区'),
(330122, 3, 330000, '浙江省', 330100, '杭州市', '桐庐县', '浙江省杭州市桐庐县'),
(330127, 3, 330000, '浙江省', 330100, '杭州市', '淳安县', '浙江省杭州市淳安县'),
(330182, 3, 330000, '浙江省', 330100, '杭州市', '建德市', '浙江省杭州市建德市'),
(330200, 2, 330000, '浙江省', 0, '', '宁波市', '浙江省宁波市'),
(330203, 3, 330000, '浙江省', 330200, '宁波市', '海曙区', '浙江省宁波市海曙区'),
(330205, 3, 330000, '浙江省', 330200, '宁波市', '江北区', '浙江省宁波市江北区'),
(330206, 3, 330000, '浙江省', 330200, '宁波市', '北仑区', '浙江省宁波市北仑区'),
(330211, 3, 330000, '浙江省', 330200, '宁波市', '镇海区', '浙江省宁波市镇海区'),
(330212, 3, 330000, '浙江省', 330200, '宁波市', '鄞州区', '浙江省宁波市鄞州区'),
(330213, 3, 330000, '浙江省', 330200, '宁波市', '奉化区', '浙江省宁波市奉化区'),
(330225, 3, 330000, '浙江省', 330200, '宁波市', '象山县', '浙江省宁波市象山县'),
(330226, 3, 330000, '浙江省', 330200, '宁波市', '宁海县', '浙江省宁波市宁海县'),
(330281, 3, 330000, '浙江省', 330200, '宁波市', '余姚市', '浙江省宁波市余姚市'),
(330282, 3, 330000, '浙江省', 330200, '宁波市', '慈溪市', '浙江省宁波市慈溪市'),
(330300, 2, 330000, '浙江省', 0, '', '温州市', '浙江省温州市'),
(330302, 3, 330000, '浙江省', 330300, '温州市', '鹿城区', '浙江省温州市鹿城区'),
(330303, 3, 330000, '浙江省', 330300, '温州市', '龙湾区', '浙江省温州市龙湾区'),
(330304, 3, 330000, '浙江省', 330300, '温州市', '瓯海区', '浙江省温州市瓯海区'),
(330305, 3, 330000, '浙江省', 330300, '温州市', '洞头区', '浙江省温州市洞头区'),
(330324, 3, 330000, '浙江省', 330300, '温州市', '永嘉县', '浙江省温州市永嘉县'),
(330326, 3, 330000, '浙江省', 330300, '温州市', '平阳县', '浙江省温州市平阳县'),
(330327, 3, 330000, '浙江省', 330300, '温州市', '苍南县', '浙江省温州市苍南县'),
(330328, 3, 330000, '浙江省', 330300, '温州市', '文成县', '浙江省温州市文成县'),
(330329, 3, 330000, '浙江省', 330300, '温州市', '泰顺县', '浙江省温州市泰顺县'),
(330381, 3, 330000, '浙江省', 330300, '温州市', '瑞安市', '浙江省温州市瑞安市'),
(330382, 3, 330000, '浙江省', 330300, '温州市', '乐清市', '浙江省温州市乐清市'),
(330400, 2, 330000, '浙江省', 0, '', '嘉兴市', '浙江省嘉兴市'),
(330402, 3, 330000, '浙江省', 330400, '嘉兴市', '南湖区', '浙江省嘉兴市南湖区'),
(330411, 3, 330000, '浙江省', 330400, '嘉兴市', '秀洲区', '浙江省嘉兴市秀洲区'),
(330421, 3, 330000, '浙江省', 330400, '嘉兴市', '嘉善县', '浙江省嘉兴市嘉善县'),
(330424, 3, 330000, '浙江省', 330400, '嘉兴市', '海盐县', '浙江省嘉兴市海盐县'),
(330481, 3, 330000, '浙江省', 330400, '嘉兴市', '海宁市', '浙江省嘉兴市海宁市'),
(330482, 3, 330000, '浙江省', 330400, '嘉兴市', '平湖市', '浙江省嘉兴市平湖市'),
(330483, 3, 330000, '浙江省', 330400, '嘉兴市', '桐乡市', '浙江省嘉兴市桐乡市'),
(330500, 2, 330000, '浙江省', 0, '', '湖州市', '浙江省湖州市'),
(330502, 3, 330000, '浙江省', 330500, '湖州市', '吴兴区', '浙江省湖州市吴兴区'),
(330503, 3, 330000, '浙江省', 330500, '湖州市', '南浔区', '浙江省湖州市南浔区'),
(330521, 3, 330000, '浙江省', 330500, '湖州市', '德清县', '浙江省湖州市德清县'),
(330522, 3, 330000, '浙江省', 330500, '湖州市', '长兴县', '浙江省湖州市长兴县'),
(330523, 3, 330000, '浙江省', 330500, '湖州市', '安吉县', '浙江省湖州市安吉县'),
(330600, 2, 330000, '浙江省', 0, '', '绍兴市', '浙江省绍兴市'),
(330602, 3, 330000, '浙江省', 330600, '绍兴市', '越城区', '浙江省绍兴市越城区'),
(330603, 3, 330000, '浙江省', 330600, '绍兴市', '柯桥区', '浙江省绍兴市柯桥区'),
(330604, 3, 330000, '浙江省', 330600, '绍兴市', '上虞区', '浙江省绍兴市上虞区'),
(330624, 3, 330000, '浙江省', 330600, '绍兴市', '新昌县', '浙江省绍兴市新昌县'),
(330681, 3, 330000, '浙江省', 330600, '绍兴市', '诸暨市', '浙江省绍兴市诸暨市'),
(330683, 3, 330000, '浙江省', 330600, '绍兴市', '嵊州市', '浙江省绍兴市嵊州市'),
(330700, 2, 330000, '浙江省', 0, '', '金华市', '浙江省金华市'),
(330702, 3, 330000, '浙江省', 330700, '金华市', '婺城区', '浙江省金华市婺城区'),
(330703, 3, 330000, '浙江省', 330700, '金华市', '金东区', '浙江省金华市金东区'),
(330723, 3, 330000, '浙江省', 330700, '金华市', '武义县', '浙江省金华市武义县'),
(330726, 3, 330000, '浙江省', 330700, '金华市', '浦江县', '浙江省金华市浦江县'),
(330727, 3, 330000, '浙江省', 330700, '金华市', '磐安县', '浙江省金华市磐安县'),
(330781, 3, 330000, '浙江省', 330700, '金华市', '兰溪市', '浙江省金华市兰溪市'),
(330782, 3, 330000, '浙江省', 330700, '金华市', '义乌市', '浙江省金华市义乌市'),
(330783, 3, 330000, '浙江省', 330700, '金华市', '东阳市', '浙江省金华市东阳市'),
(330784, 3, 330000, '浙江省', 330700, '金华市', '永康市', '浙江省金华市永康市'),
(330800, 2, 330000, '浙江省', 0, '', '衢州市', '浙江省衢州市'),
(330802, 3, 330000, '浙江省', 330800, '衢州市', '柯城区', '浙江省衢州市柯城区'),
(330803, 3, 330000, '浙江省', 330800, '衢州市', '衢江区', '浙江省衢州市衢江区'),
(330822, 3, 330000, '浙江省', 330800, '衢州市', '常山县', '浙江省衢州市常山县'),
(330824, 3, 330000, '浙江省', 330800, '衢州市', '开化县', '浙江省衢州市开化县'),
(330825, 3, 330000, '浙江省', 330800, '衢州市', '龙游县', '浙江省衢州市龙游县'),
(330881, 3, 330000, '浙江省', 330800, '衢州市', '江山市', '浙江省衢州市江山市'),
(330900, 2, 330000, '浙江省', 0, '', '舟山市', '浙江省舟山市'),
(330902, 3, 330000, '浙江省', 330900, '舟山市', '定海区', '浙江省舟山市定海区'),
(330903, 3, 330000, '浙江省', 330900, '舟山市', '普陀区', '浙江省舟山市普陀区'),
(330921, 3, 330000, '浙江省', 330900, '舟山市', '岱山县', '浙江省舟山市岱山县'),
(330922, 3, 330000, '浙江省', 330900, '舟山市', '嵊泗县', '浙江省舟山市嵊泗县'),
(331000, 2, 330000, '浙江省', 0, '', '台州市', '浙江省台州市'),
(331002, 3, 330000, '浙江省', 331000, '台州市', '椒江区', '浙江省台州市椒江区'),
(331003, 3, 330000, '浙江省', 331000, '台州市', '黄岩区', '浙江省台州市黄岩区'),
(331004, 3, 330000, '浙江省', 331000, '台州市', '路桥区', '浙江省台州市路桥区'),
(331022, 3, 330000, '浙江省', 331000, '台州市', '三门县', '浙江省台州市三门县'),
(331023, 3, 330000, '浙江省', 331000, '台州市', '天台县', '浙江省台州市天台县'),
(331024, 3, 330000, '浙江省', 331000, '台州市', '仙居县', '浙江省台州市仙居县'),
(331081, 3, 330000, '浙江省', 331000, '台州市', '温岭市', '浙江省台州市温岭市'),
(331082, 3, 330000, '浙江省', 331000, '台州市', '临海市', '浙江省台州市临海市'),
(331083, 3, 330000, '浙江省', 331000, '台州市', '玉环市', '浙江省台州市玉环市'),
(331100, 2, 330000, '浙江省', 0, '', '丽水市', '浙江省丽水市'),
(331102, 3, 330000, '浙江省', 331100, '丽水市', '莲都区', '浙江省丽水市莲都区'),
(331121, 3, 330000, '浙江省', 331100, '丽水市', '青田县', '浙江省丽水市青田县'),
(331122, 3, 330000, '浙江省', 331100, '丽水市', '缙云县', '浙江省丽水市缙云县'),
(331123, 3, 330000, '浙江省', 331100, '丽水市', '遂昌县', '浙江省丽水市遂昌县'),
(331124, 3, 330000, '浙江省', 331100, '丽水市', '松阳县', '浙江省丽水市松阳县'),
(331125, 3, 330000, '浙江省', 331100, '丽水市', '云和县', '浙江省丽水市云和县'),
(331126, 3, 330000, '浙江省', 331100, '丽水市', '庆元县', '浙江省丽水市庆元县'),
(331127, 3, 330000, '浙江省', 331100, '丽水市', '景宁畲族自治县', '浙江省丽水市景宁畲族自治县'),
(331181, 3, 330000, '浙江省', 331100, '丽水市', '龙泉市', '浙江省丽水市龙泉市'),
(340000, 1, 0, '', 0, '', '安徽省', '安徽省'),
(340100, 2, 340000, '安徽省', 0, '', '合肥市', '安徽省合肥市'),
(340102, 3, 340000, '安徽省', 340100, '合肥市', '瑶海区', '安徽省合肥市瑶海区'),
(340103, 3, 340000, '安徽省', 340100, '合肥市', '庐阳区', '安徽省合肥市庐阳区'),
(340104, 3, 340000, '安徽省', 340100, '合肥市', '蜀山区', '安徽省合肥市蜀山区'),
(340111, 3, 340000, '安徽省', 340100, '合肥市', '包河区', '安徽省合肥市包河区'),
(340121, 3, 340000, '安徽省', 340100, '合肥市', '长丰县', '安徽省合肥市长丰县'),
(340122, 3, 340000, '安徽省', 340100, '合肥市', '肥东县', '安徽省合肥市肥东县'),
(340123, 3, 340000, '安徽省', 340100, '合肥市', '肥西县', '安徽省合肥市肥西县'),
(340124, 3, 340000, '安徽省', 340100, '合肥市', '庐江县', '安徽省合肥市庐江县'),
(340181, 3, 340000, '安徽省', 340100, '合肥市', '巢湖市', '安徽省合肥市巢湖市'),
(340200, 2, 340000, '安徽省', 0, '', '芜湖市', '安徽省芜湖市'),
(340202, 3, 340000, '安徽省', 340200, '芜湖市', '镜湖区', '安徽省芜湖市镜湖区'),
(340203, 3, 340000, '安徽省', 340200, '芜湖市', '弋江区', '安徽省芜湖市弋江区'),
(340207, 3, 340000, '安徽省', 340200, '芜湖市', '鸠江区', '安徽省芜湖市鸠江区'),
(340208, 3, 340000, '安徽省', 340200, '芜湖市', '三山区', '安徽省芜湖市三山区'),
(340221, 3, 340000, '安徽省', 340200, '芜湖市', '芜湖县', '安徽省芜湖市芜湖县'),
(340222, 3, 340000, '安徽省', 340200, '芜湖市', '繁昌县', '安徽省芜湖市繁昌县'),
(340223, 3, 340000, '安徽省', 340200, '芜湖市', '南陵县', '安徽省芜湖市南陵县'),
(340225, 3, 340000, '安徽省', 340200, '芜湖市', '无为县', '安徽省芜湖市无为县'),
(340300, 2, 340000, '安徽省', 0, '', '蚌埠市', '安徽省蚌埠市'),
(340302, 3, 340000, '安徽省', 340300, '蚌埠市', '龙子湖区', '安徽省蚌埠市龙子湖区'),
(340303, 3, 340000, '安徽省', 340300, '蚌埠市', '蚌山区', '安徽省蚌埠市蚌山区'),
(340304, 3, 340000, '安徽省', 340300, '蚌埠市', '禹会区', '安徽省蚌埠市禹会区'),
(340311, 3, 340000, '安徽省', 340300, '蚌埠市', '淮上区', '安徽省蚌埠市淮上区'),
(340321, 3, 340000, '安徽省', 340300, '蚌埠市', '怀远县', '安徽省蚌埠市怀远县'),
(340322, 3, 340000, '安徽省', 340300, '蚌埠市', '五河县', '安徽省蚌埠市五河县'),
(340323, 3, 340000, '安徽省', 340300, '蚌埠市', '固镇县', '安徽省蚌埠市固镇县'),
(340400, 2, 340000, '安徽省', 0, '', '淮南市', '安徽省淮南市'),
(340402, 3, 340000, '安徽省', 340400, '淮南市', '大通区', '安徽省淮南市大通区'),
(340403, 3, 340000, '安徽省', 340400, '淮南市', '田家庵区', '安徽省淮南市田家庵区'),
(340404, 3, 340000, '安徽省', 340400, '淮南市', '谢家集区', '安徽省淮南市谢家集区'),
(340405, 3, 340000, '安徽省', 340400, '淮南市', '八公山区', '安徽省淮南市八公山区'),
(340406, 3, 340000, '安徽省', 340400, '淮南市', '潘集区', '安徽省淮南市潘集区'),
(340421, 3, 340000, '安徽省', 340400, '淮南市', '凤台县', '安徽省淮南市凤台县'),
(340422, 3, 340000, '安徽省', 340400, '淮南市', '寿县', '安徽省淮南市寿县'),
(340500, 2, 340000, '安徽省', 0, '', '马鞍山市', '安徽省马鞍山市'),
(340503, 3, 340000, '安徽省', 340500, '马鞍山市', '花山区', '安徽省马鞍山市花山区'),
(340504, 3, 340000, '安徽省', 340500, '马鞍山市', '雨山区', '安徽省马鞍山市雨山区'),
(340506, 3, 340000, '安徽省', 340500, '马鞍山市', '博望区', '安徽省马鞍山市博望区'),
(340521, 3, 340000, '安徽省', 340500, '马鞍山市', '当涂县', '安徽省马鞍山市当涂县'),
(340522, 3, 340000, '安徽省', 340500, '马鞍山市', '含山县', '安徽省马鞍山市含山县'),
(340523, 3, 340000, '安徽省', 340500, '马鞍山市', '和县', '安徽省马鞍山市和县'),
(340600, 2, 340000, '安徽省', 0, '', '淮北市', '安徽省淮北市'),
(340602, 3, 340000, '安徽省', 340600, '淮北市', '杜集区', '安徽省淮北市杜集区'),
(340603, 3, 340000, '安徽省', 340600, '淮北市', '相山区', '安徽省淮北市相山区'),
(340604, 3, 340000, '安徽省', 340600, '淮北市', '烈山区', '安徽省淮北市烈山区'),
(340621, 3, 340000, '安徽省', 340600, '淮北市', '濉溪县', '安徽省淮北市濉溪县'),
(340700, 2, 340000, '安徽省', 0, '', '铜陵市', '安徽省铜陵市'),
(340705, 3, 340000, '安徽省', 340700, '铜陵市', '铜官区', '安徽省铜陵市铜官区'),
(340706, 3, 340000, '安徽省', 340700, '铜陵市', '义安区', '安徽省铜陵市义安区'),
(340711, 3, 340000, '安徽省', 340700, '铜陵市', '郊区', '安徽省铜陵市郊区'),
(340722, 3, 340000, '安徽省', 340700, '铜陵市', '枞阳县', '安徽省铜陵市枞阳县'),
(340800, 2, 340000, '安徽省', 0, '', '安庆市', '安徽省安庆市'),
(340802, 3, 340000, '安徽省', 340800, '安庆市', '迎江区', '安徽省安庆市迎江区'),
(340803, 3, 340000, '安徽省', 340800, '安庆市', '大观区', '安徽省安庆市大观区'),
(340811, 3, 340000, '安徽省', 340800, '安庆市', '宜秀区', '安徽省安庆市宜秀区'),
(340822, 3, 340000, '安徽省', 340800, '安庆市', '怀宁县', '安徽省安庆市怀宁县'),
(340824, 3, 340000, '安徽省', 340800, '安庆市', '潜山县', '安徽省安庆市潜山县'),
(340825, 3, 340000, '安徽省', 340800, '安庆市', '太湖县', '安徽省安庆市太湖县'),
(340826, 3, 340000, '安徽省', 340800, '安庆市', '宿松县', '安徽省安庆市宿松县'),
(340827, 3, 340000, '安徽省', 340800, '安庆市', '望江县', '安徽省安庆市望江县'),
(340828, 3, 340000, '安徽省', 340800, '安庆市', '岳西县', '安徽省安庆市岳西县'),
(340881, 3, 340000, '安徽省', 340800, '安庆市', '桐城市', '安徽省安庆市桐城市'),
(341000, 2, 340000, '安徽省', 0, '', '黄山市', '安徽省黄山市'),
(341002, 3, 340000, '安徽省', 341000, '黄山市', '屯溪区', '安徽省黄山市屯溪区'),
(341003, 3, 340000, '安徽省', 341000, '黄山市', '黄山区', '安徽省黄山市黄山区'),
(341004, 3, 340000, '安徽省', 341000, '黄山市', '徽州区', '安徽省黄山市徽州区'),
(341021, 3, 340000, '安徽省', 341000, '黄山市', '歙县', '安徽省黄山市歙县'),
(341022, 3, 340000, '安徽省', 341000, '黄山市', '休宁县', '安徽省黄山市休宁县'),
(341023, 3, 340000, '安徽省', 341000, '黄山市', '黟县', '安徽省黄山市黟县'),
(341024, 3, 340000, '安徽省', 341000, '黄山市', '祁门县', '安徽省黄山市祁门县'),
(341100, 2, 340000, '安徽省', 0, '', '滁州市', '安徽省滁州市'),
(341102, 3, 340000, '安徽省', 341100, '滁州市', '琅琊区', '安徽省滁州市琅琊区'),
(341103, 3, 340000, '安徽省', 341100, '滁州市', '南谯区', '安徽省滁州市南谯区'),
(341122, 3, 340000, '安徽省', 341100, '滁州市', '来安县', '安徽省滁州市来安县'),
(341124, 3, 340000, '安徽省', 341100, '滁州市', '全椒县', '安徽省滁州市全椒县'),
(341125, 3, 340000, '安徽省', 341100, '滁州市', '定远县', '安徽省滁州市定远县'),
(341126, 3, 340000, '安徽省', 341100, '滁州市', '凤阳县', '安徽省滁州市凤阳县'),
(341181, 3, 340000, '安徽省', 341100, '滁州市', '天长市', '安徽省滁州市天长市'),
(341182, 3, 340000, '安徽省', 341100, '滁州市', '明光市', '安徽省滁州市明光市'),
(341200, 2, 340000, '安徽省', 0, '', '阜阳市', '安徽省阜阳市'),
(341202, 3, 340000, '安徽省', 341200, '阜阳市', '颍州区', '安徽省阜阳市颍州区'),
(341203, 3, 340000, '安徽省', 341200, '阜阳市', '颍东区', '安徽省阜阳市颍东区'),
(341204, 3, 340000, '安徽省', 341200, '阜阳市', '颍泉区', '安徽省阜阳市颍泉区'),
(341221, 3, 340000, '安徽省', 341200, '阜阳市', '临泉县', '安徽省阜阳市临泉县'),
(341222, 3, 340000, '安徽省', 341200, '阜阳市', '太和县', '安徽省阜阳市太和县'),
(341225, 3, 340000, '安徽省', 341200, '阜阳市', '阜南县', '安徽省阜阳市阜南县'),
(341226, 3, 340000, '安徽省', 341200, '阜阳市', '颍上县', '安徽省阜阳市颍上县'),
(341282, 3, 340000, '安徽省', 341200, '阜阳市', '界首市', '安徽省阜阳市界首市'),
(341300, 2, 340000, '安徽省', 0, '', '宿州市', '安徽省宿州市'),
(341302, 3, 340000, '安徽省', 341300, '宿州市', '埇桥区', '安徽省宿州市埇桥区'),
(341321, 3, 340000, '安徽省', 341300, '宿州市', '砀山县', '安徽省宿州市砀山县'),
(341322, 3, 340000, '安徽省', 341300, '宿州市', '萧县', '安徽省宿州市萧县'),
(341323, 3, 340000, '安徽省', 341300, '宿州市', '灵璧县', '安徽省宿州市灵璧县'),
(341324, 3, 340000, '安徽省', 341300, '宿州市', '泗县', '安徽省宿州市泗县'),
(341500, 2, 340000, '安徽省', 0, '', '六安市', '安徽省六安市'),
(341502, 3, 340000, '安徽省', 341500, '六安市', '金安区', '安徽省六安市金安区'),
(341503, 3, 340000, '安徽省', 341500, '六安市', '裕安区', '安徽省六安市裕安区'),
(341504, 3, 340000, '安徽省', 341500, '六安市', '叶集区', '安徽省六安市叶集区'),
(341522, 3, 340000, '安徽省', 341500, '六安市', '霍邱县', '安徽省六安市霍邱县'),
(341523, 3, 340000, '安徽省', 341500, '六安市', '舒城县', '安徽省六安市舒城县'),
(341524, 3, 340000, '安徽省', 341500, '六安市', '金寨县', '安徽省六安市金寨县'),
(341525, 3, 340000, '安徽省', 341500, '六安市', '霍山县', '安徽省六安市霍山县'),
(341600, 2, 340000, '安徽省', 0, '', '亳州市', '安徽省亳州市'),
(341602, 3, 340000, '安徽省', 341600, '亳州市', '谯城区', '安徽省亳州市谯城区'),
(341621, 3, 340000, '安徽省', 341600, '亳州市', '涡阳县', '安徽省亳州市涡阳县'),
(341622, 3, 340000, '安徽省', 341600, '亳州市', '蒙城县', '安徽省亳州市蒙城县'),
(341623, 3, 340000, '安徽省', 341600, '亳州市', '利辛县', '安徽省亳州市利辛县'),
(341700, 2, 340000, '安徽省', 0, '', '池州市', '安徽省池州市'),
(341702, 3, 340000, '安徽省', 341700, '池州市', '贵池区', '安徽省池州市贵池区'),
(341721, 3, 340000, '安徽省', 341700, '池州市', '东至县', '安徽省池州市东至县'),
(341722, 3, 340000, '安徽省', 341700, '池州市', '石台县', '安徽省池州市石台县'),
(341723, 3, 340000, '安徽省', 341700, '池州市', '青阳县', '安徽省池州市青阳县'),
(341800, 2, 340000, '安徽省', 0, '', '宣城市', '安徽省宣城市'),
(341802, 3, 340000, '安徽省', 341800, '宣城市', '宣州区', '安徽省宣城市宣州区'),
(341821, 3, 340000, '安徽省', 341800, '宣城市', '郎溪县', '安徽省宣城市郎溪县'),
(341822, 3, 340000, '安徽省', 341800, '宣城市', '广德县', '安徽省宣城市广德县'),
(341823, 3, 340000, '安徽省', 341800, '宣城市', '泾县', '安徽省宣城市泾县'),
(341824, 3, 340000, '安徽省', 341800, '宣城市', '绩溪县', '安徽省宣城市绩溪县'),
(341825, 3, 340000, '安徽省', 341800, '宣城市', '旌德县', '安徽省宣城市旌德县'),
(341881, 3, 340000, '安徽省', 341800, '宣城市', '宁国市', '安徽省宣城市宁国市'),
(350000, 1, 0, '', 0, '', '福建省', '福建省'),
(350100, 2, 350000, '福建省', 0, '', '福州市', '福建省福州市'),
(350102, 3, 350000, '福建省', 350100, '福州市', '鼓楼区', '福建省福州市鼓楼区'),
(350103, 3, 350000, '福建省', 350100, '福州市', '台江区', '福建省福州市台江区'),
(350104, 3, 350000, '福建省', 350100, '福州市', '仓山区', '福建省福州市仓山区'),
(350105, 3, 350000, '福建省', 350100, '福州市', '马尾区', '福建省福州市马尾区'),
(350111, 3, 350000, '福建省', 350100, '福州市', '晋安区', '福建省福州市晋安区'),
(350112, 3, 350000, '福建省', 350100, '福州市', '长乐区', '福建省福州市长乐区'),
(350121, 3, 350000, '福建省', 350100, '福州市', '闽侯县', '福建省福州市闽侯县'),
(350122, 3, 350000, '福建省', 350100, '福州市', '连江县', '福建省福州市连江县'),
(350123, 3, 350000, '福建省', 350100, '福州市', '罗源县', '福建省福州市罗源县'),
(350124, 3, 350000, '福建省', 350100, '福州市', '闽清县', '福建省福州市闽清县'),
(350125, 3, 350000, '福建省', 350100, '福州市', '永泰县', '福建省福州市永泰县'),
(350128, 3, 350000, '福建省', 350100, '福州市', '平潭县', '福建省福州市平潭县'),
(350181, 3, 350000, '福建省', 350100, '福州市', '福清市', '福建省福州市福清市'),
(350200, 2, 350000, '福建省', 0, '', '厦门市', '福建省厦门市'),
(350203, 3, 350000, '福建省', 350200, '厦门市', '思明区', '福建省厦门市思明区'),
(350205, 3, 350000, '福建省', 350200, '厦门市', '海沧区', '福建省厦门市海沧区'),
(350206, 3, 350000, '福建省', 350200, '厦门市', '湖里区', '福建省厦门市湖里区'),
(350211, 3, 350000, '福建省', 350200, '厦门市', '集美区', '福建省厦门市集美区'),
(350212, 3, 350000, '福建省', 350200, '厦门市', '同安区', '福建省厦门市同安区'),
(350213, 3, 350000, '福建省', 350200, '厦门市', '翔安区', '福建省厦门市翔安区'),
(350300, 2, 350000, '福建省', 0, '', '莆田市', '福建省莆田市'),
(350302, 3, 350000, '福建省', 350300, '莆田市', '城厢区', '福建省莆田市城厢区'),
(350303, 3, 350000, '福建省', 350300, '莆田市', '涵江区', '福建省莆田市涵江区'),
(350304, 3, 350000, '福建省', 350300, '莆田市', '荔城区', '福建省莆田市荔城区'),
(350305, 3, 350000, '福建省', 350300, '莆田市', '秀屿区', '福建省莆田市秀屿区'),
(350322, 3, 350000, '福建省', 350300, '莆田市', '仙游县', '福建省莆田市仙游县'),
(350400, 2, 350000, '福建省', 0, '', '三明市', '福建省三明市'),
(350402, 3, 350000, '福建省', 350400, '三明市', '梅列区', '福建省三明市梅列区'),
(350403, 3, 350000, '福建省', 350400, '三明市', '三元区', '福建省三明市三元区'),
(350421, 3, 350000, '福建省', 350400, '三明市', '明溪县', '福建省三明市明溪县'),
(350423, 3, 350000, '福建省', 350400, '三明市', '清流县', '福建省三明市清流县'),
(350424, 3, 350000, '福建省', 350400, '三明市', '宁化县', '福建省三明市宁化县'),
(350425, 3, 350000, '福建省', 350400, '三明市', '大田县', '福建省三明市大田县'),
(350426, 3, 350000, '福建省', 350400, '三明市', '尤溪县', '福建省三明市尤溪县'),
(350427, 3, 350000, '福建省', 350400, '三明市', '沙县', '福建省三明市沙县'),
(350428, 3, 350000, '福建省', 350400, '三明市', '将乐县', '福建省三明市将乐县'),
(350429, 3, 350000, '福建省', 350400, '三明市', '泰宁县', '福建省三明市泰宁县'),
(350430, 3, 350000, '福建省', 350400, '三明市', '建宁县', '福建省三明市建宁县'),
(350481, 3, 350000, '福建省', 350400, '三明市', '永安市', '福建省三明市永安市'),
(350500, 2, 350000, '福建省', 0, '', '泉州市', '福建省泉州市'),
(350502, 3, 350000, '福建省', 350500, '泉州市', '鲤城区', '福建省泉州市鲤城区'),
(350503, 3, 350000, '福建省', 350500, '泉州市', '丰泽区', '福建省泉州市丰泽区'),
(350504, 3, 350000, '福建省', 350500, '泉州市', '洛江区', '福建省泉州市洛江区'),
(350505, 3, 350000, '福建省', 350500, '泉州市', '泉港区', '福建省泉州市泉港区'),
(350521, 3, 350000, '福建省', 350500, '泉州市', '惠安县', '福建省泉州市惠安县'),
(350524, 3, 350000, '福建省', 350500, '泉州市', '安溪县', '福建省泉州市安溪县'),
(350525, 3, 350000, '福建省', 350500, '泉州市', '永春县', '福建省泉州市永春县'),
(350526, 3, 350000, '福建省', 350500, '泉州市', '德化县', '福建省泉州市德化县'),
(350527, 3, 350000, '福建省', 350500, '泉州市', '金门县', '福建省泉州市金门县'),
(350581, 3, 350000, '福建省', 350500, '泉州市', '石狮市', '福建省泉州市石狮市'),
(350582, 3, 350000, '福建省', 350500, '泉州市', '晋江市', '福建省泉州市晋江市'),
(350583, 3, 350000, '福建省', 350500, '泉州市', '南安市', '福建省泉州市南安市'),
(350600, 2, 350000, '福建省', 0, '', '漳州市', '福建省漳州市'),
(350602, 3, 350000, '福建省', 350600, '漳州市', '芗城区', '福建省漳州市芗城区'),
(350603, 3, 350000, '福建省', 350600, '漳州市', '龙文区', '福建省漳州市龙文区'),
(350622, 3, 350000, '福建省', 350600, '漳州市', '云霄县', '福建省漳州市云霄县'),
(350623, 3, 350000, '福建省', 350600, '漳州市', '漳浦县', '福建省漳州市漳浦县'),
(350624, 3, 350000, '福建省', 350600, '漳州市', '诏安县', '福建省漳州市诏安县'),
(350625, 3, 350000, '福建省', 350600, '漳州市', '长泰县', '福建省漳州市长泰县'),
(350626, 3, 350000, '福建省', 350600, '漳州市', '东山县', '福建省漳州市东山县'),
(350627, 3, 350000, '福建省', 350600, '漳州市', '南靖县', '福建省漳州市南靖县'),
(350628, 3, 350000, '福建省', 350600, '漳州市', '平和县', '福建省漳州市平和县'),
(350629, 3, 350000, '福建省', 350600, '漳州市', '华安县', '福建省漳州市华安县'),
(350681, 3, 350000, '福建省', 350600, '漳州市', '龙海市', '福建省漳州市龙海市'),
(350700, 2, 350000, '福建省', 0, '', '南平市', '福建省南平市'),
(350702, 3, 350000, '福建省', 350700, '南平市', '延平区', '福建省南平市延平区'),
(350703, 3, 350000, '福建省', 350700, '南平市', '建阳区', '福建省南平市建阳区'),
(350721, 3, 350000, '福建省', 350700, '南平市', '顺昌县', '福建省南平市顺昌县'),
(350722, 3, 350000, '福建省', 350700, '南平市', '浦城县', '福建省南平市浦城县'),
(350723, 3, 350000, '福建省', 350700, '南平市', '光泽县', '福建省南平市光泽县'),
(350724, 3, 350000, '福建省', 350700, '南平市', '松溪县', '福建省南平市松溪县'),
(350725, 3, 350000, '福建省', 350700, '南平市', '政和县', '福建省南平市政和县'),
(350781, 3, 350000, '福建省', 350700, '南平市', '邵武市', '福建省南平市邵武市'),
(350782, 3, 350000, '福建省', 350700, '南平市', '武夷山市', '福建省南平市武夷山市'),
(350783, 3, 350000, '福建省', 350700, '南平市', '建瓯市', '福建省南平市建瓯市'),
(350800, 2, 350000, '福建省', 0, '', '龙岩市', '福建省龙岩市'),
(350802, 3, 350000, '福建省', 350800, '龙岩市', '新罗区', '福建省龙岩市新罗区'),
(350803, 3, 350000, '福建省', 350800, '龙岩市', '永定区', '福建省龙岩市永定区'),
(350821, 3, 350000, '福建省', 350800, '龙岩市', '长汀县', '福建省龙岩市长汀县'),
(350823, 3, 350000, '福建省', 350800, '龙岩市', '上杭县', '福建省龙岩市上杭县'),
(350824, 3, 350000, '福建省', 350800, '龙岩市', '武平县', '福建省龙岩市武平县'),
(350825, 3, 350000, '福建省', 350800, '龙岩市', '连城县', '福建省龙岩市连城县'),
(350881, 3, 350000, '福建省', 350800, '龙岩市', '漳平市', '福建省龙岩市漳平市'),
(350900, 2, 350000, '福建省', 0, '', '宁德市', '福建省宁德市'),
(350902, 3, 350000, '福建省', 350900, '宁德市', '蕉城区', '福建省宁德市蕉城区'),
(350921, 3, 350000, '福建省', 350900, '宁德市', '霞浦县', '福建省宁德市霞浦县'),
(350922, 3, 350000, '福建省', 350900, '宁德市', '古田县', '福建省宁德市古田县'),
(350923, 3, 350000, '福建省', 350900, '宁德市', '屏南县', '福建省宁德市屏南县'),
(350924, 3, 350000, '福建省', 350900, '宁德市', '寿宁县', '福建省宁德市寿宁县'),
(350925, 3, 350000, '福建省', 350900, '宁德市', '周宁县', '福建省宁德市周宁县'),
(350926, 3, 350000, '福建省', 350900, '宁德市', '柘荣县', '福建省宁德市柘荣县'),
(350981, 3, 350000, '福建省', 350900, '宁德市', '福安市', '福建省宁德市福安市'),
(350982, 3, 350000, '福建省', 350900, '宁德市', '福鼎市', '福建省宁德市福鼎市'),
(360000, 1, 0, '', 0, '', '江西省', '江西省'),
(360100, 2, 360000, '江西省', 0, '', '南昌市', '江西省南昌市'),
(360102, 3, 360000, '江西省', 360100, '南昌市', '东湖区', '江西省南昌市东湖区'),
(360103, 3, 360000, '江西省', 360100, '南昌市', '西湖区', '江西省南昌市西湖区'),
(360104, 3, 360000, '江西省', 360100, '南昌市', '青云谱区', '江西省南昌市青云谱区'),
(360105, 3, 360000, '江西省', 360100, '南昌市', '湾里区', '江西省南昌市湾里区'),
(360111, 3, 360000, '江西省', 360100, '南昌市', '青山湖区', '江西省南昌市青山湖区'),
(360112, 3, 360000, '江西省', 360100, '南昌市', '新建区', '江西省南昌市新建区'),
(360121, 3, 360000, '江西省', 360100, '南昌市', '南昌县', '江西省南昌市南昌县'),
(360123, 3, 360000, '江西省', 360100, '南昌市', '安义县', '江西省南昌市安义县'),
(360124, 3, 360000, '江西省', 360100, '南昌市', '进贤县', '江西省南昌市进贤县'),
(360200, 2, 360000, '江西省', 0, '', '景德镇市', '江西省景德镇市'),
(360202, 3, 360000, '江西省', 360200, '景德镇市', '昌江区', '江西省景德镇市昌江区'),
(360203, 3, 360000, '江西省', 360200, '景德镇市', '珠山区', '江西省景德镇市珠山区'),
(360222, 3, 360000, '江西省', 360200, '景德镇市', '浮梁县', '江西省景德镇市浮梁县'),
(360281, 3, 360000, '江西省', 360200, '景德镇市', '乐平市', '江西省景德镇市乐平市'),
(360300, 2, 360000, '江西省', 0, '', '萍乡市', '江西省萍乡市'),
(360302, 3, 360000, '江西省', 360300, '萍乡市', '安源区', '江西省萍乡市安源区'),
(360313, 3, 360000, '江西省', 360300, '萍乡市', '湘东区', '江西省萍乡市湘东区'),
(360321, 3, 360000, '江西省', 360300, '萍乡市', '莲花县', '江西省萍乡市莲花县'),
(360322, 3, 360000, '江西省', 360300, '萍乡市', '上栗县', '江西省萍乡市上栗县'),
(360323, 3, 360000, '江西省', 360300, '萍乡市', '芦溪县', '江西省萍乡市芦溪县'),
(360400, 2, 360000, '江西省', 0, '', '九江市', '江西省九江市'),
(360402, 3, 360000, '江西省', 360400, '九江市', '濂溪区', '江西省九江市濂溪区'),
(360403, 3, 360000, '江西省', 360400, '九江市', '浔阳区', '江西省九江市浔阳区'),
(360404, 3, 360000, '江西省', 360400, '九江市', '柴桑区', '江西省九江市柴桑区'),
(360423, 3, 360000, '江西省', 360400, '九江市', '武宁县', '江西省九江市武宁县'),
(360424, 3, 360000, '江西省', 360400, '九江市', '修水县', '江西省九江市修水县'),
(360425, 3, 360000, '江西省', 360400, '九江市', '永修县', '江西省九江市永修县'),
(360426, 3, 360000, '江西省', 360400, '九江市', '德安县', '江西省九江市德安县'),
(360428, 3, 360000, '江西省', 360400, '九江市', '都昌县', '江西省九江市都昌县'),
(360429, 3, 360000, '江西省', 360400, '九江市', '湖口县', '江西省九江市湖口县'),
(360430, 3, 360000, '江西省', 360400, '九江市', '彭泽县', '江西省九江市彭泽县'),
(360481, 3, 360000, '江西省', 360400, '九江市', '瑞昌市', '江西省九江市瑞昌市'),
(360482, 3, 360000, '江西省', 360400, '九江市', '共青城市', '江西省九江市共青城市'),
(360483, 3, 360000, '江西省', 360400, '九江市', '庐山市', '江西省九江市庐山市'),
(360500, 2, 360000, '江西省', 0, '', '新余市', '江西省新余市'),
(360502, 3, 360000, '江西省', 360500, '新余市', '渝水区', '江西省新余市渝水区'),
(360521, 3, 360000, '江西省', 360500, '新余市', '分宜县', '江西省新余市分宜县'),
(360600, 2, 360000, '江西省', 0, '', '鹰潭市', '江西省鹰潭市'),
(360602, 3, 360000, '江西省', 360600, '鹰潭市', '月湖区', '江西省鹰潭市月湖区'),
(360622, 3, 360000, '江西省', 360600, '鹰潭市', '余江县', '江西省鹰潭市余江县'),
(360681, 3, 360000, '江西省', 360600, '鹰潭市', '贵溪市', '江西省鹰潭市贵溪市'),
(360700, 2, 360000, '江西省', 0, '', '赣州市', '江西省赣州市'),
(360702, 3, 360000, '江西省', 360700, '赣州市', '章贡区', '江西省赣州市章贡区'),
(360703, 3, 360000, '江西省', 360700, '赣州市', '南康区', '江西省赣州市南康区'),
(360704, 3, 360000, '江西省', 360700, '赣州市', '赣县区', '江西省赣州市赣县区'),
(360722, 3, 360000, '江西省', 360700, '赣州市', '信丰县', '江西省赣州市信丰县'),
(360723, 3, 360000, '江西省', 360700, '赣州市', '大余县', '江西省赣州市大余县'),
(360724, 3, 360000, '江西省', 360700, '赣州市', '上犹县', '江西省赣州市上犹县'),
(360725, 3, 360000, '江西省', 360700, '赣州市', '崇义县', '江西省赣州市崇义县'),
(360726, 3, 360000, '江西省', 360700, '赣州市', '安远县', '江西省赣州市安远县'),
(360727, 3, 360000, '江西省', 360700, '赣州市', '龙南县', '江西省赣州市龙南县'),
(360728, 3, 360000, '江西省', 360700, '赣州市', '定南县', '江西省赣州市定南县'),
(360729, 3, 360000, '江西省', 360700, '赣州市', '全南县', '江西省赣州市全南县'),
(360730, 3, 360000, '江西省', 360700, '赣州市', '宁都县', '江西省赣州市宁都县'),
(360731, 3, 360000, '江西省', 360700, '赣州市', '于都县', '江西省赣州市于都县'),
(360732, 3, 360000, '江西省', 360700, '赣州市', '兴国县', '江西省赣州市兴国县'),
(360733, 3, 360000, '江西省', 360700, '赣州市', '会昌县', '江西省赣州市会昌县'),
(360734, 3, 360000, '江西省', 360700, '赣州市', '寻乌县', '江西省赣州市寻乌县'),
(360735, 3, 360000, '江西省', 360700, '赣州市', '石城县', '江西省赣州市石城县'),
(360781, 3, 360000, '江西省', 360700, '赣州市', '瑞金市', '江西省赣州市瑞金市'),
(360800, 2, 360000, '江西省', 0, '', '吉安市', '江西省吉安市'),
(360802, 3, 360000, '江西省', 360800, '吉安市', '吉州区', '江西省吉安市吉州区'),
(360803, 3, 360000, '江西省', 360800, '吉安市', '青原区', '江西省吉安市青原区'),
(360821, 3, 360000, '江西省', 360800, '吉安市', '吉安县', '江西省吉安市吉安县'),
(360822, 3, 360000, '江西省', 360800, '吉安市', '吉水县', '江西省吉安市吉水县'),
(360823, 3, 360000, '江西省', 360800, '吉安市', '峡江县', '江西省吉安市峡江县'),
(360824, 3, 360000, '江西省', 360800, '吉安市', '新干县', '江西省吉安市新干县'),
(360825, 3, 360000, '江西省', 360800, '吉安市', '永丰县', '江西省吉安市永丰县'),
(360826, 3, 360000, '江西省', 360800, '吉安市', '泰和县', '江西省吉安市泰和县'),
(360827, 3, 360000, '江西省', 360800, '吉安市', '遂川县', '江西省吉安市遂川县'),
(360828, 3, 360000, '江西省', 360800, '吉安市', '万安县', '江西省吉安市万安县'),
(360829, 3, 360000, '江西省', 360800, '吉安市', '安福县', '江西省吉安市安福县'),
(360830, 3, 360000, '江西省', 360800, '吉安市', '永新县', '江西省吉安市永新县'),
(360881, 3, 360000, '江西省', 360800, '吉安市', '井冈山市', '江西省吉安市井冈山市'),
(360900, 2, 360000, '江西省', 0, '', '宜春市', '江西省宜春市'),
(360902, 3, 360000, '江西省', 360900, '宜春市', '袁州区', '江西省宜春市袁州区'),
(360921, 3, 360000, '江西省', 360900, '宜春市', '奉新县', '江西省宜春市奉新县'),
(360922, 3, 360000, '江西省', 360900, '宜春市', '万载县', '江西省宜春市万载县'),
(360923, 3, 360000, '江西省', 360900, '宜春市', '上高县', '江西省宜春市上高县'),
(360924, 3, 360000, '江西省', 360900, '宜春市', '宜丰县', '江西省宜春市宜丰县'),
(360925, 3, 360000, '江西省', 360900, '宜春市', '靖安县', '江西省宜春市靖安县'),
(360926, 3, 360000, '江西省', 360900, '宜春市', '铜鼓县', '江西省宜春市铜鼓县'),
(360981, 3, 360000, '江西省', 360900, '宜春市', '丰城市', '江西省宜春市丰城市'),
(360982, 3, 360000, '江西省', 360900, '宜春市', '樟树市', '江西省宜春市樟树市'),
(360983, 3, 360000, '江西省', 360900, '宜春市', '高安市', '江西省宜春市高安市'),
(361000, 2, 360000, '江西省', 0, '', '抚州市', '江西省抚州市'),
(361002, 3, 360000, '江西省', 361000, '抚州市', '临川区', '江西省抚州市临川区'),
(361003, 3, 360000, '江西省', 361000, '抚州市', '东乡区', '江西省抚州市东乡区'),
(361021, 3, 360000, '江西省', 361000, '抚州市', '南城县', '江西省抚州市南城县'),
(361022, 3, 360000, '江西省', 361000, '抚州市', '黎川县', '江西省抚州市黎川县'),
(361023, 3, 360000, '江西省', 361000, '抚州市', '南丰县', '江西省抚州市南丰县'),
(361024, 3, 360000, '江西省', 361000, '抚州市', '崇仁县', '江西省抚州市崇仁县'),
(361025, 3, 360000, '江西省', 361000, '抚州市', '乐安县', '江西省抚州市乐安县'),
(361026, 3, 360000, '江西省', 361000, '抚州市', '宜黄县', '江西省抚州市宜黄县'),
(361027, 3, 360000, '江西省', 361000, '抚州市', '金溪县', '江西省抚州市金溪县'),
(361028, 3, 360000, '江西省', 361000, '抚州市', '资溪县', '江西省抚州市资溪县'),
(361030, 3, 360000, '江西省', 361000, '抚州市', '广昌县', '江西省抚州市广昌县'),
(361100, 2, 360000, '江西省', 0, '', '上饶市', '江西省上饶市'),
(361102, 3, 360000, '江西省', 361100, '上饶市', '信州区', '江西省上饶市信州区'),
(361103, 3, 360000, '江西省', 361100, '上饶市', '广丰区', '江西省上饶市广丰区'),
(361121, 3, 360000, '江西省', 361100, '上饶市', '上饶县', '江西省上饶市上饶县'),
(361123, 3, 360000, '江西省', 361100, '上饶市', '玉山县', '江西省上饶市玉山县'),
(361124, 3, 360000, '江西省', 361100, '上饶市', '铅山县', '江西省上饶市铅山县'),
(361125, 3, 360000, '江西省', 361100, '上饶市', '横峰县', '江西省上饶市横峰县'),
(361126, 3, 360000, '江西省', 361100, '上饶市', '弋阳县', '江西省上饶市弋阳县'),
(361127, 3, 360000, '江西省', 361100, '上饶市', '余干县', '江西省上饶市余干县'),
(361128, 3, 360000, '江西省', 361100, '上饶市', '鄱阳县', '江西省上饶市鄱阳县'),
(361129, 3, 360000, '江西省', 361100, '上饶市', '万年县', '江西省上饶市万年县'),
(361130, 3, 360000, '江西省', 361100, '上饶市', '婺源县', '江西省上饶市婺源县'),
(361181, 3, 360000, '江西省', 361100, '上饶市', '德兴市', '江西省上饶市德兴市'),
(370000, 1, 0, '', 0, '', '山东省', '山东省'),
(370100, 2, 370000, '山东省', 0, '', '济南市', '山东省济南市'),
(370102, 3, 370000, '山东省', 370100, '济南市', '历下区', '山东省济南市历下区'),
(370103, 3, 370000, '山东省', 370100, '济南市', '市中区', '山东省济南市市中区'),
(370104, 3, 370000, '山东省', 370100, '济南市', '槐荫区', '山东省济南市槐荫区'),
(370105, 3, 370000, '山东省', 370100, '济南市', '天桥区', '山东省济南市天桥区'),
(370112, 3, 370000, '山东省', 370100, '济南市', '历城区', '山东省济南市历城区'),
(370113, 3, 370000, '山东省', 370100, '济南市', '长清区', '山东省济南市长清区'),
(370114, 3, 370000, '山东省', 370100, '济南市', '章丘区', '山东省济南市章丘区'),
(370124, 3, 370000, '山东省', 370100, '济南市', '平阴县', '山东省济南市平阴县'),
(370125, 3, 370000, '山东省', 370100, '济南市', '济阳县', '山东省济南市济阳县'),
(370126, 3, 370000, '山东省', 370100, '济南市', '商河县', '山东省济南市商河县'),
(370200, 2, 370000, '山东省', 0, '', '青岛市', '山东省青岛市'),
(370202, 3, 370000, '山东省', 370200, '青岛市', '市南区', '山东省青岛市市南区'),
(370203, 3, 370000, '山东省', 370200, '青岛市', '市北区', '山东省青岛市市北区'),
(370211, 3, 370000, '山东省', 370200, '青岛市', '黄岛区', '山东省青岛市黄岛区'),
(370212, 3, 370000, '山东省', 370200, '青岛市', '崂山区', '山东省青岛市崂山区'),
(370213, 3, 370000, '山东省', 370200, '青岛市', '李沧区', '山东省青岛市李沧区'),
(370214, 3, 370000, '山东省', 370200, '青岛市', '城阳区', '山东省青岛市城阳区'),
(370215, 3, 370000, '山东省', 370200, '青岛市', '即墨区', '山东省青岛市即墨区'),
(370281, 3, 370000, '山东省', 370200, '青岛市', '胶州市', '山东省青岛市胶州市'),
(370283, 3, 370000, '山东省', 370200, '青岛市', '平度市', '山东省青岛市平度市'),
(370285, 3, 370000, '山东省', 370200, '青岛市', '莱西市', '山东省青岛市莱西市'),
(370300, 2, 370000, '山东省', 0, '', '淄博市', '山东省淄博市'),
(370302, 3, 370000, '山东省', 370300, '淄博市', '淄川区', '山东省淄博市淄川区'),
(370303, 3, 370000, '山东省', 370300, '淄博市', '张店区', '山东省淄博市张店区'),
(370304, 3, 370000, '山东省', 370300, '淄博市', '博山区', '山东省淄博市博山区'),
(370305, 3, 370000, '山东省', 370300, '淄博市', '临淄区', '山东省淄博市临淄区'),
(370306, 3, 370000, '山东省', 370300, '淄博市', '周村区', '山东省淄博市周村区'),
(370321, 3, 370000, '山东省', 370300, '淄博市', '桓台县', '山东省淄博市桓台县'),
(370322, 3, 370000, '山东省', 370300, '淄博市', '高青县', '山东省淄博市高青县'),
(370323, 3, 370000, '山东省', 370300, '淄博市', '沂源县', '山东省淄博市沂源县'),
(370400, 2, 370000, '山东省', 0, '', '枣庄市', '山东省枣庄市'),
(370402, 3, 370000, '山东省', 370400, '枣庄市', '市中区', '山东省枣庄市市中区'),
(370403, 3, 370000, '山东省', 370400, '枣庄市', '薛城区', '山东省枣庄市薛城区'),
(370404, 3, 370000, '山东省', 370400, '枣庄市', '峄城区', '山东省枣庄市峄城区'),
(370405, 3, 370000, '山东省', 370400, '枣庄市', '台儿庄区', '山东省枣庄市台儿庄区'),
(370406, 3, 370000, '山东省', 370400, '枣庄市', '山亭区', '山东省枣庄市山亭区'),
(370481, 3, 370000, '山东省', 370400, '枣庄市', '滕州市', '山东省枣庄市滕州市'),
(370500, 2, 370000, '山东省', 0, '', '东营市', '山东省东营市'),
(370502, 3, 370000, '山东省', 370500, '东营市', '东营区', '山东省东营市东营区'),
(370503, 3, 370000, '山东省', 370500, '东营市', '河口区', '山东省东营市河口区'),
(370505, 3, 370000, '山东省', 370500, '东营市', '垦利区', '山东省东营市垦利区'),
(370522, 3, 370000, '山东省', 370500, '东营市', '利津县', '山东省东营市利津县'),
(370523, 3, 370000, '山东省', 370500, '东营市', '广饶县', '山东省东营市广饶县'),
(370600, 2, 370000, '山东省', 0, '', '烟台市', '山东省烟台市'),
(370602, 3, 370000, '山东省', 370600, '烟台市', '芝罘区', '山东省烟台市芝罘区'),
(370611, 3, 370000, '山东省', 370600, '烟台市', '福山区', '山东省烟台市福山区'),
(370612, 3, 370000, '山东省', 370600, '烟台市', '牟平区', '山东省烟台市牟平区'),
(370613, 3, 370000, '山东省', 370600, '烟台市', '莱山区', '山东省烟台市莱山区'),
(370634, 3, 370000, '山东省', 370600, '烟台市', '长岛县', '山东省烟台市长岛县'),
(370681, 3, 370000, '山东省', 370600, '烟台市', '龙口市', '山东省烟台市龙口市'),
(370682, 3, 370000, '山东省', 370600, '烟台市', '莱阳市', '山东省烟台市莱阳市'),
(370683, 3, 370000, '山东省', 370600, '烟台市', '莱州市', '山东省烟台市莱州市'),
(370684, 3, 370000, '山东省', 370600, '烟台市', '蓬莱市', '山东省烟台市蓬莱市'),
(370685, 3, 370000, '山东省', 370600, '烟台市', '招远市', '山东省烟台市招远市'),
(370686, 3, 370000, '山东省', 370600, '烟台市', '栖霞市', '山东省烟台市栖霞市'),
(370687, 3, 370000, '山东省', 370600, '烟台市', '海阳市', '山东省烟台市海阳市'),
(370700, 2, 370000, '山东省', 0, '', '潍坊市', '山东省潍坊市'),
(370702, 3, 370000, '山东省', 370700, '潍坊市', '潍城区', '山东省潍坊市潍城区'),
(370703, 3, 370000, '山东省', 370700, '潍坊市', '寒亭区', '山东省潍坊市寒亭区'),
(370704, 3, 370000, '山东省', 370700, '潍坊市', '坊子区', '山东省潍坊市坊子区'),
(370705, 3, 370000, '山东省', 370700, '潍坊市', '奎文区', '山东省潍坊市奎文区'),
(370724, 3, 370000, '山东省', 370700, '潍坊市', '临朐县', '山东省潍坊市临朐县'),
(370725, 3, 370000, '山东省', 370700, '潍坊市', '昌乐县', '山东省潍坊市昌乐县'),
(370781, 3, 370000, '山东省', 370700, '潍坊市', '青州市', '山东省潍坊市青州市'),
(370782, 3, 370000, '山东省', 370700, '潍坊市', '诸城市', '山东省潍坊市诸城市'),
(370783, 3, 370000, '山东省', 370700, '潍坊市', '寿光市', '山东省潍坊市寿光市'),
(370784, 3, 370000, '山东省', 370700, '潍坊市', '安丘市', '山东省潍坊市安丘市'),
(370785, 3, 370000, '山东省', 370700, '潍坊市', '高密市', '山东省潍坊市高密市'),
(370786, 3, 370000, '山东省', 370700, '潍坊市', '昌邑市', '山东省潍坊市昌邑市'),
(370800, 2, 370000, '山东省', 0, '', '济宁市', '山东省济宁市'),
(370811, 3, 370000, '山东省', 370800, '济宁市', '任城区', '山东省济宁市任城区'),
(370812, 3, 370000, '山东省', 370800, '济宁市', '兖州区', '山东省济宁市兖州区'),
(370826, 3, 370000, '山东省', 370800, '济宁市', '微山县', '山东省济宁市微山县'),
(370827, 3, 370000, '山东省', 370800, '济宁市', '鱼台县', '山东省济宁市鱼台县'),
(370828, 3, 370000, '山东省', 370800, '济宁市', '金乡县', '山东省济宁市金乡县'),
(370829, 3, 370000, '山东省', 370800, '济宁市', '嘉祥县', '山东省济宁市嘉祥县'),
(370830, 3, 370000, '山东省', 370800, '济宁市', '汶上县', '山东省济宁市汶上县'),
(370831, 3, 370000, '山东省', 370800, '济宁市', '泗水县', '山东省济宁市泗水县'),
(370832, 3, 370000, '山东省', 370800, '济宁市', '梁山县', '山东省济宁市梁山县'),
(370881, 3, 370000, '山东省', 370800, '济宁市', '曲阜市', '山东省济宁市曲阜市'),
(370883, 3, 370000, '山东省', 370800, '济宁市', '邹城市', '山东省济宁市邹城市'),
(370900, 2, 370000, '山东省', 0, '', '泰安市', '山东省泰安市'),
(370902, 3, 370000, '山东省', 370900, '泰安市', '泰山区', '山东省泰安市泰山区'),
(370911, 3, 370000, '山东省', 370900, '泰安市', '岱岳区', '山东省泰安市岱岳区'),
(370921, 3, 370000, '山东省', 370900, '泰安市', '宁阳县', '山东省泰安市宁阳县'),
(370923, 3, 370000, '山东省', 370900, '泰安市', '东平县', '山东省泰安市东平县'),
(370982, 3, 370000, '山东省', 370900, '泰安市', '新泰市', '山东省泰安市新泰市'),
(370983, 3, 370000, '山东省', 370900, '泰安市', '肥城市', '山东省泰安市肥城市'),
(371000, 2, 370000, '山东省', 0, '', '威海市', '山东省威海市'),
(371002, 3, 370000, '山东省', 371000, '威海市', '环翠区', '山东省威海市环翠区'),
(371003, 3, 370000, '山东省', 371000, '威海市', '文登区', '山东省威海市文登区'),
(371082, 3, 370000, '山东省', 371000, '威海市', '荣成市', '山东省威海市荣成市'),
(371083, 3, 370000, '山东省', 371000, '威海市', '乳山市', '山东省威海市乳山市'),
(371100, 2, 370000, '山东省', 0, '', '日照市', '山东省日照市'),
(371102, 3, 370000, '山东省', 371100, '日照市', '东港区', '山东省日照市东港区'),
(371103, 3, 370000, '山东省', 371100, '日照市', '岚山区', '山东省日照市岚山区'),
(371121, 3, 370000, '山东省', 371100, '日照市', '五莲县', '山东省日照市五莲县'),
(371122, 3, 370000, '山东省', 371100, '日照市', '莒县', '山东省日照市莒县'),
(371200, 2, 370000, '山东省', 0, '', '莱芜市', '山东省莱芜市'),
(371202, 3, 370000, '山东省', 371200, '莱芜市', '莱城区', '山东省莱芜市莱城区'),
(371203, 3, 370000, '山东省', 371200, '莱芜市', '钢城区', '山东省莱芜市钢城区'),
(371300, 2, 370000, '山东省', 0, '', '临沂市', '山东省临沂市'),
(371302, 3, 370000, '山东省', 371300, '临沂市', '兰山区', '山东省临沂市兰山区'),
(371311, 3, 370000, '山东省', 371300, '临沂市', '罗庄区', '山东省临沂市罗庄区'),
(371312, 3, 370000, '山东省', 371300, '临沂市', '河东区', '山东省临沂市河东区'),
(371321, 3, 370000, '山东省', 371300, '临沂市', '沂南县', '山东省临沂市沂南县'),
(371322, 3, 370000, '山东省', 371300, '临沂市', '郯城县', '山东省临沂市郯城县'),
(371323, 3, 370000, '山东省', 371300, '临沂市', '沂水县', '山东省临沂市沂水县'),
(371324, 3, 370000, '山东省', 371300, '临沂市', '兰陵县', '山东省临沂市兰陵县'),
(371325, 3, 370000, '山东省', 371300, '临沂市', '费县', '山东省临沂市费县'),
(371326, 3, 370000, '山东省', 371300, '临沂市', '平邑县', '山东省临沂市平邑县'),
(371327, 3, 370000, '山东省', 371300, '临沂市', '莒南县', '山东省临沂市莒南县'),
(371328, 3, 370000, '山东省', 371300, '临沂市', '蒙阴县', '山东省临沂市蒙阴县'),
(371329, 3, 370000, '山东省', 371300, '临沂市', '临沭县', '山东省临沂市临沭县'),
(371400, 2, 370000, '山东省', 0, '', '德州市', '山东省德州市'),
(371402, 3, 370000, '山东省', 371400, '德州市', '德城区', '山东省德州市德城区'),
(371403, 3, 370000, '山东省', 371400, '德州市', '陵城区', '山东省德州市陵城区'),
(371422, 3, 370000, '山东省', 371400, '德州市', '宁津县', '山东省德州市宁津县'),
(371423, 3, 370000, '山东省', 371400, '德州市', '庆云县', '山东省德州市庆云县'),
(371424, 3, 370000, '山东省', 371400, '德州市', '临邑县', '山东省德州市临邑县'),
(371425, 3, 370000, '山东省', 371400, '德州市', '齐河县', '山东省德州市齐河县'),
(371426, 3, 370000, '山东省', 371400, '德州市', '平原县', '山东省德州市平原县'),
(371427, 3, 370000, '山东省', 371400, '德州市', '夏津县', '山东省德州市夏津县'),
(371428, 3, 370000, '山东省', 371400, '德州市', '武城县', '山东省德州市武城县'),
(371481, 3, 370000, '山东省', 371400, '德州市', '乐陵市', '山东省德州市乐陵市'),
(371482, 3, 370000, '山东省', 371400, '德州市', '禹城市', '山东省德州市禹城市'),
(371500, 2, 370000, '山东省', 0, '', '聊城市', '山东省聊城市'),
(371502, 3, 370000, '山东省', 371500, '聊城市', '东昌府区', '山东省聊城市东昌府区'),
(371521, 3, 370000, '山东省', 371500, '聊城市', '阳谷县', '山东省聊城市阳谷县'),
(371522, 3, 370000, '山东省', 371500, '聊城市', '莘县', '山东省聊城市莘县'),
(371523, 3, 370000, '山东省', 371500, '聊城市', '茌平县', '山东省聊城市茌平县'),
(371524, 3, 370000, '山东省', 371500, '聊城市', '东阿县', '山东省聊城市东阿县'),
(371525, 3, 370000, '山东省', 371500, '聊城市', '冠县', '山东省聊城市冠县'),
(371526, 3, 370000, '山东省', 371500, '聊城市', '高唐县', '山东省聊城市高唐县'),
(371581, 3, 370000, '山东省', 371500, '聊城市', '临清市', '山东省聊城市临清市'),
(371600, 2, 370000, '山东省', 0, '', '滨州市', '山东省滨州市'),
(371602, 3, 370000, '山东省', 371600, '滨州市', '滨城区', '山东省滨州市滨城区'),
(371603, 3, 370000, '山东省', 371600, '滨州市', '沾化区', '山东省滨州市沾化区'),
(371621, 3, 370000, '山东省', 371600, '滨州市', '惠民县', '山东省滨州市惠民县'),
(371622, 3, 370000, '山东省', 371600, '滨州市', '阳信县', '山东省滨州市阳信县'),
(371623, 3, 370000, '山东省', 371600, '滨州市', '无棣县', '山东省滨州市无棣县'),
(371625, 3, 370000, '山东省', 371600, '滨州市', '博兴县', '山东省滨州市博兴县'),
(371626, 3, 370000, '山东省', 371600, '滨州市', '邹平县', '山东省滨州市邹平县'),
(371700, 2, 370000, '山东省', 0, '', '菏泽市', '山东省菏泽市'),
(371702, 3, 370000, '山东省', 371700, '菏泽市', '牡丹区', '山东省菏泽市牡丹区'),
(371703, 3, 370000, '山东省', 371700, '菏泽市', '定陶区', '山东省菏泽市定陶区'),
(371721, 3, 370000, '山东省', 371700, '菏泽市', '曹县', '山东省菏泽市曹县'),
(371722, 3, 370000, '山东省', 371700, '菏泽市', '单县', '山东省菏泽市单县'),
(371723, 3, 370000, '山东省', 371700, '菏泽市', '成武县', '山东省菏泽市成武县'),
(371724, 3, 370000, '山东省', 371700, '菏泽市', '巨野县', '山东省菏泽市巨野县'),
(371725, 3, 370000, '山东省', 371700, '菏泽市', '郓城县', '山东省菏泽市郓城县'),
(371726, 3, 370000, '山东省', 371700, '菏泽市', '鄄城县', '山东省菏泽市鄄城县'),
(371728, 3, 370000, '山东省', 371700, '菏泽市', '东明县', '山东省菏泽市东明县'),
(410000, 1, 0, '', 0, '', '河南省', '河南省'),
(410100, 2, 410000, '河南省', 0, '', '郑州市', '河南省郑州市'),
(410102, 3, 410000, '河南省', 410100, '郑州市', '中原区', '河南省郑州市中原区'),
(410103, 3, 410000, '河南省', 410100, '郑州市', '二七区', '河南省郑州市二七区'),
(410104, 3, 410000, '河南省', 410100, '郑州市', '管城回族区', '河南省郑州市管城回族区'),
(410105, 3, 410000, '河南省', 410100, '郑州市', '金水区', '河南省郑州市金水区'),
(410106, 3, 410000, '河南省', 410100, '郑州市', '上街区', '河南省郑州市上街区'),
(410108, 3, 410000, '河南省', 410100, '郑州市', '惠济区', '河南省郑州市惠济区'),
(410122, 3, 410000, '河南省', 410100, '郑州市', '中牟县', '河南省郑州市中牟县'),
(410181, 3, 410000, '河南省', 410100, '郑州市', '巩义市', '河南省郑州市巩义市'),
(410182, 3, 410000, '河南省', 410100, '郑州市', '荥阳市', '河南省郑州市荥阳市'),
(410183, 3, 410000, '河南省', 410100, '郑州市', '新密市', '河南省郑州市新密市'),
(410184, 3, 410000, '河南省', 410100, '郑州市', '新郑市', '河南省郑州市新郑市'),
(410185, 3, 410000, '河南省', 410100, '郑州市', '登封市', '河南省郑州市登封市'),
(410200, 2, 410000, '河南省', 0, '', '开封市', '河南省开封市'),
(410202, 3, 410000, '河南省', 410200, '开封市', '龙亭区', '河南省开封市龙亭区'),
(410203, 3, 410000, '河南省', 410200, '开封市', '顺河回族区', '河南省开封市顺河回族区'),
(410204, 3, 410000, '河南省', 410200, '开封市', '鼓楼区', '河南省开封市鼓楼区'),
(410205, 3, 410000, '河南省', 410200, '开封市', '禹王台区', '河南省开封市禹王台区'),
(410212, 3, 410000, '河南省', 410200, '开封市', '祥符区', '河南省开封市祥符区'),
(410221, 3, 410000, '河南省', 410200, '开封市', '杞县', '河南省开封市杞县'),
(410222, 3, 410000, '河南省', 410200, '开封市', '通许县', '河南省开封市通许县'),
(410223, 3, 410000, '河南省', 410200, '开封市', '尉氏县', '河南省开封市尉氏县'),
(410225, 3, 410000, '河南省', 410200, '开封市', '兰考县', '河南省开封市兰考县'),
(410300, 2, 410000, '河南省', 0, '', '洛阳市', '河南省洛阳市'),
(410302, 3, 410000, '河南省', 410300, '洛阳市', '老城区', '河南省洛阳市老城区'),
(410303, 3, 410000, '河南省', 410300, '洛阳市', '西工区', '河南省洛阳市西工区'),
(410304, 3, 410000, '河南省', 410300, '洛阳市', '瀍河回族区', '河南省洛阳市瀍河回族区'),
(410305, 3, 410000, '河南省', 410300, '洛阳市', '涧西区', '河南省洛阳市涧西区'),
(410306, 3, 410000, '河南省', 410300, '洛阳市', '吉利区', '河南省洛阳市吉利区'),
(410311, 3, 410000, '河南省', 410300, '洛阳市', '洛龙区', '河南省洛阳市洛龙区'),
(410322, 3, 410000, '河南省', 410300, '洛阳市', '孟津县', '河南省洛阳市孟津县'),
(410323, 3, 410000, '河南省', 410300, '洛阳市', '新安县', '河南省洛阳市新安县'),
(410324, 3, 410000, '河南省', 410300, '洛阳市', '栾川县', '河南省洛阳市栾川县'),
(410325, 3, 410000, '河南省', 410300, '洛阳市', '嵩县', '河南省洛阳市嵩县'),
(410326, 3, 410000, '河南省', 410300, '洛阳市', '汝阳县', '河南省洛阳市汝阳县'),
(410327, 3, 410000, '河南省', 410300, '洛阳市', '宜阳县', '河南省洛阳市宜阳县'),
(410328, 3, 410000, '河南省', 410300, '洛阳市', '洛宁县', '河南省洛阳市洛宁县'),
(410329, 3, 410000, '河南省', 410300, '洛阳市', '伊川县', '河南省洛阳市伊川县'),
(410381, 3, 410000, '河南省', 410300, '洛阳市', '偃师市', '河南省洛阳市偃师市'),
(410400, 2, 410000, '河南省', 0, '', '平顶山市', '河南省平顶山市'),
(410402, 3, 410000, '河南省', 410400, '平顶山市', '新华区', '河南省平顶山市新华区'),
(410403, 3, 410000, '河南省', 410400, '平顶山市', '卫东区', '河南省平顶山市卫东区'),
(410404, 3, 410000, '河南省', 410400, '平顶山市', '石龙区', '河南省平顶山市石龙区'),
(410411, 3, 410000, '河南省', 410400, '平顶山市', '湛河区', '河南省平顶山市湛河区'),
(410421, 3, 410000, '河南省', 410400, '平顶山市', '宝丰县', '河南省平顶山市宝丰县'),
(410422, 3, 410000, '河南省', 410400, '平顶山市', '叶县', '河南省平顶山市叶县'),
(410423, 3, 410000, '河南省', 410400, '平顶山市', '鲁山县', '河南省平顶山市鲁山县'),
(410425, 3, 410000, '河南省', 410400, '平顶山市', '郏县', '河南省平顶山市郏县'),
(410481, 3, 410000, '河南省', 410400, '平顶山市', '舞钢市', '河南省平顶山市舞钢市'),
(410482, 3, 410000, '河南省', 410400, '平顶山市', '汝州市', '河南省平顶山市汝州市'),
(410500, 2, 410000, '河南省', 0, '', '安阳市', '河南省安阳市'),
(410502, 3, 410000, '河南省', 410500, '安阳市', '文峰区', '河南省安阳市文峰区'),
(410503, 3, 410000, '河南省', 410500, '安阳市', '北关区', '河南省安阳市北关区'),
(410505, 3, 410000, '河南省', 410500, '安阳市', '殷都区', '河南省安阳市殷都区'),
(410506, 3, 410000, '河南省', 410500, '安阳市', '龙安区', '河南省安阳市龙安区'),
(410522, 3, 410000, '河南省', 410500, '安阳市', '安阳县', '河南省安阳市安阳县'),
(410523, 3, 410000, '河南省', 410500, '安阳市', '汤阴县', '河南省安阳市汤阴县'),
(410526, 3, 410000, '河南省', 410500, '安阳市', '滑县', '河南省安阳市滑县'),
(410527, 3, 410000, '河南省', 410500, '安阳市', '内黄县', '河南省安阳市内黄县'),
(410581, 3, 410000, '河南省', 410500, '安阳市', '林州市', '河南省安阳市林州市'),
(410600, 2, 410000, '河南省', 0, '', '鹤壁市', '河南省鹤壁市'),
(410602, 3, 410000, '河南省', 410600, '鹤壁市', '鹤山区', '河南省鹤壁市鹤山区'),
(410603, 3, 410000, '河南省', 410600, '鹤壁市', '山城区', '河南省鹤壁市山城区'),
(410611, 3, 410000, '河南省', 410600, '鹤壁市', '淇滨区', '河南省鹤壁市淇滨区'),
(410621, 3, 410000, '河南省', 410600, '鹤壁市', '浚县', '河南省鹤壁市浚县'),
(410622, 3, 410000, '河南省', 410600, '鹤壁市', '淇县', '河南省鹤壁市淇县'),
(410700, 2, 410000, '河南省', 0, '', '新乡市', '河南省新乡市'),
(410702, 3, 410000, '河南省', 410700, '新乡市', '红旗区', '河南省新乡市红旗区'),
(410703, 3, 410000, '河南省', 410700, '新乡市', '卫滨区', '河南省新乡市卫滨区'),
(410704, 3, 410000, '河南省', 410700, '新乡市', '凤泉区', '河南省新乡市凤泉区'),
(410711, 3, 410000, '河南省', 410700, '新乡市', '牧野区', '河南省新乡市牧野区'),
(410721, 3, 410000, '河南省', 410700, '新乡市', '新乡县', '河南省新乡市新乡县'),
(410724, 3, 410000, '河南省', 410700, '新乡市', '获嘉县', '河南省新乡市获嘉县'),
(410725, 3, 410000, '河南省', 410700, '新乡市', '原阳县', '河南省新乡市原阳县'),
(410726, 3, 410000, '河南省', 410700, '新乡市', '延津县', '河南省新乡市延津县'),
(410727, 3, 410000, '河南省', 410700, '新乡市', '封丘县', '河南省新乡市封丘县'),
(410728, 3, 410000, '河南省', 410700, '新乡市', '长垣县', '河南省新乡市长垣县'),
(410781, 3, 410000, '河南省', 410700, '新乡市', '卫辉市', '河南省新乡市卫辉市'),
(410782, 3, 410000, '河南省', 410700, '新乡市', '辉县市', '河南省新乡市辉县市'),
(410800, 2, 410000, '河南省', 0, '', '焦作市', '河南省焦作市'),
(410802, 3, 410000, '河南省', 410800, '焦作市', '解放区', '河南省焦作市解放区'),
(410803, 3, 410000, '河南省', 410800, '焦作市', '中站区', '河南省焦作市中站区'),
(410804, 3, 410000, '河南省', 410800, '焦作市', '马村区', '河南省焦作市马村区'),
(410811, 3, 410000, '河南省', 410800, '焦作市', '山阳区', '河南省焦作市山阳区'),
(410821, 3, 410000, '河南省', 410800, '焦作市', '修武县', '河南省焦作市修武县'),
(410822, 3, 410000, '河南省', 410800, '焦作市', '博爱县', '河南省焦作市博爱县'),
(410823, 3, 410000, '河南省', 410800, '焦作市', '武陟县', '河南省焦作市武陟县'),
(410825, 3, 410000, '河南省', 410800, '焦作市', '温县', '河南省焦作市温县'),
(410882, 3, 410000, '河南省', 410800, '焦作市', '沁阳市', '河南省焦作市沁阳市'),
(410883, 3, 410000, '河南省', 410800, '焦作市', '孟州市', '河南省焦作市孟州市'),
(410900, 2, 410000, '河南省', 0, '', '濮阳市', '河南省濮阳市'),
(410902, 3, 410000, '河南省', 410900, '濮阳市', '华龙区', '河南省濮阳市华龙区'),
(410922, 3, 410000, '河南省', 410900, '濮阳市', '清丰县', '河南省濮阳市清丰县'),
(410923, 3, 410000, '河南省', 410900, '濮阳市', '南乐县', '河南省濮阳市南乐县'),
(410926, 3, 410000, '河南省', 410900, '濮阳市', '范县', '河南省濮阳市范县'),
(410927, 3, 410000, '河南省', 410900, '濮阳市', '台前县', '河南省濮阳市台前县'),
(410928, 3, 410000, '河南省', 410900, '濮阳市', '濮阳县', '河南省濮阳市濮阳县'),
(411000, 2, 410000, '河南省', 0, '', '许昌市', '河南省许昌市'),
(411002, 3, 410000, '河南省', 411000, '许昌市', '魏都区', '河南省许昌市魏都区'),
(411003, 3, 410000, '河南省', 411000, '许昌市', '建安区', '河南省许昌市建安区'),
(411024, 3, 410000, '河南省', 411000, '许昌市', '鄢陵县', '河南省许昌市鄢陵县'),
(411025, 3, 410000, '河南省', 411000, '许昌市', '襄城县', '河南省许昌市襄城县'),
(411081, 3, 410000, '河南省', 411000, '许昌市', '禹州市', '河南省许昌市禹州市'),
(411082, 3, 410000, '河南省', 411000, '许昌市', '长葛市', '河南省许昌市长葛市'),
(411100, 2, 410000, '河南省', 0, '', '漯河市', '河南省漯河市'),
(411102, 3, 410000, '河南省', 411100, '漯河市', '源汇区', '河南省漯河市源汇区'),
(411103, 3, 410000, '河南省', 411100, '漯河市', '郾城区', '河南省漯河市郾城区'),
(411104, 3, 410000, '河南省', 411100, '漯河市', '召陵区', '河南省漯河市召陵区'),
(411121, 3, 410000, '河南省', 411100, '漯河市', '舞阳县', '河南省漯河市舞阳县'),
(411122, 3, 410000, '河南省', 411100, '漯河市', '临颍县', '河南省漯河市临颍县'),
(411200, 2, 410000, '河南省', 0, '', '三门峡市', '河南省三门峡市'),
(411202, 3, 410000, '河南省', 411200, '三门峡市', '湖滨区', '河南省三门峡市湖滨区'),
(411203, 3, 410000, '河南省', 411200, '三门峡市', '陕州区', '河南省三门峡市陕州区'),
(411221, 3, 410000, '河南省', 411200, '三门峡市', '渑池县', '河南省三门峡市渑池县'),
(411224, 3, 410000, '河南省', 411200, '三门峡市', '卢氏县', '河南省三门峡市卢氏县'),
(411281, 3, 410000, '河南省', 411200, '三门峡市', '义马市', '河南省三门峡市义马市'),
(411282, 3, 410000, '河南省', 411200, '三门峡市', '灵宝市', '河南省三门峡市灵宝市'),
(411300, 2, 410000, '河南省', 0, '', '南阳市', '河南省南阳市'),
(411302, 3, 410000, '河南省', 411300, '南阳市', '宛城区', '河南省南阳市宛城区'),
(411303, 3, 410000, '河南省', 411300, '南阳市', '卧龙区', '河南省南阳市卧龙区'),
(411321, 3, 410000, '河南省', 411300, '南阳市', '南召县', '河南省南阳市南召县'),
(411322, 3, 410000, '河南省', 411300, '南阳市', '方城县', '河南省南阳市方城县'),
(411323, 3, 410000, '河南省', 411300, '南阳市', '西峡县', '河南省南阳市西峡县'),
(411324, 3, 410000, '河南省', 411300, '南阳市', '镇平县', '河南省南阳市镇平县'),
(411325, 3, 410000, '河南省', 411300, '南阳市', '内乡县', '河南省南阳市内乡县'),
(411326, 3, 410000, '河南省', 411300, '南阳市', '淅川县', '河南省南阳市淅川县'),
(411327, 3, 410000, '河南省', 411300, '南阳市', '社旗县', '河南省南阳市社旗县'),
(411328, 3, 410000, '河南省', 411300, '南阳市', '唐河县', '河南省南阳市唐河县'),
(411329, 3, 410000, '河南省', 411300, '南阳市', '新野县', '河南省南阳市新野县'),
(411330, 3, 410000, '河南省', 411300, '南阳市', '桐柏县', '河南省南阳市桐柏县'),
(411381, 3, 410000, '河南省', 411300, '南阳市', '邓州市', '河南省南阳市邓州市'),
(411400, 2, 410000, '河南省', 0, '', '商丘市', '河南省商丘市'),
(411402, 3, 410000, '河南省', 411400, '商丘市', '梁园区', '河南省商丘市梁园区'),
(411403, 3, 410000, '河南省', 411400, '商丘市', '睢阳区', '河南省商丘市睢阳区'),
(411421, 3, 410000, '河南省', 411400, '商丘市', '民权县', '河南省商丘市民权县'),
(411422, 3, 410000, '河南省', 411400, '商丘市', '睢县', '河南省商丘市睢县'),
(411423, 3, 410000, '河南省', 411400, '商丘市', '宁陵县', '河南省商丘市宁陵县'),
(411424, 3, 410000, '河南省', 411400, '商丘市', '柘城县', '河南省商丘市柘城县'),
(411425, 3, 410000, '河南省', 411400, '商丘市', '虞城县', '河南省商丘市虞城县'),
(411426, 3, 410000, '河南省', 411400, '商丘市', '夏邑县', '河南省商丘市夏邑县'),
(411481, 3, 410000, '河南省', 411400, '商丘市', '永城市', '河南省商丘市永城市');
INSERT INTO `region` (`code`, `type`, `province`, `province_name`, `city`, `city_name`, `name`, `address`) VALUES
(411500, 2, 410000, '河南省', 0, '', '信阳市', '河南省信阳市'),
(411502, 3, 410000, '河南省', 411500, '信阳市', '浉河区', '河南省信阳市浉河区'),
(411503, 3, 410000, '河南省', 411500, '信阳市', '平桥区', '河南省信阳市平桥区'),
(411521, 3, 410000, '河南省', 411500, '信阳市', '罗山县', '河南省信阳市罗山县'),
(411522, 3, 410000, '河南省', 411500, '信阳市', '光山县', '河南省信阳市光山县'),
(411523, 3, 410000, '河南省', 411500, '信阳市', '新县', '河南省信阳市新县'),
(411524, 3, 410000, '河南省', 411500, '信阳市', '商城县', '河南省信阳市商城县'),
(411525, 3, 410000, '河南省', 411500, '信阳市', '固始县', '河南省信阳市固始县'),
(411526, 3, 410000, '河南省', 411500, '信阳市', '潢川县', '河南省信阳市潢川县'),
(411527, 3, 410000, '河南省', 411500, '信阳市', '淮滨县', '河南省信阳市淮滨县'),
(411528, 3, 410000, '河南省', 411500, '信阳市', '息县', '河南省信阳市息县'),
(411600, 2, 410000, '河南省', 0, '', '周口市', '河南省周口市'),
(411602, 3, 410000, '河南省', 411600, '周口市', '川汇区', '河南省周口市川汇区'),
(411621, 3, 410000, '河南省', 411600, '周口市', '扶沟县', '河南省周口市扶沟县'),
(411622, 3, 410000, '河南省', 411600, '周口市', '西华县', '河南省周口市西华县'),
(411623, 3, 410000, '河南省', 411600, '周口市', '商水县', '河南省周口市商水县'),
(411624, 3, 410000, '河南省', 411600, '周口市', '沈丘县', '河南省周口市沈丘县'),
(411625, 3, 410000, '河南省', 411600, '周口市', '郸城县', '河南省周口市郸城县'),
(411626, 3, 410000, '河南省', 411600, '周口市', '淮阳县', '河南省周口市淮阳县'),
(411627, 3, 410000, '河南省', 411600, '周口市', '太康县', '河南省周口市太康县'),
(411628, 3, 410000, '河南省', 411600, '周口市', '鹿邑县', '河南省周口市鹿邑县'),
(411681, 3, 410000, '河南省', 411600, '周口市', '项城市', '河南省周口市项城市'),
(411700, 2, 410000, '河南省', 0, '', '驻马店市', '河南省驻马店市'),
(411702, 3, 410000, '河南省', 411700, '驻马店市', '驿城区', '河南省驻马店市驿城区'),
(411721, 3, 410000, '河南省', 411700, '驻马店市', '西平县', '河南省驻马店市西平县'),
(411722, 3, 410000, '河南省', 411700, '驻马店市', '上蔡县', '河南省驻马店市上蔡县'),
(411723, 3, 410000, '河南省', 411700, '驻马店市', '平舆县', '河南省驻马店市平舆县'),
(411724, 3, 410000, '河南省', 411700, '驻马店市', '正阳县', '河南省驻马店市正阳县'),
(411725, 3, 410000, '河南省', 411700, '驻马店市', '确山县', '河南省驻马店市确山县'),
(411726, 3, 410000, '河南省', 411700, '驻马店市', '泌阳县', '河南省驻马店市泌阳县'),
(411727, 3, 410000, '河南省', 411700, '驻马店市', '汝南县', '河南省驻马店市汝南县'),
(411728, 3, 410000, '河南省', 411700, '驻马店市', '遂平县', '河南省驻马店市遂平县'),
(411729, 3, 410000, '河南省', 411700, '驻马店市', '新蔡县', '河南省驻马店市新蔡县'),
(419001, 3, 410000, '河南省', 0, '', '济源市', '河南省济源市'),
(420000, 1, 0, '', 0, '', '湖北省', '湖北省'),
(420100, 2, 420000, '湖北省', 0, '', '武汉市', '湖北省武汉市'),
(420102, 3, 420000, '湖北省', 420100, '武汉市', '江岸区', '湖北省武汉市江岸区'),
(420103, 3, 420000, '湖北省', 420100, '武汉市', '江汉区', '湖北省武汉市江汉区'),
(420104, 3, 420000, '湖北省', 420100, '武汉市', '硚口区', '湖北省武汉市硚口区'),
(420105, 3, 420000, '湖北省', 420100, '武汉市', '汉阳区', '湖北省武汉市汉阳区'),
(420106, 3, 420000, '湖北省', 420100, '武汉市', '武昌区', '湖北省武汉市武昌区'),
(420107, 3, 420000, '湖北省', 420100, '武汉市', '青山区', '湖北省武汉市青山区'),
(420111, 3, 420000, '湖北省', 420100, '武汉市', '洪山区', '湖北省武汉市洪山区'),
(420112, 3, 420000, '湖北省', 420100, '武汉市', '东西湖区', '湖北省武汉市东西湖区'),
(420113, 3, 420000, '湖北省', 420100, '武汉市', '汉南区', '湖北省武汉市汉南区'),
(420114, 3, 420000, '湖北省', 420100, '武汉市', '蔡甸区', '湖北省武汉市蔡甸区'),
(420115, 3, 420000, '湖北省', 420100, '武汉市', '江夏区', '湖北省武汉市江夏区'),
(420116, 3, 420000, '湖北省', 420100, '武汉市', '黄陂区', '湖北省武汉市黄陂区'),
(420117, 3, 420000, '湖北省', 420100, '武汉市', '新洲区', '湖北省武汉市新洲区'),
(420200, 2, 420000, '湖北省', 0, '', '黄石市', '湖北省黄石市'),
(420202, 3, 420000, '湖北省', 420200, '黄石市', '黄石港区', '湖北省黄石市黄石港区'),
(420203, 3, 420000, '湖北省', 420200, '黄石市', '西塞山区', '湖北省黄石市西塞山区'),
(420204, 3, 420000, '湖北省', 420200, '黄石市', '下陆区', '湖北省黄石市下陆区'),
(420205, 3, 420000, '湖北省', 420200, '黄石市', '铁山区', '湖北省黄石市铁山区'),
(420222, 3, 420000, '湖北省', 420200, '黄石市', '阳新县', '湖北省黄石市阳新县'),
(420281, 3, 420000, '湖北省', 420200, '黄石市', '大冶市', '湖北省黄石市大冶市'),
(420300, 2, 420000, '湖北省', 0, '', '十堰市', '湖北省十堰市'),
(420302, 3, 420000, '湖北省', 420300, '十堰市', '茅箭区', '湖北省十堰市茅箭区'),
(420303, 3, 420000, '湖北省', 420300, '十堰市', '张湾区', '湖北省十堰市张湾区'),
(420304, 3, 420000, '湖北省', 420300, '十堰市', '郧阳区', '湖北省十堰市郧阳区'),
(420322, 3, 420000, '湖北省', 420300, '十堰市', '郧西县', '湖北省十堰市郧西县'),
(420323, 3, 420000, '湖北省', 420300, '十堰市', '竹山县', '湖北省十堰市竹山县'),
(420324, 3, 420000, '湖北省', 420300, '十堰市', '竹溪县', '湖北省十堰市竹溪县'),
(420325, 3, 420000, '湖北省', 420300, '十堰市', '房县', '湖北省十堰市房县'),
(420381, 3, 420000, '湖北省', 420300, '十堰市', '丹江口市', '湖北省十堰市丹江口市'),
(420500, 2, 420000, '湖北省', 0, '', '宜昌市', '湖北省宜昌市'),
(420502, 3, 420000, '湖北省', 420500, '宜昌市', '西陵区', '湖北省宜昌市西陵区'),
(420503, 3, 420000, '湖北省', 420500, '宜昌市', '伍家岗区', '湖北省宜昌市伍家岗区'),
(420504, 3, 420000, '湖北省', 420500, '宜昌市', '点军区', '湖北省宜昌市点军区'),
(420505, 3, 420000, '湖北省', 420500, '宜昌市', '猇亭区', '湖北省宜昌市猇亭区'),
(420506, 3, 420000, '湖北省', 420500, '宜昌市', '夷陵区', '湖北省宜昌市夷陵区'),
(420525, 3, 420000, '湖北省', 420500, '宜昌市', '远安县', '湖北省宜昌市远安县'),
(420526, 3, 420000, '湖北省', 420500, '宜昌市', '兴山县', '湖北省宜昌市兴山县'),
(420527, 3, 420000, '湖北省', 420500, '宜昌市', '秭归县', '湖北省宜昌市秭归县'),
(420528, 3, 420000, '湖北省', 420500, '宜昌市', '长阳土家族自治县', '湖北省宜昌市长阳土家族自治县'),
(420529, 3, 420000, '湖北省', 420500, '宜昌市', '五峰土家族自治县', '湖北省宜昌市五峰土家族自治县'),
(420581, 3, 420000, '湖北省', 420500, '宜昌市', '宜都市', '湖北省宜昌市宜都市'),
(420582, 3, 420000, '湖北省', 420500, '宜昌市', '当阳市', '湖北省宜昌市当阳市'),
(420583, 3, 420000, '湖北省', 420500, '宜昌市', '枝江市', '湖北省宜昌市枝江市'),
(420600, 2, 420000, '湖北省', 0, '', '襄阳市', '湖北省襄阳市'),
(420602, 3, 420000, '湖北省', 420600, '襄阳市', '襄城区', '湖北省襄阳市襄城区'),
(420606, 3, 420000, '湖北省', 420600, '襄阳市', '樊城区', '湖北省襄阳市樊城区'),
(420607, 3, 420000, '湖北省', 420600, '襄阳市', '襄州区', '湖北省襄阳市襄州区'),
(420624, 3, 420000, '湖北省', 420600, '襄阳市', '南漳县', '湖北省襄阳市南漳县'),
(420625, 3, 420000, '湖北省', 420600, '襄阳市', '谷城县', '湖北省襄阳市谷城县'),
(420626, 3, 420000, '湖北省', 420600, '襄阳市', '保康县', '湖北省襄阳市保康县'),
(420682, 3, 420000, '湖北省', 420600, '襄阳市', '老河口市', '湖北省襄阳市老河口市'),
(420683, 3, 420000, '湖北省', 420600, '襄阳市', '枣阳市', '湖北省襄阳市枣阳市'),
(420684, 3, 420000, '湖北省', 420600, '襄阳市', '宜城市', '湖北省襄阳市宜城市'),
(420700, 2, 420000, '湖北省', 0, '', '鄂州市', '湖北省鄂州市'),
(420702, 3, 420000, '湖北省', 420700, '鄂州市', '梁子湖区', '湖北省鄂州市梁子湖区'),
(420703, 3, 420000, '湖北省', 420700, '鄂州市', '华容区', '湖北省鄂州市华容区'),
(420704, 3, 420000, '湖北省', 420700, '鄂州市', '鄂城区', '湖北省鄂州市鄂城区'),
(420800, 2, 420000, '湖北省', 0, '', '荆门市', '湖北省荆门市'),
(420802, 3, 420000, '湖北省', 420800, '荆门市', '东宝区', '湖北省荆门市东宝区'),
(420804, 3, 420000, '湖北省', 420800, '荆门市', '掇刀区', '湖北省荆门市掇刀区'),
(420821, 3, 420000, '湖北省', 420800, '荆门市', '京山县', '湖北省荆门市京山县'),
(420822, 3, 420000, '湖北省', 420800, '荆门市', '沙洋县', '湖北省荆门市沙洋县'),
(420881, 3, 420000, '湖北省', 420800, '荆门市', '钟祥市', '湖北省荆门市钟祥市'),
(420900, 2, 420000, '湖北省', 0, '', '孝感市', '湖北省孝感市'),
(420902, 3, 420000, '湖北省', 420900, '孝感市', '孝南区', '湖北省孝感市孝南区'),
(420921, 3, 420000, '湖北省', 420900, '孝感市', '孝昌县', '湖北省孝感市孝昌县'),
(420922, 3, 420000, '湖北省', 420900, '孝感市', '大悟县', '湖北省孝感市大悟县'),
(420923, 3, 420000, '湖北省', 420900, '孝感市', '云梦县', '湖北省孝感市云梦县'),
(420981, 3, 420000, '湖北省', 420900, '孝感市', '应城市', '湖北省孝感市应城市'),
(420982, 3, 420000, '湖北省', 420900, '孝感市', '安陆市', '湖北省孝感市安陆市'),
(420984, 3, 420000, '湖北省', 420900, '孝感市', '汉川市', '湖北省孝感市汉川市'),
(421000, 2, 420000, '湖北省', 0, '', '荆州市', '湖北省荆州市'),
(421002, 3, 420000, '湖北省', 421000, '荆州市', '沙市区', '湖北省荆州市沙市区'),
(421003, 3, 420000, '湖北省', 421000, '荆州市', '荆州区', '湖北省荆州市荆州区'),
(421022, 3, 420000, '湖北省', 421000, '荆州市', '公安县', '湖北省荆州市公安县'),
(421023, 3, 420000, '湖北省', 421000, '荆州市', '监利县', '湖北省荆州市监利县'),
(421024, 3, 420000, '湖北省', 421000, '荆州市', '江陵县', '湖北省荆州市江陵县'),
(421081, 3, 420000, '湖北省', 421000, '荆州市', '石首市', '湖北省荆州市石首市'),
(421083, 3, 420000, '湖北省', 421000, '荆州市', '洪湖市', '湖北省荆州市洪湖市'),
(421087, 3, 420000, '湖北省', 421000, '荆州市', '松滋市', '湖北省荆州市松滋市'),
(421100, 2, 420000, '湖北省', 0, '', '黄冈市', '湖北省黄冈市'),
(421102, 3, 420000, '湖北省', 421100, '黄冈市', '黄州区', '湖北省黄冈市黄州区'),
(421121, 3, 420000, '湖北省', 421100, '黄冈市', '团风县', '湖北省黄冈市团风县'),
(421122, 3, 420000, '湖北省', 421100, '黄冈市', '红安县', '湖北省黄冈市红安县'),
(421123, 3, 420000, '湖北省', 421100, '黄冈市', '罗田县', '湖北省黄冈市罗田县'),
(421124, 3, 420000, '湖北省', 421100, '黄冈市', '英山县', '湖北省黄冈市英山县'),
(421125, 3, 420000, '湖北省', 421100, '黄冈市', '浠水县', '湖北省黄冈市浠水县'),
(421126, 3, 420000, '湖北省', 421100, '黄冈市', '蕲春县', '湖北省黄冈市蕲春县'),
(421127, 3, 420000, '湖北省', 421100, '黄冈市', '黄梅县', '湖北省黄冈市黄梅县'),
(421181, 3, 420000, '湖北省', 421100, '黄冈市', '麻城市', '湖北省黄冈市麻城市'),
(421182, 3, 420000, '湖北省', 421100, '黄冈市', '武穴市', '湖北省黄冈市武穴市'),
(421200, 2, 420000, '湖北省', 0, '', '咸宁市', '湖北省咸宁市'),
(421202, 3, 420000, '湖北省', 421200, '咸宁市', '咸安区', '湖北省咸宁市咸安区'),
(421221, 3, 420000, '湖北省', 421200, '咸宁市', '嘉鱼县', '湖北省咸宁市嘉鱼县'),
(421222, 3, 420000, '湖北省', 421200, '咸宁市', '通城县', '湖北省咸宁市通城县'),
(421223, 3, 420000, '湖北省', 421200, '咸宁市', '崇阳县', '湖北省咸宁市崇阳县'),
(421224, 3, 420000, '湖北省', 421200, '咸宁市', '通山县', '湖北省咸宁市通山县'),
(421281, 3, 420000, '湖北省', 421200, '咸宁市', '赤壁市', '湖北省咸宁市赤壁市'),
(421300, 2, 420000, '湖北省', 0, '', '随州市', '湖北省随州市'),
(421303, 3, 420000, '湖北省', 421300, '随州市', '曾都区', '湖北省随州市曾都区'),
(421321, 3, 420000, '湖北省', 421300, '随州市', '随县', '湖北省随州市随县'),
(421381, 3, 420000, '湖北省', 421300, '随州市', '广水市', '湖北省随州市广水市'),
(422800, 2, 420000, '湖北省', 0, '', '恩施土家族苗族自治州', '湖北省恩施土家族苗族自治州'),
(422801, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '恩施市', '湖北省恩施土家族苗族自治州恩施市'),
(422802, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '利川市', '湖北省恩施土家族苗族自治州利川市'),
(422822, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '建始县', '湖北省恩施土家族苗族自治州建始县'),
(422823, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '巴东县', '湖北省恩施土家族苗族自治州巴东县'),
(422825, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '宣恩县', '湖北省恩施土家族苗族自治州宣恩县'),
(422826, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '咸丰县', '湖北省恩施土家族苗族自治州咸丰县'),
(422827, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '来凤县', '湖北省恩施土家族苗族自治州来凤县'),
(422828, 3, 420000, '湖北省', 422800, '恩施土家族苗族自治州', '鹤峰县', '湖北省恩施土家族苗族自治州鹤峰县'),
(429004, 3, 420000, '湖北省', 0, '', '仙桃市', '湖北省仙桃市'),
(429005, 3, 420000, '湖北省', 0, '', '潜江市', '湖北省潜江市'),
(429006, 3, 420000, '湖北省', 0, '', '天门市', '湖北省天门市'),
(429021, 3, 420000, '湖北省', 0, '', '神农架林区', '湖北省神农架林区'),
(430000, 1, 0, '', 0, '', '湖南省', '湖南省'),
(430100, 2, 430000, '湖南省', 0, '', '长沙市', '湖南省长沙市'),
(430102, 3, 430000, '湖南省', 430100, '长沙市', '芙蓉区', '湖南省长沙市芙蓉区'),
(430103, 3, 430000, '湖南省', 430100, '长沙市', '天心区', '湖南省长沙市天心区'),
(430104, 3, 430000, '湖南省', 430100, '长沙市', '岳麓区', '湖南省长沙市岳麓区'),
(430105, 3, 430000, '湖南省', 430100, '长沙市', '开福区', '湖南省长沙市开福区'),
(430111, 3, 430000, '湖南省', 430100, '长沙市', '雨花区', '湖南省长沙市雨花区'),
(430112, 3, 430000, '湖南省', 430100, '长沙市', '望城区', '湖南省长沙市望城区'),
(430121, 3, 430000, '湖南省', 430100, '长沙市', '长沙县', '湖南省长沙市长沙县'),
(430181, 3, 430000, '湖南省', 430100, '长沙市', '浏阳市', '湖南省长沙市浏阳市'),
(430182, 3, 430000, '湖南省', 430100, '长沙市', '宁乡市', '湖南省长沙市宁乡市'),
(430200, 2, 430000, '湖南省', 0, '', '株洲市', '湖南省株洲市'),
(430202, 3, 430000, '湖南省', 430200, '株洲市', '荷塘区', '湖南省株洲市荷塘区'),
(430203, 3, 430000, '湖南省', 430200, '株洲市', '芦淞区', '湖南省株洲市芦淞区'),
(430204, 3, 430000, '湖南省', 430200, '株洲市', '石峰区', '湖南省株洲市石峰区'),
(430211, 3, 430000, '湖南省', 430200, '株洲市', '天元区', '湖南省株洲市天元区'),
(430221, 3, 430000, '湖南省', 430200, '株洲市', '株洲县', '湖南省株洲市株洲县'),
(430223, 3, 430000, '湖南省', 430200, '株洲市', '攸县', '湖南省株洲市攸县'),
(430224, 3, 430000, '湖南省', 430200, '株洲市', '茶陵县', '湖南省株洲市茶陵县'),
(430225, 3, 430000, '湖南省', 430200, '株洲市', '炎陵县', '湖南省株洲市炎陵县'),
(430281, 3, 430000, '湖南省', 430200, '株洲市', '醴陵市', '湖南省株洲市醴陵市'),
(430300, 2, 430000, '湖南省', 0, '', '湘潭市', '湖南省湘潭市'),
(430302, 3, 430000, '湖南省', 430300, '湘潭市', '雨湖区', '湖南省湘潭市雨湖区'),
(430304, 3, 430000, '湖南省', 430300, '湘潭市', '岳塘区', '湖南省湘潭市岳塘区'),
(430321, 3, 430000, '湖南省', 430300, '湘潭市', '湘潭县', '湖南省湘潭市湘潭县'),
(430381, 3, 430000, '湖南省', 430300, '湘潭市', '湘乡市', '湖南省湘潭市湘乡市'),
(430382, 3, 430000, '湖南省', 430300, '湘潭市', '韶山市', '湖南省湘潭市韶山市'),
(430400, 2, 430000, '湖南省', 0, '', '衡阳市', '湖南省衡阳市'),
(430405, 3, 430000, '湖南省', 430400, '衡阳市', '珠晖区', '湖南省衡阳市珠晖区'),
(430406, 3, 430000, '湖南省', 430400, '衡阳市', '雁峰区', '湖南省衡阳市雁峰区'),
(430407, 3, 430000, '湖南省', 430400, '衡阳市', '石鼓区', '湖南省衡阳市石鼓区'),
(430408, 3, 430000, '湖南省', 430400, '衡阳市', '蒸湘区', '湖南省衡阳市蒸湘区'),
(430412, 3, 430000, '湖南省', 430400, '衡阳市', '南岳区', '湖南省衡阳市南岳区'),
(430421, 3, 430000, '湖南省', 430400, '衡阳市', '衡阳县', '湖南省衡阳市衡阳县'),
(430422, 3, 430000, '湖南省', 430400, '衡阳市', '衡南县', '湖南省衡阳市衡南县'),
(430423, 3, 430000, '湖南省', 430400, '衡阳市', '衡山县', '湖南省衡阳市衡山县'),
(430424, 3, 430000, '湖南省', 430400, '衡阳市', '衡东县', '湖南省衡阳市衡东县'),
(430426, 3, 430000, '湖南省', 430400, '衡阳市', '祁东县', '湖南省衡阳市祁东县'),
(430481, 3, 430000, '湖南省', 430400, '衡阳市', '耒阳市', '湖南省衡阳市耒阳市'),
(430482, 3, 430000, '湖南省', 430400, '衡阳市', '常宁市', '湖南省衡阳市常宁市'),
(430500, 2, 430000, '湖南省', 0, '', '邵阳市', '湖南省邵阳市'),
(430502, 3, 430000, '湖南省', 430500, '邵阳市', '双清区', '湖南省邵阳市双清区'),
(430503, 3, 430000, '湖南省', 430500, '邵阳市', '大祥区', '湖南省邵阳市大祥区'),
(430511, 3, 430000, '湖南省', 430500, '邵阳市', '北塔区', '湖南省邵阳市北塔区'),
(430521, 3, 430000, '湖南省', 430500, '邵阳市', '邵东县', '湖南省邵阳市邵东县'),
(430522, 3, 430000, '湖南省', 430500, '邵阳市', '新邵县', '湖南省邵阳市新邵县'),
(430523, 3, 430000, '湖南省', 430500, '邵阳市', '邵阳县', '湖南省邵阳市邵阳县'),
(430524, 3, 430000, '湖南省', 430500, '邵阳市', '隆回县', '湖南省邵阳市隆回县'),
(430525, 3, 430000, '湖南省', 430500, '邵阳市', '洞口县', '湖南省邵阳市洞口县'),
(430527, 3, 430000, '湖南省', 430500, '邵阳市', '绥宁县', '湖南省邵阳市绥宁县'),
(430528, 3, 430000, '湖南省', 430500, '邵阳市', '新宁县', '湖南省邵阳市新宁县'),
(430529, 3, 430000, '湖南省', 430500, '邵阳市', '城步苗族自治县', '湖南省邵阳市城步苗族自治县'),
(430581, 3, 430000, '湖南省', 430500, '邵阳市', '武冈市', '湖南省邵阳市武冈市'),
(430600, 2, 430000, '湖南省', 0, '', '岳阳市', '湖南省岳阳市'),
(430602, 3, 430000, '湖南省', 430600, '岳阳市', '岳阳楼区', '湖南省岳阳市岳阳楼区'),
(430603, 3, 430000, '湖南省', 430600, '岳阳市', '云溪区', '湖南省岳阳市云溪区'),
(430611, 3, 430000, '湖南省', 430600, '岳阳市', '君山区', '湖南省岳阳市君山区'),
(430621, 3, 430000, '湖南省', 430600, '岳阳市', '岳阳县', '湖南省岳阳市岳阳县'),
(430623, 3, 430000, '湖南省', 430600, '岳阳市', '华容县', '湖南省岳阳市华容县'),
(430624, 3, 430000, '湖南省', 430600, '岳阳市', '湘阴县', '湖南省岳阳市湘阴县'),
(430626, 3, 430000, '湖南省', 430600, '岳阳市', '平江县', '湖南省岳阳市平江县'),
(430681, 3, 430000, '湖南省', 430600, '岳阳市', '汨罗市', '湖南省岳阳市汨罗市'),
(430682, 3, 430000, '湖南省', 430600, '岳阳市', '临湘市', '湖南省岳阳市临湘市'),
(430700, 2, 430000, '湖南省', 0, '', '常德市', '湖南省常德市'),
(430702, 3, 430000, '湖南省', 430700, '常德市', '武陵区', '湖南省常德市武陵区'),
(430703, 3, 430000, '湖南省', 430700, '常德市', '鼎城区', '湖南省常德市鼎城区'),
(430721, 3, 430000, '湖南省', 430700, '常德市', '安乡县', '湖南省常德市安乡县'),
(430722, 3, 430000, '湖南省', 430700, '常德市', '汉寿县', '湖南省常德市汉寿县'),
(430723, 3, 430000, '湖南省', 430700, '常德市', '澧县', '湖南省常德市澧县'),
(430724, 3, 430000, '湖南省', 430700, '常德市', '临澧县', '湖南省常德市临澧县'),
(430725, 3, 430000, '湖南省', 430700, '常德市', '桃源县', '湖南省常德市桃源县'),
(430726, 3, 430000, '湖南省', 430700, '常德市', '石门县', '湖南省常德市石门县'),
(430781, 3, 430000, '湖南省', 430700, '常德市', '津市市', '湖南省常德市津市市'),
(430800, 2, 430000, '湖南省', 0, '', '张家界市', '湖南省张家界市'),
(430802, 3, 430000, '湖南省', 430800, '张家界市', '永定区', '湖南省张家界市永定区'),
(430811, 3, 430000, '湖南省', 430800, '张家界市', '武陵源区', '湖南省张家界市武陵源区'),
(430821, 3, 430000, '湖南省', 430800, '张家界市', '慈利县', '湖南省张家界市慈利县'),
(430822, 3, 430000, '湖南省', 430800, '张家界市', '桑植县', '湖南省张家界市桑植县'),
(430900, 2, 430000, '湖南省', 0, '', '益阳市', '湖南省益阳市'),
(430902, 3, 430000, '湖南省', 430900, '益阳市', '资阳区', '湖南省益阳市资阳区'),
(430903, 3, 430000, '湖南省', 430900, '益阳市', '赫山区', '湖南省益阳市赫山区'),
(430921, 3, 430000, '湖南省', 430900, '益阳市', '南县', '湖南省益阳市南县'),
(430922, 3, 430000, '湖南省', 430900, '益阳市', '桃江县', '湖南省益阳市桃江县'),
(430923, 3, 430000, '湖南省', 430900, '益阳市', '安化县', '湖南省益阳市安化县'),
(430981, 3, 430000, '湖南省', 430900, '益阳市', '沅江市', '湖南省益阳市沅江市'),
(431000, 2, 430000, '湖南省', 0, '', '郴州市', '湖南省郴州市'),
(431002, 3, 430000, '湖南省', 431000, '郴州市', '北湖区', '湖南省郴州市北湖区'),
(431003, 3, 430000, '湖南省', 431000, '郴州市', '苏仙区', '湖南省郴州市苏仙区'),
(431021, 3, 430000, '湖南省', 431000, '郴州市', '桂阳县', '湖南省郴州市桂阳县'),
(431022, 3, 430000, '湖南省', 431000, '郴州市', '宜章县', '湖南省郴州市宜章县'),
(431023, 3, 430000, '湖南省', 431000, '郴州市', '永兴县', '湖南省郴州市永兴县'),
(431024, 3, 430000, '湖南省', 431000, '郴州市', '嘉禾县', '湖南省郴州市嘉禾县'),
(431025, 3, 430000, '湖南省', 431000, '郴州市', '临武县', '湖南省郴州市临武县'),
(431026, 3, 430000, '湖南省', 431000, '郴州市', '汝城县', '湖南省郴州市汝城县'),
(431027, 3, 430000, '湖南省', 431000, '郴州市', '桂东县', '湖南省郴州市桂东县'),
(431028, 3, 430000, '湖南省', 431000, '郴州市', '安仁县', '湖南省郴州市安仁县'),
(431081, 3, 430000, '湖南省', 431000, '郴州市', '资兴市', '湖南省郴州市资兴市'),
(431100, 2, 430000, '湖南省', 0, '', '永州市', '湖南省永州市'),
(431102, 3, 430000, '湖南省', 431100, '永州市', '零陵区', '湖南省永州市零陵区'),
(431103, 3, 430000, '湖南省', 431100, '永州市', '冷水滩区', '湖南省永州市冷水滩区'),
(431121, 3, 430000, '湖南省', 431100, '永州市', '祁阳县', '湖南省永州市祁阳县'),
(431122, 3, 430000, '湖南省', 431100, '永州市', '东安县', '湖南省永州市东安县'),
(431123, 3, 430000, '湖南省', 431100, '永州市', '双牌县', '湖南省永州市双牌县'),
(431124, 3, 430000, '湖南省', 431100, '永州市', '道县', '湖南省永州市道县'),
(431125, 3, 430000, '湖南省', 431100, '永州市', '江永县', '湖南省永州市江永县'),
(431126, 3, 430000, '湖南省', 431100, '永州市', '宁远县', '湖南省永州市宁远县'),
(431127, 3, 430000, '湖南省', 431100, '永州市', '蓝山县', '湖南省永州市蓝山县'),
(431128, 3, 430000, '湖南省', 431100, '永州市', '新田县', '湖南省永州市新田县'),
(431129, 3, 430000, '湖南省', 431100, '永州市', '江华瑶族自治县', '湖南省永州市江华瑶族自治县'),
(431200, 2, 430000, '湖南省', 0, '', '怀化市', '湖南省怀化市'),
(431202, 3, 430000, '湖南省', 431200, '怀化市', '鹤城区', '湖南省怀化市鹤城区'),
(431221, 3, 430000, '湖南省', 431200, '怀化市', '中方县', '湖南省怀化市中方县'),
(431222, 3, 430000, '湖南省', 431200, '怀化市', '沅陵县', '湖南省怀化市沅陵县'),
(431223, 3, 430000, '湖南省', 431200, '怀化市', '辰溪县', '湖南省怀化市辰溪县'),
(431224, 3, 430000, '湖南省', 431200, '怀化市', '溆浦县', '湖南省怀化市溆浦县'),
(431225, 3, 430000, '湖南省', 431200, '怀化市', '会同县', '湖南省怀化市会同县'),
(431226, 3, 430000, '湖南省', 431200, '怀化市', '麻阳苗族自治县', '湖南省怀化市麻阳苗族自治县'),
(431227, 3, 430000, '湖南省', 431200, '怀化市', '新晃侗族自治县', '湖南省怀化市新晃侗族自治县'),
(431228, 3, 430000, '湖南省', 431200, '怀化市', '芷江侗族自治县', '湖南省怀化市芷江侗族自治县'),
(431229, 3, 430000, '湖南省', 431200, '怀化市', '靖州苗族侗族自治县', '湖南省怀化市靖州苗族侗族自治县'),
(431230, 3, 430000, '湖南省', 431200, '怀化市', '通道侗族自治县', '湖南省怀化市通道侗族自治县'),
(431281, 3, 430000, '湖南省', 431200, '怀化市', '洪江市', '湖南省怀化市洪江市'),
(431300, 2, 430000, '湖南省', 0, '', '娄底市', '湖南省娄底市'),
(431302, 3, 430000, '湖南省', 431300, '娄底市', '娄星区', '湖南省娄底市娄星区'),
(431321, 3, 430000, '湖南省', 431300, '娄底市', '双峰县', '湖南省娄底市双峰县'),
(431322, 3, 430000, '湖南省', 431300, '娄底市', '新化县', '湖南省娄底市新化县'),
(431381, 3, 430000, '湖南省', 431300, '娄底市', '冷水江市', '湖南省娄底市冷水江市'),
(431382, 3, 430000, '湖南省', 431300, '娄底市', '涟源市', '湖南省娄底市涟源市'),
(433100, 2, 430000, '湖南省', 0, '', '湘西土家族苗族自治州', '湖南省湘西土家族苗族自治州'),
(433101, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '吉首市', '湖南省湘西土家族苗族自治州吉首市'),
(433122, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '泸溪县', '湖南省湘西土家族苗族自治州泸溪县'),
(433123, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '凤凰县', '湖南省湘西土家族苗族自治州凤凰县'),
(433124, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '花垣县', '湖南省湘西土家族苗族自治州花垣县'),
(433125, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '保靖县', '湖南省湘西土家族苗族自治州保靖县'),
(433126, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '古丈县', '湖南省湘西土家族苗族自治州古丈县'),
(433127, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '永顺县', '湖南省湘西土家族苗族自治州永顺县'),
(433130, 3, 430000, '湖南省', 433100, '湘西土家族苗族自治州', '龙山县', '湖南省湘西土家族苗族自治州龙山县'),
(440000, 1, 0, '', 0, '', '广东省', '广东省'),
(440100, 2, 440000, '广东省', 0, '', '广州市', '广东省广州市'),
(440103, 3, 440000, '广东省', 440100, '广州市', '荔湾区', '广东省广州市荔湾区'),
(440104, 3, 440000, '广东省', 440100, '广州市', '越秀区', '广东省广州市越秀区'),
(440105, 3, 440000, '广东省', 440100, '广州市', '海珠区', '广东省广州市海珠区'),
(440106, 3, 440000, '广东省', 440100, '广州市', '天河区', '广东省广州市天河区'),
(440111, 3, 440000, '广东省', 440100, '广州市', '白云区', '广东省广州市白云区'),
(440112, 3, 440000, '广东省', 440100, '广州市', '黄埔区', '广东省广州市黄埔区'),
(440113, 3, 440000, '广东省', 440100, '广州市', '番禺区', '广东省广州市番禺区'),
(440114, 3, 440000, '广东省', 440100, '广州市', '花都区', '广东省广州市花都区'),
(440115, 3, 440000, '广东省', 440100, '广州市', '南沙区', '广东省广州市南沙区'),
(440117, 3, 440000, '广东省', 440100, '广州市', '从化区', '广东省广州市从化区'),
(440118, 3, 440000, '广东省', 440100, '广州市', '增城区', '广东省广州市增城区'),
(440200, 2, 440000, '广东省', 0, '', '韶关市', '广东省韶关市'),
(440203, 3, 440000, '广东省', 440200, '韶关市', '武江区', '广东省韶关市武江区'),
(440204, 3, 440000, '广东省', 440200, '韶关市', '浈江区', '广东省韶关市浈江区'),
(440205, 3, 440000, '广东省', 440200, '韶关市', '曲江区', '广东省韶关市曲江区'),
(440222, 3, 440000, '广东省', 440200, '韶关市', '始兴县', '广东省韶关市始兴县'),
(440224, 3, 440000, '广东省', 440200, '韶关市', '仁化县', '广东省韶关市仁化县'),
(440229, 3, 440000, '广东省', 440200, '韶关市', '翁源县', '广东省韶关市翁源县'),
(440232, 3, 440000, '广东省', 440200, '韶关市', '乳源瑶族自治县', '广东省韶关市乳源瑶族自治县'),
(440233, 3, 440000, '广东省', 440200, '韶关市', '新丰县', '广东省韶关市新丰县'),
(440281, 3, 440000, '广东省', 440200, '韶关市', '乐昌市', '广东省韶关市乐昌市'),
(440282, 3, 440000, '广东省', 440200, '韶关市', '南雄市', '广东省韶关市南雄市'),
(440300, 2, 440000, '广东省', 0, '', '深圳市', '广东省深圳市'),
(440303, 3, 440000, '广东省', 440300, '深圳市', '罗湖区', '广东省深圳市罗湖区'),
(440304, 3, 440000, '广东省', 440300, '深圳市', '福田区', '广东省深圳市福田区'),
(440305, 3, 440000, '广东省', 440300, '深圳市', '南山区', '广东省深圳市南山区'),
(440306, 3, 440000, '广东省', 440300, '深圳市', '宝安区', '广东省深圳市宝安区'),
(440307, 3, 440000, '广东省', 440300, '深圳市', '龙岗区', '广东省深圳市龙岗区'),
(440308, 3, 440000, '广东省', 440300, '深圳市', '盐田区', '广东省深圳市盐田区'),
(440309, 3, 440000, '广东省', 440300, '深圳市', '龙华区', '广东省深圳市龙华区'),
(440310, 3, 440000, '广东省', 440300, '深圳市', '坪山区', '广东省深圳市坪山区'),
(440400, 2, 440000, '广东省', 0, '', '珠海市', '广东省珠海市'),
(440402, 3, 440000, '广东省', 440400, '珠海市', '香洲区', '广东省珠海市香洲区'),
(440403, 3, 440000, '广东省', 440400, '珠海市', '斗门区', '广东省珠海市斗门区'),
(440404, 3, 440000, '广东省', 440400, '珠海市', '金湾区', '广东省珠海市金湾区'),
(440500, 2, 440000, '广东省', 0, '', '汕头市', '广东省汕头市'),
(440507, 3, 440000, '广东省', 440500, '汕头市', '龙湖区', '广东省汕头市龙湖区'),
(440511, 3, 440000, '广东省', 440500, '汕头市', '金平区', '广东省汕头市金平区'),
(440512, 3, 440000, '广东省', 440500, '汕头市', '濠江区', '广东省汕头市濠江区'),
(440513, 3, 440000, '广东省', 440500, '汕头市', '潮阳区', '广东省汕头市潮阳区'),
(440514, 3, 440000, '广东省', 440500, '汕头市', '潮南区', '广东省汕头市潮南区'),
(440515, 3, 440000, '广东省', 440500, '汕头市', '澄海区', '广东省汕头市澄海区'),
(440523, 3, 440000, '广东省', 440500, '汕头市', '南澳县', '广东省汕头市南澳县'),
(440600, 2, 440000, '广东省', 0, '', '佛山市', '广东省佛山市'),
(440604, 3, 440000, '广东省', 440600, '佛山市', '禅城区', '广东省佛山市禅城区'),
(440605, 3, 440000, '广东省', 440600, '佛山市', '南海区', '广东省佛山市南海区'),
(440606, 3, 440000, '广东省', 440600, '佛山市', '顺德区', '广东省佛山市顺德区'),
(440607, 3, 440000, '广东省', 440600, '佛山市', '三水区', '广东省佛山市三水区'),
(440608, 3, 440000, '广东省', 440600, '佛山市', '高明区', '广东省佛山市高明区'),
(440700, 2, 440000, '广东省', 0, '', '江门市', '广东省江门市'),
(440703, 3, 440000, '广东省', 440700, '江门市', '蓬江区', '广东省江门市蓬江区'),
(440704, 3, 440000, '广东省', 440700, '江门市', '江海区', '广东省江门市江海区'),
(440705, 3, 440000, '广东省', 440700, '江门市', '新会区', '广东省江门市新会区'),
(440781, 3, 440000, '广东省', 440700, '江门市', '台山市', '广东省江门市台山市'),
(440783, 3, 440000, '广东省', 440700, '江门市', '开平市', '广东省江门市开平市'),
(440784, 3, 440000, '广东省', 440700, '江门市', '鹤山市', '广东省江门市鹤山市'),
(440785, 3, 440000, '广东省', 440700, '江门市', '恩平市', '广东省江门市恩平市'),
(440800, 2, 440000, '广东省', 0, '', '湛江市', '广东省湛江市'),
(440802, 3, 440000, '广东省', 440800, '湛江市', '赤坎区', '广东省湛江市赤坎区'),
(440803, 3, 440000, '广东省', 440800, '湛江市', '霞山区', '广东省湛江市霞山区'),
(440804, 3, 440000, '广东省', 440800, '湛江市', '坡头区', '广东省湛江市坡头区'),
(440811, 3, 440000, '广东省', 440800, '湛江市', '麻章区', '广东省湛江市麻章区'),
(440823, 3, 440000, '广东省', 440800, '湛江市', '遂溪县', '广东省湛江市遂溪县'),
(440825, 3, 440000, '广东省', 440800, '湛江市', '徐闻县', '广东省湛江市徐闻县'),
(440881, 3, 440000, '广东省', 440800, '湛江市', '廉江市', '广东省湛江市廉江市'),
(440882, 3, 440000, '广东省', 440800, '湛江市', '雷州市', '广东省湛江市雷州市'),
(440883, 3, 440000, '广东省', 440800, '湛江市', '吴川市', '广东省湛江市吴川市'),
(440900, 2, 440000, '广东省', 0, '', '茂名市', '广东省茂名市'),
(440902, 3, 440000, '广东省', 440900, '茂名市', '茂南区', '广东省茂名市茂南区'),
(440904, 3, 440000, '广东省', 440900, '茂名市', '电白区', '广东省茂名市电白区'),
(440981, 3, 440000, '广东省', 440900, '茂名市', '高州市', '广东省茂名市高州市'),
(440982, 3, 440000, '广东省', 440900, '茂名市', '化州市', '广东省茂名市化州市'),
(440983, 3, 440000, '广东省', 440900, '茂名市', '信宜市', '广东省茂名市信宜市'),
(441200, 2, 440000, '广东省', 0, '', '肇庆市', '广东省肇庆市'),
(441202, 3, 440000, '广东省', 441200, '肇庆市', '端州区', '广东省肇庆市端州区'),
(441203, 3, 440000, '广东省', 441200, '肇庆市', '鼎湖区', '广东省肇庆市鼎湖区'),
(441204, 3, 440000, '广东省', 441200, '肇庆市', '高要区', '广东省肇庆市高要区'),
(441223, 3, 440000, '广东省', 441200, '肇庆市', '广宁县', '广东省肇庆市广宁县'),
(441224, 3, 440000, '广东省', 441200, '肇庆市', '怀集县', '广东省肇庆市怀集县'),
(441225, 3, 440000, '广东省', 441200, '肇庆市', '封开县', '广东省肇庆市封开县'),
(441226, 3, 440000, '广东省', 441200, '肇庆市', '德庆县', '广东省肇庆市德庆县'),
(441284, 3, 440000, '广东省', 441200, '肇庆市', '四会市', '广东省肇庆市四会市'),
(441300, 2, 440000, '广东省', 0, '', '惠州市', '广东省惠州市'),
(441302, 3, 440000, '广东省', 441300, '惠州市', '惠城区', '广东省惠州市惠城区'),
(441303, 3, 440000, '广东省', 441300, '惠州市', '惠阳区', '广东省惠州市惠阳区'),
(441322, 3, 440000, '广东省', 441300, '惠州市', '博罗县', '广东省惠州市博罗县'),
(441323, 3, 440000, '广东省', 441300, '惠州市', '惠东县', '广东省惠州市惠东县'),
(441324, 3, 440000, '广东省', 441300, '惠州市', '龙门县', '广东省惠州市龙门县'),
(441400, 2, 440000, '广东省', 0, '', '梅州市', '广东省梅州市'),
(441402, 3, 440000, '广东省', 441400, '梅州市', '梅江区', '广东省梅州市梅江区'),
(441403, 3, 440000, '广东省', 441400, '梅州市', '梅县区', '广东省梅州市梅县区'),
(441422, 3, 440000, '广东省', 441400, '梅州市', '大埔县', '广东省梅州市大埔县'),
(441423, 3, 440000, '广东省', 441400, '梅州市', '丰顺县', '广东省梅州市丰顺县'),
(441424, 3, 440000, '广东省', 441400, '梅州市', '五华县', '广东省梅州市五华县'),
(441426, 3, 440000, '广东省', 441400, '梅州市', '平远县', '广东省梅州市平远县'),
(441427, 3, 440000, '广东省', 441400, '梅州市', '蕉岭县', '广东省梅州市蕉岭县'),
(441481, 3, 440000, '广东省', 441400, '梅州市', '兴宁市', '广东省梅州市兴宁市'),
(441500, 2, 440000, '广东省', 0, '', '汕尾市', '广东省汕尾市'),
(441502, 3, 440000, '广东省', 441500, '汕尾市', '城区', '广东省汕尾市城区'),
(441521, 3, 440000, '广东省', 441500, '汕尾市', '海丰县', '广东省汕尾市海丰县'),
(441523, 3, 440000, '广东省', 441500, '汕尾市', '陆河县', '广东省汕尾市陆河县'),
(441581, 3, 440000, '广东省', 441500, '汕尾市', '陆丰市', '广东省汕尾市陆丰市'),
(441600, 2, 440000, '广东省', 0, '', '河源市', '广东省河源市'),
(441602, 3, 440000, '广东省', 441600, '河源市', '源城区', '广东省河源市源城区'),
(441621, 3, 440000, '广东省', 441600, '河源市', '紫金县', '广东省河源市紫金县'),
(441622, 3, 440000, '广东省', 441600, '河源市', '龙川县', '广东省河源市龙川县'),
(441623, 3, 440000, '广东省', 441600, '河源市', '连平县', '广东省河源市连平县'),
(441624, 3, 440000, '广东省', 441600, '河源市', '和平县', '广东省河源市和平县'),
(441625, 3, 440000, '广东省', 441600, '河源市', '东源县', '广东省河源市东源县'),
(441700, 2, 440000, '广东省', 0, '', '阳江市', '广东省阳江市'),
(441702, 3, 440000, '广东省', 441700, '阳江市', '江城区', '广东省阳江市江城区'),
(441704, 3, 440000, '广东省', 441700, '阳江市', '阳东区', '广东省阳江市阳东区'),
(441721, 3, 440000, '广东省', 441700, '阳江市', '阳西县', '广东省阳江市阳西县'),
(441781, 3, 440000, '广东省', 441700, '阳江市', '阳春市', '广东省阳江市阳春市'),
(441800, 2, 440000, '广东省', 0, '', '清远市', '广东省清远市'),
(441802, 3, 440000, '广东省', 441800, '清远市', '清城区', '广东省清远市清城区'),
(441803, 3, 440000, '广东省', 441800, '清远市', '清新区', '广东省清远市清新区'),
(441821, 3, 440000, '广东省', 441800, '清远市', '佛冈县', '广东省清远市佛冈县'),
(441823, 3, 440000, '广东省', 441800, '清远市', '阳山县', '广东省清远市阳山县'),
(441825, 3, 440000, '广东省', 441800, '清远市', '连山壮族瑶族自治县', '广东省清远市连山壮族瑶族自治县'),
(441826, 3, 440000, '广东省', 441800, '清远市', '连南瑶族自治县', '广东省清远市连南瑶族自治县'),
(441881, 3, 440000, '广东省', 441800, '清远市', '英德市', '广东省清远市英德市'),
(441882, 3, 440000, '广东省', 441800, '清远市', '连州市', '广东省清远市连州市'),
(441900, 2, 440000, '广东省', 0, '', '东莞市', '广东省东莞市'),
(442000, 2, 440000, '广东省', 0, '', '中山市', '广东省中山市'),
(445100, 2, 440000, '广东省', 0, '', '潮州市', '广东省潮州市'),
(445102, 3, 440000, '广东省', 445100, '潮州市', '湘桥区', '广东省潮州市湘桥区'),
(445103, 3, 440000, '广东省', 445100, '潮州市', '潮安区', '广东省潮州市潮安区'),
(445122, 3, 440000, '广东省', 445100, '潮州市', '饶平县', '广东省潮州市饶平县'),
(445200, 2, 440000, '广东省', 0, '', '揭阳市', '广东省揭阳市'),
(445202, 3, 440000, '广东省', 445200, '揭阳市', '榕城区', '广东省揭阳市榕城区'),
(445203, 3, 440000, '广东省', 445200, '揭阳市', '揭东区', '广东省揭阳市揭东区'),
(445222, 3, 440000, '广东省', 445200, '揭阳市', '揭西县', '广东省揭阳市揭西县'),
(445224, 3, 440000, '广东省', 445200, '揭阳市', '惠来县', '广东省揭阳市惠来县'),
(445281, 3, 440000, '广东省', 445200, '揭阳市', '普宁市', '广东省揭阳市普宁市'),
(445300, 2, 440000, '广东省', 0, '', '云浮市', '广东省云浮市'),
(445302, 3, 440000, '广东省', 445300, '云浮市', '云城区', '广东省云浮市云城区'),
(445303, 3, 440000, '广东省', 445300, '云浮市', '云安区', '广东省云浮市云安区'),
(445321, 3, 440000, '广东省', 445300, '云浮市', '新兴县', '广东省云浮市新兴县'),
(445322, 3, 440000, '广东省', 445300, '云浮市', '郁南县', '广东省云浮市郁南县'),
(445381, 3, 440000, '广东省', 445300, '云浮市', '罗定市', '广东省云浮市罗定市'),
(450000, 1, 0, '', 0, '', '广西壮族自治区', '广西壮族自治区'),
(450100, 2, 450000, '广西壮族自治区', 0, '', '南宁市', '广西壮族自治区南宁市'),
(450102, 3, 450000, '广西壮族自治区', 450100, '南宁市', '兴宁区', '广西壮族自治区南宁市兴宁区'),
(450103, 3, 450000, '广西壮族自治区', 450100, '南宁市', '青秀区', '广西壮族自治区南宁市青秀区'),
(450105, 3, 450000, '广西壮族自治区', 450100, '南宁市', '江南区', '广西壮族自治区南宁市江南区'),
(450107, 3, 450000, '广西壮族自治区', 450100, '南宁市', '西乡塘区', '广西壮族自治区南宁市西乡塘区'),
(450108, 3, 450000, '广西壮族自治区', 450100, '南宁市', '良庆区', '广西壮族自治区南宁市良庆区'),
(450109, 3, 450000, '广西壮族自治区', 450100, '南宁市', '邕宁区', '广西壮族自治区南宁市邕宁区'),
(450110, 3, 450000, '广西壮族自治区', 450100, '南宁市', '武鸣区', '广西壮族自治区南宁市武鸣区'),
(450123, 3, 450000, '广西壮族自治区', 450100, '南宁市', '隆安县', '广西壮族自治区南宁市隆安县'),
(450124, 3, 450000, '广西壮族自治区', 450100, '南宁市', '马山县', '广西壮族自治区南宁市马山县'),
(450125, 3, 450000, '广西壮族自治区', 450100, '南宁市', '上林县', '广西壮族自治区南宁市上林县'),
(450126, 3, 450000, '广西壮族自治区', 450100, '南宁市', '宾阳县', '广西壮族自治区南宁市宾阳县'),
(450127, 3, 450000, '广西壮族自治区', 450100, '南宁市', '横县', '广西壮族自治区南宁市横县'),
(450200, 2, 450000, '广西壮族自治区', 0, '', '柳州市', '广西壮族自治区柳州市'),
(450202, 3, 450000, '广西壮族自治区', 450200, '柳州市', '城中区', '广西壮族自治区柳州市城中区'),
(450203, 3, 450000, '广西壮族自治区', 450200, '柳州市', '鱼峰区', '广西壮族自治区柳州市鱼峰区'),
(450204, 3, 450000, '广西壮族自治区', 450200, '柳州市', '柳南区', '广西壮族自治区柳州市柳南区'),
(450205, 3, 450000, '广西壮族自治区', 450200, '柳州市', '柳北区', '广西壮族自治区柳州市柳北区'),
(450206, 3, 450000, '广西壮族自治区', 450200, '柳州市', '柳江区', '广西壮族自治区柳州市柳江区'),
(450222, 3, 450000, '广西壮族自治区', 450200, '柳州市', '柳城县', '广西壮族自治区柳州市柳城县'),
(450223, 3, 450000, '广西壮族自治区', 450200, '柳州市', '鹿寨县', '广西壮族自治区柳州市鹿寨县'),
(450224, 3, 450000, '广西壮族自治区', 450200, '柳州市', '融安县', '广西壮族自治区柳州市融安县'),
(450225, 3, 450000, '广西壮族自治区', 450200, '柳州市', '融水苗族自治县', '广西壮族自治区柳州市融水苗族自治县'),
(450226, 3, 450000, '广西壮族自治区', 450200, '柳州市', '三江侗族自治县', '广西壮族自治区柳州市三江侗族自治县'),
(450300, 2, 450000, '广西壮族自治区', 0, '', '桂林市', '广西壮族自治区桂林市'),
(450302, 3, 450000, '广西壮族自治区', 450300, '桂林市', '秀峰区', '广西壮族自治区桂林市秀峰区'),
(450303, 3, 450000, '广西壮族自治区', 450300, '桂林市', '叠彩区', '广西壮族自治区桂林市叠彩区'),
(450304, 3, 450000, '广西壮族自治区', 450300, '桂林市', '象山区', '广西壮族自治区桂林市象山区'),
(450305, 3, 450000, '广西壮族自治区', 450300, '桂林市', '七星区', '广西壮族自治区桂林市七星区'),
(450311, 3, 450000, '广西壮族自治区', 450300, '桂林市', '雁山区', '广西壮族自治区桂林市雁山区'),
(450312, 3, 450000, '广西壮族自治区', 450300, '桂林市', '临桂区', '广西壮族自治区桂林市临桂区'),
(450321, 3, 450000, '广西壮族自治区', 450300, '桂林市', '阳朔县', '广西壮族自治区桂林市阳朔县'),
(450323, 3, 450000, '广西壮族自治区', 450300, '桂林市', '灵川县', '广西壮族自治区桂林市灵川县'),
(450324, 3, 450000, '广西壮族自治区', 450300, '桂林市', '全州县', '广西壮族自治区桂林市全州县'),
(450325, 3, 450000, '广西壮族自治区', 450300, '桂林市', '兴安县', '广西壮族自治区桂林市兴安县'),
(450326, 3, 450000, '广西壮族自治区', 450300, '桂林市', '永福县', '广西壮族自治区桂林市永福县'),
(450327, 3, 450000, '广西壮族自治区', 450300, '桂林市', '灌阳县', '广西壮族自治区桂林市灌阳县'),
(450328, 3, 450000, '广西壮族自治区', 450300, '桂林市', '龙胜各族自治县', '广西壮族自治区桂林市龙胜各族自治县'),
(450329, 3, 450000, '广西壮族自治区', 450300, '桂林市', '资源县', '广西壮族自治区桂林市资源县'),
(450330, 3, 450000, '广西壮族自治区', 450300, '桂林市', '平乐县', '广西壮族自治区桂林市平乐县'),
(450331, 3, 450000, '广西壮族自治区', 450300, '桂林市', '荔浦县', '广西壮族自治区桂林市荔浦县'),
(450332, 3, 450000, '广西壮族自治区', 450300, '桂林市', '恭城瑶族自治县', '广西壮族自治区桂林市恭城瑶族自治县'),
(450400, 2, 450000, '广西壮族自治区', 0, '', '梧州市', '广西壮族自治区梧州市'),
(450403, 3, 450000, '广西壮族自治区', 450400, '梧州市', '万秀区', '广西壮族自治区梧州市万秀区'),
(450405, 3, 450000, '广西壮族自治区', 450400, '梧州市', '长洲区', '广西壮族自治区梧州市长洲区'),
(450406, 3, 450000, '广西壮族自治区', 450400, '梧州市', '龙圩区', '广西壮族自治区梧州市龙圩区'),
(450421, 3, 450000, '广西壮族自治区', 450400, '梧州市', '苍梧县', '广西壮族自治区梧州市苍梧县'),
(450422, 3, 450000, '广西壮族自治区', 450400, '梧州市', '藤县', '广西壮族自治区梧州市藤县'),
(450423, 3, 450000, '广西壮族自治区', 450400, '梧州市', '蒙山县', '广西壮族自治区梧州市蒙山县'),
(450481, 3, 450000, '广西壮族自治区', 450400, '梧州市', '岑溪市', '广西壮族自治区梧州市岑溪市'),
(450500, 2, 450000, '广西壮族自治区', 0, '', '北海市', '广西壮族自治区北海市'),
(450502, 3, 450000, '广西壮族自治区', 450500, '北海市', '海城区', '广西壮族自治区北海市海城区'),
(450503, 3, 450000, '广西壮族自治区', 450500, '北海市', '银海区', '广西壮族自治区北海市银海区'),
(450512, 3, 450000, '广西壮族自治区', 450500, '北海市', '铁山港区', '广西壮族自治区北海市铁山港区'),
(450521, 3, 450000, '广西壮族自治区', 450500, '北海市', '合浦县', '广西壮族自治区北海市合浦县'),
(450600, 2, 450000, '广西壮族自治区', 0, '', '防城港市', '广西壮族自治区防城港市'),
(450602, 3, 450000, '广西壮族自治区', 450600, '防城港市', '港口区', '广西壮族自治区防城港市港口区'),
(450603, 3, 450000, '广西壮族自治区', 450600, '防城港市', '防城区', '广西壮族自治区防城港市防城区'),
(450621, 3, 450000, '广西壮族自治区', 450600, '防城港市', '上思县', '广西壮族自治区防城港市上思县'),
(450681, 3, 450000, '广西壮族自治区', 450600, '防城港市', '东兴市', '广西壮族自治区防城港市东兴市'),
(450700, 2, 450000, '广西壮族自治区', 0, '', '钦州市', '广西壮族自治区钦州市'),
(450702, 3, 450000, '广西壮族自治区', 450700, '钦州市', '钦南区', '广西壮族自治区钦州市钦南区'),
(450703, 3, 450000, '广西壮族自治区', 450700, '钦州市', '钦北区', '广西壮族自治区钦州市钦北区'),
(450721, 3, 450000, '广西壮族自治区', 450700, '钦州市', '灵山县', '广西壮族自治区钦州市灵山县'),
(450722, 3, 450000, '广西壮族自治区', 450700, '钦州市', '浦北县', '广西壮族自治区钦州市浦北县'),
(450800, 2, 450000, '广西壮族自治区', 0, '', '贵港市', '广西壮族自治区贵港市'),
(450802, 3, 450000, '广西壮族自治区', 450800, '贵港市', '港北区', '广西壮族自治区贵港市港北区'),
(450803, 3, 450000, '广西壮族自治区', 450800, '贵港市', '港南区', '广西壮族自治区贵港市港南区'),
(450804, 3, 450000, '广西壮族自治区', 450800, '贵港市', '覃塘区', '广西壮族自治区贵港市覃塘区'),
(450821, 3, 450000, '广西壮族自治区', 450800, '贵港市', '平南县', '广西壮族自治区贵港市平南县'),
(450881, 3, 450000, '广西壮族自治区', 450800, '贵港市', '桂平市', '广西壮族自治区贵港市桂平市'),
(450900, 2, 450000, '广西壮族自治区', 0, '', '玉林市', '广西壮族自治区玉林市'),
(450902, 3, 450000, '广西壮族自治区', 450900, '玉林市', '玉州区', '广西壮族自治区玉林市玉州区'),
(450903, 3, 450000, '广西壮族自治区', 450900, '玉林市', '福绵区', '广西壮族自治区玉林市福绵区'),
(450921, 3, 450000, '广西壮族自治区', 450900, '玉林市', '容县', '广西壮族自治区玉林市容县'),
(450922, 3, 450000, '广西壮族自治区', 450900, '玉林市', '陆川县', '广西壮族自治区玉林市陆川县'),
(450923, 3, 450000, '广西壮族自治区', 450900, '玉林市', '博白县', '广西壮族自治区玉林市博白县'),
(450924, 3, 450000, '广西壮族自治区', 450900, '玉林市', '兴业县', '广西壮族自治区玉林市兴业县'),
(450981, 3, 450000, '广西壮族自治区', 450900, '玉林市', '北流市', '广西壮族自治区玉林市北流市'),
(451000, 2, 450000, '广西壮族自治区', 0, '', '百色市', '广西壮族自治区百色市'),
(451002, 3, 450000, '广西壮族自治区', 451000, '百色市', '右江区', '广西壮族自治区百色市右江区'),
(451021, 3, 450000, '广西壮族自治区', 451000, '百色市', '田阳县', '广西壮族自治区百色市田阳县'),
(451022, 3, 450000, '广西壮族自治区', 451000, '百色市', '田东县', '广西壮族自治区百色市田东县'),
(451023, 3, 450000, '广西壮族自治区', 451000, '百色市', '平果县', '广西壮族自治区百色市平果县'),
(451024, 3, 450000, '广西壮族自治区', 451000, '百色市', '德保县', '广西壮族自治区百色市德保县'),
(451026, 3, 450000, '广西壮族自治区', 451000, '百色市', '那坡县', '广西壮族自治区百色市那坡县'),
(451027, 3, 450000, '广西壮族自治区', 451000, '百色市', '凌云县', '广西壮族自治区百色市凌云县'),
(451028, 3, 450000, '广西壮族自治区', 451000, '百色市', '乐业县', '广西壮族自治区百色市乐业县'),
(451029, 3, 450000, '广西壮族自治区', 451000, '百色市', '田林县', '广西壮族自治区百色市田林县'),
(451030, 3, 450000, '广西壮族自治区', 451000, '百色市', '西林县', '广西壮族自治区百色市西林县'),
(451031, 3, 450000, '广西壮族自治区', 451000, '百色市', '隆林各族自治县', '广西壮族自治区百色市隆林各族自治县'),
(451081, 3, 450000, '广西壮族自治区', 451000, '百色市', '靖西市', '广西壮族自治区百色市靖西市'),
(451100, 2, 450000, '广西壮族自治区', 0, '', '贺州市', '广西壮族自治区贺州市'),
(451102, 3, 450000, '广西壮族自治区', 451100, '贺州市', '八步区', '广西壮族自治区贺州市八步区'),
(451103, 3, 450000, '广西壮族自治区', 451100, '贺州市', '平桂区', '广西壮族自治区贺州市平桂区'),
(451121, 3, 450000, '广西壮族自治区', 451100, '贺州市', '昭平县', '广西壮族自治区贺州市昭平县'),
(451122, 3, 450000, '广西壮族自治区', 451100, '贺州市', '钟山县', '广西壮族自治区贺州市钟山县'),
(451123, 3, 450000, '广西壮族自治区', 451100, '贺州市', '富川瑶族自治县', '广西壮族自治区贺州市富川瑶族自治县'),
(451200, 2, 450000, '广西壮族自治区', 0, '', '河池市', '广西壮族自治区河池市'),
(451202, 3, 450000, '广西壮族自治区', 451200, '河池市', '金城江区', '广西壮族自治区河池市金城江区'),
(451203, 3, 450000, '广西壮族自治区', 451200, '河池市', '宜州区', '广西壮族自治区河池市宜州区'),
(451221, 3, 450000, '广西壮族自治区', 451200, '河池市', '南丹县', '广西壮族自治区河池市南丹县'),
(451222, 3, 450000, '广西壮族自治区', 451200, '河池市', '天峨县', '广西壮族自治区河池市天峨县'),
(451223, 3, 450000, '广西壮族自治区', 451200, '河池市', '凤山县', '广西壮族自治区河池市凤山县'),
(451224, 3, 450000, '广西壮族自治区', 451200, '河池市', '东兰县', '广西壮族自治区河池市东兰县'),
(451225, 3, 450000, '广西壮族自治区', 451200, '河池市', '罗城仫佬族自治县', '广西壮族自治区河池市罗城仫佬族自治县'),
(451226, 3, 450000, '广西壮族自治区', 451200, '河池市', '环江毛南族自治县', '广西壮族自治区河池市环江毛南族自治县'),
(451227, 3, 450000, '广西壮族自治区', 451200, '河池市', '巴马瑶族自治县', '广西壮族自治区河池市巴马瑶族自治县'),
(451228, 3, 450000, '广西壮族自治区', 451200, '河池市', '都安瑶族自治县', '广西壮族自治区河池市都安瑶族自治县'),
(451229, 3, 450000, '广西壮族自治区', 451200, '河池市', '大化瑶族自治县', '广西壮族自治区河池市大化瑶族自治县'),
(451300, 2, 450000, '广西壮族自治区', 0, '', '来宾市', '广西壮族自治区来宾市'),
(451302, 3, 450000, '广西壮族自治区', 451300, '来宾市', '兴宾区', '广西壮族自治区来宾市兴宾区'),
(451321, 3, 450000, '广西壮族自治区', 451300, '来宾市', '忻城县', '广西壮族自治区来宾市忻城县'),
(451322, 3, 450000, '广西壮族自治区', 451300, '来宾市', '象州县', '广西壮族自治区来宾市象州县'),
(451323, 3, 450000, '广西壮族自治区', 451300, '来宾市', '武宣县', '广西壮族自治区来宾市武宣县'),
(451324, 3, 450000, '广西壮族自治区', 451300, '来宾市', '金秀瑶族自治县', '广西壮族自治区来宾市金秀瑶族自治县'),
(451381, 3, 450000, '广西壮族自治区', 451300, '来宾市', '合山市', '广西壮族自治区来宾市合山市'),
(451400, 2, 450000, '广西壮族自治区', 0, '', '崇左市', '广西壮族自治区崇左市'),
(451402, 3, 450000, '广西壮族自治区', 451400, '崇左市', '江州区', '广西壮族自治区崇左市江州区'),
(451421, 3, 450000, '广西壮族自治区', 451400, '崇左市', '扶绥县', '广西壮族自治区崇左市扶绥县'),
(451422, 3, 450000, '广西壮族自治区', 451400, '崇左市', '宁明县', '广西壮族自治区崇左市宁明县'),
(451423, 3, 450000, '广西壮族自治区', 451400, '崇左市', '龙州县', '广西壮族自治区崇左市龙州县'),
(451424, 3, 450000, '广西壮族自治区', 451400, '崇左市', '大新县', '广西壮族自治区崇左市大新县'),
(451425, 3, 450000, '广西壮族自治区', 451400, '崇左市', '天等县', '广西壮族自治区崇左市天等县'),
(451481, 3, 450000, '广西壮族自治区', 451400, '崇左市', '凭祥市', '广西壮族自治区崇左市凭祥市'),
(460000, 1, 0, '', 0, '', '海南省', '海南省'),
(460100, 2, 460000, '海南省', 0, '', '海口市', '海南省海口市'),
(460105, 3, 460000, '海南省', 460100, '海口市', '秀英区', '海南省海口市秀英区'),
(460106, 3, 460000, '海南省', 460100, '海口市', '龙华区', '海南省海口市龙华区'),
(460107, 3, 460000, '海南省', 460100, '海口市', '琼山区', '海南省海口市琼山区'),
(460108, 3, 460000, '海南省', 460100, '海口市', '美兰区', '海南省海口市美兰区'),
(460200, 2, 460000, '海南省', 0, '', '三亚市', '海南省三亚市'),
(460202, 3, 460000, '海南省', 460200, '三亚市', '海棠区', '海南省三亚市海棠区'),
(460203, 3, 460000, '海南省', 460200, '三亚市', '吉阳区', '海南省三亚市吉阳区'),
(460204, 3, 460000, '海南省', 460200, '三亚市', '天涯区', '海南省三亚市天涯区'),
(460205, 3, 460000, '海南省', 460200, '三亚市', '崖州区', '海南省三亚市崖州区'),
(460300, 2, 460000, '海南省', 0, '', '三沙市', '海南省三沙市'),
(460400, 2, 460000, '海南省', 0, '', '儋州市', '海南省儋州市'),
(469001, 3, 460000, '海南省', 0, '', '五指山市', '海南省五指山市'),
(469002, 3, 460000, '海南省', 0, '', '琼海市', '海南省琼海市'),
(469005, 3, 460000, '海南省', 0, '', '文昌市', '海南省文昌市'),
(469006, 3, 460000, '海南省', 0, '', '万宁市', '海南省万宁市'),
(469007, 3, 460000, '海南省', 0, '', '东方市', '海南省东方市'),
(469021, 3, 460000, '海南省', 0, '', '定安县', '海南省定安县'),
(469022, 3, 460000, '海南省', 0, '', '屯昌县', '海南省屯昌县'),
(469023, 3, 460000, '海南省', 0, '', '澄迈县', '海南省澄迈县'),
(469024, 3, 460000, '海南省', 0, '', '临高县', '海南省临高县'),
(469025, 3, 460000, '海南省', 0, '', '白沙黎族自治县', '海南省白沙黎族自治县'),
(469026, 3, 460000, '海南省', 0, '', '昌江黎族自治县', '海南省昌江黎族自治县'),
(469027, 3, 460000, '海南省', 0, '', '乐东黎族自治县', '海南省乐东黎族自治县'),
(469028, 3, 460000, '海南省', 0, '', '陵水黎族自治县', '海南省陵水黎族自治县'),
(469029, 3, 460000, '海南省', 0, '', '保亭黎族苗族自治县', '海南省保亭黎族苗族自治县'),
(469030, 3, 460000, '海南省', 0, '', '琼中黎族苗族自治县', '海南省琼中黎族苗族自治县'),
(500000, 1, 0, '', 0, '', '重庆市', '重庆市'),
(500101, 3, 500000, '重庆市', 0, '', '万州区', '重庆市万州区'),
(500102, 3, 500000, '重庆市', 0, '', '涪陵区', '重庆市涪陵区'),
(500103, 3, 500000, '重庆市', 0, '', '渝中区', '重庆市渝中区'),
(500104, 3, 500000, '重庆市', 0, '', '大渡口区', '重庆市大渡口区'),
(500105, 3, 500000, '重庆市', 0, '', '江北区', '重庆市江北区'),
(500106, 3, 500000, '重庆市', 0, '', '沙坪坝区', '重庆市沙坪坝区'),
(500107, 3, 500000, '重庆市', 0, '', '九龙坡区', '重庆市九龙坡区'),
(500108, 3, 500000, '重庆市', 0, '', '南岸区', '重庆市南岸区'),
(500109, 3, 500000, '重庆市', 0, '', '北碚区', '重庆市北碚区'),
(500110, 3, 500000, '重庆市', 0, '', '綦江区', '重庆市綦江区'),
(500111, 3, 500000, '重庆市', 0, '', '大足区', '重庆市大足区'),
(500112, 3, 500000, '重庆市', 0, '', '渝北区', '重庆市渝北区'),
(500113, 3, 500000, '重庆市', 0, '', '巴南区', '重庆市巴南区'),
(500114, 3, 500000, '重庆市', 0, '', '黔江区', '重庆市黔江区'),
(500115, 3, 500000, '重庆市', 0, '', '长寿区', '重庆市长寿区'),
(500116, 3, 500000, '重庆市', 0, '', '江津区', '重庆市江津区'),
(500117, 3, 500000, '重庆市', 0, '', '合川区', '重庆市合川区'),
(500118, 3, 500000, '重庆市', 0, '', '永川区', '重庆市永川区'),
(500119, 3, 500000, '重庆市', 0, '', '南川区', '重庆市南川区'),
(500120, 3, 500000, '重庆市', 0, '', '璧山区', '重庆市璧山区'),
(500151, 3, 500000, '重庆市', 0, '', '铜梁区', '重庆市铜梁区'),
(500152, 3, 500000, '重庆市', 0, '', '潼南区', '重庆市潼南区'),
(500153, 3, 500000, '重庆市', 0, '', '荣昌区', '重庆市荣昌区'),
(500154, 3, 500000, '重庆市', 0, '', '开州区', '重庆市开州区'),
(500155, 3, 500000, '重庆市', 0, '', '梁平区', '重庆市梁平区'),
(500156, 3, 500000, '重庆市', 0, '', '武隆区', '重庆市武隆区'),
(500229, 3, 500000, '重庆市', 0, '', '城口县', '重庆市城口县'),
(500230, 3, 500000, '重庆市', 0, '', '丰都县', '重庆市丰都县'),
(500231, 3, 500000, '重庆市', 0, '', '垫江县', '重庆市垫江县'),
(500233, 3, 500000, '重庆市', 0, '', '忠县', '重庆市忠县'),
(500235, 3, 500000, '重庆市', 0, '', '云阳县', '重庆市云阳县'),
(500236, 3, 500000, '重庆市', 0, '', '奉节县', '重庆市奉节县'),
(500237, 3, 500000, '重庆市', 0, '', '巫山县', '重庆市巫山县'),
(500238, 3, 500000, '重庆市', 0, '', '巫溪县', '重庆市巫溪县'),
(500240, 3, 500000, '重庆市', 0, '', '石柱土家族自治县', '重庆市石柱土家族自治县'),
(500241, 3, 500000, '重庆市', 0, '', '秀山土家族苗族自治县', '重庆市秀山土家族苗族自治县'),
(500242, 3, 500000, '重庆市', 0, '', '酉阳土家族苗族自治县', '重庆市酉阳土家族苗族自治县'),
(500243, 3, 500000, '重庆市', 0, '', '彭水苗族土家族自治县', '重庆市彭水苗族土家族自治县'),
(510000, 1, 0, '', 0, '', '四川省', '四川省'),
(510100, 2, 510000, '四川省', 0, '', '成都市', '四川省成都市'),
(510104, 3, 510000, '四川省', 510100, '成都市', '锦江区', '四川省成都市锦江区'),
(510105, 3, 510000, '四川省', 510100, '成都市', '青羊区', '四川省成都市青羊区'),
(510106, 3, 510000, '四川省', 510100, '成都市', '金牛区', '四川省成都市金牛区'),
(510107, 3, 510000, '四川省', 510100, '成都市', '武侯区', '四川省成都市武侯区'),
(510108, 3, 510000, '四川省', 510100, '成都市', '成华区', '四川省成都市成华区'),
(510112, 3, 510000, '四川省', 510100, '成都市', '龙泉驿区', '四川省成都市龙泉驿区'),
(510113, 3, 510000, '四川省', 510100, '成都市', '青白江区', '四川省成都市青白江区'),
(510114, 3, 510000, '四川省', 510100, '成都市', '新都区', '四川省成都市新都区'),
(510115, 3, 510000, '四川省', 510100, '成都市', '温江区', '四川省成都市温江区'),
(510116, 3, 510000, '四川省', 510100, '成都市', '双流区', '四川省成都市双流区'),
(510117, 3, 510000, '四川省', 510100, '成都市', '郫都区', '四川省成都市郫都区'),
(510121, 3, 510000, '四川省', 510100, '成都市', '金堂县', '四川省成都市金堂县'),
(510129, 3, 510000, '四川省', 510100, '成都市', '大邑县', '四川省成都市大邑县'),
(510131, 3, 510000, '四川省', 510100, '成都市', '蒲江县', '四川省成都市蒲江县'),
(510132, 3, 510000, '四川省', 510100, '成都市', '新津县', '四川省成都市新津县'),
(510181, 3, 510000, '四川省', 510100, '成都市', '都江堰市', '四川省成都市都江堰市'),
(510182, 3, 510000, '四川省', 510100, '成都市', '彭州市', '四川省成都市彭州市'),
(510183, 3, 510000, '四川省', 510100, '成都市', '邛崃市', '四川省成都市邛崃市'),
(510184, 3, 510000, '四川省', 510100, '成都市', '崇州市', '四川省成都市崇州市'),
(510185, 3, 510000, '四川省', 510100, '成都市', '简阳市', '四川省成都市简阳市'),
(510300, 2, 510000, '四川省', 0, '', '自贡市', '四川省自贡市'),
(510302, 3, 510000, '四川省', 510300, '自贡市', '自流井区', '四川省自贡市自流井区'),
(510303, 3, 510000, '四川省', 510300, '自贡市', '贡井区', '四川省自贡市贡井区'),
(510304, 3, 510000, '四川省', 510300, '自贡市', '大安区', '四川省自贡市大安区'),
(510311, 3, 510000, '四川省', 510300, '自贡市', '沿滩区', '四川省自贡市沿滩区'),
(510321, 3, 510000, '四川省', 510300, '自贡市', '荣县', '四川省自贡市荣县'),
(510322, 3, 510000, '四川省', 510300, '自贡市', '富顺县', '四川省自贡市富顺县'),
(510400, 2, 510000, '四川省', 0, '', '攀枝花市', '四川省攀枝花市'),
(510402, 3, 510000, '四川省', 510400, '攀枝花市', '东区', '四川省攀枝花市东区'),
(510403, 3, 510000, '四川省', 510400, '攀枝花市', '西区', '四川省攀枝花市西区'),
(510411, 3, 510000, '四川省', 510400, '攀枝花市', '仁和区', '四川省攀枝花市仁和区'),
(510421, 3, 510000, '四川省', 510400, '攀枝花市', '米易县', '四川省攀枝花市米易县'),
(510422, 3, 510000, '四川省', 510400, '攀枝花市', '盐边县', '四川省攀枝花市盐边县'),
(510500, 2, 510000, '四川省', 0, '', '泸州市', '四川省泸州市'),
(510502, 3, 510000, '四川省', 510500, '泸州市', '江阳区', '四川省泸州市江阳区'),
(510503, 3, 510000, '四川省', 510500, '泸州市', '纳溪区', '四川省泸州市纳溪区'),
(510504, 3, 510000, '四川省', 510500, '泸州市', '龙马潭区', '四川省泸州市龙马潭区'),
(510521, 3, 510000, '四川省', 510500, '泸州市', '泸县', '四川省泸州市泸县'),
(510522, 3, 510000, '四川省', 510500, '泸州市', '合江县', '四川省泸州市合江县'),
(510524, 3, 510000, '四川省', 510500, '泸州市', '叙永县', '四川省泸州市叙永县'),
(510525, 3, 510000, '四川省', 510500, '泸州市', '古蔺县', '四川省泸州市古蔺县'),
(510600, 2, 510000, '四川省', 0, '', '德阳市', '四川省德阳市'),
(510603, 3, 510000, '四川省', 510600, '德阳市', '旌阳区', '四川省德阳市旌阳区'),
(510604, 3, 510000, '四川省', 510600, '德阳市', '罗江区', '四川省德阳市罗江区'),
(510623, 3, 510000, '四川省', 510600, '德阳市', '中江县', '四川省德阳市中江县'),
(510681, 3, 510000, '四川省', 510600, '德阳市', '广汉市', '四川省德阳市广汉市'),
(510682, 3, 510000, '四川省', 510600, '德阳市', '什邡市', '四川省德阳市什邡市'),
(510683, 3, 510000, '四川省', 510600, '德阳市', '绵竹市', '四川省德阳市绵竹市'),
(510700, 2, 510000, '四川省', 0, '', '绵阳市', '四川省绵阳市'),
(510703, 3, 510000, '四川省', 510700, '绵阳市', '涪城区', '四川省绵阳市涪城区'),
(510704, 3, 510000, '四川省', 510700, '绵阳市', '游仙区', '四川省绵阳市游仙区'),
(510705, 3, 510000, '四川省', 510700, '绵阳市', '安州区', '四川省绵阳市安州区'),
(510722, 3, 510000, '四川省', 510700, '绵阳市', '三台县', '四川省绵阳市三台县'),
(510723, 3, 510000, '四川省', 510700, '绵阳市', '盐亭县', '四川省绵阳市盐亭县'),
(510725, 3, 510000, '四川省', 510700, '绵阳市', '梓潼县', '四川省绵阳市梓潼县'),
(510726, 3, 510000, '四川省', 510700, '绵阳市', '北川羌族自治县', '四川省绵阳市北川羌族自治县'),
(510727, 3, 510000, '四川省', 510700, '绵阳市', '平武县', '四川省绵阳市平武县'),
(510781, 3, 510000, '四川省', 510700, '绵阳市', '江油市', '四川省绵阳市江油市'),
(510800, 2, 510000, '四川省', 0, '', '广元市', '四川省广元市'),
(510802, 3, 510000, '四川省', 510800, '广元市', '利州区', '四川省广元市利州区'),
(510811, 3, 510000, '四川省', 510800, '广元市', '昭化区', '四川省广元市昭化区'),
(510812, 3, 510000, '四川省', 510800, '广元市', '朝天区', '四川省广元市朝天区'),
(510821, 3, 510000, '四川省', 510800, '广元市', '旺苍县', '四川省广元市旺苍县'),
(510822, 3, 510000, '四川省', 510800, '广元市', '青川县', '四川省广元市青川县'),
(510823, 3, 510000, '四川省', 510800, '广元市', '剑阁县', '四川省广元市剑阁县'),
(510824, 3, 510000, '四川省', 510800, '广元市', '苍溪县', '四川省广元市苍溪县'),
(510900, 2, 510000, '四川省', 0, '', '遂宁市', '四川省遂宁市'),
(510903, 3, 510000, '四川省', 510900, '遂宁市', '船山区', '四川省遂宁市船山区'),
(510904, 3, 510000, '四川省', 510900, '遂宁市', '安居区', '四川省遂宁市安居区'),
(510921, 3, 510000, '四川省', 510900, '遂宁市', '蓬溪县', '四川省遂宁市蓬溪县'),
(510922, 3, 510000, '四川省', 510900, '遂宁市', '射洪县', '四川省遂宁市射洪县'),
(510923, 3, 510000, '四川省', 510900, '遂宁市', '大英县', '四川省遂宁市大英县'),
(511000, 2, 510000, '四川省', 0, '', '内江市', '四川省内江市'),
(511002, 3, 510000, '四川省', 511000, '内江市', '市中区', '四川省内江市市中区'),
(511011, 3, 510000, '四川省', 511000, '内江市', '东兴区', '四川省内江市东兴区'),
(511024, 3, 510000, '四川省', 511000, '内江市', '威远县', '四川省内江市威远县'),
(511025, 3, 510000, '四川省', 511000, '内江市', '资中县', '四川省内江市资中县'),
(511083, 3, 510000, '四川省', 511000, '内江市', '隆昌市', '四川省内江市隆昌市'),
(511100, 2, 510000, '四川省', 0, '', '乐山市', '四川省乐山市'),
(511102, 3, 510000, '四川省', 511100, '乐山市', '市中区', '四川省乐山市市中区'),
(511111, 3, 510000, '四川省', 511100, '乐山市', '沙湾区', '四川省乐山市沙湾区'),
(511112, 3, 510000, '四川省', 511100, '乐山市', '五通桥区', '四川省乐山市五通桥区'),
(511113, 3, 510000, '四川省', 511100, '乐山市', '金口河区', '四川省乐山市金口河区'),
(511123, 3, 510000, '四川省', 511100, '乐山市', '犍为县', '四川省乐山市犍为县'),
(511124, 3, 510000, '四川省', 511100, '乐山市', '井研县', '四川省乐山市井研县'),
(511126, 3, 510000, '四川省', 511100, '乐山市', '夹江县', '四川省乐山市夹江县'),
(511129, 3, 510000, '四川省', 511100, '乐山市', '沐川县', '四川省乐山市沐川县'),
(511132, 3, 510000, '四川省', 511100, '乐山市', '峨边彝族自治县', '四川省乐山市峨边彝族自治县'),
(511133, 3, 510000, '四川省', 511100, '乐山市', '马边彝族自治县', '四川省乐山市马边彝族自治县'),
(511181, 3, 510000, '四川省', 511100, '乐山市', '峨眉山市', '四川省乐山市峨眉山市'),
(511300, 2, 510000, '四川省', 0, '', '南充市', '四川省南充市'),
(511302, 3, 510000, '四川省', 511300, '南充市', '顺庆区', '四川省南充市顺庆区'),
(511303, 3, 510000, '四川省', 511300, '南充市', '高坪区', '四川省南充市高坪区'),
(511304, 3, 510000, '四川省', 511300, '南充市', '嘉陵区', '四川省南充市嘉陵区'),
(511321, 3, 510000, '四川省', 511300, '南充市', '南部县', '四川省南充市南部县'),
(511322, 3, 510000, '四川省', 511300, '南充市', '营山县', '四川省南充市营山县'),
(511323, 3, 510000, '四川省', 511300, '南充市', '蓬安县', '四川省南充市蓬安县'),
(511324, 3, 510000, '四川省', 511300, '南充市', '仪陇县', '四川省南充市仪陇县'),
(511325, 3, 510000, '四川省', 511300, '南充市', '西充县', '四川省南充市西充县'),
(511381, 3, 510000, '四川省', 511300, '南充市', '阆中市', '四川省南充市阆中市'),
(511400, 2, 510000, '四川省', 0, '', '眉山市', '四川省眉山市'),
(511402, 3, 510000, '四川省', 511400, '眉山市', '东坡区', '四川省眉山市东坡区'),
(511403, 3, 510000, '四川省', 511400, '眉山市', '彭山区', '四川省眉山市彭山区'),
(511421, 3, 510000, '四川省', 511400, '眉山市', '仁寿县', '四川省眉山市仁寿县'),
(511423, 3, 510000, '四川省', 511400, '眉山市', '洪雅县', '四川省眉山市洪雅县'),
(511424, 3, 510000, '四川省', 511400, '眉山市', '丹棱县', '四川省眉山市丹棱县'),
(511425, 3, 510000, '四川省', 511400, '眉山市', '青神县', '四川省眉山市青神县'),
(511500, 2, 510000, '四川省', 0, '', '宜宾市', '四川省宜宾市'),
(511502, 3, 510000, '四川省', 511500, '宜宾市', '翠屏区', '四川省宜宾市翠屏区'),
(511503, 3, 510000, '四川省', 511500, '宜宾市', '南溪区', '四川省宜宾市南溪区'),
(511521, 3, 510000, '四川省', 511500, '宜宾市', '宜宾县', '四川省宜宾市宜宾县'),
(511523, 3, 510000, '四川省', 511500, '宜宾市', '江安县', '四川省宜宾市江安县'),
(511524, 3, 510000, '四川省', 511500, '宜宾市', '长宁县', '四川省宜宾市长宁县'),
(511525, 3, 510000, '四川省', 511500, '宜宾市', '高县', '四川省宜宾市高县'),
(511526, 3, 510000, '四川省', 511500, '宜宾市', '珙县', '四川省宜宾市珙县'),
(511527, 3, 510000, '四川省', 511500, '宜宾市', '筠连县', '四川省宜宾市筠连县'),
(511528, 3, 510000, '四川省', 511500, '宜宾市', '兴文县', '四川省宜宾市兴文县'),
(511529, 3, 510000, '四川省', 511500, '宜宾市', '屏山县', '四川省宜宾市屏山县'),
(511600, 2, 510000, '四川省', 0, '', '广安市', '四川省广安市'),
(511602, 3, 510000, '四川省', 511600, '广安市', '广安区', '四川省广安市广安区'),
(511603, 3, 510000, '四川省', 511600, '广安市', '前锋区', '四川省广安市前锋区'),
(511621, 3, 510000, '四川省', 511600, '广安市', '岳池县', '四川省广安市岳池县'),
(511622, 3, 510000, '四川省', 511600, '广安市', '武胜县', '四川省广安市武胜县'),
(511623, 3, 510000, '四川省', 511600, '广安市', '邻水县', '四川省广安市邻水县'),
(511681, 3, 510000, '四川省', 511600, '广安市', '华蓥市', '四川省广安市华蓥市'),
(511700, 2, 510000, '四川省', 0, '', '达州市', '四川省达州市'),
(511702, 3, 510000, '四川省', 511700, '达州市', '通川区', '四川省达州市通川区'),
(511703, 3, 510000, '四川省', 511700, '达州市', '达川区', '四川省达州市达川区'),
(511722, 3, 510000, '四川省', 511700, '达州市', '宣汉县', '四川省达州市宣汉县'),
(511723, 3, 510000, '四川省', 511700, '达州市', '开江县', '四川省达州市开江县'),
(511724, 3, 510000, '四川省', 511700, '达州市', '大竹县', '四川省达州市大竹县'),
(511725, 3, 510000, '四川省', 511700, '达州市', '渠县', '四川省达州市渠县'),
(511781, 3, 510000, '四川省', 511700, '达州市', '万源市', '四川省达州市万源市'),
(511800, 2, 510000, '四川省', 0, '', '雅安市', '四川省雅安市'),
(511802, 3, 510000, '四川省', 511800, '雅安市', '雨城区', '四川省雅安市雨城区'),
(511803, 3, 510000, '四川省', 511800, '雅安市', '名山区', '四川省雅安市名山区'),
(511822, 3, 510000, '四川省', 511800, '雅安市', '荥经县', '四川省雅安市荥经县'),
(511823, 3, 510000, '四川省', 511800, '雅安市', '汉源县', '四川省雅安市汉源县'),
(511824, 3, 510000, '四川省', 511800, '雅安市', '石棉县', '四川省雅安市石棉县'),
(511825, 3, 510000, '四川省', 511800, '雅安市', '天全县', '四川省雅安市天全县'),
(511826, 3, 510000, '四川省', 511800, '雅安市', '芦山县', '四川省雅安市芦山县'),
(511827, 3, 510000, '四川省', 511800, '雅安市', '宝兴县', '四川省雅安市宝兴县'),
(511900, 2, 510000, '四川省', 0, '', '巴中市', '四川省巴中市'),
(511902, 3, 510000, '四川省', 511900, '巴中市', '巴州区', '四川省巴中市巴州区'),
(511903, 3, 510000, '四川省', 511900, '巴中市', '恩阳区', '四川省巴中市恩阳区'),
(511921, 3, 510000, '四川省', 511900, '巴中市', '通江县', '四川省巴中市通江县'),
(511922, 3, 510000, '四川省', 511900, '巴中市', '南江县', '四川省巴中市南江县'),
(511923, 3, 510000, '四川省', 511900, '巴中市', '平昌县', '四川省巴中市平昌县'),
(512000, 2, 510000, '四川省', 0, '', '资阳市', '四川省资阳市'),
(512002, 3, 510000, '四川省', 512000, '资阳市', '雁江区', '四川省资阳市雁江区'),
(512021, 3, 510000, '四川省', 512000, '资阳市', '安岳县', '四川省资阳市安岳县'),
(512022, 3, 510000, '四川省', 512000, '资阳市', '乐至县', '四川省资阳市乐至县'),
(513200, 2, 510000, '四川省', 0, '', '阿坝藏族羌族自治州', '四川省阿坝藏族羌族自治州'),
(513201, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '马尔康市', '四川省阿坝藏族羌族自治州马尔康市'),
(513221, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '汶川县', '四川省阿坝藏族羌族自治州汶川县'),
(513222, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '理县', '四川省阿坝藏族羌族自治州理县'),
(513223, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '茂县', '四川省阿坝藏族羌族自治州茂县'),
(513224, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '松潘县', '四川省阿坝藏族羌族自治州松潘县'),
(513225, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '九寨沟县', '四川省阿坝藏族羌族自治州九寨沟县'),
(513226, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '金川县', '四川省阿坝藏族羌族自治州金川县'),
(513227, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '小金县', '四川省阿坝藏族羌族自治州小金县'),
(513228, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '黑水县', '四川省阿坝藏族羌族自治州黑水县'),
(513230, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '壤塘县', '四川省阿坝藏族羌族自治州壤塘县'),
(513231, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '阿坝县', '四川省阿坝藏族羌族自治州阿坝县'),
(513232, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '若尔盖县', '四川省阿坝藏族羌族自治州若尔盖县'),
(513233, 3, 510000, '四川省', 513200, '阿坝藏族羌族自治州', '红原县', '四川省阿坝藏族羌族自治州红原县'),
(513300, 2, 510000, '四川省', 0, '', '甘孜藏族自治州', '四川省甘孜藏族自治州'),
(513301, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '康定市', '四川省甘孜藏族自治州康定市'),
(513322, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '泸定县', '四川省甘孜藏族自治州泸定县'),
(513323, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '丹巴县', '四川省甘孜藏族自治州丹巴县'),
(513324, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '九龙县', '四川省甘孜藏族自治州九龙县'),
(513325, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '雅江县', '四川省甘孜藏族自治州雅江县'),
(513326, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '道孚县', '四川省甘孜藏族自治州道孚县'),
(513327, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '炉霍县', '四川省甘孜藏族自治州炉霍县'),
(513328, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '甘孜县', '四川省甘孜藏族自治州甘孜县'),
(513329, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '新龙县', '四川省甘孜藏族自治州新龙县'),
(513330, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '德格县', '四川省甘孜藏族自治州德格县'),
(513331, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '白玉县', '四川省甘孜藏族自治州白玉县'),
(513332, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '石渠县', '四川省甘孜藏族自治州石渠县'),
(513333, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '色达县', '四川省甘孜藏族自治州色达县'),
(513334, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '理塘县', '四川省甘孜藏族自治州理塘县'),
(513335, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '巴塘县', '四川省甘孜藏族自治州巴塘县'),
(513336, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '乡城县', '四川省甘孜藏族自治州乡城县'),
(513337, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '稻城县', '四川省甘孜藏族自治州稻城县'),
(513338, 3, 510000, '四川省', 513300, '甘孜藏族自治州', '得荣县', '四川省甘孜藏族自治州得荣县'),
(513400, 2, 510000, '四川省', 0, '', '凉山彝族自治州', '四川省凉山彝族自治州'),
(513401, 3, 510000, '四川省', 513400, '凉山彝族自治州', '西昌市', '四川省凉山彝族自治州西昌市');
INSERT INTO `region` (`code`, `type`, `province`, `province_name`, `city`, `city_name`, `name`, `address`) VALUES
(513422, 3, 510000, '四川省', 513400, '凉山彝族自治州', '木里藏族自治县', '四川省凉山彝族自治州木里藏族自治县'),
(513423, 3, 510000, '四川省', 513400, '凉山彝族自治州', '盐源县', '四川省凉山彝族自治州盐源县'),
(513424, 3, 510000, '四川省', 513400, '凉山彝族自治州', '德昌县', '四川省凉山彝族自治州德昌县'),
(513425, 3, 510000, '四川省', 513400, '凉山彝族自治州', '会理县', '四川省凉山彝族自治州会理县'),
(513426, 3, 510000, '四川省', 513400, '凉山彝族自治州', '会东县', '四川省凉山彝族自治州会东县'),
(513427, 3, 510000, '四川省', 513400, '凉山彝族自治州', '宁南县', '四川省凉山彝族自治州宁南县'),
(513428, 3, 510000, '四川省', 513400, '凉山彝族自治州', '普格县', '四川省凉山彝族自治州普格县'),
(513429, 3, 510000, '四川省', 513400, '凉山彝族自治州', '布拖县', '四川省凉山彝族自治州布拖县'),
(513430, 3, 510000, '四川省', 513400, '凉山彝族自治州', '金阳县', '四川省凉山彝族自治州金阳县'),
(513431, 3, 510000, '四川省', 513400, '凉山彝族自治州', '昭觉县', '四川省凉山彝族自治州昭觉县'),
(513432, 3, 510000, '四川省', 513400, '凉山彝族自治州', '喜德县', '四川省凉山彝族自治州喜德县'),
(513433, 3, 510000, '四川省', 513400, '凉山彝族自治州', '冕宁县', '四川省凉山彝族自治州冕宁县'),
(513434, 3, 510000, '四川省', 513400, '凉山彝族自治州', '越西县', '四川省凉山彝族自治州越西县'),
(513435, 3, 510000, '四川省', 513400, '凉山彝族自治州', '甘洛县', '四川省凉山彝族自治州甘洛县'),
(513436, 3, 510000, '四川省', 513400, '凉山彝族自治州', '美姑县', '四川省凉山彝族自治州美姑县'),
(513437, 3, 510000, '四川省', 513400, '凉山彝族自治州', '雷波县', '四川省凉山彝族自治州雷波县'),
(520000, 1, 0, '', 0, '', '贵州省', '贵州省'),
(520100, 2, 520000, '贵州省', 0, '', '贵阳市', '贵州省贵阳市'),
(520102, 3, 520000, '贵州省', 520100, '贵阳市', '南明区', '贵州省贵阳市南明区'),
(520103, 3, 520000, '贵州省', 520100, '贵阳市', '云岩区', '贵州省贵阳市云岩区'),
(520111, 3, 520000, '贵州省', 520100, '贵阳市', '花溪区', '贵州省贵阳市花溪区'),
(520112, 3, 520000, '贵州省', 520100, '贵阳市', '乌当区', '贵州省贵阳市乌当区'),
(520113, 3, 520000, '贵州省', 520100, '贵阳市', '白云区', '贵州省贵阳市白云区'),
(520115, 3, 520000, '贵州省', 520100, '贵阳市', '观山湖区', '贵州省贵阳市观山湖区'),
(520121, 3, 520000, '贵州省', 520100, '贵阳市', '开阳县', '贵州省贵阳市开阳县'),
(520122, 3, 520000, '贵州省', 520100, '贵阳市', '息烽县', '贵州省贵阳市息烽县'),
(520123, 3, 520000, '贵州省', 520100, '贵阳市', '修文县', '贵州省贵阳市修文县'),
(520181, 3, 520000, '贵州省', 520100, '贵阳市', '清镇市', '贵州省贵阳市清镇市'),
(520200, 2, 520000, '贵州省', 0, '', '六盘水市', '贵州省六盘水市'),
(520201, 3, 520000, '贵州省', 520200, '六盘水市', '钟山区', '贵州省六盘水市钟山区'),
(520203, 3, 520000, '贵州省', 520200, '六盘水市', '六枝特区', '贵州省六盘水市六枝特区'),
(520221, 3, 520000, '贵州省', 520200, '六盘水市', '水城县', '贵州省六盘水市水城县'),
(520281, 3, 520000, '贵州省', 520200, '六盘水市', '盘州市', '贵州省六盘水市盘州市'),
(520300, 2, 520000, '贵州省', 0, '', '遵义市', '贵州省遵义市'),
(520302, 3, 520000, '贵州省', 520300, '遵义市', '红花岗区', '贵州省遵义市红花岗区'),
(520303, 3, 520000, '贵州省', 520300, '遵义市', '汇川区', '贵州省遵义市汇川区'),
(520304, 3, 520000, '贵州省', 520300, '遵义市', '播州区', '贵州省遵义市播州区'),
(520322, 3, 520000, '贵州省', 520300, '遵义市', '桐梓县', '贵州省遵义市桐梓县'),
(520323, 3, 520000, '贵州省', 520300, '遵义市', '绥阳县', '贵州省遵义市绥阳县'),
(520324, 3, 520000, '贵州省', 520300, '遵义市', '正安县', '贵州省遵义市正安县'),
(520325, 3, 520000, '贵州省', 520300, '遵义市', '道真仡佬族苗族自治县', '贵州省遵义市道真仡佬族苗族自治县'),
(520326, 3, 520000, '贵州省', 520300, '遵义市', '务川仡佬族苗族自治县', '贵州省遵义市务川仡佬族苗族自治县'),
(520327, 3, 520000, '贵州省', 520300, '遵义市', '凤冈县', '贵州省遵义市凤冈县'),
(520328, 3, 520000, '贵州省', 520300, '遵义市', '湄潭县', '贵州省遵义市湄潭县'),
(520329, 3, 520000, '贵州省', 520300, '遵义市', '余庆县', '贵州省遵义市余庆县'),
(520330, 3, 520000, '贵州省', 520300, '遵义市', '习水县', '贵州省遵义市习水县'),
(520381, 3, 520000, '贵州省', 520300, '遵义市', '赤水市', '贵州省遵义市赤水市'),
(520382, 3, 520000, '贵州省', 520300, '遵义市', '仁怀市', '贵州省遵义市仁怀市'),
(520400, 2, 520000, '贵州省', 0, '', '安顺市', '贵州省安顺市'),
(520402, 3, 520000, '贵州省', 520400, '安顺市', '西秀区', '贵州省安顺市西秀区'),
(520403, 3, 520000, '贵州省', 520400, '安顺市', '平坝区', '贵州省安顺市平坝区'),
(520422, 3, 520000, '贵州省', 520400, '安顺市', '普定县', '贵州省安顺市普定县'),
(520423, 3, 520000, '贵州省', 520400, '安顺市', '镇宁布依族苗族自治县', '贵州省安顺市镇宁布依族苗族自治县'),
(520424, 3, 520000, '贵州省', 520400, '安顺市', '关岭布依族苗族自治县', '贵州省安顺市关岭布依族苗族自治县'),
(520425, 3, 520000, '贵州省', 520400, '安顺市', '紫云苗族布依族自治县', '贵州省安顺市紫云苗族布依族自治县'),
(520500, 2, 520000, '贵州省', 0, '', '毕节市', '贵州省毕节市'),
(520502, 3, 520000, '贵州省', 520500, '毕节市', '七星关区', '贵州省毕节市七星关区'),
(520521, 3, 520000, '贵州省', 520500, '毕节市', '大方县', '贵州省毕节市大方县'),
(520522, 3, 520000, '贵州省', 520500, '毕节市', '黔西县', '贵州省毕节市黔西县'),
(520523, 3, 520000, '贵州省', 520500, '毕节市', '金沙县', '贵州省毕节市金沙县'),
(520524, 3, 520000, '贵州省', 520500, '毕节市', '织金县', '贵州省毕节市织金县'),
(520525, 3, 520000, '贵州省', 520500, '毕节市', '纳雍县', '贵州省毕节市纳雍县'),
(520526, 3, 520000, '贵州省', 520500, '毕节市', '威宁彝族回族苗族自治县', '贵州省毕节市威宁彝族回族苗族自治县'),
(520527, 3, 520000, '贵州省', 520500, '毕节市', '赫章县', '贵州省毕节市赫章县'),
(520600, 2, 520000, '贵州省', 0, '', '铜仁市', '贵州省铜仁市'),
(520602, 3, 520000, '贵州省', 520600, '铜仁市', '碧江区', '贵州省铜仁市碧江区'),
(520603, 3, 520000, '贵州省', 520600, '铜仁市', '万山区', '贵州省铜仁市万山区'),
(520621, 3, 520000, '贵州省', 520600, '铜仁市', '江口县', '贵州省铜仁市江口县'),
(520622, 3, 520000, '贵州省', 520600, '铜仁市', '玉屏侗族自治县', '贵州省铜仁市玉屏侗族自治县'),
(520623, 3, 520000, '贵州省', 520600, '铜仁市', '石阡县', '贵州省铜仁市石阡县'),
(520624, 3, 520000, '贵州省', 520600, '铜仁市', '思南县', '贵州省铜仁市思南县'),
(520625, 3, 520000, '贵州省', 520600, '铜仁市', '印江土家族苗族自治县', '贵州省铜仁市印江土家族苗族自治县'),
(520626, 3, 520000, '贵州省', 520600, '铜仁市', '德江县', '贵州省铜仁市德江县'),
(520627, 3, 520000, '贵州省', 520600, '铜仁市', '沿河土家族自治县', '贵州省铜仁市沿河土家族自治县'),
(520628, 3, 520000, '贵州省', 520600, '铜仁市', '松桃苗族自治县', '贵州省铜仁市松桃苗族自治县'),
(522300, 2, 520000, '贵州省', 0, '', '黔西南布依族苗族自治州', '贵州省黔西南布依族苗族自治州'),
(522301, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '兴义市', '贵州省黔西南布依族苗族自治州兴义市'),
(522322, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '兴仁县', '贵州省黔西南布依族苗族自治州兴仁县'),
(522323, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '普安县', '贵州省黔西南布依族苗族自治州普安县'),
(522324, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '晴隆县', '贵州省黔西南布依族苗族自治州晴隆县'),
(522325, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '贞丰县', '贵州省黔西南布依族苗族自治州贞丰县'),
(522326, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '望谟县', '贵州省黔西南布依族苗族自治州望谟县'),
(522327, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '册亨县', '贵州省黔西南布依族苗族自治州册亨县'),
(522328, 3, 520000, '贵州省', 522300, '黔西南布依族苗族自治州', '安龙县', '贵州省黔西南布依族苗族自治州安龙县'),
(522600, 2, 520000, '贵州省', 0, '', '黔东南苗族侗族自治州', '贵州省黔东南苗族侗族自治州'),
(522601, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '凯里市', '贵州省黔东南苗族侗族自治州凯里市'),
(522622, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '黄平县', '贵州省黔东南苗族侗族自治州黄平县'),
(522623, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '施秉县', '贵州省黔东南苗族侗族自治州施秉县'),
(522624, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '三穗县', '贵州省黔东南苗族侗族自治州三穗县'),
(522625, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '镇远县', '贵州省黔东南苗族侗族自治州镇远县'),
(522626, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '岑巩县', '贵州省黔东南苗族侗族自治州岑巩县'),
(522627, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '天柱县', '贵州省黔东南苗族侗族自治州天柱县'),
(522628, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '锦屏县', '贵州省黔东南苗族侗族自治州锦屏县'),
(522629, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '剑河县', '贵州省黔东南苗族侗族自治州剑河县'),
(522630, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '台江县', '贵州省黔东南苗族侗族自治州台江县'),
(522631, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '黎平县', '贵州省黔东南苗族侗族自治州黎平县'),
(522632, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '榕江县', '贵州省黔东南苗族侗族自治州榕江县'),
(522633, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '从江县', '贵州省黔东南苗族侗族自治州从江县'),
(522634, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '雷山县', '贵州省黔东南苗族侗族自治州雷山县'),
(522635, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '麻江县', '贵州省黔东南苗族侗族自治州麻江县'),
(522636, 3, 520000, '贵州省', 522600, '黔东南苗族侗族自治州', '丹寨县', '贵州省黔东南苗族侗族自治州丹寨县'),
(522700, 2, 520000, '贵州省', 0, '', '黔南布依族苗族自治州', '贵州省黔南布依族苗族自治州'),
(522701, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '都匀市', '贵州省黔南布依族苗族自治州都匀市'),
(522702, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '福泉市', '贵州省黔南布依族苗族自治州福泉市'),
(522722, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '荔波县', '贵州省黔南布依族苗族自治州荔波县'),
(522723, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '贵定县', '贵州省黔南布依族苗族自治州贵定县'),
(522725, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '瓮安县', '贵州省黔南布依族苗族自治州瓮安县'),
(522726, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '独山县', '贵州省黔南布依族苗族自治州独山县'),
(522727, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '平塘县', '贵州省黔南布依族苗族自治州平塘县'),
(522728, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '罗甸县', '贵州省黔南布依族苗族自治州罗甸县'),
(522729, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '长顺县', '贵州省黔南布依族苗族自治州长顺县'),
(522730, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '龙里县', '贵州省黔南布依族苗族自治州龙里县'),
(522731, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '惠水县', '贵州省黔南布依族苗族自治州惠水县'),
(522732, 3, 520000, '贵州省', 522700, '黔南布依族苗族自治州', '三都水族自治县', '贵州省黔南布依族苗族自治州三都水族自治县'),
(530000, 1, 0, '', 0, '', '云南省', '云南省'),
(530100, 2, 530000, '云南省', 0, '', '昆明市', '云南省昆明市'),
(530102, 3, 530000, '云南省', 530100, '昆明市', '五华区', '云南省昆明市五华区'),
(530103, 3, 530000, '云南省', 530100, '昆明市', '盘龙区', '云南省昆明市盘龙区'),
(530111, 3, 530000, '云南省', 530100, '昆明市', '官渡区', '云南省昆明市官渡区'),
(530112, 3, 530000, '云南省', 530100, '昆明市', '西山区', '云南省昆明市西山区'),
(530113, 3, 530000, '云南省', 530100, '昆明市', '东川区', '云南省昆明市东川区'),
(530114, 3, 530000, '云南省', 530100, '昆明市', '呈贡区', '云南省昆明市呈贡区'),
(530115, 3, 530000, '云南省', 530100, '昆明市', '晋宁区', '云南省昆明市晋宁区'),
(530124, 3, 530000, '云南省', 530100, '昆明市', '富民县', '云南省昆明市富民县'),
(530125, 3, 530000, '云南省', 530100, '昆明市', '宜良县', '云南省昆明市宜良县'),
(530126, 3, 530000, '云南省', 530100, '昆明市', '石林彝族自治县', '云南省昆明市石林彝族自治县'),
(530127, 3, 530000, '云南省', 530100, '昆明市', '嵩明县', '云南省昆明市嵩明县'),
(530128, 3, 530000, '云南省', 530100, '昆明市', '禄劝彝族苗族自治县', '云南省昆明市禄劝彝族苗族自治县'),
(530129, 3, 530000, '云南省', 530100, '昆明市', '寻甸回族彝族自治县', '云南省昆明市寻甸回族彝族自治县'),
(530181, 3, 530000, '云南省', 530100, '昆明市', '安宁市', '云南省昆明市安宁市'),
(530300, 2, 530000, '云南省', 0, '', '曲靖市', '云南省曲靖市'),
(530302, 3, 530000, '云南省', 530300, '曲靖市', '麒麟区', '云南省曲靖市麒麟区'),
(530303, 3, 530000, '云南省', 530300, '曲靖市', '沾益区', '云南省曲靖市沾益区'),
(530321, 3, 530000, '云南省', 530300, '曲靖市', '马龙县', '云南省曲靖市马龙县'),
(530322, 3, 530000, '云南省', 530300, '曲靖市', '陆良县', '云南省曲靖市陆良县'),
(530323, 3, 530000, '云南省', 530300, '曲靖市', '师宗县', '云南省曲靖市师宗县'),
(530324, 3, 530000, '云南省', 530300, '曲靖市', '罗平县', '云南省曲靖市罗平县'),
(530325, 3, 530000, '云南省', 530300, '曲靖市', '富源县', '云南省曲靖市富源县'),
(530326, 3, 530000, '云南省', 530300, '曲靖市', '会泽县', '云南省曲靖市会泽县'),
(530381, 3, 530000, '云南省', 530300, '曲靖市', '宣威市', '云南省曲靖市宣威市'),
(530400, 2, 530000, '云南省', 0, '', '玉溪市', '云南省玉溪市'),
(530402, 3, 530000, '云南省', 530400, '玉溪市', '红塔区', '云南省玉溪市红塔区'),
(530403, 3, 530000, '云南省', 530400, '玉溪市', '江川区', '云南省玉溪市江川区'),
(530422, 3, 530000, '云南省', 530400, '玉溪市', '澄江县', '云南省玉溪市澄江县'),
(530423, 3, 530000, '云南省', 530400, '玉溪市', '通海县', '云南省玉溪市通海县'),
(530424, 3, 530000, '云南省', 530400, '玉溪市', '华宁县', '云南省玉溪市华宁县'),
(530425, 3, 530000, '云南省', 530400, '玉溪市', '易门县', '云南省玉溪市易门县'),
(530426, 3, 530000, '云南省', 530400, '玉溪市', '峨山彝族自治县', '云南省玉溪市峨山彝族自治县'),
(530427, 3, 530000, '云南省', 530400, '玉溪市', '新平彝族傣族自治县', '云南省玉溪市新平彝族傣族自治县'),
(530428, 3, 530000, '云南省', 530400, '玉溪市', '元江哈尼族彝族傣族自治县', '云南省玉溪市元江哈尼族彝族傣族自治县'),
(530500, 2, 530000, '云南省', 0, '', '保山市', '云南省保山市'),
(530502, 3, 530000, '云南省', 530500, '保山市', '隆阳区', '云南省保山市隆阳区'),
(530521, 3, 530000, '云南省', 530500, '保山市', '施甸县', '云南省保山市施甸县'),
(530523, 3, 530000, '云南省', 530500, '保山市', '龙陵县', '云南省保山市龙陵县'),
(530524, 3, 530000, '云南省', 530500, '保山市', '昌宁县', '云南省保山市昌宁县'),
(530581, 3, 530000, '云南省', 530500, '保山市', '腾冲市', '云南省保山市腾冲市'),
(530600, 2, 530000, '云南省', 0, '', '昭通市', '云南省昭通市'),
(530602, 3, 530000, '云南省', 530600, '昭通市', '昭阳区', '云南省昭通市昭阳区'),
(530621, 3, 530000, '云南省', 530600, '昭通市', '鲁甸县', '云南省昭通市鲁甸县'),
(530622, 3, 530000, '云南省', 530600, '昭通市', '巧家县', '云南省昭通市巧家县'),
(530623, 3, 530000, '云南省', 530600, '昭通市', '盐津县', '云南省昭通市盐津县'),
(530624, 3, 530000, '云南省', 530600, '昭通市', '大关县', '云南省昭通市大关县'),
(530625, 3, 530000, '云南省', 530600, '昭通市', '永善县', '云南省昭通市永善县'),
(530626, 3, 530000, '云南省', 530600, '昭通市', '绥江县', '云南省昭通市绥江县'),
(530627, 3, 530000, '云南省', 530600, '昭通市', '镇雄县', '云南省昭通市镇雄县'),
(530628, 3, 530000, '云南省', 530600, '昭通市', '彝良县', '云南省昭通市彝良县'),
(530629, 3, 530000, '云南省', 530600, '昭通市', '威信县', '云南省昭通市威信县'),
(530630, 3, 530000, '云南省', 530600, '昭通市', '水富县', '云南省昭通市水富县'),
(530700, 2, 530000, '云南省', 0, '', '丽江市', '云南省丽江市'),
(530702, 3, 530000, '云南省', 530700, '丽江市', '古城区', '云南省丽江市古城区'),
(530721, 3, 530000, '云南省', 530700, '丽江市', '玉龙纳西族自治县', '云南省丽江市玉龙纳西族自治县'),
(530722, 3, 530000, '云南省', 530700, '丽江市', '永胜县', '云南省丽江市永胜县'),
(530723, 3, 530000, '云南省', 530700, '丽江市', '华坪县', '云南省丽江市华坪县'),
(530724, 3, 530000, '云南省', 530700, '丽江市', '宁蒗彝族自治县', '云南省丽江市宁蒗彝族自治县'),
(530800, 2, 530000, '云南省', 0, '', '普洱市', '云南省普洱市'),
(530802, 3, 530000, '云南省', 530800, '普洱市', '思茅区', '云南省普洱市思茅区'),
(530821, 3, 530000, '云南省', 530800, '普洱市', '宁洱哈尼族彝族自治县', '云南省普洱市宁洱哈尼族彝族自治县'),
(530822, 3, 530000, '云南省', 530800, '普洱市', '墨江哈尼族自治县', '云南省普洱市墨江哈尼族自治县'),
(530823, 3, 530000, '云南省', 530800, '普洱市', '景东彝族自治县', '云南省普洱市景东彝族自治县'),
(530824, 3, 530000, '云南省', 530800, '普洱市', '景谷傣族彝族自治县', '云南省普洱市景谷傣族彝族自治县'),
(530825, 3, 530000, '云南省', 530800, '普洱市', '镇沅彝族哈尼族拉祜族自治县', '云南省普洱市镇沅彝族哈尼族拉祜族自治县'),
(530826, 3, 530000, '云南省', 530800, '普洱市', '江城哈尼族彝族自治县', '云南省普洱市江城哈尼族彝族自治县'),
(530827, 3, 530000, '云南省', 530800, '普洱市', '孟连傣族拉祜族佤族自治县', '云南省普洱市孟连傣族拉祜族佤族自治县'),
(530828, 3, 530000, '云南省', 530800, '普洱市', '澜沧拉祜族自治县', '云南省普洱市澜沧拉祜族自治县'),
(530829, 3, 530000, '云南省', 530800, '普洱市', '西盟佤族自治县', '云南省普洱市西盟佤族自治县'),
(530900, 2, 530000, '云南省', 0, '', '临沧市', '云南省临沧市'),
(530902, 3, 530000, '云南省', 530900, '临沧市', '临翔区', '云南省临沧市临翔区'),
(530921, 3, 530000, '云南省', 530900, '临沧市', '凤庆县', '云南省临沧市凤庆县'),
(530922, 3, 530000, '云南省', 530900, '临沧市', '云县', '云南省临沧市云县'),
(530923, 3, 530000, '云南省', 530900, '临沧市', '永德县', '云南省临沧市永德县'),
(530924, 3, 530000, '云南省', 530900, '临沧市', '镇康县', '云南省临沧市镇康县'),
(530925, 3, 530000, '云南省', 530900, '临沧市', '双江拉祜族佤族布朗族傣族自治县', '云南省临沧市双江拉祜族佤族布朗族傣族自治县'),
(530926, 3, 530000, '云南省', 530900, '临沧市', '耿马傣族佤族自治县', '云南省临沧市耿马傣族佤族自治县'),
(530927, 3, 530000, '云南省', 530900, '临沧市', '沧源佤族自治县', '云南省临沧市沧源佤族自治县'),
(532300, 2, 530000, '云南省', 0, '', '楚雄彝族自治州', '云南省楚雄彝族自治州'),
(532301, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '楚雄市', '云南省楚雄彝族自治州楚雄市'),
(532322, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '双柏县', '云南省楚雄彝族自治州双柏县'),
(532323, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '牟定县', '云南省楚雄彝族自治州牟定县'),
(532324, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '南华县', '云南省楚雄彝族自治州南华县'),
(532325, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '姚安县', '云南省楚雄彝族自治州姚安县'),
(532326, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '大姚县', '云南省楚雄彝族自治州大姚县'),
(532327, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '永仁县', '云南省楚雄彝族自治州永仁县'),
(532328, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '元谋县', '云南省楚雄彝族自治州元谋县'),
(532329, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '武定县', '云南省楚雄彝族自治州武定县'),
(532331, 3, 530000, '云南省', 532300, '楚雄彝族自治州', '禄丰县', '云南省楚雄彝族自治州禄丰县'),
(532500, 2, 530000, '云南省', 0, '', '红河哈尼族彝族自治州', '云南省红河哈尼族彝族自治州'),
(532501, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '个旧市', '云南省红河哈尼族彝族自治州个旧市'),
(532502, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '开远市', '云南省红河哈尼族彝族自治州开远市'),
(532503, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '蒙自市', '云南省红河哈尼族彝族自治州蒙自市'),
(532504, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '弥勒市', '云南省红河哈尼族彝族自治州弥勒市'),
(532523, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '屏边苗族自治县', '云南省红河哈尼族彝族自治州屏边苗族自治县'),
(532524, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '建水县', '云南省红河哈尼族彝族自治州建水县'),
(532525, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '石屏县', '云南省红河哈尼族彝族自治州石屏县'),
(532527, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '泸西县', '云南省红河哈尼族彝族自治州泸西县'),
(532528, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '元阳县', '云南省红河哈尼族彝族自治州元阳县'),
(532529, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '红河县', '云南省红河哈尼族彝族自治州红河县'),
(532530, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '金平苗族瑶族傣族自治县', '云南省红河哈尼族彝族自治州金平苗族瑶族傣族自治县'),
(532531, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '绿春县', '云南省红河哈尼族彝族自治州绿春县'),
(532532, 3, 530000, '云南省', 532500, '红河哈尼族彝族自治州', '河口瑶族自治县', '云南省红河哈尼族彝族自治州河口瑶族自治县'),
(532600, 2, 530000, '云南省', 0, '', '文山壮族苗族自治州', '云南省文山壮族苗族自治州'),
(532601, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '文山市', '云南省文山壮族苗族自治州文山市'),
(532622, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '砚山县', '云南省文山壮族苗族自治州砚山县'),
(532623, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '西畴县', '云南省文山壮族苗族自治州西畴县'),
(532624, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '麻栗坡县', '云南省文山壮族苗族自治州麻栗坡县'),
(532625, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '马关县', '云南省文山壮族苗族自治州马关县'),
(532626, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '丘北县', '云南省文山壮族苗族自治州丘北县'),
(532627, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '广南县', '云南省文山壮族苗族自治州广南县'),
(532628, 3, 530000, '云南省', 532600, '文山壮族苗族自治州', '富宁县', '云南省文山壮族苗族自治州富宁县'),
(532800, 2, 530000, '云南省', 0, '', '西双版纳傣族自治州', '云南省西双版纳傣族自治州'),
(532801, 3, 530000, '云南省', 532800, '西双版纳傣族自治州', '景洪市', '云南省西双版纳傣族自治州景洪市'),
(532822, 3, 530000, '云南省', 532800, '西双版纳傣族自治州', '勐海县', '云南省西双版纳傣族自治州勐海县'),
(532823, 3, 530000, '云南省', 532800, '西双版纳傣族自治州', '勐腊县', '云南省西双版纳傣族自治州勐腊县'),
(532900, 2, 530000, '云南省', 0, '', '大理白族自治州', '云南省大理白族自治州'),
(532901, 3, 530000, '云南省', 532900, '大理白族自治州', '大理市', '云南省大理白族自治州大理市'),
(532922, 3, 530000, '云南省', 532900, '大理白族自治州', '漾濞彝族自治县', '云南省大理白族自治州漾濞彝族自治县'),
(532923, 3, 530000, '云南省', 532900, '大理白族自治州', '祥云县', '云南省大理白族自治州祥云县'),
(532924, 3, 530000, '云南省', 532900, '大理白族自治州', '宾川县', '云南省大理白族自治州宾川县'),
(532925, 3, 530000, '云南省', 532900, '大理白族自治州', '弥渡县', '云南省大理白族自治州弥渡县'),
(532926, 3, 530000, '云南省', 532900, '大理白族自治州', '南涧彝族自治县', '云南省大理白族自治州南涧彝族自治县'),
(532927, 3, 530000, '云南省', 532900, '大理白族自治州', '巍山彝族回族自治县', '云南省大理白族自治州巍山彝族回族自治县'),
(532928, 3, 530000, '云南省', 532900, '大理白族自治州', '永平县', '云南省大理白族自治州永平县'),
(532929, 3, 530000, '云南省', 532900, '大理白族自治州', '云龙县', '云南省大理白族自治州云龙县'),
(532930, 3, 530000, '云南省', 532900, '大理白族自治州', '洱源县', '云南省大理白族自治州洱源县'),
(532931, 3, 530000, '云南省', 532900, '大理白族自治州', '剑川县', '云南省大理白族自治州剑川县'),
(532932, 3, 530000, '云南省', 532900, '大理白族自治州', '鹤庆县', '云南省大理白族自治州鹤庆县'),
(533100, 2, 530000, '云南省', 0, '', '德宏傣族景颇族自治州', '云南省德宏傣族景颇族自治州'),
(533102, 3, 530000, '云南省', 533100, '德宏傣族景颇族自治州', '瑞丽市', '云南省德宏傣族景颇族自治州瑞丽市'),
(533103, 3, 530000, '云南省', 533100, '德宏傣族景颇族自治州', '芒市', '云南省德宏傣族景颇族自治州芒市'),
(533122, 3, 530000, '云南省', 533100, '德宏傣族景颇族自治州', '梁河县', '云南省德宏傣族景颇族自治州梁河县'),
(533123, 3, 530000, '云南省', 533100, '德宏傣族景颇族自治州', '盈江县', '云南省德宏傣族景颇族自治州盈江县'),
(533124, 3, 530000, '云南省', 533100, '德宏傣族景颇族自治州', '陇川县', '云南省德宏傣族景颇族自治州陇川县'),
(533300, 2, 530000, '云南省', 0, '', '怒江傈僳族自治州', '云南省怒江傈僳族自治州'),
(533301, 3, 530000, '云南省', 533300, '怒江傈僳族自治州', '泸水市', '云南省怒江傈僳族自治州泸水市'),
(533323, 3, 530000, '云南省', 533300, '怒江傈僳族自治州', '福贡县', '云南省怒江傈僳族自治州福贡县'),
(533324, 3, 530000, '云南省', 533300, '怒江傈僳族自治州', '贡山独龙族怒族自治县', '云南省怒江傈僳族自治州贡山独龙族怒族自治县'),
(533325, 3, 530000, '云南省', 533300, '怒江傈僳族自治州', '兰坪白族普米族自治县', '云南省怒江傈僳族自治州兰坪白族普米族自治县'),
(533400, 2, 530000, '云南省', 0, '', '迪庆藏族自治州', '云南省迪庆藏族自治州'),
(533401, 3, 530000, '云南省', 533400, '迪庆藏族自治州', '香格里拉市', '云南省迪庆藏族自治州香格里拉市'),
(533422, 3, 530000, '云南省', 533400, '迪庆藏族自治州', '德钦县', '云南省迪庆藏族自治州德钦县'),
(533423, 3, 530000, '云南省', 533400, '迪庆藏族自治州', '维西傈僳族自治县', '云南省迪庆藏族自治州维西傈僳族自治县'),
(540000, 1, 0, '', 0, '', '西藏自治区', '西藏自治区'),
(540100, 2, 540000, '西藏自治区', 0, '', '拉萨市', '西藏自治区拉萨市'),
(540102, 3, 540000, '西藏自治区', 540100, '拉萨市', '城关区', '西藏自治区拉萨市城关区'),
(540103, 3, 540000, '西藏自治区', 540100, '拉萨市', '堆龙德庆区', '西藏自治区拉萨市堆龙德庆区'),
(540104, 3, 540000, '西藏自治区', 540100, '拉萨市', '达孜区', '西藏自治区拉萨市达孜区'),
(540121, 3, 540000, '西藏自治区', 540100, '拉萨市', '林周县', '西藏自治区拉萨市林周县'),
(540122, 3, 540000, '西藏自治区', 540100, '拉萨市', '当雄县', '西藏自治区拉萨市当雄县'),
(540123, 3, 540000, '西藏自治区', 540100, '拉萨市', '尼木县', '西藏自治区拉萨市尼木县'),
(540124, 3, 540000, '西藏自治区', 540100, '拉萨市', '曲水县', '西藏自治区拉萨市曲水县'),
(540127, 3, 540000, '西藏自治区', 540100, '拉萨市', '墨竹工卡县', '西藏自治区拉萨市墨竹工卡县'),
(540200, 2, 540000, '西藏自治区', 0, '', '日喀则市', '西藏自治区日喀则市'),
(540202, 3, 540000, '西藏自治区', 540200, '日喀则市', '桑珠孜区', '西藏自治区日喀则市桑珠孜区'),
(540221, 3, 540000, '西藏自治区', 540200, '日喀则市', '南木林县', '西藏自治区日喀则市南木林县'),
(540222, 3, 540000, '西藏自治区', 540200, '日喀则市', '江孜县', '西藏自治区日喀则市江孜县'),
(540223, 3, 540000, '西藏自治区', 540200, '日喀则市', '定日县', '西藏自治区日喀则市定日县'),
(540224, 3, 540000, '西藏自治区', 540200, '日喀则市', '萨迦县', '西藏自治区日喀则市萨迦县'),
(540225, 3, 540000, '西藏自治区', 540200, '日喀则市', '拉孜县', '西藏自治区日喀则市拉孜县'),
(540226, 3, 540000, '西藏自治区', 540200, '日喀则市', '昂仁县', '西藏自治区日喀则市昂仁县'),
(540227, 3, 540000, '西藏自治区', 540200, '日喀则市', '谢通门县', '西藏自治区日喀则市谢通门县'),
(540228, 3, 540000, '西藏自治区', 540200, '日喀则市', '白朗县', '西藏自治区日喀则市白朗县'),
(540229, 3, 540000, '西藏自治区', 540200, '日喀则市', '仁布县', '西藏自治区日喀则市仁布县'),
(540230, 3, 540000, '西藏自治区', 540200, '日喀则市', '康马县', '西藏自治区日喀则市康马县'),
(540231, 3, 540000, '西藏自治区', 540200, '日喀则市', '定结县', '西藏自治区日喀则市定结县'),
(540232, 3, 540000, '西藏自治区', 540200, '日喀则市', '仲巴县', '西藏自治区日喀则市仲巴县'),
(540233, 3, 540000, '西藏自治区', 540200, '日喀则市', '亚东县', '西藏自治区日喀则市亚东县'),
(540234, 3, 540000, '西藏自治区', 540200, '日喀则市', '吉隆县', '西藏自治区日喀则市吉隆县'),
(540235, 3, 540000, '西藏自治区', 540200, '日喀则市', '聂拉木县', '西藏自治区日喀则市聂拉木县'),
(540236, 3, 540000, '西藏自治区', 540200, '日喀则市', '萨嘎县', '西藏自治区日喀则市萨嘎县'),
(540237, 3, 540000, '西藏自治区', 540200, '日喀则市', '岗巴县', '西藏自治区日喀则市岗巴县'),
(540300, 2, 540000, '西藏自治区', 0, '', '昌都市', '西藏自治区昌都市'),
(540302, 3, 540000, '西藏自治区', 540300, '昌都市', '卡若区', '西藏自治区昌都市卡若区'),
(540321, 3, 540000, '西藏自治区', 540300, '昌都市', '江达县', '西藏自治区昌都市江达县'),
(540322, 3, 540000, '西藏自治区', 540300, '昌都市', '贡觉县', '西藏自治区昌都市贡觉县'),
(540323, 3, 540000, '西藏自治区', 540300, '昌都市', '类乌齐县', '西藏自治区昌都市类乌齐县'),
(540324, 3, 540000, '西藏自治区', 540300, '昌都市', '丁青县', '西藏自治区昌都市丁青县'),
(540325, 3, 540000, '西藏自治区', 540300, '昌都市', '察雅县', '西藏自治区昌都市察雅县'),
(540326, 3, 540000, '西藏自治区', 540300, '昌都市', '八宿县', '西藏自治区昌都市八宿县'),
(540327, 3, 540000, '西藏自治区', 540300, '昌都市', '左贡县', '西藏自治区昌都市左贡县'),
(540328, 3, 540000, '西藏自治区', 540300, '昌都市', '芒康县', '西藏自治区昌都市芒康县'),
(540329, 3, 540000, '西藏自治区', 540300, '昌都市', '洛隆县', '西藏自治区昌都市洛隆县'),
(540330, 3, 540000, '西藏自治区', 540300, '昌都市', '边坝县', '西藏自治区昌都市边坝县'),
(540400, 2, 540000, '西藏自治区', 0, '', '林芝市', '西藏自治区林芝市'),
(540402, 3, 540000, '西藏自治区', 540400, '林芝市', '巴宜区', '西藏自治区林芝市巴宜区'),
(540421, 3, 540000, '西藏自治区', 540400, '林芝市', '工布江达县', '西藏自治区林芝市工布江达县'),
(540422, 3, 540000, '西藏自治区', 540400, '林芝市', '米林县', '西藏自治区林芝市米林县'),
(540423, 3, 540000, '西藏自治区', 540400, '林芝市', '墨脱县', '西藏自治区林芝市墨脱县'),
(540424, 3, 540000, '西藏自治区', 540400, '林芝市', '波密县', '西藏自治区林芝市波密县'),
(540425, 3, 540000, '西藏自治区', 540400, '林芝市', '察隅县', '西藏自治区林芝市察隅县'),
(540426, 3, 540000, '西藏自治区', 540400, '林芝市', '朗县', '西藏自治区林芝市朗县'),
(540500, 2, 540000, '西藏自治区', 0, '', '山南市', '西藏自治区山南市'),
(540502, 3, 540000, '西藏自治区', 540500, '山南市', '乃东区', '西藏自治区山南市乃东区'),
(540521, 3, 540000, '西藏自治区', 540500, '山南市', '扎囊县', '西藏自治区山南市扎囊县'),
(540522, 3, 540000, '西藏自治区', 540500, '山南市', '贡嘎县', '西藏自治区山南市贡嘎县'),
(540523, 3, 540000, '西藏自治区', 540500, '山南市', '桑日县', '西藏自治区山南市桑日县'),
(540524, 3, 540000, '西藏自治区', 540500, '山南市', '琼结县', '西藏自治区山南市琼结县'),
(540525, 3, 540000, '西藏自治区', 540500, '山南市', '曲松县', '西藏自治区山南市曲松县'),
(540526, 3, 540000, '西藏自治区', 540500, '山南市', '措美县', '西藏自治区山南市措美县'),
(540527, 3, 540000, '西藏自治区', 540500, '山南市', '洛扎县', '西藏自治区山南市洛扎县'),
(540528, 3, 540000, '西藏自治区', 540500, '山南市', '加查县', '西藏自治区山南市加查县'),
(540529, 3, 540000, '西藏自治区', 540500, '山南市', '隆子县', '西藏自治区山南市隆子县'),
(540530, 3, 540000, '西藏自治区', 540500, '山南市', '错那县', '西藏自治区山南市错那县'),
(540531, 3, 540000, '西藏自治区', 540500, '山南市', '浪卡子县', '西藏自治区山南市浪卡子县'),
(540600, 2, 540000, '西藏自治区', 0, '', '那曲市', '西藏自治区那曲市'),
(540602, 3, 540000, '西藏自治区', 540600, '那曲市', '色尼区', '西藏自治区那曲市色尼区'),
(540621, 3, 540000, '西藏自治区', 540600, '那曲市', '嘉黎县', '西藏自治区那曲市嘉黎县'),
(540622, 3, 540000, '西藏自治区', 540600, '那曲市', '比如县', '西藏自治区那曲市比如县'),
(540623, 3, 540000, '西藏自治区', 540600, '那曲市', '聂荣县', '西藏自治区那曲市聂荣县'),
(540624, 3, 540000, '西藏自治区', 540600, '那曲市', '安多县', '西藏自治区那曲市安多县'),
(540625, 3, 540000, '西藏自治区', 540600, '那曲市', '申扎县', '西藏自治区那曲市申扎县'),
(540626, 3, 540000, '西藏自治区', 540600, '那曲市', '索县', '西藏自治区那曲市索县'),
(540627, 3, 540000, '西藏自治区', 540600, '那曲市', '班戈县', '西藏自治区那曲市班戈县'),
(540628, 3, 540000, '西藏自治区', 540600, '那曲市', '巴青县', '西藏自治区那曲市巴青县'),
(540629, 3, 540000, '西藏自治区', 540600, '那曲市', '尼玛县', '西藏自治区那曲市尼玛县'),
(540630, 3, 540000, '西藏自治区', 540600, '那曲市', '双湖县', '西藏自治区那曲市双湖县'),
(542500, 2, 540000, '西藏自治区', 0, '', '阿里地区', '西藏自治区阿里地区'),
(542521, 3, 540000, '西藏自治区', 542500, '阿里地区', '普兰县', '西藏自治区阿里地区普兰县'),
(542522, 3, 540000, '西藏自治区', 542500, '阿里地区', '札达县', '西藏自治区阿里地区札达县'),
(542523, 3, 540000, '西藏自治区', 542500, '阿里地区', '噶尔县', '西藏自治区阿里地区噶尔县'),
(542524, 3, 540000, '西藏自治区', 542500, '阿里地区', '日土县', '西藏自治区阿里地区日土县'),
(542525, 3, 540000, '西藏自治区', 542500, '阿里地区', '革吉县', '西藏自治区阿里地区革吉县'),
(542526, 3, 540000, '西藏自治区', 542500, '阿里地区', '改则县', '西藏自治区阿里地区改则县'),
(542527, 3, 540000, '西藏自治区', 542500, '阿里地区', '措勤县', '西藏自治区阿里地区措勤县'),
(610000, 1, 0, '', 0, '', '陕西省', '陕西省'),
(610100, 2, 610000, '陕西省', 0, '', '西安市', '陕西省西安市'),
(610102, 3, 610000, '陕西省', 610100, '西安市', '新城区', '陕西省西安市新城区'),
(610103, 3, 610000, '陕西省', 610100, '西安市', '碑林区', '陕西省西安市碑林区'),
(610104, 3, 610000, '陕西省', 610100, '西安市', '莲湖区', '陕西省西安市莲湖区'),
(610111, 3, 610000, '陕西省', 610100, '西安市', '灞桥区', '陕西省西安市灞桥区'),
(610112, 3, 610000, '陕西省', 610100, '西安市', '未央区', '陕西省西安市未央区'),
(610113, 3, 610000, '陕西省', 610100, '西安市', '雁塔区', '陕西省西安市雁塔区'),
(610114, 3, 610000, '陕西省', 610100, '西安市', '阎良区', '陕西省西安市阎良区'),
(610115, 3, 610000, '陕西省', 610100, '西安市', '临潼区', '陕西省西安市临潼区'),
(610116, 3, 610000, '陕西省', 610100, '西安市', '长安区', '陕西省西安市长安区'),
(610117, 3, 610000, '陕西省', 610100, '西安市', '高陵区', '陕西省西安市高陵区'),
(610118, 3, 610000, '陕西省', 610100, '西安市', '鄠邑区', '陕西省西安市鄠邑区'),
(610122, 3, 610000, '陕西省', 610100, '西安市', '蓝田县', '陕西省西安市蓝田县'),
(610124, 3, 610000, '陕西省', 610100, '西安市', '周至县', '陕西省西安市周至县'),
(610200, 2, 610000, '陕西省', 0, '', '铜川市', '陕西省铜川市'),
(610202, 3, 610000, '陕西省', 610200, '铜川市', '王益区', '陕西省铜川市王益区'),
(610203, 3, 610000, '陕西省', 610200, '铜川市', '印台区', '陕西省铜川市印台区'),
(610204, 3, 610000, '陕西省', 610200, '铜川市', '耀州区', '陕西省铜川市耀州区'),
(610222, 3, 610000, '陕西省', 610200, '铜川市', '宜君县', '陕西省铜川市宜君县'),
(610300, 2, 610000, '陕西省', 0, '', '宝鸡市', '陕西省宝鸡市'),
(610302, 3, 610000, '陕西省', 610300, '宝鸡市', '渭滨区', '陕西省宝鸡市渭滨区'),
(610303, 3, 610000, '陕西省', 610300, '宝鸡市', '金台区', '陕西省宝鸡市金台区'),
(610304, 3, 610000, '陕西省', 610300, '宝鸡市', '陈仓区', '陕西省宝鸡市陈仓区'),
(610322, 3, 610000, '陕西省', 610300, '宝鸡市', '凤翔县', '陕西省宝鸡市凤翔县'),
(610323, 3, 610000, '陕西省', 610300, '宝鸡市', '岐山县', '陕西省宝鸡市岐山县'),
(610324, 3, 610000, '陕西省', 610300, '宝鸡市', '扶风县', '陕西省宝鸡市扶风县'),
(610326, 3, 610000, '陕西省', 610300, '宝鸡市', '眉县', '陕西省宝鸡市眉县'),
(610327, 3, 610000, '陕西省', 610300, '宝鸡市', '陇县', '陕西省宝鸡市陇县'),
(610328, 3, 610000, '陕西省', 610300, '宝鸡市', '千阳县', '陕西省宝鸡市千阳县'),
(610329, 3, 610000, '陕西省', 610300, '宝鸡市', '麟游县', '陕西省宝鸡市麟游县'),
(610330, 3, 610000, '陕西省', 610300, '宝鸡市', '凤县', '陕西省宝鸡市凤县'),
(610331, 3, 610000, '陕西省', 610300, '宝鸡市', '太白县', '陕西省宝鸡市太白县'),
(610400, 2, 610000, '陕西省', 0, '', '咸阳市', '陕西省咸阳市'),
(610402, 3, 610000, '陕西省', 610400, '咸阳市', '秦都区', '陕西省咸阳市秦都区'),
(610403, 3, 610000, '陕西省', 610400, '咸阳市', '杨陵区', '陕西省咸阳市杨陵区'),
(610404, 3, 610000, '陕西省', 610400, '咸阳市', '渭城区', '陕西省咸阳市渭城区'),
(610422, 3, 610000, '陕西省', 610400, '咸阳市', '三原县', '陕西省咸阳市三原县'),
(610423, 3, 610000, '陕西省', 610400, '咸阳市', '泾阳县', '陕西省咸阳市泾阳县'),
(610424, 3, 610000, '陕西省', 610400, '咸阳市', '乾县', '陕西省咸阳市乾县'),
(610425, 3, 610000, '陕西省', 610400, '咸阳市', '礼泉县', '陕西省咸阳市礼泉县'),
(610426, 3, 610000, '陕西省', 610400, '咸阳市', '永寿县', '陕西省咸阳市永寿县'),
(610427, 3, 610000, '陕西省', 610400, '咸阳市', '彬县', '陕西省咸阳市彬县'),
(610428, 3, 610000, '陕西省', 610400, '咸阳市', '长武县', '陕西省咸阳市长武县'),
(610429, 3, 610000, '陕西省', 610400, '咸阳市', '旬邑县', '陕西省咸阳市旬邑县'),
(610430, 3, 610000, '陕西省', 610400, '咸阳市', '淳化县', '陕西省咸阳市淳化县'),
(610431, 3, 610000, '陕西省', 610400, '咸阳市', '武功县', '陕西省咸阳市武功县'),
(610481, 3, 610000, '陕西省', 610400, '咸阳市', '兴平市', '陕西省咸阳市兴平市'),
(610500, 2, 610000, '陕西省', 0, '', '渭南市', '陕西省渭南市'),
(610502, 3, 610000, '陕西省', 610500, '渭南市', '临渭区', '陕西省渭南市临渭区'),
(610503, 3, 610000, '陕西省', 610500, '渭南市', '华州区', '陕西省渭南市华州区'),
(610522, 3, 610000, '陕西省', 610500, '渭南市', '潼关县', '陕西省渭南市潼关县'),
(610523, 3, 610000, '陕西省', 610500, '渭南市', '大荔县', '陕西省渭南市大荔县'),
(610524, 3, 610000, '陕西省', 610500, '渭南市', '合阳县', '陕西省渭南市合阳县'),
(610525, 3, 610000, '陕西省', 610500, '渭南市', '澄城县', '陕西省渭南市澄城县'),
(610526, 3, 610000, '陕西省', 610500, '渭南市', '蒲城县', '陕西省渭南市蒲城县'),
(610527, 3, 610000, '陕西省', 610500, '渭南市', '白水县', '陕西省渭南市白水县'),
(610528, 3, 610000, '陕西省', 610500, '渭南市', '富平县', '陕西省渭南市富平县'),
(610581, 3, 610000, '陕西省', 610500, '渭南市', '韩城市', '陕西省渭南市韩城市'),
(610582, 3, 610000, '陕西省', 610500, '渭南市', '华阴市', '陕西省渭南市华阴市'),
(610600, 2, 610000, '陕西省', 0, '', '延安市', '陕西省延安市'),
(610602, 3, 610000, '陕西省', 610600, '延安市', '宝塔区', '陕西省延安市宝塔区'),
(610603, 3, 610000, '陕西省', 610600, '延安市', '安塞区', '陕西省延安市安塞区'),
(610621, 3, 610000, '陕西省', 610600, '延安市', '延长县', '陕西省延安市延长县'),
(610622, 3, 610000, '陕西省', 610600, '延安市', '延川县', '陕西省延安市延川县'),
(610623, 3, 610000, '陕西省', 610600, '延安市', '子长县', '陕西省延安市子长县'),
(610625, 3, 610000, '陕西省', 610600, '延安市', '志丹县', '陕西省延安市志丹县'),
(610626, 3, 610000, '陕西省', 610600, '延安市', '吴起县', '陕西省延安市吴起县'),
(610627, 3, 610000, '陕西省', 610600, '延安市', '甘泉县', '陕西省延安市甘泉县'),
(610628, 3, 610000, '陕西省', 610600, '延安市', '富县', '陕西省延安市富县'),
(610629, 3, 610000, '陕西省', 610600, '延安市', '洛川县', '陕西省延安市洛川县'),
(610630, 3, 610000, '陕西省', 610600, '延安市', '宜川县', '陕西省延安市宜川县'),
(610631, 3, 610000, '陕西省', 610600, '延安市', '黄龙县', '陕西省延安市黄龙县'),
(610632, 3, 610000, '陕西省', 610600, '延安市', '黄陵县', '陕西省延安市黄陵县'),
(610700, 2, 610000, '陕西省', 0, '', '汉中市', '陕西省汉中市'),
(610702, 3, 610000, '陕西省', 610700, '汉中市', '汉台区', '陕西省汉中市汉台区'),
(610703, 3, 610000, '陕西省', 610700, '汉中市', '南郑区', '陕西省汉中市南郑区'),
(610722, 3, 610000, '陕西省', 610700, '汉中市', '城固县', '陕西省汉中市城固县'),
(610723, 3, 610000, '陕西省', 610700, '汉中市', '洋县', '陕西省汉中市洋县'),
(610724, 3, 610000, '陕西省', 610700, '汉中市', '西乡县', '陕西省汉中市西乡县'),
(610725, 3, 610000, '陕西省', 610700, '汉中市', '勉县', '陕西省汉中市勉县'),
(610726, 3, 610000, '陕西省', 610700, '汉中市', '宁强县', '陕西省汉中市宁强县'),
(610727, 3, 610000, '陕西省', 610700, '汉中市', '略阳县', '陕西省汉中市略阳县'),
(610728, 3, 610000, '陕西省', 610700, '汉中市', '镇巴县', '陕西省汉中市镇巴县'),
(610729, 3, 610000, '陕西省', 610700, '汉中市', '留坝县', '陕西省汉中市留坝县'),
(610730, 3, 610000, '陕西省', 610700, '汉中市', '佛坪县', '陕西省汉中市佛坪县'),
(610800, 2, 610000, '陕西省', 0, '', '榆林市', '陕西省榆林市'),
(610802, 3, 610000, '陕西省', 610800, '榆林市', '榆阳区', '陕西省榆林市榆阳区'),
(610803, 3, 610000, '陕西省', 610800, '榆林市', '横山区', '陕西省榆林市横山区'),
(610822, 3, 610000, '陕西省', 610800, '榆林市', '府谷县', '陕西省榆林市府谷县'),
(610824, 3, 610000, '陕西省', 610800, '榆林市', '靖边县', '陕西省榆林市靖边县'),
(610825, 3, 610000, '陕西省', 610800, '榆林市', '定边县', '陕西省榆林市定边县'),
(610826, 3, 610000, '陕西省', 610800, '榆林市', '绥德县', '陕西省榆林市绥德县'),
(610827, 3, 610000, '陕西省', 610800, '榆林市', '米脂县', '陕西省榆林市米脂县'),
(610828, 3, 610000, '陕西省', 610800, '榆林市', '佳县', '陕西省榆林市佳县'),
(610829, 3, 610000, '陕西省', 610800, '榆林市', '吴堡县', '陕西省榆林市吴堡县'),
(610830, 3, 610000, '陕西省', 610800, '榆林市', '清涧县', '陕西省榆林市清涧县'),
(610831, 3, 610000, '陕西省', 610800, '榆林市', '子洲县', '陕西省榆林市子洲县'),
(610881, 3, 610000, '陕西省', 610800, '榆林市', '神木市', '陕西省榆林市神木市'),
(610900, 2, 610000, '陕西省', 0, '', '安康市', '陕西省安康市'),
(610902, 3, 610000, '陕西省', 610900, '安康市', '汉滨区', '陕西省安康市汉滨区'),
(610921, 3, 610000, '陕西省', 610900, '安康市', '汉阴县', '陕西省安康市汉阴县'),
(610922, 3, 610000, '陕西省', 610900, '安康市', '石泉县', '陕西省安康市石泉县'),
(610923, 3, 610000, '陕西省', 610900, '安康市', '宁陕县', '陕西省安康市宁陕县'),
(610924, 3, 610000, '陕西省', 610900, '安康市', '紫阳县', '陕西省安康市紫阳县'),
(610925, 3, 610000, '陕西省', 610900, '安康市', '岚皋县', '陕西省安康市岚皋县'),
(610926, 3, 610000, '陕西省', 610900, '安康市', '平利县', '陕西省安康市平利县'),
(610927, 3, 610000, '陕西省', 610900, '安康市', '镇坪县', '陕西省安康市镇坪县'),
(610928, 3, 610000, '陕西省', 610900, '安康市', '旬阳县', '陕西省安康市旬阳县'),
(610929, 3, 610000, '陕西省', 610900, '安康市', '白河县', '陕西省安康市白河县'),
(611000, 2, 610000, '陕西省', 0, '', '商洛市', '陕西省商洛市'),
(611002, 3, 610000, '陕西省', 611000, '商洛市', '商州区', '陕西省商洛市商州区'),
(611021, 3, 610000, '陕西省', 611000, '商洛市', '洛南县', '陕西省商洛市洛南县'),
(611022, 3, 610000, '陕西省', 611000, '商洛市', '丹凤县', '陕西省商洛市丹凤县'),
(611023, 3, 610000, '陕西省', 611000, '商洛市', '商南县', '陕西省商洛市商南县'),
(611024, 3, 610000, '陕西省', 611000, '商洛市', '山阳县', '陕西省商洛市山阳县'),
(611025, 3, 610000, '陕西省', 611000, '商洛市', '镇安县', '陕西省商洛市镇安县'),
(611026, 3, 610000, '陕西省', 611000, '商洛市', '柞水县', '陕西省商洛市柞水县'),
(620000, 1, 0, '', 0, '', '甘肃省', '甘肃省'),
(620100, 2, 620000, '甘肃省', 0, '', '兰州市', '甘肃省兰州市'),
(620102, 3, 620000, '甘肃省', 620100, '兰州市', '城关区', '甘肃省兰州市城关区'),
(620103, 3, 620000, '甘肃省', 620100, '兰州市', '七里河区', '甘肃省兰州市七里河区'),
(620104, 3, 620000, '甘肃省', 620100, '兰州市', '西固区', '甘肃省兰州市西固区'),
(620105, 3, 620000, '甘肃省', 620100, '兰州市', '安宁区', '甘肃省兰州市安宁区'),
(620111, 3, 620000, '甘肃省', 620100, '兰州市', '红古区', '甘肃省兰州市红古区'),
(620121, 3, 620000, '甘肃省', 620100, '兰州市', '永登县', '甘肃省兰州市永登县'),
(620122, 3, 620000, '甘肃省', 620100, '兰州市', '皋兰县', '甘肃省兰州市皋兰县'),
(620123, 3, 620000, '甘肃省', 620100, '兰州市', '榆中县', '甘肃省兰州市榆中县'),
(620200, 2, 620000, '甘肃省', 0, '', '嘉峪关市', '甘肃省嘉峪关市'),
(620300, 2, 620000, '甘肃省', 0, '', '金昌市', '甘肃省金昌市'),
(620302, 3, 620000, '甘肃省', 620300, '金昌市', '金川区', '甘肃省金昌市金川区'),
(620321, 3, 620000, '甘肃省', 620300, '金昌市', '永昌县', '甘肃省金昌市永昌县'),
(620400, 2, 620000, '甘肃省', 0, '', '白银市', '甘肃省白银市'),
(620402, 3, 620000, '甘肃省', 620400, '白银市', '白银区', '甘肃省白银市白银区'),
(620403, 3, 620000, '甘肃省', 620400, '白银市', '平川区', '甘肃省白银市平川区'),
(620421, 3, 620000, '甘肃省', 620400, '白银市', '靖远县', '甘肃省白银市靖远县'),
(620422, 3, 620000, '甘肃省', 620400, '白银市', '会宁县', '甘肃省白银市会宁县'),
(620423, 3, 620000, '甘肃省', 620400, '白银市', '景泰县', '甘肃省白银市景泰县'),
(620500, 2, 620000, '甘肃省', 0, '', '天水市', '甘肃省天水市'),
(620502, 3, 620000, '甘肃省', 620500, '天水市', '秦州区', '甘肃省天水市秦州区'),
(620503, 3, 620000, '甘肃省', 620500, '天水市', '麦积区', '甘肃省天水市麦积区'),
(620521, 3, 620000, '甘肃省', 620500, '天水市', '清水县', '甘肃省天水市清水县'),
(620522, 3, 620000, '甘肃省', 620500, '天水市', '秦安县', '甘肃省天水市秦安县'),
(620523, 3, 620000, '甘肃省', 620500, '天水市', '甘谷县', '甘肃省天水市甘谷县'),
(620524, 3, 620000, '甘肃省', 620500, '天水市', '武山县', '甘肃省天水市武山县'),
(620525, 3, 620000, '甘肃省', 620500, '天水市', '张家川回族自治县', '甘肃省天水市张家川回族自治县'),
(620600, 2, 620000, '甘肃省', 0, '', '武威市', '甘肃省武威市'),
(620602, 3, 620000, '甘肃省', 620600, '武威市', '凉州区', '甘肃省武威市凉州区'),
(620621, 3, 620000, '甘肃省', 620600, '武威市', '民勤县', '甘肃省武威市民勤县'),
(620622, 3, 620000, '甘肃省', 620600, '武威市', '古浪县', '甘肃省武威市古浪县'),
(620623, 3, 620000, '甘肃省', 620600, '武威市', '天祝藏族自治县', '甘肃省武威市天祝藏族自治县'),
(620700, 2, 620000, '甘肃省', 0, '', '张掖市', '甘肃省张掖市'),
(620702, 3, 620000, '甘肃省', 620700, '张掖市', '甘州区', '甘肃省张掖市甘州区'),
(620721, 3, 620000, '甘肃省', 620700, '张掖市', '肃南裕固族自治县', '甘肃省张掖市肃南裕固族自治县'),
(620722, 3, 620000, '甘肃省', 620700, '张掖市', '民乐县', '甘肃省张掖市民乐县'),
(620723, 3, 620000, '甘肃省', 620700, '张掖市', '临泽县', '甘肃省张掖市临泽县'),
(620724, 3, 620000, '甘肃省', 620700, '张掖市', '高台县', '甘肃省张掖市高台县'),
(620725, 3, 620000, '甘肃省', 620700, '张掖市', '山丹县', '甘肃省张掖市山丹县'),
(620800, 2, 620000, '甘肃省', 0, '', '平凉市', '甘肃省平凉市'),
(620802, 3, 620000, '甘肃省', 620800, '平凉市', '崆峒区', '甘肃省平凉市崆峒区'),
(620821, 3, 620000, '甘肃省', 620800, '平凉市', '泾川县', '甘肃省平凉市泾川县'),
(620822, 3, 620000, '甘肃省', 620800, '平凉市', '灵台县', '甘肃省平凉市灵台县'),
(620823, 3, 620000, '甘肃省', 620800, '平凉市', '崇信县', '甘肃省平凉市崇信县'),
(620824, 3, 620000, '甘肃省', 620800, '平凉市', '华亭县', '甘肃省平凉市华亭县'),
(620825, 3, 620000, '甘肃省', 620800, '平凉市', '庄浪县', '甘肃省平凉市庄浪县'),
(620826, 3, 620000, '甘肃省', 620800, '平凉市', '静宁县', '甘肃省平凉市静宁县'),
(620900, 2, 620000, '甘肃省', 0, '', '酒泉市', '甘肃省酒泉市'),
(620902, 3, 620000, '甘肃省', 620900, '酒泉市', '肃州区', '甘肃省酒泉市肃州区'),
(620921, 3, 620000, '甘肃省', 620900, '酒泉市', '金塔县', '甘肃省酒泉市金塔县'),
(620922, 3, 620000, '甘肃省', 620900, '酒泉市', '瓜州县', '甘肃省酒泉市瓜州县'),
(620923, 3, 620000, '甘肃省', 620900, '酒泉市', '肃北蒙古族自治县', '甘肃省酒泉市肃北蒙古族自治县'),
(620924, 3, 620000, '甘肃省', 620900, '酒泉市', '阿克塞哈萨克族自治县', '甘肃省酒泉市阿克塞哈萨克族自治县'),
(620981, 3, 620000, '甘肃省', 620900, '酒泉市', '玉门市', '甘肃省酒泉市玉门市'),
(620982, 3, 620000, '甘肃省', 620900, '酒泉市', '敦煌市', '甘肃省酒泉市敦煌市'),
(621000, 2, 620000, '甘肃省', 0, '', '庆阳市', '甘肃省庆阳市'),
(621002, 3, 620000, '甘肃省', 621000, '庆阳市', '西峰区', '甘肃省庆阳市西峰区'),
(621021, 3, 620000, '甘肃省', 621000, '庆阳市', '庆城县', '甘肃省庆阳市庆城县'),
(621022, 3, 620000, '甘肃省', 621000, '庆阳市', '环县', '甘肃省庆阳市环县'),
(621023, 3, 620000, '甘肃省', 621000, '庆阳市', '华池县', '甘肃省庆阳市华池县'),
(621024, 3, 620000, '甘肃省', 621000, '庆阳市', '合水县', '甘肃省庆阳市合水县'),
(621025, 3, 620000, '甘肃省', 621000, '庆阳市', '正宁县', '甘肃省庆阳市正宁县'),
(621026, 3, 620000, '甘肃省', 621000, '庆阳市', '宁县', '甘肃省庆阳市宁县'),
(621027, 3, 620000, '甘肃省', 621000, '庆阳市', '镇原县', '甘肃省庆阳市镇原县'),
(621100, 2, 620000, '甘肃省', 0, '', '定西市', '甘肃省定西市'),
(621102, 3, 620000, '甘肃省', 621100, '定西市', '安定区', '甘肃省定西市安定区'),
(621121, 3, 620000, '甘肃省', 621100, '定西市', '通渭县', '甘肃省定西市通渭县'),
(621122, 3, 620000, '甘肃省', 621100, '定西市', '陇西县', '甘肃省定西市陇西县'),
(621123, 3, 620000, '甘肃省', 621100, '定西市', '渭源县', '甘肃省定西市渭源县'),
(621124, 3, 620000, '甘肃省', 621100, '定西市', '临洮县', '甘肃省定西市临洮县'),
(621125, 3, 620000, '甘肃省', 621100, '定西市', '漳县', '甘肃省定西市漳县'),
(621126, 3, 620000, '甘肃省', 621100, '定西市', '岷县', '甘肃省定西市岷县'),
(621200, 2, 620000, '甘肃省', 0, '', '陇南市', '甘肃省陇南市'),
(621202, 3, 620000, '甘肃省', 621200, '陇南市', '武都区', '甘肃省陇南市武都区'),
(621221, 3, 620000, '甘肃省', 621200, '陇南市', '成县', '甘肃省陇南市成县'),
(621222, 3, 620000, '甘肃省', 621200, '陇南市', '文县', '甘肃省陇南市文县'),
(621223, 3, 620000, '甘肃省', 621200, '陇南市', '宕昌县', '甘肃省陇南市宕昌县'),
(621224, 3, 620000, '甘肃省', 621200, '陇南市', '康县', '甘肃省陇南市康县'),
(621225, 3, 620000, '甘肃省', 621200, '陇南市', '西和县', '甘肃省陇南市西和县'),
(621226, 3, 620000, '甘肃省', 621200, '陇南市', '礼县', '甘肃省陇南市礼县'),
(621227, 3, 620000, '甘肃省', 621200, '陇南市', '徽县', '甘肃省陇南市徽县'),
(621228, 3, 620000, '甘肃省', 621200, '陇南市', '两当县', '甘肃省陇南市两当县'),
(622900, 2, 620000, '甘肃省', 0, '', '临夏回族自治州', '甘肃省临夏回族自治州'),
(622901, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '临夏市', '甘肃省临夏回族自治州临夏市'),
(622921, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '临夏县', '甘肃省临夏回族自治州临夏县'),
(622922, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '康乐县', '甘肃省临夏回族自治州康乐县'),
(622923, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '永靖县', '甘肃省临夏回族自治州永靖县'),
(622924, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '广河县', '甘肃省临夏回族自治州广河县'),
(622925, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '和政县', '甘肃省临夏回族自治州和政县'),
(622926, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '东乡族自治县', '甘肃省临夏回族自治州东乡族自治县'),
(622927, 3, 620000, '甘肃省', 622900, '临夏回族自治州', '积石山保安族东乡族撒拉族自治县', '甘肃省临夏回族自治州积石山保安族东乡族撒拉族自治县'),
(623000, 2, 620000, '甘肃省', 0, '', '甘南藏族自治州', '甘肃省甘南藏族自治州'),
(623001, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '合作市', '甘肃省甘南藏族自治州合作市'),
(623021, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '临潭县', '甘肃省甘南藏族自治州临潭县'),
(623022, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '卓尼县', '甘肃省甘南藏族自治州卓尼县'),
(623023, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '舟曲县', '甘肃省甘南藏族自治州舟曲县'),
(623024, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '迭部县', '甘肃省甘南藏族自治州迭部县'),
(623025, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '玛曲县', '甘肃省甘南藏族自治州玛曲县'),
(623026, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '碌曲县', '甘肃省甘南藏族自治州碌曲县'),
(623027, 3, 620000, '甘肃省', 623000, '甘南藏族自治州', '夏河县', '甘肃省甘南藏族自治州夏河县'),
(630000, 1, 0, '', 0, '', '青海省', '青海省'),
(630100, 2, 630000, '青海省', 0, '', '西宁市', '青海省西宁市'),
(630102, 3, 630000, '青海省', 630100, '西宁市', '城东区', '青海省西宁市城东区'),
(630103, 3, 630000, '青海省', 630100, '西宁市', '城中区', '青海省西宁市城中区'),
(630104, 3, 630000, '青海省', 630100, '西宁市', '城西区', '青海省西宁市城西区'),
(630105, 3, 630000, '青海省', 630100, '西宁市', '城北区', '青海省西宁市城北区'),
(630121, 3, 630000, '青海省', 630100, '西宁市', '大通回族土族自治县', '青海省西宁市大通回族土族自治县'),
(630122, 3, 630000, '青海省', 630100, '西宁市', '湟中县', '青海省西宁市湟中县'),
(630123, 3, 630000, '青海省', 630100, '西宁市', '湟源县', '青海省西宁市湟源县'),
(630200, 2, 630000, '青海省', 0, '', '海东市', '青海省海东市'),
(630202, 3, 630000, '青海省', 630200, '海东市', '乐都区', '青海省海东市乐都区'),
(630203, 3, 630000, '青海省', 630200, '海东市', '平安区', '青海省海东市平安区'),
(630222, 3, 630000, '青海省', 630200, '海东市', '民和回族土族自治县', '青海省海东市民和回族土族自治县'),
(630223, 3, 630000, '青海省', 630200, '海东市', '互助土族自治县', '青海省海东市互助土族自治县'),
(630224, 3, 630000, '青海省', 630200, '海东市', '化隆回族自治县', '青海省海东市化隆回族自治县'),
(630225, 3, 630000, '青海省', 630200, '海东市', '循化撒拉族自治县', '青海省海东市循化撒拉族自治县'),
(632200, 2, 630000, '青海省', 0, '', '海北藏族自治州', '青海省海北藏族自治州'),
(632221, 3, 630000, '青海省', 632200, '海北藏族自治州', '门源回族自治县', '青海省海北藏族自治州门源回族自治县'),
(632222, 3, 630000, '青海省', 632200, '海北藏族自治州', '祁连县', '青海省海北藏族自治州祁连县'),
(632223, 3, 630000, '青海省', 632200, '海北藏族自治州', '海晏县', '青海省海北藏族自治州海晏县'),
(632224, 3, 630000, '青海省', 632200, '海北藏族自治州', '刚察县', '青海省海北藏族自治州刚察县'),
(632300, 2, 630000, '青海省', 0, '', '黄南藏族自治州', '青海省黄南藏族自治州'),
(632321, 3, 630000, '青海省', 632300, '黄南藏族自治州', '同仁县', '青海省黄南藏族自治州同仁县'),
(632322, 3, 630000, '青海省', 632300, '黄南藏族自治州', '尖扎县', '青海省黄南藏族自治州尖扎县'),
(632323, 3, 630000, '青海省', 632300, '黄南藏族自治州', '泽库县', '青海省黄南藏族自治州泽库县'),
(632324, 3, 630000, '青海省', 632300, '黄南藏族自治州', '河南蒙古族自治县', '青海省黄南藏族自治州河南蒙古族自治县'),
(632500, 2, 630000, '青海省', 0, '', '海南藏族自治州', '青海省海南藏族自治州'),
(632521, 3, 630000, '青海省', 632500, '海南藏族自治州', '共和县', '青海省海南藏族自治州共和县'),
(632522, 3, 630000, '青海省', 632500, '海南藏族自治州', '同德县', '青海省海南藏族自治州同德县'),
(632523, 3, 630000, '青海省', 632500, '海南藏族自治州', '贵德县', '青海省海南藏族自治州贵德县'),
(632524, 3, 630000, '青海省', 632500, '海南藏族自治州', '兴海县', '青海省海南藏族自治州兴海县'),
(632525, 3, 630000, '青海省', 632500, '海南藏族自治州', '贵南县', '青海省海南藏族自治州贵南县'),
(632600, 2, 630000, '青海省', 0, '', '果洛藏族自治州', '青海省果洛藏族自治州'),
(632621, 3, 630000, '青海省', 632600, '果洛藏族自治州', '玛沁县', '青海省果洛藏族自治州玛沁县'),
(632622, 3, 630000, '青海省', 632600, '果洛藏族自治州', '班玛县', '青海省果洛藏族自治州班玛县'),
(632623, 3, 630000, '青海省', 632600, '果洛藏族自治州', '甘德县', '青海省果洛藏族自治州甘德县'),
(632624, 3, 630000, '青海省', 632600, '果洛藏族自治州', '达日县', '青海省果洛藏族自治州达日县'),
(632625, 3, 630000, '青海省', 632600, '果洛藏族自治州', '久治县', '青海省果洛藏族自治州久治县'),
(632626, 3, 630000, '青海省', 632600, '果洛藏族自治州', '玛多县', '青海省果洛藏族自治州玛多县'),
(632700, 2, 630000, '青海省', 0, '', '玉树藏族自治州', '青海省玉树藏族自治州'),
(632701, 3, 630000, '青海省', 632700, '玉树藏族自治州', '玉树市', '青海省玉树藏族自治州玉树市'),
(632722, 3, 630000, '青海省', 632700, '玉树藏族自治州', '杂多县', '青海省玉树藏族自治州杂多县'),
(632723, 3, 630000, '青海省', 632700, '玉树藏族自治州', '称多县', '青海省玉树藏族自治州称多县'),
(632724, 3, 630000, '青海省', 632700, '玉树藏族自治州', '治多县', '青海省玉树藏族自治州治多县'),
(632725, 3, 630000, '青海省', 632700, '玉树藏族自治州', '囊谦县', '青海省玉树藏族自治州囊谦县'),
(632726, 3, 630000, '青海省', 632700, '玉树藏族自治州', '曲麻莱县', '青海省玉树藏族自治州曲麻莱县'),
(632800, 2, 630000, '青海省', 0, '', '海西蒙古族藏族自治州', '青海省海西蒙古族藏族自治州'),
(632801, 3, 630000, '青海省', 632800, '海西蒙古族藏族自治州', '格尔木市', '青海省海西蒙古族藏族自治州格尔木市'),
(632802, 3, 630000, '青海省', 632800, '海西蒙古族藏族自治州', '德令哈市', '青海省海西蒙古族藏族自治州德令哈市'),
(632821, 3, 630000, '青海省', 632800, '海西蒙古族藏族自治州', '乌兰县', '青海省海西蒙古族藏族自治州乌兰县'),
(632822, 3, 630000, '青海省', 632800, '海西蒙古族藏族自治州', '都兰县', '青海省海西蒙古族藏族自治州都兰县'),
(632823, 3, 630000, '青海省', 632800, '海西蒙古族藏族自治州', '天峻县', '青海省海西蒙古族藏族自治州天峻县'),
(640000, 1, 0, '', 0, '', '宁夏回族自治区', '宁夏回族自治区'),
(640100, 2, 640000, '宁夏回族自治区', 0, '', '银川市', '宁夏回族自治区银川市'),
(640104, 3, 640000, '宁夏回族自治区', 640100, '银川市', '兴庆区', '宁夏回族自治区银川市兴庆区'),
(640105, 3, 640000, '宁夏回族自治区', 640100, '银川市', '西夏区', '宁夏回族自治区银川市西夏区'),
(640106, 3, 640000, '宁夏回族自治区', 640100, '银川市', '金凤区', '宁夏回族自治区银川市金凤区'),
(640121, 3, 640000, '宁夏回族自治区', 640100, '银川市', '永宁县', '宁夏回族自治区银川市永宁县'),
(640122, 3, 640000, '宁夏回族自治区', 640100, '银川市', '贺兰县', '宁夏回族自治区银川市贺兰县'),
(640181, 3, 640000, '宁夏回族自治区', 640100, '银川市', '灵武市', '宁夏回族自治区银川市灵武市'),
(640200, 2, 640000, '宁夏回族自治区', 0, '', '石嘴山市', '宁夏回族自治区石嘴山市'),
(640202, 3, 640000, '宁夏回族自治区', 640200, '石嘴山市', '大武口区', '宁夏回族自治区石嘴山市大武口区'),
(640205, 3, 640000, '宁夏回族自治区', 640200, '石嘴山市', '惠农区', '宁夏回族自治区石嘴山市惠农区'),
(640221, 3, 640000, '宁夏回族自治区', 640200, '石嘴山市', '平罗县', '宁夏回族自治区石嘴山市平罗县'),
(640300, 2, 640000, '宁夏回族自治区', 0, '', '吴忠市', '宁夏回族自治区吴忠市'),
(640302, 3, 640000, '宁夏回族自治区', 640300, '吴忠市', '利通区', '宁夏回族自治区吴忠市利通区'),
(640303, 3, 640000, '宁夏回族自治区', 640300, '吴忠市', '红寺堡区', '宁夏回族自治区吴忠市红寺堡区'),
(640323, 3, 640000, '宁夏回族自治区', 640300, '吴忠市', '盐池县', '宁夏回族自治区吴忠市盐池县'),
(640324, 3, 640000, '宁夏回族自治区', 640300, '吴忠市', '同心县', '宁夏回族自治区吴忠市同心县'),
(640381, 3, 640000, '宁夏回族自治区', 640300, '吴忠市', '青铜峡市', '宁夏回族自治区吴忠市青铜峡市'),
(640400, 2, 640000, '宁夏回族自治区', 0, '', '固原市', '宁夏回族自治区固原市'),
(640402, 3, 640000, '宁夏回族自治区', 640400, '固原市', '原州区', '宁夏回族自治区固原市原州区'),
(640422, 3, 640000, '宁夏回族自治区', 640400, '固原市', '西吉县', '宁夏回族自治区固原市西吉县'),
(640423, 3, 640000, '宁夏回族自治区', 640400, '固原市', '隆德县', '宁夏回族自治区固原市隆德县'),
(640424, 3, 640000, '宁夏回族自治区', 640400, '固原市', '泾源县', '宁夏回族自治区固原市泾源县'),
(640425, 3, 640000, '宁夏回族自治区', 640400, '固原市', '彭阳县', '宁夏回族自治区固原市彭阳县'),
(640500, 2, 640000, '宁夏回族自治区', 0, '', '中卫市', '宁夏回族自治区中卫市'),
(640502, 3, 640000, '宁夏回族自治区', 640500, '中卫市', '沙坡头区', '宁夏回族自治区中卫市沙坡头区'),
(640521, 3, 640000, '宁夏回族自治区', 640500, '中卫市', '中宁县', '宁夏回族自治区中卫市中宁县'),
(640522, 3, 640000, '宁夏回族自治区', 640500, '中卫市', '海原县', '宁夏回族自治区中卫市海原县'),
(650000, 1, 0, '', 0, '', '新疆维吾尔自治区', '新疆维吾尔自治区'),
(650100, 2, 650000, '新疆维吾尔自治区', 0, '', '乌鲁木齐市', '新疆维吾尔自治区乌鲁木齐市'),
(650102, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '天山区', '新疆维吾尔自治区乌鲁木齐市天山区'),
(650103, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '沙依巴克区', '新疆维吾尔自治区乌鲁木齐市沙依巴克区'),
(650104, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '新市区', '新疆维吾尔自治区乌鲁木齐市新市区'),
(650105, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '水磨沟区', '新疆维吾尔自治区乌鲁木齐市水磨沟区'),
(650106, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '头屯河区', '新疆维吾尔自治区乌鲁木齐市头屯河区'),
(650107, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '达坂城区', '新疆维吾尔自治区乌鲁木齐市达坂城区'),
(650109, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '米东区', '新疆维吾尔自治区乌鲁木齐市米东区'),
(650121, 3, 650000, '新疆维吾尔自治区', 650100, '乌鲁木齐市', '乌鲁木齐县', '新疆维吾尔自治区乌鲁木齐市乌鲁木齐县'),
(650200, 2, 650000, '新疆维吾尔自治区', 0, '', '克拉玛依市', '新疆维吾尔自治区克拉玛依市'),
(650202, 3, 650000, '新疆维吾尔自治区', 650200, '克拉玛依市', '独山子区', '新疆维吾尔自治区克拉玛依市独山子区'),
(650203, 3, 650000, '新疆维吾尔自治区', 650200, '克拉玛依市', '克拉玛依区', '新疆维吾尔自治区克拉玛依市克拉玛依区'),
(650204, 3, 650000, '新疆维吾尔自治区', 650200, '克拉玛依市', '白碱滩区', '新疆维吾尔自治区克拉玛依市白碱滩区'),
(650205, 3, 650000, '新疆维吾尔自治区', 650200, '克拉玛依市', '乌尔禾区', '新疆维吾尔自治区克拉玛依市乌尔禾区'),
(650400, 2, 650000, '新疆维吾尔自治区', 0, '', '吐鲁番市', '新疆维吾尔自治区吐鲁番市'),
(650402, 3, 650000, '新疆维吾尔自治区', 650400, '吐鲁番市', '高昌区', '新疆维吾尔自治区吐鲁番市高昌区'),
(650421, 3, 650000, '新疆维吾尔自治区', 650400, '吐鲁番市', '鄯善县', '新疆维吾尔自治区吐鲁番市鄯善县'),
(650422, 3, 650000, '新疆维吾尔自治区', 650400, '吐鲁番市', '托克逊县', '新疆维吾尔自治区吐鲁番市托克逊县'),
(650500, 2, 650000, '新疆维吾尔自治区', 0, '', '哈密市', '新疆维吾尔自治区哈密市'),
(650502, 3, 650000, '新疆维吾尔自治区', 650500, '哈密市', '伊州区', '新疆维吾尔自治区哈密市伊州区'),
(650521, 3, 650000, '新疆维吾尔自治区', 650500, '哈密市', '巴里坤哈萨克自治县', '新疆维吾尔自治区哈密市巴里坤哈萨克自治县'),
(650522, 3, 650000, '新疆维吾尔自治区', 650500, '哈密市', '伊吾县', '新疆维吾尔自治区哈密市伊吾县'),
(652300, 2, 650000, '新疆维吾尔自治区', 0, '', '昌吉回族自治州', '新疆维吾尔自治区昌吉回族自治州'),
(652301, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '昌吉市', '新疆维吾尔自治区昌吉回族自治州昌吉市'),
(652302, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '阜康市', '新疆维吾尔自治区昌吉回族自治州阜康市'),
(652323, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '呼图壁县', '新疆维吾尔自治区昌吉回族自治州呼图壁县'),
(652324, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '玛纳斯县', '新疆维吾尔自治区昌吉回族自治州玛纳斯县'),
(652325, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '奇台县', '新疆维吾尔自治区昌吉回族自治州奇台县'),
(652327, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '吉木萨尔县', '新疆维吾尔自治区昌吉回族自治州吉木萨尔县'),
(652328, 3, 650000, '新疆维吾尔自治区', 652300, '昌吉回族自治州', '木垒哈萨克自治县', '新疆维吾尔自治区昌吉回族自治州木垒哈萨克自治县'),
(652700, 2, 650000, '新疆维吾尔自治区', 0, '', '博尔塔拉蒙古自治州', '新疆维吾尔自治区博尔塔拉蒙古自治州'),
(652701, 3, 650000, '新疆维吾尔自治区', 652700, '博尔塔拉蒙古自治州', '博乐市', '新疆维吾尔自治区博尔塔拉蒙古自治州博乐市'),
(652702, 3, 650000, '新疆维吾尔自治区', 652700, '博尔塔拉蒙古自治州', '阿拉山口市', '新疆维吾尔自治区博尔塔拉蒙古自治州阿拉山口市'),
(652722, 3, 650000, '新疆维吾尔自治区', 652700, '博尔塔拉蒙古自治州', '精河县', '新疆维吾尔自治区博尔塔拉蒙古自治州精河县'),
(652723, 3, 650000, '新疆维吾尔自治区', 652700, '博尔塔拉蒙古自治州', '温泉县', '新疆维吾尔自治区博尔塔拉蒙古自治州温泉县'),
(652800, 2, 650000, '新疆维吾尔自治区', 0, '', '巴音郭楞蒙古自治州', '新疆维吾尔自治区巴音郭楞蒙古自治州'),
(652801, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '库尔勒市', '新疆维吾尔自治区巴音郭楞蒙古自治州库尔勒市'),
(652822, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '轮台县', '新疆维吾尔自治区巴音郭楞蒙古自治州轮台县'),
(652823, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '尉犁县', '新疆维吾尔自治区巴音郭楞蒙古自治州尉犁县'),
(652824, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '若羌县', '新疆维吾尔自治区巴音郭楞蒙古自治州若羌县'),
(652825, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '且末县', '新疆维吾尔自治区巴音郭楞蒙古自治州且末县'),
(652826, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '焉耆回族自治县', '新疆维吾尔自治区巴音郭楞蒙古自治州焉耆回族自治县'),
(652827, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '和静县', '新疆维吾尔自治区巴音郭楞蒙古自治州和静县'),
(652828, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '和硕县', '新疆维吾尔自治区巴音郭楞蒙古自治州和硕县'),
(652829, 3, 650000, '新疆维吾尔自治区', 652800, '巴音郭楞蒙古自治州', '博湖县', '新疆维吾尔自治区巴音郭楞蒙古自治州博湖县'),
(652900, 2, 650000, '新疆维吾尔自治区', 0, '', '阿克苏地区', '新疆维吾尔自治区阿克苏地区'),
(652901, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '阿克苏市', '新疆维吾尔自治区阿克苏地区阿克苏市'),
(652922, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '温宿县', '新疆维吾尔自治区阿克苏地区温宿县'),
(652923, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '库车县', '新疆维吾尔自治区阿克苏地区库车县'),
(652924, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '沙雅县', '新疆维吾尔自治区阿克苏地区沙雅县'),
(652925, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '新和县', '新疆维吾尔自治区阿克苏地区新和县'),
(652926, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '拜城县', '新疆维吾尔自治区阿克苏地区拜城县'),
(652927, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '乌什县', '新疆维吾尔自治区阿克苏地区乌什县'),
(652928, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '阿瓦提县', '新疆维吾尔自治区阿克苏地区阿瓦提县'),
(652929, 3, 650000, '新疆维吾尔自治区', 652900, '阿克苏地区', '柯坪县', '新疆维吾尔自治区阿克苏地区柯坪县'),
(653000, 2, 650000, '新疆维吾尔自治区', 0, '', '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州'),
(653001, 3, 650000, '新疆维吾尔自治区', 653000, '克孜勒苏柯尔克孜自治州', '阿图什市', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿图什市'),
(653022, 3, 650000, '新疆维吾尔自治区', 653000, '克孜勒苏柯尔克孜自治州', '阿克陶县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿克陶县'),
(653023, 3, 650000, '新疆维吾尔自治区', 653000, '克孜勒苏柯尔克孜自治州', '阿合奇县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿合奇县'),
(653024, 3, 650000, '新疆维吾尔自治区', 653000, '克孜勒苏柯尔克孜自治州', '乌恰县', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州乌恰县'),
(653100, 2, 650000, '新疆维吾尔自治区', 0, '', '喀什地区', '新疆维吾尔自治区喀什地区'),
(653101, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '喀什市', '新疆维吾尔自治区喀什地区喀什市'),
(653121, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '疏附县', '新疆维吾尔自治区喀什地区疏附县'),
(653122, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '疏勒县', '新疆维吾尔自治区喀什地区疏勒县'),
(653123, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '英吉沙县', '新疆维吾尔自治区喀什地区英吉沙县'),
(653124, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '泽普县', '新疆维吾尔自治区喀什地区泽普县'),
(653125, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '莎车县', '新疆维吾尔自治区喀什地区莎车县'),
(653126, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '叶城县', '新疆维吾尔自治区喀什地区叶城县'),
(653127, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '麦盖提县', '新疆维吾尔自治区喀什地区麦盖提县'),
(653128, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '岳普湖县', '新疆维吾尔自治区喀什地区岳普湖县'),
(653129, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '伽师县', '新疆维吾尔自治区喀什地区伽师县'),
(653130, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '巴楚县', '新疆维吾尔自治区喀什地区巴楚县'),
(653131, 3, 650000, '新疆维吾尔自治区', 653100, '喀什地区', '塔什库尔干塔吉克自治县', '新疆维吾尔自治区喀什地区塔什库尔干塔吉克自治县'),
(653200, 2, 650000, '新疆维吾尔自治区', 0, '', '和田地区', '新疆维吾尔自治区和田地区'),
(653201, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '和田市', '新疆维吾尔自治区和田地区和田市'),
(653221, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '和田县', '新疆维吾尔自治区和田地区和田县'),
(653222, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '墨玉县', '新疆维吾尔自治区和田地区墨玉县'),
(653223, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '皮山县', '新疆维吾尔自治区和田地区皮山县'),
(653224, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '洛浦县', '新疆维吾尔自治区和田地区洛浦县'),
(653225, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '策勒县', '新疆维吾尔自治区和田地区策勒县'),
(653226, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '于田县', '新疆维吾尔自治区和田地区于田县'),
(653227, 3, 650000, '新疆维吾尔自治区', 653200, '和田地区', '民丰县', '新疆维吾尔自治区和田地区民丰县'),
(654000, 2, 650000, '新疆维吾尔自治区', 0, '', '伊犁哈萨克自治州', '新疆维吾尔自治区伊犁哈萨克自治州'),
(654002, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '伊宁市', '新疆维吾尔自治区伊犁哈萨克自治州伊宁市'),
(654003, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '奎屯市', '新疆维吾尔自治区伊犁哈萨克自治州奎屯市'),
(654004, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '霍尔果斯市', '新疆维吾尔自治区伊犁哈萨克自治州霍尔果斯市'),
(654021, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '伊宁县', '新疆维吾尔自治区伊犁哈萨克自治州伊宁县'),
(654022, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '察布查尔锡伯自治县', '新疆维吾尔自治区伊犁哈萨克自治州察布查尔锡伯自治县'),
(654023, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '霍城县', '新疆维吾尔自治区伊犁哈萨克自治州霍城县'),
(654024, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '巩留县', '新疆维吾尔自治区伊犁哈萨克自治州巩留县'),
(654025, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '新源县', '新疆维吾尔自治区伊犁哈萨克自治州新源县'),
(654026, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '昭苏县', '新疆维吾尔自治区伊犁哈萨克自治州昭苏县'),
(654027, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '特克斯县', '新疆维吾尔自治区伊犁哈萨克自治州特克斯县'),
(654028, 3, 650000, '新疆维吾尔自治区', 654000, '伊犁哈萨克自治州', '尼勒克县', '新疆维吾尔自治区伊犁哈萨克自治州尼勒克县'),
(654200, 2, 650000, '新疆维吾尔自治区', 0, '', '塔城地区', '新疆维吾尔自治区塔城地区'),
(654201, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '塔城市', '新疆维吾尔自治区塔城地区塔城市'),
(654202, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '乌苏市', '新疆维吾尔自治区塔城地区乌苏市'),
(654221, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '额敏县', '新疆维吾尔自治区塔城地区额敏县'),
(654223, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '沙湾县', '新疆维吾尔自治区塔城地区沙湾县'),
(654224, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '托里县', '新疆维吾尔自治区塔城地区托里县'),
(654225, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '裕民县', '新疆维吾尔自治区塔城地区裕民县'),
(654226, 3, 650000, '新疆维吾尔自治区', 654200, '塔城地区', '和布克赛尔蒙古自治县', '新疆维吾尔自治区塔城地区和布克赛尔蒙古自治县'),
(654300, 2, 650000, '新疆维吾尔自治区', 0, '', '阿勒泰地区', '新疆维吾尔自治区阿勒泰地区'),
(654301, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '阿勒泰市', '新疆维吾尔自治区阿勒泰地区阿勒泰市'),
(654321, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '布尔津县', '新疆维吾尔自治区阿勒泰地区布尔津县'),
(654322, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '富蕴县', '新疆维吾尔自治区阿勒泰地区富蕴县'),
(654323, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '福海县', '新疆维吾尔自治区阿勒泰地区福海县'),
(654324, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '哈巴河县', '新疆维吾尔自治区阿勒泰地区哈巴河县'),
(654325, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '青河县', '新疆维吾尔自治区阿勒泰地区青河县'),
(654326, 3, 650000, '新疆维吾尔自治区', 654300, '阿勒泰地区', '吉木乃县', '新疆维吾尔自治区阿勒泰地区吉木乃县'),
(659001, 3, 650000, '新疆维吾尔自治区', 0, '', '石河子市', '新疆维吾尔自治区石河子市');
INSERT INTO `region` (`code`, `type`, `province`, `province_name`, `city`, `city_name`, `name`, `address`) VALUES
(659002, 3, 650000, '新疆维吾尔自治区', 0, '', '阿拉尔市', '新疆维吾尔自治区阿拉尔市'),
(659003, 3, 650000, '新疆维吾尔自治区', 0, '', '图木舒克市', '新疆维吾尔自治区图木舒克市'),
(659004, 3, 650000, '新疆维吾尔自治区', 0, '', '五家渠市', '新疆维吾尔自治区五家渠市'),
(659005, 3, 650000, '新疆维吾尔自治区', 0, '', '北屯市', '新疆维吾尔自治区北屯市'),
(659006, 3, 650000, '新疆维吾尔自治区', 0, '', '铁门关市', '新疆维吾尔自治区铁门关市'),
(659007, 3, 650000, '新疆维吾尔自治区', 0, '', '双河市', '新疆维吾尔自治区双河市'),
(659008, 3, 650000, '新疆维吾尔自治区', 0, '', '可克达拉市', '新疆维吾尔自治区可克达拉市'),
(659009, 3, 650000, '新疆维吾尔自治区', 0, '', '昆玉市', '新疆维吾尔自治区昆玉市');

-- --------------------------------------------------------

--
-- 表的结构 `reward`
--

CREATE TABLE IF NOT EXISTS `reward` (
  `id` int(10) unsigned NOT NULL COMMENT '序号',
  `register` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户注册',
  `register2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '邀请注册',
  `recharge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值奖励',
  `invest1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '投资一级奖励',
  `invest2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '投资二级奖励',
  `invest3` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '投资三级奖励',
  `qiandao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每日签到奖励',
  `shouyilu` varchar(50) NOT NULL COMMENT '收益率',
  `zijin` varchar(200) NOT NULL COMMENT '设置存进余额宝的资金',
  `chongzhijifen` varchar(200) NOT NULL,
  `smrz` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tzjb` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tzjf` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dkjf` decimal(10,2) NOT NULL COMMENT '打卡奖励',
  `dkts` int(10) NOT NULL COMMENT '连续打卡天数',
  `lxdkjf` decimal(10,2) NOT NULL COMMENT '连续打卡奖励',
  `sport_num` int(11) DEFAULT '500',
  `sport_reward` int(11) DEFAULT '20'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='奖励设置';

--
-- 转存表中的数据 `reward`
--

INSERT INTO `reward` (`id`, `register`, `register2`, `recharge`, `invest1`, `invest2`, `invest3`, `qiandao`, `shouyilu`, `zijin`, `chongzhijifen`, `smrz`, `tzjb`, `tzjf`, `dkjf`, `dkts`, `lxdkjf`, `sport_num`, `sport_reward`) VALUES
(1, '28.00', '0.00', '0.00', '5.00', '3.00', '1.00', '3.00', '0.28', '500000', '1', '5.00', '8.00', '20.00', '60.00', 3, '200.00', 800, 20);

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `role_permissions`
--

CREATE TABLE IF NOT EXISTS `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `sign_records`
--

CREATE TABLE IF NOT EXISTS `sign_records` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL COMMENT '用户账号',
  `date` date NOT NULL COMMENT '签到日期',
  `consecutive_days` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户签到记录表';

--
-- 转存表中的数据 `sign_records`
--

INSERT INTO `sign_records` (`id`, `username`, `date`, `consecutive_days`, `created_at`, `updated_at`) VALUES
(1, '19999999999', '2025-01-18', 1, '2025-01-18 01:56:42', '2025-01-18 01:56:42'),
(2, '16666666666', '2025-01-18', 1, '2025-01-18 06:06:44', '2025-01-18 06:06:44'),
(6, '13111111112', '2025-01-18', 1, '2025-01-18 15:46:22', '2025-01-18 15:46:22'),
(7, '19999999999', '2025-01-20', 1, '2025-01-20 02:07:21', '2025-01-20 02:07:21'),
(8, '13333333333', '2025-01-27', 1, '2025-01-27 05:47:40', '2025-01-27 05:47:40'),
(9, '11111111111', '2025-01-28', 1, '2025-01-28 02:45:24', '2025-01-28 02:45:24'),
(10, '16666666666', '2025-01-30', 1, '2025-01-30 00:57:39', '2025-01-30 00:57:39'),
(11, '13111111112', '2025-01-30', 1, '2025-01-30 09:02:16', '2025-01-30 09:02:16'),
(12, '19999999999', '2025-01-31', 1, '2025-01-30 18:58:01', '2025-01-30 18:58:01'),
(13, '13111111112', '2025-02-03', 1, '2025-02-03 06:11:37', '2025-02-03 06:11:37'),
(14, '11111111111', '2025-02-04', 1, '2025-02-04 08:28:00', '2025-02-04 08:28:00'),
(15, '13333333333', '2025-02-05', 1, '2025-02-05 01:20:20', '2025-02-05 01:20:20'),
(16, '16666666666', '2025-02-05', 1, '2025-02-05 02:11:48', '2025-02-05 02:11:48');

-- --------------------------------------------------------

--
-- 表的结构 `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `type` int(11) NOT NULL COMMENT '验证类型，取自模板编号',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：已使用',
  `mobile` char(11) NOT NULL COMMENT '手机号码',
  `data` text COMMENT '数据内容',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `ua` text COMMENT 'UserAgent',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信';

--
-- 转存表中的数据 `sms`
--

INSERT INTO `sms` (`id`, `type`, `status`, `mobile`, `data`, `ip`, `ua`, `create_at`, `update_at`) VALUES
(1, 251292, 0, '17821522007', 'a:2:{i:0;i:132017;i:1;s:8:"30分钟";}', '111.173.128.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', '2018-07-04 09:11:33', '2018-07-04 09:11:33'),
(2, 251292, 0, '15367163173', 'a:2:{i:0;i:694077;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.5478.400 QQBrowser/10.1.1550.400', '2018-07-04 09:18:23', '2018-07-04 09:18:23'),
(3, 251292, 0, '15367163173', 'a:2:{i:0;i:267269;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.5478.400 QQBrowser/10.1.1550.400', '2018-07-04 09:19:47', '2018-07-04 09:19:47'),
(4, 251292, 1, '13762276552', 'a:2:{i:0;i:235886;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Linux; Android 7.1.1; vivo Xplay6 Build/NMF26F; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/5.5.2.1', '2018-07-04 09:21:13', '2018-07-04 09:21:13'),
(5, 251292, 0, '15367163173', 'a:2:{i:0;i:336645;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.5478.400 QQBrowser/10.1.1550.400', '2018-07-04 09:22:58', '2018-07-04 09:22:58'),
(6, 251292, 1, '15367163173', 'a:2:{i:0;i:116095;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.5478.400 QQBrowser/10.1.1550.400', '2018-07-04 09:27:46', '2018-07-04 09:27:46'),
(7, 251292, 0, '13786393215', 'a:2:{i:0;i:768779;i:1;s:8:"30分钟";}', '36.157.153.107', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.5478.400 QQBrowser/10.1.1550.400', '2018-07-04 09:28:58', '2018-07-04 09:28:58'),
(8, 251292, 0, '15030116666', 'a:2:{i:0;i:983659;i:1;s:8:"30分钟";}', '101.24.197.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13G36 MicroMessenger/6.7.0 NetType/WIFI Language/zh_CN', '2018-07-04 09:51:49', '2018-07-04 09:51:49'),
(9, 251292, 0, '13399135409', 'a:2:{i:0;i:187581;i:1;s:8:"30分钟";}', '1.86.130.73', 'Mozilla/5.0 (Linux; Android 8.0; MHA-AL00 Build/HUAWEIMHA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044109 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060739) NetType/4G Language/zh_CN', '2018-07-04 10:00:25', '2018-07-04 10:00:25'),
(10, 251292, 0, '13395267212', 'a:2:{i:0;i:127698;i:1;s:8:"30分钟";}', '49.92.228.153', 'Mozilla/5.0 (Linux; Android 7.1.1; GIONEE M7L Build/N6F26Q; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044109 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060739) NetType/4G Language/zh_CN', '2018-07-04 12:38:56', '2018-07-04 12:38:56'),
(11, 251292, 0, '18331419752', 'a:2:{i:0;i:191615;i:1;s:8:"30分钟";}', '123.181.207.180', 'Mozilla/5.0 (Linux; Android 7.1.2; vivo X9s Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/55.0.2883.91 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060736) NetType/WIFI Language/zh_CN', '2018-07-04 12:41:24', '2018-07-04 12:41:24'),
(12, 251292, 0, '15367163171', 'a:2:{i:0;i:165109;i:1;s:8:"30分钟";}', '36.157.163.230', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 UBrowser/6.2.4092.1 Safari/537.36', '2018-07-22 13:18:14', '2018-07-22 13:18:14'),
(13, 251292, 0, '18031040584', 'a:2:{i:0;i:271814;i:1;s:8:"30分钟";}', '36.98.5.129', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Plus Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044113 Mobile Safari/537.36 MicroMessenger/6.6.7.1321(0x26060739) NetType/4G Language/zh_CN', '2018-07-22 15:13:09', '2018-07-22 15:13:09'),
(14, 251292, 1, '17307605440', 'a:2:{i:0;i:971654;i:1;s:8:"30分钟";}', '125.71.154.140', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2018-07-25 06:47:15', '2018-07-25 06:47:15'),
(15, 251292, 0, '17627921813', 'a:2:{i:0;i:412269;i:1;s:8:"30分钟";}', '112.32.71.131', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2019-07-25 12:21:46', '2019-07-25 12:21:46'),
(16, 251292, 0, '17355877155', 'a:2:{i:0;i:236290;i:1;s:8:"30分钟";}', '36.57.44.109', 'Mozilla/5.0 (Linux; Android 8.1.0; PBEM00 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 /6.2 TBS/044807 Mobile Safari/537.36 bsl/1.0', '2019-07-26 01:46:15', '2019-07-26 01:46:15'),
(17, 251292, 0, '17355877155', 'a:2:{i:0;i:834873;i:1;s:8:"30分钟";}', '36.57.44.109', 'Mozilla/5.0 (Linux; Android 8.1.0; PBEM00 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 /6.2 TBS/044807 Mobile Safari/537.36 bsl/1.0', '2019-07-26 05:56:57', '2019-07-26 05:56:57'),
(18, 251292, 0, '17681371015', 'a:2:{i:0;i:558214;i:1;s:8:"30分钟";}', '112.32.70.132', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148-native_iOS-360123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100', '2019-07-26 11:21:19', '2019-07-26 11:21:19'),
(19, 251292, 0, '19834428483', 'a:2:{i:0;i:901825;i:1;s:8:"30分钟";}', '183.202.241.62', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo Y85A Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/9220 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 08:22:18', '2019-07-27 08:22:18'),
(20, 251292, 0, '13175671026', 'a:2:{i:0;i:500237;i:1;s:8:"30分钟";}', '113.214.195.122', 'Mozilla/5.0 (Linux; Android 9; VTR-AL00 Build/HUAWEIVTR-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/4835 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 08:24:20', '2019-07-27 08:24:20'),
(21, 251292, 0, '17628240159', 'a:2:{i:0;i:985276;i:1;s:8:"30分钟";}', '144.0.158.234', 'Mozilla/5.0 (Linux; Android 8.1.0; V1730EA Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.6.0.1', '2019-07-27 08:24:24', '2019-07-27 08:24:24'),
(22, 251292, 0, '17694966077', 'a:2:{i:0;i:403317;i:1;s:8:"30分钟";}', '125.36.98.137', 'Mozilla/5.0 (Linux; Android 9; COR-AL10 Build/HUAWEICOR-AL10) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36', '2019-07-27 08:29:09', '2019-07-27 08:29:09'),
(23, 251292, 0, '13212357719', 'a:2:{i:0;i:385972;i:1;s:8:"30分钟";}', '106.91.5.58', 'Mozilla/5.0 (Linux; Android 6.0; koobee S206M; Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.92 Mobile Safari/537.36 SogouMSE,SogouMobileBrowser/5.6.2', '2019-07-27 08:29:15', '2019-07-27 08:29:15'),
(24, 251292, 0, '15187947425', 'a:2:{i:0;i:679116;i:1;s:8:"30分钟";}', '182.240.83.181', 'Mozilla/5.0 (Linux; Android 9; JSN-AL00 Build/HONORJSN-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/5211 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 08:31:44', '2019-07-27 08:31:44'),
(25, 251292, 0, '13632267939', 'a:2:{i:0;i:768361;i:1;s:8:"30分钟";}', '117.136.15.69', 'Mozilla/5.0 (Linux; Android 8.1.0; DUA-AL00 Build/HONORDUA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044705 Mobile Safari/537.36 MMWEBID/7401 MicroMessenger/7.0.4.1420(0x2700043C) Process/tools NetType/4G Language/zh_CN', '2019-07-27 08:35:57', '2019-07-27 08:35:57'),
(26, 251292, 0, '13632267939', 'a:2:{i:0;i:262447;i:1;s:8:"30分钟";}', '117.136.15.69', 'Mozilla/5.0 (Linux; Android 8.1.0; DUA-AL00 Build/HONORDUA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044705 Mobile Safari/537.36 MMWEBID/7401 MicroMessenger/7.0.4.1420(0x2700043C) Process/tools NetType/4G Language/zh_CN', '2019-07-27 08:36:58', '2019-07-27 08:36:58'),
(27, 251292, 0, '15189408981', 'a:2:{i:0;i:271452;i:1;s:8:"30分钟";}', '117.136.46.30', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo X21UD A Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/4907 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/4G Language/zh_CN', '2019-07-27 08:37:59', '2019-07-27 08:37:59'),
(28, 251292, 0, '18552320267', 'a:2:{i:0;i:903723;i:1;s:8:"30分钟";}', '58.243.254.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 QQ/8.1.0.437 V1_IPH_SQ_8.1.0_1_APP_A Pixel/1125 Core/UIWebView Device/Apple(iPhone X) NetType/4G QBWebViewType/1', '2019-07-27 08:50:16', '2019-07-27 08:50:16'),
(29, 251292, 0, '13133239310', 'a:2:{i:0;i:323357;i:1;s:8:"30分钟";}', '124.166.16.211', 'Mozilla/5.0 (Linux; Android 7.0; PRA-AL00 Build/HONORPRA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/5394 MicroMessenger/6.7.3.1360(0x2607033D) NetType/WIFI Language/zh_CN Process/tools', '2019-07-27 09:08:01', '2019-07-27 09:08:01'),
(30, 251292, 0, '15955406949', 'a:2:{i:0;i:417802;i:1;s:8:"30分钟";}', '36.161.36.92', 'Mozilla/5.0 (Linux; Android 9; V1829A Build/PKQ1.181030.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/8493 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 09:09:11', '2019-07-27 09:09:11'),
(31, 251292, 0, '18377154500', 'a:2:{i:0;i:682905;i:1;s:8:"30分钟";}', '117.183.78.58', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D57 MicroMessenger/7.0.5(0x17000523) NetType/WIFI Language/zh_CN', '2019-07-27 09:15:21', '2019-07-27 09:15:21'),
(32, 251292, 0, '18083842183', 'a:2:{i:0;i:569180;i:1;s:8:"30分钟";}', '117.136.72.207', 'Mozilla/5.0 (Linux; Android 8.1.0; PACT00 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/7206 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/4G Language/zh_CN', '2019-07-27 10:33:38', '2019-07-27 10:33:38'),
(33, 251292, 0, '18197680294', 'a:2:{i:0;i:164730;i:1;s:8:"30分钟";}', '223.115.81.208', 'Mozilla/5.0 (Linux; U; Android 7.0; zh-cn; Redmi Note 4X Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/9.5 Mobile Safari/537.36', '2019-07-27 10:51:26', '2019-07-27 10:51:26'),
(34, 251292, 0, '17312128796', 'a:2:{i:0;i:235279;i:1;s:8:"30分钟";}', '114.218.133.65', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/4346 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 10:55:56', '2019-07-27 10:55:56'),
(35, 251292, 0, '13940146783', 'a:2:{i:0;i:231584;i:1;s:8:"30分钟";}', '117.136.5.223', 'Mozilla/5.0 (Linux; Android 9; INE-AL00 Build/HUAWEIINE-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.87 XWEB/882 MMWEBSDK/190505 Mobile Safari/537.36 MMWEBID/212 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/4G Language/zh_CN', '2019-07-27 11:22:02', '2019-07-27 11:22:02'),
(36, 251292, 0, '13940297581', 'a:2:{i:0;i:316190;i:1;s:8:"30分钟";}', '124.94.167.125', 'Mozilla/5.0 (Linux; Android 9; HWI-AL00 Build/HUAWEIHWI-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/4060 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 12:17:04', '2019-07-27 12:17:04'),
(37, 251292, 0, '13681203820', 'a:2:{i:0;i:347428;i:1;s:8:"30分钟";}', '106.121.6.149', 'Mozilla/5.0 (Linux; U; Android 7.1.2; zh-cn; Redmi Note 5A Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.2.11', '2019-07-27 12:43:59', '2019-07-27 12:43:59'),
(38, 251292, 0, '18873908570', 'a:2:{i:0;i:923116;i:1;s:8:"30分钟";}', '223.157.165.199', 'Mozilla/5.0 (Linux; Android 8.0.0; FLA-AL10 Build/HUAWEIFLA-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/7187 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 13:00:01', '2019-07-27 13:00:01'),
(39, 251292, 0, '13070272613', 'a:2:{i:0;i:166501;i:1;s:8:"30分钟";}', '112.96.39.120', 'Mozilla/5.0 (Linux; Android 8.1.0; OPPO R11t Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044705 Mobile Safari/537.36 MMWEBID/1952 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/4G Language/zh_CN', '2019-07-27 13:00:34', '2019-07-27 13:00:34'),
(40, 251292, 0, '17355331619', 'a:2:{i:0;i:277324;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; U; Android 8.0.0; zh-cn; BLN-AL20 Build/HONORBLN-AL20) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/9.2 Mobile Safari/537.36', '2019-07-27 13:19:34', '2019-07-27 13:19:34'),
(41, 251292, 0, '15892876749', 'a:2:{i:0;i:554368;i:1;s:8:"30分钟";}', '112.44.138.156', 'Mozilla/5.0 (Linux; Android 8.1.0; V1818CA Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36 bsl/1.0', '2019-07-27 13:30:10', '2019-07-27 13:30:10'),
(42, 251292, 0, '18756034247', 'a:2:{i:0;i:174881;i:1;s:8:"30分钟";}', '112.28.151.239', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi Note 5A Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/8658 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 13:34:10', '2019-07-27 13:34:10'),
(43, 251292, 0, '15990058751', 'a:2:{i:0;i:577761;i:1;s:8:"30分钟";}', '112.10.196.116', 'Mozilla/5.0 (Linux; Android 8.1.0; CMCC M761 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044705 Mobile Safari/537.36 MMWEBID/6169 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 14:11:51', '2019-07-27 14:11:51'),
(44, 251292, 0, '15990058751', 'a:2:{i:0;i:428799;i:1;s:8:"30分钟";}', '112.10.196.116', 'Mozilla/5.0 (Linux; Android 8.1.0; CMCC M761 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044705 Mobile Safari/537.36 MMWEBID/6169 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 14:13:15', '2019-07-27 14:13:15'),
(45, 251292, 0, '15687182865', 'a:2:{i:0;i:965217;i:1;s:8:"30分钟";}', '180.130.10.242', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.1.1.1', '2019-07-27 14:45:07', '2019-07-27 14:45:07'),
(46, 251292, 0, '18002766674', 'a:2:{i:0;i:916514;i:1;s:8:"30分钟";}', '14.28.154.71', 'Mozilla/5.0 (Linux; Android 8.1.0; MI 5X Build/OPM1.171019.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/5744 MicroMessenger/7.0.5.1440(0x27000536) Process/tools NetType/4G Language/zh_CN', '2019-07-27 15:22:13', '2019-07-27 15:22:13'),
(47, 251292, 0, '19916282813', 'a:2:{i:0;i:364534;i:1;s:8:"30分钟";}', '117.136.87.139', 'Mozilla/5.0 (Linux; Android 8.1.0; PBEM00 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/8547 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/4G Language/zh_CN', '2019-07-27 15:51:05', '2019-07-27 15:51:05'),
(48, 251292, 0, '13617081712', 'a:2:{i:0;i:889904;i:1;s:8:"30分钟";}', '49.211.156.8', 'Mozilla/5.0 (Linux; Android 9; PCEM00 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/6348 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-27 16:03:51', '2019-07-27 16:03:51'),
(49, 251292, 0, '13617081712', 'a:2:{i:0;i:433695;i:1;s:8:"30分钟";}', '49.211.156.8', 'Mozilla/5.0 (Linux; Android 9; PCEM00 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.110 Mobile Safari/537.36 bsl/1.0', '2019-07-27 16:06:19', '2019-07-27 16:06:19'),
(50, 251292, 0, '17044298354', 'a:2:{i:0;i:585064;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 04:00:37', '2019-07-28 04:00:37'),
(51, 251292, 0, '15114399353', 'a:2:{i:0;i:749883;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 04:07:50', '2019-07-28 04:07:50'),
(52, 251292, 1, '15114399353', 'a:2:{i:0;i:637212;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 04:49:08', '2019-07-28 04:49:08'),
(53, 251292, 0, '18482298005', 'a:2:{i:0;i:700547;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:07:21', '2019-07-28 06:07:21'),
(54, 251292, 0, '13438869034', 'a:2:{i:0;i:750828;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:17:03', '2019-07-28 06:17:03'),
(55, 251292, 0, '13992686712', 'a:2:{i:0;i:463854;i:1;s:8:"30分钟";}', '1.81.151.238', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 7 Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/74.0.3729.136 Mobile Safari/537.36 bsl/1.0', '2019-07-28 06:18:26', '2019-07-28 06:18:26'),
(56, 251292, 0, '17114564404', 'a:2:{i:0;i:451456;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:23:13', '2019-07-28 06:23:13'),
(57, 251292, 0, '17104861915', 'a:2:{i:0;i:601049;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:32:56', '2019-07-28 06:32:56'),
(58, 251292, 0, '17062907434', 'a:2:{i:0;i:526828;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:36:51', '2019-07-28 06:36:51'),
(59, 251292, 0, '13694354247', 'a:2:{i:0;i:605002;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:36:53', '2019-07-28 06:36:53'),
(60, 251292, 0, '17088704723', 'a:2:{i:0;i:836004;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:44:25', '2019-07-28 06:44:25'),
(61, 251292, 0, '15911624262', 'a:2:{i:0;i:530901;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:44:36', '2019-07-28 06:44:36'),
(62, 251292, 0, '16530919165', 'a:2:{i:0;i:412982;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:47:00', '2019-07-28 06:47:00'),
(63, 251292, 0, '13945896942', 'a:2:{i:0;i:216870;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:47:03', '2019-07-28 06:47:03'),
(64, 251292, 0, '13458503075', 'a:2:{i:0;i:963809;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:50:04', '2019-07-28 06:50:04'),
(65, 251292, 0, '18349121536', 'a:2:{i:0;i:422347;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:50:05', '2019-07-28 06:50:05'),
(66, 251292, 0, '13842499204', 'a:2:{i:0;i:239901;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:55:41', '2019-07-28 06:55:41'),
(67, 251292, 0, '15004356546', 'a:2:{i:0;i:333531;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:55:56', '2019-07-28 06:55:56'),
(68, 251292, 0, '13843587140', 'a:2:{i:0;i:254337;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:56:17', '2019-07-28 06:56:17'),
(69, 251292, 0, '18402836238', 'a:2:{i:0;i:612544;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:56:17', '2019-07-28 06:56:17'),
(70, 251292, 0, '15928470207', 'a:2:{i:0;i:492871;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:57:39', '2019-07-28 06:57:39'),
(71, 251292, 0, '17092104858', 'a:2:{i:0;i:629086;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:57:55', '2019-07-28 06:57:55'),
(72, 251292, 0, '18782054254', 'a:2:{i:0;i:477893;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:58:07', '2019-07-28 06:58:07'),
(73, 251292, 0, '17132898410', 'a:2:{i:0;i:805184;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 06:59:55', '2019-07-28 06:59:55'),
(74, 251292, 0, '15287144761', 'a:2:{i:0;i:173787;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 07:00:06', '2019-07-28 07:00:06'),
(75, 251292, 0, '17093654420', 'a:2:{i:0;i:848916;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 07:00:10', '2019-07-28 07:00:10'),
(76, 251292, 0, '17044292054', 'a:2:{i:0;i:939836;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 07:00:31', '2019-07-28 07:00:31'),
(77, 251292, 0, '15114304906', 'a:2:{i:0;i:415029;i:1;s:8:"30分钟";}', '120.242.110.16', 'Mozilla/5.0 (Linux; Android 5.1.1; mi-4c Build/LYZ28N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/39.0.0.0 Mobile Safari/537.36', '2019-07-28 07:00:31', '2019-07-28 07:00:31'),
(78, 251292, 0, '17789816229', 'a:2:{i:0;i:405586;i:1;s:8:"30分钟";}', '36.101.20.225', 'Mozilla/5.0 (Linux; Android 6.0.1; OPPO A57 Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 MQQBrowser/6.2 TBS/044807 Mobile Safari/537.36 MMWEBID/9672 MicroMessenger/7.0.5.1440(0x27000537) Process/tools NetType/WIFI Language/zh_CN', '2019-07-28 12:17:39', '2019-07-28 12:17:39'),
(79, 251292, 0, '17502185732', 'a:2:{i:0;i:860599;i:1;s:8:"30分钟";}', '112.65.48.156', 'Mozilla/5.0 (Linux; Android 9; PAR-AL00 Build/HUAWEIPAR-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.99 Mobile Safari/537.36 bsl/1.0', '2019-07-29 04:23:36', '2019-07-29 04:23:36'),
(80, 251292, 0, '13067720815', 'a:2:{i:0;i:732679;i:1;s:8:"30分钟";}', '124.160.218.140', 'Mozilla/5.0 (Linux; Android 9; SM-G9500 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.99 Mobile Safari/537.36 bsl/1.0', '2019-07-29 08:30:54', '2019-07-29 08:30:54');

-- --------------------------------------------------------

--
-- 表的结构 `steps_data`
--

CREATE TABLE IF NOT EXISTS `steps_data` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `step_count` int(11) NOT NULL,
  `type` enum('today','yesterday') NOT NULL,
  `timestamp` int(11) NOT NULL,
  `device` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `steps_data`
--

INSERT INTO `steps_data` (`id`, `username`, `step_count`, `type`, `timestamp`, `device`, `created_at`) VALUES
(1, '13111111112', 766, 'yesterday', 1673952000, 'iOS', '2025-01-27 05:04:51');

-- --------------------------------------------------------

--
-- 表的结构 `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `sort` int(11) DEFAULT '0' COMMENT '排列顺序，数字越大越靠前',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1：在售，0：停售',
  `catalog` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类目，1：矿机',
  `username` char(11) DEFAULT NULL COMMENT '用户账号，为空表示管理员发布',
  `divide` tinyint(4) DEFAULT '0' COMMENT '级别，0：仅自己收益，1：1级也能获益，2：2级也能获益，以此类推',
  `title` varchar(30) NOT NULL COMMENT '产品名称',
  `image` varchar(100) DEFAULT NULL COMMENT '产品图片',
  `cycle` int(11) NOT NULL COMMENT '周期，单位小时',
  `income` decimal(30,12) NOT NULL COMMENT '预计收益',
  `power` decimal(30,12) NOT NULL COMMENT '奖励的算力',
  `price` decimal(30,12) NOT NULL COMMENT '价格',
  `price_score` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '积分价格',
  `limit` int(11) DEFAULT '0' COMMENT '每人限购，0为不限制',
  `day` int(11) DEFAULT '0' COMMENT '每天限购，0为不限制',
  `sales` int(11) DEFAULT '0' COMMENT '销量',
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `content` text COMMENT '产品介绍',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商城表';

--
-- 转存表中的数据 `store`
--

INSERT INTO `store` (`id`, `sort`, `status`, `catalog`, `username`, `divide`, `title`, `image`, `cycle`, `income`, `power`, `price`, `price_score`, `limit`, `day`, `sales`, `stock`, `content`, `create_at`, `update_at`) VALUES
(1, 20, 1, 1, NULL, 3, '初级体验卡', '20190521/66bfc804465bbaa5fc66b5f7966b1f14.png', 1, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 10, 99999, 42, 99993, NULL, '2018-07-03 06:30:32', '2019-07-28 06:49:05'),
(2, 19, 1, 1, NULL, 3, '中级挑战卡', '20190521/12594d5c1fd738c32661e389800d288c.png', 1, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 10, 99999, 13, 99996, NULL, '2018-07-03 06:31:14', '2019-07-28 06:49:11'),
(3, 18, 1, 1, NULL, 4, '高级挑战卡', '20190521/cd58f0535405a4fd3f31b420d89b043e.png', 1, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 10, 99999, 10, 99997, NULL, '2018-07-03 06:32:04', '2019-07-28 06:49:20'),
(4, 17, 1, 1, NULL, 5, '超级挑战卡', '20190521/30a977e3af64351f1b16387b875fd039.png', 1, '0.000000000000', '100.000000000000', '100.000000000000', '0.000000000000', 10, 99999, 87, 99949, NULL, '2018-07-03 06:32:40', '2019-07-28 06:49:29'),
(5, 6, 0, 1, NULL, 5, '精英挑战卡', '20190521/bab41858ae3a1260aa77d9025dae0b74.png', 1, '0.000000000000', '3920.000000000000', '3000.000000000000', '0.000000000000', 1, 99999, 6, 99998, NULL, '2018-07-03 06:33:22', '2019-07-26 04:49:24'),
(6, 7, 1, 2, NULL, 0, '初级挑战卡', '20190325/ecf1e103b951a50f1f5c8915674c162b.png', 0, '0.000000000000', '1.000000000000', '1.000000000000', '0.000000000000', 0, 0, 109, 99891, NULL, '2019-03-25 08:03:23', '2019-03-26 05:25:15'),
(7, 6, 1, 2, NULL, 0, '中级挑战卡', '20190326/6512a49625c648595db5f5f12afcf96f.png', 0, '0.000000000000', '10.000000000000', '10.000000000000', '0.000000000000', 0, 0, 70, 99930, NULL, '2019-03-26 04:54:30', '2019-03-26 05:25:06'),
(8, 5, 1, 2, NULL, 0, '高级挑战卡', '20190326/0947fe43e9ea83aa217589d080f65c21.png', 0, '0.000000000000', '50.000000000000', '50.000000000000', '0.000000000000', 0, 0, 75, 99925, NULL, '2019-03-26 05:04:37', '2019-07-26 05:16:26'),
(9, 4, 1, 2, NULL, 0, '超级挑战卡', '20190326/e3b1d0f83a9630e048f4d01ef397446b.png', 0, '0.000000000000', '100.000000000000', '100.000000000000', '100.000000000000', 0, 0, 83, 99917, NULL, '2019-03-26 05:05:23', '2019-07-26 05:16:18'),
(10, 0, 0, 1, NULL, 0, '激活', '20190719/05c3c467e08e28aeca7ceb71532ccf66.png', 0, '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', 99999, 99999, 5, 99999, NULL, '2019-07-19 09:16:43', '2019-07-25 11:55:34'),
(11, 0, 1, 2, NULL, 0, '至尊任务卷轴', '20190726/2bc58a00bf8910dcb6b35073eeffaa92.png', 0, '0.000000000000', '0.000000000000', '1000.000000000000', '0.000000000000', 0, 0, 0, 0, NULL, '2019-07-26 04:11:25', '2019-07-26 04:11:25'),
(12, 12, 1, 1, NULL, 3, '挑战卡Lv4', '20190726/39d948f0c2babb8b8380283485ed95f4.jpg', 0, '0.000000000000', '8000.000000000000', '5000.000000000000', '0.000000000000', 9999, 99999, 2, 99997, NULL, '2019-07-26 04:13:10', '2019-07-26 07:18:38'),
(13, 15, 1, 1, NULL, 3, '挑战卡Lv1', '20190726/10f2f36424c8612f8c0e06a1e7fb2f8f.jpg', 0, '0.000000000000', '520.000000000000', '500.000000000000', '0.000000000000', 9999, 99999, 12, 99987, NULL, '2019-07-26 04:32:22', '2019-07-26 10:58:16'),
(14, 14, 1, 1, NULL, 3, '挑战卡Lv2', '20190726/2059de42c7f11ee15838ca32ba7fade3.jpg', 0, '0.000000000000', '1090.000000000000', '1000.000000000000', '0.000000000000', 99999, 99999, 17, 99982, NULL, '2019-07-26 04:33:23', '2019-07-26 10:58:05'),
(15, 13, 1, 1, NULL, 3, '挑战卡Lv3', '20190726/d0c196f616ea28261dd09930872aa969.jpg', 0, '0.000000000000', '3900.000000000000', '3000.000000000000', '0.000000000000', 9999, 99999, 2, 99997, NULL, '2019-07-26 04:33:47', '2019-07-26 10:58:33'),
(16, 11, 0, 1, NULL, 0, '中级月卡', '20190726/94f17b720d1370291b41717374666a72.jpg', 0, '0.000000000000', '0.000000000000', '100.000000000000', '0.000000000000', 0, 0, 0, 0, NULL, '2019-07-26 04:54:52', '2019-07-26 05:12:12'),
(17, 0, 1, 2, NULL, 0, '挑战卡Lv1', '20190726/d9c11c985214b83f220b4e794946587e.jpg', 0, '0.000000000000', '3090.000000000000', '3000.000000000000', '0.000000000000', 0, 9999, 0, 9999, NULL, '2019-07-26 08:03:43', '2019-07-26 08:03:43'),
(18, 0, 1, 2, NULL, 0, '幸运大转盘抽奖次数', '20241218/0d0a54c11c60cd2686b5c29818098742.png', 0, '0.000000000000', '0.000000000000', '5.000000000000', '0.000000000000', 0, 0, 0, 100000000, NULL, '2024-12-18 07:59:48', '2024-12-18 08:02:12');

-- --------------------------------------------------------

--
-- 表的结构 `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_leader` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `member_count` int(11) DEFAULT '0',
  `team_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `type` char(10) NOT NULL DEFAULT '1' COMMENT '券的类型，1：注册，Mxx开头为矿机购买',
  `username` char(11) DEFAULT NULL COMMENT '使用者账号',
  `token` char(32) NOT NULL COMMENT '具体票券',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='票券';

--
-- 转存表中的数据 `ticket`
--

INSERT INTO `ticket` (`id`, `type`, `username`, `token`, `create_at`, `update_at`) VALUES
(1, '1', NULL, '1V6FtICZfpG', '2019-05-21 14:46:55', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `trade`
--

CREATE TABLE IF NOT EXISTS `trade` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `tid` char(10) NOT NULL COMMENT '订单编号',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型，1：买入，2：出售',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，0：失败，1：匹配中，2：待付款，3：待确认，8：成功，4：投诉中',
  `number` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '数量',
  `price` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '价格',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费',
  `owner` char(11) NOT NULL COMMENT '自己的账号',
  `target` char(11) DEFAULT NULL COMMENT '对方的账号',
  `secret` char(10) DEFAULT NULL COMMENT '当前暗号，三十六进制的当前时间戳，每次别人退出交易后更新暗号',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='交易';

-- --------------------------------------------------------

--
-- 表的结构 `trade_audit`
--

CREATE TABLE IF NOT EXISTS `trade_audit` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `tid` char(10) NOT NULL COMMENT '订单编号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态，1：通过，0：待审核',
  `remark` text COMMENT '备注',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易审核';

-- --------------------------------------------------------

--
-- 表的结构 `trade_log`
--

CREATE TABLE IF NOT EXISTS `trade_log` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `tid` char(10) NOT NULL COMMENT '订单编号',
  `secret` char(10) NOT NULL COMMENT '暗号',
  `command` tinyint(4) NOT NULL DEFAULT '1' COMMENT '命令，此次执行的具体操作',
  `username` char(11) NOT NULL COMMENT '用户账号',
  `content` text COMMENT '内容，如文字或图片',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易记录';

-- --------------------------------------------------------

--
-- 表的结构 `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `tid` char(10) NOT NULL COMMENT '订单编号',
  `owner` char(11) NOT NULL COMMENT '自己的账号',
  `target` char(11) DEFAULT NULL COMMENT '对方的账号',
  `number` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '数量',
  `charge` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '手续费',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='转账';

-- --------------------------------------------------------

--
-- 表的结构 `upgrade`
--

CREATE TABLE IF NOT EXISTS `upgrade` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账户',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '具体级别',
  `money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '赠送的可用货币',
  `machine` text COMMENT '赠送的矿机',
  `power` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '赠送的算力',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='升级';

--
-- 转存表中的数据 `upgrade`
--

INSERT INTO `upgrade` (`id`, `username`, `level`, `money`, `machine`, `power`, `create_at`) VALUES
(1, '13786393215', 1, '0.000000000000', NULL, '0.000000000000', '2018-07-04 09:43:18'),
(2, '15030116666', 1, '0.000000000000', NULL, '0.000000000000', '2018-07-04 10:26:23'),
(3, '16888888888', 1, '0.000000000000', NULL, '0.000000000000', '2018-07-04 10:26:25'),
(4, '15367163171', 1, '0.083900000000', NULL, '0.000000000000', '2018-07-23 08:19:17'),
(5, '15367163171', 2, '0.000000000000', NULL, '0.000000000000', '2018-07-23 19:30:53'),
(6, '13333333333', 1, '0.089600000000', NULL, '0.000000000000', '2018-07-23 20:10:03'),
(7, '13333333333', 2, '0.000000000000', NULL, '0.000000000000', '2018-07-23 20:12:03'),
(8, '18031040584', 1, '0.096700000000', NULL, '0.000000000000', '2019-04-01 05:28:46'),
(9, '18331419752', 1, '0.090200000000', NULL, '0.000000000000', '2019-04-06 04:14:11'),
(10, '13399135409', 1, '0.094900000000', NULL, '0.000000000000', '2019-04-07 11:37:12'),
(11, '13395267212', 1, '0.094200000000', NULL, '0.000000000000', '2019-04-09 06:57:03'),
(12, '17821522007', 1, '0.087800000000', NULL, '0.000000000000', '2019-04-10 08:06:39'),
(13, '18907454545', 1, '0.073200000000', NULL, '0.000000000000', '2019-04-10 08:09:23'),
(14, '18908454545', 1, '0.075700000000', NULL, '0.000000000000', '2019-04-10 08:44:42'),
(15, '18909454545', 1, '0.088900000000', NULL, '0.000000000000', '2019-04-10 09:01:44'),
(16, '16888888888', 2, '0.000000000000', NULL, '0.000000000000', '2019-05-24 22:32:55'),
(17, '16888888888', 3, '0.000000000000', NULL, '0.000000000000', '2019-05-24 22:33:03'),
(18, '15030116666', 2, '0.000000000000', NULL, '0.000000000000', '2019-05-25 14:55:54'),
(19, '13399135409', 2, '0.000000000000', NULL, '0.000000000000', '2019-05-29 15:36:28'),
(20, '18031040584', 2, '0.000000000000', NULL, '0.000000000000', '2019-05-30 12:37:22'),
(21, '13399135409', 3, '0.000000000000', NULL, '0.000000000000', '2019-05-31 04:51:39'),
(22, '13522335566', 1, '0.095100000000', NULL, '0.000000000000', '2019-07-12 09:18:05'),
(23, '13522335566', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-12 09:18:05'),
(24, '13522335566', 3, '0.000000000000', NULL, '0.000000000000', '2019-07-12 09:18:05'),
(25, '17681371015', 1, '0.075400000000', NULL, '0.000000000000', '2019-07-24 16:54:23'),
(26, '17681371015', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-24 16:54:23'),
(27, '17681371015', 3, '0.000000000000', NULL, '0.000000000000', '2019-07-24 16:54:23'),
(28, '17627921813', 1, '0.084500000000', NULL, '0.000000000000', '2019-07-25 12:22:53'),
(29, '17627921813', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-25 12:29:42'),
(30, '13111111111', 1, '0.092500000000', NULL, '0.000000000000', '2019-07-26 04:21:32'),
(31, '13111111111', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 04:22:24'),
(32, '13111111112', 1, '0.084300000000', NULL, '0.000000000000', '2019-07-26 04:23:45'),
(33, '13111111112', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 04:27:16'),
(34, '17355877155', 1, '0.079900000000', NULL, '1.000000000000', '2019-07-26 05:58:50'),
(35, '13111111111', 0, '0.000000000000', NULL, '0.000000000000', '2019-07-26 06:49:06'),
(36, '13000000000', 1, '0.071700000000', NULL, '1.000000000000', '2019-07-26 06:50:03'),
(37, '13011111111', 1, '0.074700000000', NULL, '1.000000000000', '2019-07-26 06:50:17'),
(38, '13022222222', 1, '0.088800000000', NULL, '1.000000000000', '2019-07-26 06:50:28'),
(39, '13033333333', 1, '0.086800000000', NULL, '1.000000000000', '2019-07-26 06:50:39'),
(40, '13044444444', 0, '0.000000000000', NULL, '0.000000000000', '2019-07-26 06:51:54'),
(41, '13044444444', 1, '0.095100000000', NULL, '1.000000000000', '2019-07-26 06:52:16'),
(42, '13055555555', 1, '0.083300000000', NULL, '1.000000000000', '2019-07-26 06:55:26'),
(43, '13066666666', 1, '0.083300000000', NULL, '1.000000000000', '2019-07-26 06:55:39'),
(44, '13077777777', 1, '0.096100000000', NULL, '1.000000000000', '2019-07-26 06:55:53'),
(45, '13088888888', 1, '0.086800000000', NULL, '1.000000000000', '2019-07-26 06:56:04'),
(46, '13099999999', 1, '0.070700000000', NULL, '1.000000000000', '2019-07-26 06:56:14'),
(47, '13100000000', 1, '0.082400000000', NULL, '1.000000000000', '2019-07-26 06:56:23'),
(48, '13122222222', 1, '0.088600000000', NULL, '1.000000000000', '2019-07-26 06:56:38'),
(49, '13133333333', 1, '0.087700000000', NULL, '1.000000000000', '2019-07-26 06:56:49'),
(50, '13144444444', 1, '0.096900000000', NULL, '1.000000000000', '2019-07-26 06:56:56'),
(51, '13155555555', 1, '0.094200000000', NULL, '1.000000000000', '2019-07-26 06:57:08'),
(52, '13166666666', 1, '0.071000000000', NULL, '1.000000000000', '2019-07-26 06:59:09'),
(53, '13177777777', 1, '0.097200000000', NULL, '1.000000000000', '2019-07-26 06:59:18'),
(54, '13188888888', 1, '0.094600000000', NULL, '1.000000000000', '2019-07-26 06:59:27'),
(55, '13199999999', 1, '0.098700000000', NULL, '1.000000000000', '2019-07-26 06:59:46'),
(56, '13200000000', 1, '0.085100000000', NULL, '1.000000000000', '2019-07-26 06:59:57'),
(57, '13211111111', 1, '0.072500000000', NULL, '1.000000000000', '2019-07-26 07:00:04'),
(58, '13222222222', 1, '0.084900000000', NULL, '1.000000000000', '2019-07-26 07:00:33'),
(59, '13233333333', 1, '0.081700000000', NULL, '1.000000000000', '2019-07-26 07:00:40'),
(60, '13244444444', 1, '0.095800000000', NULL, '1.000000000000', '2019-07-26 07:00:49'),
(61, '13255555555', 1, '0.093400000000', NULL, '1.000000000000', '2019-07-26 07:00:58'),
(62, '13266666666', 1, '0.074900000000', NULL, '1.000000000000', '2019-07-26 07:01:06'),
(63, '13277777777', 1, '0.093400000000', NULL, '1.000000000000', '2019-07-26 07:01:14'),
(64, '13288888888', 1, '0.085000000000', NULL, '1.000000000000', '2019-07-26 07:01:23'),
(65, '13299999999', 1, '0.072400000000', NULL, '1.000000000000', '2019-07-26 07:01:39'),
(66, '13300000000', 1, '0.089500000000', NULL, '1.000000000000', '2019-07-26 07:01:50'),
(67, '13311111111', 1, '0.096100000000', NULL, '1.000000000000', '2019-07-26 07:02:34'),
(68, '13322222222', 1, '0.084900000000', NULL, '1.000000000000', '2019-07-26 07:02:44'),
(69, '13333333333', 0, '0.000000000000', NULL, '0.000000000000', '2019-07-26 07:04:02'),
(70, '13344444444', 1, '0.092000000000', NULL, '1.000000000000', '2019-07-26 07:04:21'),
(71, '13355555555', 1, '0.099300000000', NULL, '1.000000000000', '2019-07-26 07:04:34'),
(72, '13366666666', 1, '0.080200000000', NULL, '1.000000000000', '2019-07-26 07:05:06'),
(73, '13377777777', 1, '0.079000000000', NULL, '1.000000000000', '2019-07-26 07:05:12'),
(74, '13388888888', 1, '0.073200000000', NULL, '1.000000000000', '2019-07-26 07:05:25'),
(75, '13399999999', 1, '0.099800000000', NULL, '1.000000000000', '2019-07-26 07:05:35'),
(76, '13399999999', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 07:51:48'),
(77, '13000000000', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 07:57:12'),
(78, '13011111111', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 07:59:42'),
(79, '13022222222', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:01:04'),
(80, '13033333333', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:08:21'),
(81, '13044444444', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:15:17'),
(82, '13055555555', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:17:22'),
(83, '13066666666', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:19:56'),
(84, '13077777777', 2, '0.000000000000', NULL, '0.000000000000', '2019-07-26 08:31:36'),
(85, '15249945633', 1, '0.085200000000', NULL, '9.000000000000', '2019-07-27 08:15:58'),
(86, '19834428483', 1, '0.076300000000', NULL, '9.000000000000', '2019-07-27 08:23:34'),
(87, '17628240159', 1, '0.099600000000', NULL, '9.000000000000', '2019-07-27 08:25:27'),
(88, '13175671026', 1, '0.080100000000', NULL, '9.000000000000', '2019-07-27 08:26:37'),
(89, '13212357719', 1, '0.099100000000', NULL, '9.000000000000', '2019-07-27 08:29:56'),
(90, '17694966077', 1, '0.077300000000', NULL, '9.000000000000', '2019-07-27 08:30:27'),
(91, '15187947425', 1, '0.086500000000', NULL, '9.000000000000', '2019-07-27 08:32:45'),
(92, '13632267939', 1, '0.082100000000', NULL, '9.000000000000', '2019-07-27 08:37:58'),
(93, '15189408981', 1, '0.073400000000', NULL, '9.000000000000', '2019-07-27 08:39:06'),
(94, '18552320267', 1, '0.078500000000', NULL, '9.000000000000', '2019-07-27 08:57:46'),
(95, '13133239310', 1, '0.091300000000', NULL, '9.000000000000', '2019-07-27 09:10:42'),
(96, '15955406949', 1, '0.095400000000', NULL, '9.000000000000', '2019-07-27 09:10:57'),
(97, '18377154500', 1, '0.096300000000', NULL, '9.000000000000', '2019-07-27 09:16:42'),
(98, '18083842183', 1, '0.070300000000', NULL, '9.000000000000', '2019-07-27 10:34:29'),
(99, '18197680294', 1, '0.077700000000', NULL, '9.000000000000', '2019-07-27 10:52:55'),
(100, '17312128796', 1, '0.092600000000', NULL, '9.000000000000', '2019-07-27 10:58:35'),
(101, '13940146783', 1, '0.077000000000', NULL, '9.000000000000', '2019-07-27 11:23:10'),
(102, '13940297581', 1, '0.079400000000', NULL, '9.000000000000', '2019-07-27 12:18:36'),
(103, '13681203820', 1, '0.088800000000', NULL, '9.000000000000', '2019-07-27 12:47:29'),
(104, '18873908570', 1, '0.092700000000', NULL, '9.000000000000', '2019-07-27 13:01:34'),
(105, '13070272613', 1, '0.099900000000', NULL, '9.000000000000', '2019-07-27 13:01:40'),
(106, '17355331619', 1, '0.098400000000', NULL, '9.000000000000', '2019-07-27 13:21:20'),
(107, '17681371016', 1, '0.082500000000', NULL, '9.000000000000', '2019-07-27 13:24:45'),
(108, '15892876749', 1, '0.092900000000', NULL, '9.000000000000', '2019-07-27 13:32:28'),
(109, '15990058751', 1, '0.074700000000', NULL, '9.000000000000', '2019-07-27 14:17:59'),
(110, '15687182865', 1, '0.091600000000', NULL, '9.000000000000', '2019-07-27 14:46:12'),
(111, '18002766674', 1, '0.075000000000', NULL, '9.000000000000', '2019-07-27 15:23:26'),
(112, '19916282813', 1, '0.098600000000', NULL, '9.000000000000', '2019-07-27 15:53:21'),
(113, '13617081712', 1, '0.099700000000', NULL, '9.000000000000', '2019-07-27 16:07:55'),
(114, '17044298354', 1, '0.099000000000', NULL, '9.000000000000', '2019-07-28 04:04:52'),
(115, '18482298005', 1, '0.073600000000', NULL, '9.000000000000', '2019-07-28 06:15:37'),
(116, '13992686712', 1, '0.074400000000', NULL, '9.000000000000', '2019-07-28 06:22:24'),
(117, '17789816229', 1, '0.077200000000', NULL, '9.000000000000', '2019-07-28 12:19:46'),
(118, '86666666666', 1, '0.077500000000', NULL, '9.000000000000', '2025-01-17 16:42:06'),
(119, '86666666666', 2, '0.000000000000', NULL, '0.000000000000', '2025-01-17 16:42:06');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL COMMENT '序号',
  `phone` varchar(50) NOT NULL DEFAULT '0' COMMENT '手机号',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '姓名',
  `idcard` varchar(18) NOT NULL DEFAULT '无' COMMENT '身份证号码',
  `auth` int(11) NOT NULL DEFAULT '0' COMMENT '是否认证,0未认证/1已认证',
  `password` varchar(32) NOT NULL DEFAULT '0' COMMENT '登录密码',
  `password2` varchar(32) NOT NULL DEFAULT '0' COMMENT '交易密码',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '推荐人',
  `member` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '成长值',
  `income` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收益金额',
  `logintime` varchar(20) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `clock` int(11) NOT NULL DEFAULT '0' COMMENT '是否锁定,0否/1是',
  `qiandao` varchar(20) NOT NULL DEFAULT '0' COMMENT '签到时间',
  `smrzsj` varchar(20) NOT NULL DEFAULT '0',
  `tzsj` varchar(20) NOT NULL DEFAULT '0',
  `tzjf` varchar(20) NOT NULL DEFAULT '0',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `jifen` varchar(200) DEFAULT NULL,
  `dongjiemoney` varchar(100) DEFAULT NULL,
  `cishu` varchar(255) DEFAULT '0',
  `reg_ip` varchar(255) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `dyj` varchar(255) DEFAULT '0',
  `checknum` int(11) NOT NULL DEFAULT '0' COMMENT '累计打卡天数',
  `dkjf` varchar(20) NOT NULL,
  `lxdkjf` varchar(20) NOT NULL,
  `total_rewards` int(11) DEFAULT NULL,
  `sport_jf` varchar(20) NOT NULL,
  `lxdkts` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11203 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `phone`, `name`, `idcard`, `auth`, `password`, `password2`, `top`, `member`, `money`, `value`, `income`, `logintime`, `clock`, `qiandao`, `smrzsj`, `tzsj`, `tzjf`, `time`, `jifen`, `dongjiemoney`, `cishu`, `reg_ip`, `nick`, `dyj`, `checknum`, `dkjf`, `lxdkjf`, `total_rewards`, `sport_jf`, `lxdkts`) VALUES
(101, '13112341234', 'ww', '12', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 8001, '10186.00', 38520, '16514.20', '1580228755', 0, '2020-01-29 00:21:31', '2020-01-29 00:22:40', '2020-01-29 00:22:44', '2020-01-29 00:22:46', '2019-10-17 17:00:29', NULL, '', '90', '36.157.220.204', 'qwe123', '4454', 0, '', '', 0, '', 0),
(11095, '13312341234', 'hh', '837', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 101, 8001, '2057.00', 6600, '5617.00', '1580636656', 0, '2019-10-24 10:56:52', '', '0', '0', '2019-10-23 19:03:28', NULL, '', '50', '36.157.207.4', 'qaz123', '1000', 0, '', '', 0, '', 0),
(11097, '18812341234', '无', '无', 0, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 0, '0.00', 0, '0.00', '0', 0, '0', '', '0', '0', '2019-10-24 10:31:38', NULL, NULL, '0', '36.157.207.4', 'zxc123', '0', 0, '', '', 0, '', 0),
(11098, '15574960953', '林辅昌', '621203198206195683', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11101, 8003, '69.40', 177200, '45662.20', '1572710214', 0, '2019-11-02 18:02:00', '', '0', '0', '2019-10-24 11:49:03', NULL, '', '44000', '119.39.248.101', 'lin921', '4268', 0, '', '', 0, '', 0),
(11099, '13272097044', '李海华', '430123199011265331', 1, '4297f44b13955235245b2497399d7a93', '4297f44b13955235245b2497399d7a93', 11, 8015, '97703219.94', 1755000, '99999999.99', '1572681649', 0, '2019-10-31 18:02:55', '', '0', '0', '2019-10-24 12:49:15', NULL, '', '35000', '119.39.248.101', 'HK999', '176', 0, '', '', 0, '', 0),
(11100, '18156198773', '', '', 1, '4297f44b13955235245b2497399d7a93', '4297f44b13955235245b2497399d7a93', 11099, 8001, '15347.75', 28487, '2032403.75', '1573501209', 0, '0', '', '0', '0', '2019-10-24 23:39:45', NULL, NULL, '1000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11101, '13029853448', '得到的', '1101101101101110', 1, 'dc483e80a7a0bd9ef71d8cf973673924', 'dc483e80a7a0bd9ef71d8cf973673924', 11100, 8001, '11065925.95', 44600, '206687.95', '1572103024', 0, '0', '', '0', '0', '2019-10-24 23:57:57', NULL, '', '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11102, '13809530955', '丰富', '766', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '103284.25', 3100, '2289.25', '1572194117', 0, '2019-10-26 10:00:57', '', '0', '0', '2019-10-25 19:50:19', NULL, '', '0', '119.39.248.90', 'wcw11', '0', 0, '', '', 0, '', 0),
(11103, '15837889809', '无', '无', 0, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11102, 0, '1000.00', 0, '1000.00', '0', 0, '0', '', '0', '0', '2019-10-25 19:51:18', NULL, NULL, '0', '119.39.248.90', '110909', '0', 0, '', '', 0, '', 0),
(11104, '18909821180', '董杰', '520113197905189633', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11103, 8001, '3616.00', 20000, '3616.00', '1572159227', 0, '0', '', '0', '0', '2019-10-25 19:52:14', NULL, NULL, '0', '119.39.248.90', 'rr565', '0', 0, '', '', 0, '', 0),
(11109, '13222222222', '姓名', '333333333333333333', 1, '4297f44b13955235245b2497399d7a93', '4297f44b13955235245b2497399d7a93', 11100, 0, '100000.00', 0, '0.00', '1572060726', 0, '0', '', '0', '0', '2019-10-26 07:18:19', NULL, NULL, '0', '114.96.156.40', '13222222222', '0', 0, '', '', 0, '', 0),
(11108, '17570318511', '孟波', '520312198908125362', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11102, 8001, '1851.55', 15200, '487.55', '1572689856', 0, '2019-11-02 17:05:46', '', '0', '0', '2019-10-25 22:54:46', NULL, '', '14000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11110, '13007496293', '李岐', '45236519880908005X', 1, '1d4a4658529f8d80f5dd3dd5960c053e', '1d4a4658529f8d80f5dd3dd5960c053e', 11098, 8008, '1.00', 84000, '3637.00', '1572708405', 0, '2019-11-02 12:39:08', '', '0', '0', '2019-10-26 12:28:45', NULL, NULL, '42000', NULL, NULL, '176', 0, '', '', 0, '', 0),
(11111, '15575867354', '万鹏', '220122195309250030', 1, '89e30839bd8ba3602ceb5793fefa9e10', '89e30839bd8ba3602ceb5793fefa9e10', 11098, 8001, '602.00', 10000, '608.00', '1572685307', 0, '2019-10-31 16:19:07', '', '0', '0', '2019-10-26 12:37:41', NULL, NULL, '10000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11112, '18570041933', '刘凌彤', '310115199203273671', 1, '58cf703f664397ec4f0ac359b84b565c', '58cf703f664397ec4f0ac359b84b565c', 11098, 8001, '1535.00', 10000, '1507.00', '1572691176', 0, '2019-11-02 17:01:17', '', '0', '0', '2019-10-26 12:39:57', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11113, '13017385484', '邱媛', '148625896314756312', 1, 'aa97eba124ab0c029fb7d5c37a6141b0', 'aa97eba124ab0c029fb7d5c37a6141b0', 11098, 8001, '4958.00', 5000, '4442.00', '1572521797', 0, '0', '', '0', '0', '2019-10-26 12:40:40', NULL, NULL, '3000', NULL, NULL, '88', 0, '', '', 0, '', 0),
(11114, '18167852060', '黄雅波', '45033019900218021X', 1, 'b96c0966c59de3a19d1fb2d01aa742b2', 'b96c0966c59de3a19d1fb2d01aa742b2', 11102, 8001, '0.00', 10000, '859.00', '1572689118', 0, '2019-11-02 13:12:36', '', '0', '0', '2019-10-26 17:49:55', NULL, '', '10000', '220.202.152.80', 'abcd1378853', '88', 0, '', '', 0, '', 0),
(11115, '18875250098', '马东锡', '110207198503217119', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11095, 8001, '3002.75', 100, '2.75', '1572102813', 0, '0', '', '0', '0', '2019-10-26 22:42:22', NULL, NULL, '0', '119.39.248.101', 'caizhu', '0', 0, '', '', 0, '', 0),
(11116, '18209581118', '', '563258966544566555', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '6068.50', 3000, '268.50', '1572103211', 0, '0', '', '0', '0', '2019-10-26 23:13:23', NULL, NULL, '0', '119.39.248.101', 'dfss', '0', 0, '', '', 0, '', 0),
(11117, '17707286661', '靳涛', '521005199206279557', 1, '4297f44b13955235245b2497399d7a93', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '2652.75', 100, '1752.75', '1572148546', 0, '0', '', '0', '0', '2019-10-27 11:41:43', NULL, NULL, '0', '221.178.126.51', 'tttt2', '0', 0, '', '', 0, '', 0),
(11118, '15575875673', '张健', '412323319870809115', 1, 'ce45efeeba3fad3ad93454904f9148c9', 'ce45efeeba3fad3ad93454904f9148c9', 11098, 8008, '15285.00', 110000, '22617.00', '1572685524', 0, '2019-11-02 09:55:39', '', '0', '0', '2019-10-27 13:13:50', NULL, NULL, '63000', NULL, NULL, '740', 0, '', '', 0, '', 0),
(11119, '15526468516', '黄博', '421156199508164567', 1, '81e76e36f2a7d3afa893bd2372fdbb9e', '81e76e36f2a7d3afa893bd2372fdbb9e', 11118, 8003, '288868.30', 163000, '15836.30', '1572685373', 0, '2019-11-02 09:07:50', '', '0', '0', '2019-10-27 14:11:51', NULL, NULL, '163000', NULL, NULL, '928', 0, '', '', 0, '', 0),
(11120, '18569463747', '李三德', '330421198506059634', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11118, 8008, '41.25', 108100, '4813.25', '1572703555', 0, '2019-10-30 15:40:37', '', '0', '0', '2019-10-27 14:27:47', NULL, NULL, '7000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11121, '13272006984', '杨志春', '360722198608015663', 1, '5b1aa747a0454792c8b32c464cc55b04', '5b1aa747a0454792c8b32c464cc55b04', 11113, 8008, '2608.85', 81100, '7592.85', '1572687524', 0, '2019-11-02 17:21:58', '', '0', '0', '2019-10-27 14:52:05', NULL, NULL, '17000', NULL, NULL, '88', 0, '', '', 0, '', 0),
(11122, '15526451733', '张伟', '330421198306245463', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11117, 8001, '501.00', 35000, '2997.00', '1572703621', 0, '2019-11-01 17:05:01', '', '0', '0', '2019-10-27 14:52:22', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11123, '13198091470', '彭文杰', '310311198304235273', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '296.75', 50100, '8.75', '1572347785', 0, '2019-10-29 19:13:03', '', '0', '0', '2019-10-27 15:01:05', NULL, NULL, '39000', '221.178.126.51', '565656', '288', 0, '', '', 0, '', 0),
(11124, '13577093788', '韩立波', '621022197909259501', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '1084.00', 1000, '84.00', '1572348144', 0, '2019-10-29 19:20:10', '', '0', '0', '2019-10-27 15:01:31', NULL, NULL, '0', '221.178.126.51', '522df', '0', 0, '', '', 0, '', 0),
(11125, '17614512073', '吴志双', '430105198607171858', 1, '89bb410a1b64235fe1b12ed657b6638f', '89bb410a1b64235fe1b12ed657b6638f', 11098, 8001, '526.30', 63200, '1678.40', '1572710200', 0, '2019-11-02 00:18:25', '', '0', '0', '2019-10-27 16:24:01', NULL, NULL, '29000', NULL, NULL, '264', 0, '', '', 0, '', 0),
(11126, '18711229855', '李金桂', '430626197103184913', 1, '2deea35d429827b002f664d8e42040b0', '2deea35d429827b002f664d8e42040b0', 11113, 0, '37.00', 0, '9.00', '1572280753', 0, '2019-10-29 00:38:54', '', '0', '0', '2019-10-27 19:53:31', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11127, '15051906236', '杜珍美', '32048219700103', 1, '8a3a2c520a74d054dd56578552f951ae', '8a3a2c520a74d054dd56578552f951ae', 11098, 0, '12.00', 0, '15.00', '1572701460', 0, '2019-11-02 21:31:05', '', '0', '0', '2019-10-27 22:18:33', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11128, '13899678365', '李进华', '652301196309100847', 1, '214bcd67d351600d4db0410e99e0ad04', '214bcd67d351600d4db0410e99e0ad04', 11125, 0, '131.00', 0, '3.00', '1572710167', 0, '2019-11-02 23:18:11', '', '0', '0', '2019-10-27 22:21:06', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11129, '13918873575', '王曦', '310230197707086674', 1, 'cb512c45dc490f76684a2030581f2197', 'cb512c45dc490f76684a2030581f2197', 11098, 8001, '0.47', 8100, '461.55', '1572694349', 0, '2019-11-02 08:02:38', '', '0', '0', '2019-10-27 22:50:18', NULL, NULL, '3000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11130, '13861900869', '方银桂', '421123196601262046', 1, '3d27f575737cecd48aa67f21e512dfa1', '3d27f575737cecd48aa67f21e512dfa1', 11125, 0, '34.00', 0, '6.00', '1572698533', 0, '2019-11-02 17:08:39', '', '0', '0', '2019-10-28 04:51:19', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11131, '13077350589', '肖一帆', '43250119890280549', 1, 'aa97eba124ab0c029fb7d5c37a6141b0', 'aa97eba124ab0c029fb7d5c37a6141b0', 11098, 8001, '17776.50', 19000, '1648.50', '1572675124', 0, '2019-10-30 23:08:33', '', '0', '0', '2019-10-28 17:16:04', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11132, '13577515183', '张菊转', '533024197003263527', 1, 'ba8b0d8c20471e450a6370c6b6213e34', 'ba8b0d8c20471e450a6370c6b6213e34', 11131, 0, '46.00', 0, '18.00', '1572704193', 0, '2019-11-02 22:16:37', '', '0', '0', '2019-10-28 17:25:06', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11133, '17623402380', '彭铟', '500234198602040827', 1, '802a6d5aa92d52aa8c6b54c7af2bb196', '802a6d5aa92d52aa8c6b54c7af2bb196', 11120, 0, '34.00', 0, '6.00', '1572303306', 0, '2019-10-29 02:32:31', '', '0', '0', '2019-10-28 19:58:52', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11134, '15279430019', '万智彬', '362528197209120038', 1, '92c2fbdb5e6812149d9196b97d0bc78a', '92c2fbdb5e6812149d9196b97d0bc78a', 11120, 8001, '29.20', 11200, '469.45', '1572689710', 0, '2019-11-02 07:25:18', '', '0', '0', '2019-10-28 21:42:20', NULL, '', '1000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11135, '15897459735', '韩金花', '431224199108237581', 1, 'c87d196896aa6136907aa7087166eef2', 'c87d196896aa6136907aa7087166eef2', 11131, 8001, '6.00', 1100, '61.75', '1572659881', 0, '2019-11-02 09:58:04', '', '0', '0', '2019-10-28 21:52:17', NULL, '', '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11136, '18990495982', '邹冰', '432524197510264105', 1, '3e9416ee76692d2d7cceff4679c33991', '3e9416ee76692d2d7cceff4679c33991', 11131, 0, '37.00', 0, '9.00', '1572649852', 0, '2019-11-02 07:10:43', '', '0', '0', '2019-10-28 22:06:58', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11137, '13963325991', '许加兰', '371121197904290228', 1, 'dbb29642aa7fb2566f8a6637c70dd984', 'dbb29642aa7fb2566f8a6637c70dd984', 11110, 0, '46.00', 0, '18.00', '1572695697', 0, '2019-11-02 07:22:24', '', '0', '0', '2019-10-28 22:16:54', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11138, '15159247010', '田洪爱', '522229199707112048', 1, '0288a398ac0c87380d6fe61fe45d4cdc', '0288a398ac0c87380d6fe61fe45d4cdc', 11118, 0, '46.00', 0, '18.00', '1572696604', 0, '2019-11-02 09:22:35', '', '0', '0', '2019-10-28 22:17:15', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11140, '13784037327', '吴玉梅', '132201197902210622', 1, '24169c504df2f02a6edf136450947193', '8ac4e3ba0f5cbcaba47e5263fcf23718', 11110, 8001, '2612.00', 9300, '3851.70', '1572708303', 0, '2019-11-02 09:36:31', '', '0', '0', '2019-10-29 10:50:32', NULL, '', '3000', '220.202.152.42', '13784037327', '0', 0, '', '', 0, '', 0),
(11141, '18673497566', '邓小华', '430522196411117565', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11112, 8001, '1180.60', 15000, '927.60', '1572690929', 0, '2019-11-02 11:31:40', '', '0', '0', '2019-10-29 12:28:48', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11142, '18323187160', '谷长艳', '500228198508131821', 1, '4cae4f86d6220c803f698f3c9e0bbc4a', '003b5a71ba7684194177ff70ab6034e3', 11120, 8001, '3.40', 5000, '344.40', '1572707405', 0, '2019-11-02 07:20:26', '', '0', '0', '2019-10-29 15:20:55', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11143, '15588523099', '白平', '522701196607143354', 1, '2d95212451a2c2e23e946167e52721b0', '2d95212451a2c2e23e946167e52721b0', 11121, 0, '43.00', 0, '15.00', '1572657029', 0, '2019-11-02 09:10:31', '', '0', '0', '2019-10-29 15:38:37', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11144, '13814637004', '杨小丹', '320625197609023664', 1, '50123c7c53c6a83ce74dbdeac4b88457', '50123c7c53c6a83ce74dbdeac4b88457', 11125, 8001, '0.00', 3100, '89.60', '1572694520', 0, '2019-11-02 07:46:10', '', '0', '0', '2019-10-29 16:11:17', NULL, NULL, '1000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11145, '13378656538', '陈耿城', '441424198602091176', 1, '2f092691a21c6e3c36e0476a2aa00c60', '2f092691a21c6e3c36e0476a2aa00c60', 11118, 0, '43.00', 0, '15.00', '1572661967', 0, '2019-11-02 02:10:31', '', '0', '0', '2019-10-29 18:49:30', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11146, '15615169902', '刘莉', '530312199209186562', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '113.00', 100, '5.00', '1572483991', 0, '2019-10-31 09:06:24', '', '0', '0', '2019-10-29 19:22:13', NULL, NULL, '0', '43.250.200.74', '', '0', 0, '', '', 0, '', 0),
(11147, '13677283746', '无', '无', 0, 'a758110583ef6961c20244be0a688a2e', 'a758110583ef6961c20244be0a688a2e', 11110, 0, '28.00', 0, '0.00', '1572424216', 0, '0', '', '0', '0', '2019-10-30 12:12:02', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11148, '13971559282', '肖文兰', '420104196304293321', 1, '4ebf5f601e45daf4c529cab973d60668', '4ebf5f601e45daf4c529cab973d60668', 11108, 0, '34.00', 0, '6.00', '1572483227', 0, '2019-10-31 00:58:42', '', '0', '0', '2019-10-30 12:18:34', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11149, '17339572536', '辛跃清', '410422197309106056', 1, 'f7cca1812aa322a465ee66a7dc99177e', 'db9859ae97da88bc9e7b4df808091192', 11098, 0, '40.00', 0, '12.00', '1572650221', 0, '2019-11-02 07:15:49', '', '0', '0', '2019-10-30 12:41:23', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11150, '18223650531', '', '', 1, 'ce296e37ebf28ea88c09fa692fee9ec8', 'ce296e37ebf28ea88c09fa692fee9ec8', 11142, 8001, '34.00', 0, '6.00', '1572514527', 0, '2019-10-31 17:35:19', '', '0', '0', '2019-10-30 12:50:31', NULL, '', '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11151, '15353791976', '薛宝霞', '610302196910204046', 1, '3c7ccece579429a18d39c87a5040000a', '3c7ccece579429a18d39c87a5040000a', 11122, 0, '40.00', 0, '12.00', '1572694803', 0, '2019-11-02 19:40:00', '', '0', '0', '2019-10-30 12:56:28', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11152, '15681162380', '无', '无', 0, 'd828aa0f7604adc1871e29f5bf53b28c', 'd828aa0f7604adc1871e29f5bf53b28c', 11120, 0, '28.00', 0, '0.00', '1572411949', 0, '0', '', '0', '0', '2019-10-30 13:04:23', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11153, '15349178552', '高超', '610302199201052012', 1, '3c7ccece579429a18d39c87a5040000a', '3c7ccece579429a18d39c87a5040000a', 11151, 0, '40.00', 0, '12.00', '1572694719', 0, '2019-11-02 19:38:35', '', '0', '0', '2019-10-30 13:37:08', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11154, '15592758316', '高新虑', '610302196808162011', 1, '3c7ccece579429a18d39c87a5040000a', '3c7ccece579429a18d39c87a5040000a', 11151, 0, '40.00', 0, '12.00', '1572694743', 0, '2019-11-02 19:38:58', '', '0', '0', '2019-10-30 13:40:31', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11155, '18635651212', '胡磊', '350216199206105873', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11098, 8001, '174.00', 10000, '0.00', '1572666573', 0, '0', '', '0', '0', '2019-10-30 14:18:09', NULL, NULL, '0', '220.202.152.118', '1199', '0', 0, '', '', 0, '', 0),
(11156, '17347241969', '夏满春', '430981199304255466', 1, '6f94fa670f39430cdb87424f654b58f2', '6f94fa670f39430cdb87424f654b58f2', 11108, 0, '40.00', 0, '12.00', '1572682509', 0, '2019-11-02 16:14:59', '', '0', '0', '2019-10-30 15:52:24', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11157, '17347242982', '夏治辉', '432302197006085811', 1, '6f94fa670f39430cdb87424f654b58f2', '6f94fa670f39430cdb87424f654b58f2', 11108, 0, '40.00', 0, '12.00', '1572682547', 0, '2019-11-02 16:15:49', '', '0', '0', '2019-10-30 17:50:58', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11158, '13581234903', '张志川', '421121196503244415', 1, 'a5b8476dda07e9108ff058ba2a7a409d', 'a5b8476dda07e9108ff058ba2a7a409d', 11131, 8001, '40.00', 100, '338.25', '1572685977', 0, '2019-11-02 16:29:41', '', '0', '0', '2019-10-30 19:57:59', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11159, '13409787848', '童银香', '422121197007074424', 1, 'c2abb6451b87cf85828c5f97dfd58d14', 'c2abb6451b87cf85828c5f97dfd58d14', 11158, 8001, '100.00', 1000, '594.50', '1572686309', 0, '2019-11-02 16:26:51', '', '0', '0', '2019-10-30 20:57:12', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11160, '13922359823', '聂美欲', '440125197306130024', 1, '6dd1ee3faf3f2081767c81757a406bf5', '6dd1ee3faf3f2081767c81757a406bf5', 11125, 0, '40.00', 0, '12.00', '1572671319', 0, '2019-11-02 13:08:27', '', '0', '0', '2019-10-30 21:51:09', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11161, '13972034587', '曾向蓉', '420529198208303321', 1, '4887620ba4e7078f56fc5c7bb3b7034c', '4887620ba4e7078f56fc5c7bb3b7034c', 11111, 0, '31.00', 0, '3.00', '1572535200', 0, '2019-10-30 22:15:58', '', '0', '0', '2019-10-30 21:52:43', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11162, '18972013328', '李德芬', '422726196311102426', 1, '3d843f0b41ba7fd37fc61c7ebe4981f3', '3d843f0b41ba7fd37fc61c7ebe4981f3', 11131, 8001, '0.00', 2000, '72.80', '1572688394', 0, '2019-11-01 08:00:46', '', '0', '0', '2019-10-30 23:03:55', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11163, '18679487901', '翁志红', '362531197609140300', 1, '92c2fbdb5e6812149d9196b97d0bc78a', '92c2fbdb5e6812149d9196b97d0bc78a', 11134, 8001, '3.00', 100, '17.25', '1572656462', 0, '2019-11-02 07:30:55', '', '0', '0', '2019-10-30 23:07:00', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11164, '13656094111', '许丽丹', '350624198007102529', 1, '930526f3185a114491009a7143d4d832', '930526f3185a114491009a7143d4d832', 11159, 8001, '0.75', 2100, '366.75', '1572693581', 0, '2019-11-02 07:41:17', '', '0', '0', '2019-10-30 23:12:22', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11165, '13348493666', '许丽端', '350624197011270045', 1, '759c78a5b606c67190edb71e2bd7abfe', '759c78a5b606c67190edb71e2bd7abfe', 11164, 8001, '100.60', 3100, '332.60', '1572693482', 0, '2019-11-02 08:47:57', '', '0', '0', '2019-10-30 23:25:57', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11166, '13671992818', '朱梅萍', '310115198107274220', 1, 'b6f918303d1ec299f3904d8530b9047e', 'b6f918303d1ec299f3904d8530b9047e', 11129, 0, '37.00', 0, '9.00', '1572671041', 0, '2019-11-02 08:02:15', '', '0', '0', '2019-10-31 07:59:12', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11167, '18374106768', '无', '无', 0, '5bd2003bf105f7c9683f3a7bc11a9887', '5bd2003bf105f7c9683f3a7bc11a9887', 11159, 0, '28.00', 0, '0.00', '1572485118', 0, '0', '', '0', '0', '2019-10-31 09:25:17', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11168, '13409861106', '童建', '421121199106184432', 1, '895531eab370cd94092a6d590043810c', '895531eab370cd94092a6d590043810c', 11159, 8001, '0.00', 2000, '64.60', '1572686025', 0, '2019-11-02 10:16:28', '', '0', '0', '2019-10-31 13:54:57', NULL, NULL, '2000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11169, '13306064111', '许金河', '350624197609255018', 1, '832d533dbc8da2ab6dc2f06f0f7a5b59', '832d533dbc8da2ab6dc2f06f0f7a5b59', 11165, 8001, '0.60', 3100, '69.60', '1572693167', 0, '2019-11-02 09:05:26', '', '0', '0', '2019-10-31 14:38:27', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11170, '17347240090', '夏丽红', '43230219711227582X', 1, '6f94fa670f39430cdb87424f654b58f2', '6f94fa670f39430cdb87424f654b58f2', 11157, 0, '37.00', 0, '9.00', '1572682532', 0, '2019-11-02 16:15:29', '', '0', '0', '2019-10-31 14:44:05', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11171, '15168578545', '刘涛', '510722198608223054', 1, 'f1537b3d90e75261028e0bffdd0a00b0', 'f1537b3d90e75261028e0bffdd0a00b0', 11159, 8001, '0.00', 2000, '67.60', '1572686700', 0, '2019-11-02 10:15:34', '', '0', '0', '2019-10-31 15:02:14', NULL, NULL, '2000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11172, '15832962964', '钱士辰', '1322197902010436', 1, 'e6f0b8f503aef8324e6c218097f692a8', 'e6f0b8f503aef8324e6c218097f692a8', 11140, 8001, '7664.30', 3200, '7738.60', '1572708356', 0, '2019-11-02 07:39:33', '', '0', '0', '2019-10-31 15:56:11', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11173, '13731121563', '付明利', '132201198112172662', 1, 'f4d6c1c42373f9079c352581d043aad5', 'f4d6c1c42373f9079c352581d043aad5', 11140, 8001, '103.00', 2200, '128.40', '1572710256', 0, '2019-11-02 00:04:59', '', '0', '0', '2019-10-31 18:09:52', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11174, '13863313340', '何召军', '370729197601132313', 1, '3baf3224808cab8a3189e78586528362', '3baf3224808cab8a3189e78586528362', 11137, 0, '37.00', 0, '9.00', '1572650213', 0, '2019-11-02 07:16:55', '', '0', '0', '2019-10-31 18:11:40', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11175, '15021550903', '徐伟成', '422126197807067515', 1, '87bd39d4975acfba581c61716d974474', '87bd39d4975acfba581c61716d974474', 11118, 8001, '37.00', 1000, '9.00', '1572703997', 0, '2019-11-02 03:02:24', '', '0', '0', '2019-10-31 19:10:34', NULL, NULL, '1000', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11176, '13250322500', '无', '无', 0, '6dd1ee3faf3f2081767c81757a406bf5', '6dd1ee3faf3f2081767c81757a406bf5', 11160, 0, '28.00', 0, '0.00', '1572605692', 0, '0', '', '0', '0', '2019-10-31 19:16:19', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11177, '13582362641', '程永江', '132326197702230517', 1, '24169c504df2f02a6edf136450947193', '8ac4e3ba0f5cbcaba47e5263fcf23718', 11140, 8001, '0.10', 13300, '210.70', '1572688536', 0, '2019-11-02 09:37:34', '', '0', '0', '2019-10-31 21:16:08', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11178, '17603246346', '龙官蜜', '500228199703066345', 1, 'ce296e37ebf28ea88c09fa692fee9ec8', 'ce296e37ebf28ea88c09fa692fee9ec8', 11142, 8001, '65.80', 300, '13.80', '1572685858', 0, '2019-11-02 17:09:47', '', '0', '0', '2019-10-31 22:12:05', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11179, '15340526260', '无', '无', 0, '4cae4f86d6220c803f698f3c9e0bbc4a', '4cae4f86d6220c803f698f3c9e0bbc4a', 11142, 0, '28.00', 0, '0.00', '1572534636', 0, '0', '', '0', '0', '2019-10-31 23:09:08', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11180, '13111131751', '张翠连', '141124197201270040', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '34.00', 0, '6.00', '1572704405', 0, '2019-11-02 11:18:11', '', '0', '0', '2019-11-01 06:04:56', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11181, '17725146215', '蔡长久', '51223198203291796', 1, '4cae4f86d6220c803f698f3c9e0bbc4a', '003b5a71ba7684194177ff70ab6034e3', 11142, 8001, '5.00', 100, '68.80', '1572708948', 0, '2019-11-02 06:55:03', '', '0', '0', '2019-11-01 08:25:53', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11182, '17806791533', '李永玲', '441226198201244321', 1, '66a5d46bb1af4ba85dbf8e35da02e10e', '66a5d46bb1af4ba85dbf8e35da02e10e', 11098, 8001, '0.00', 100, '6.00', '1572688312', 0, '2019-11-02 08:46:13', '', '0', '0', '2019-11-01 11:19:11', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11183, '18487775450', '陈明华', '51302119510804621x', 1, '2f5335aef5ac40a900bbcb009761ec71', '2f5335aef5ac40a900bbcb009761ec71', 11098, 0, '31.00', 0, '3.00', '1572687189', 0, '2019-11-02 17:33:11', '', '0', '0', '2019-11-01 11:41:07', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11184, '15081724011', '王丽平', '130433199501161726', 1, '4af3c58026691a67c48a736ab6463177', '4af3c58026691a67c48a736ab6463177', 11122, 0, '34.00', 0, '6.00', '1572657590', 0, '2019-11-02 09:09:33', '', '0', '0', '2019-11-01 14:37:53', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11185, '13489699550', '钟力红', '350624198210012027', 1, '4a49ca5d2a7cbf5d92423002af15788d', '4a49ca5d2a7cbf5d92423002af15788d', 11165, 8001, '0.10', 2100, '42.10', '1572693233', 0, '2019-11-02 09:01:31', '', '0', '0', '2019-11-01 18:48:05', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11186, '15736149575', '陆美笑', '445262219821011164', 1, 'c2ec0568386ddc6babc29899c44f84b9', 'c2ec0568386ddc6babc29899c44f84b9', 0, 8001, '39.00', 100, '3.00', '1572682994', 0, '2019-11-02 16:16:54', '', '0', '0', '2019-11-01 20:52:52', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11187, '18796542850', '李德新', '320925198606176711', 1, '1c1adb061a08e72f3bbe3357d10eea69', '1c1adb061a08e72f3bbe3357d10eea69', 11181, 8001, '42.00', 1100, '6.00', '1572689919', 0, '2019-11-02 03:10:43', '', '0', '0', '2019-11-01 21:42:14', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11188, '13784413965', '师树勇', '132201198104250616', 1, 'f4d6c1c42373f9079c352581d043aad5', 'f4d6c1c42373f9079c352581d043aad5', 11173, 8001, '5.00', 1100, '8.00', '1572709767', 0, '2019-11-02 16:26:35', '', '0', '0', '2019-11-01 23:48:22', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11189, '13633294439', '乞炳根', '132201198008271011', 1, 'ca4a0a502aebe22995df9e96875fcb26', 'ca4a0a502aebe22995df9e96875fcb26', 11172, 8001, '8.00', 100, '3.00', '1572686140', 0, '2019-11-02 10:31:22', '', '0', '0', '2019-11-02 10:30:22', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11190, '15240357985', '叶金刚', '320922198210053978', 1, 'b1499f90b5c66f356676cbd80442016c', 'b8a3ee1f607d77d97e80dc51d8e0da66', 11131, 0, '31.00', 0, '3.00', '1572667115', 0, '2019-11-02 10:42:27', '', '0', '0', '2019-11-02 10:41:29', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11191, '15061894982', '刘军', '320925197401236130', 1, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 11187, 0, '31.00', 0, '3.00', '1572668320', 0, '2019-11-02 11:45:42', '', '0', '0', '2019-11-02 11:45:00', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11192, '17503039362', '黄丽贤', '522701198908011944', 1, '445a88daebdd23d6bf47c1314cafb66e', '445a88daebdd23d6bf47c1314cafb66e', 11108, 0, '31.00', 0, '3.00', '1572705443', 0, '2019-11-02 12:51:37', '', '0', '0', '2019-11-02 12:50:45', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11193, '13342605935', '杨晓琪', '522626198211283618', 1, '434b678a42e3ecc64cdc655f84db81a6', '434b678a42e3ecc64cdc655f84db81a6', 11159, 8001, '0.00', 2000, '3.00', '1572683237', 0, '2019-11-02 16:14:12', '', '0', '0', '2019-11-02 15:40:10', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11194, '15371198811', '李玉权', '320925198108136717', 1, '8c6e60521c0fcff16d4b68eadee86a11', '8c6e60521c0fcff16d4b68eadee86a11', 11187, 0, '31.00', 0, '3.00', '1572686518', 0, '2019-11-02 17:21:42', '', '0', '0', '2019-11-02 17:20:53', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11195, '15041618708', '武少忠', '210724197012031219', 1, 'ed67c4f2317154944d7244a5c5e384f9', 'ed67c4f2317154944d7244a5c5e384f9', 11130, 0, '31.00', 0, '3.00', '1572692546', 0, '2019-11-02 18:49:06', '', '0', '0', '2019-11-02 18:47:56', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11196, '18732974321', '马龙', '132201198811092477', 1, '8e75dfbe1b7ae0762a04b5b824bf5acc', '8e75dfbe1b7ae0762a04b5b824bf5acc', 11188, 8001, '8.00', 100, '3.00', '1572709163', 0, '2019-11-02 19:46:59', '', '0', '0', '2019-11-02 19:45:57', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11197, '19922724206', '谷中菊', '500228198509261804', 1, '04b4035bc8305ce5ab95d7789f9d94f9', '04b4035bc8305ce5ab95d7789f9d94f9', 11181, 8001, '39.00', 100, '3.00', '1572698510', 0, '2019-11-02 20:25:11', '', '0', '0', '2019-11-02 20:24:09', NULL, NULL, '0', NULL, NULL, '0', 0, '', '', 0, '', 0),
(11198, '18765560145', '魏向芸', '372421197101070026', 1, '96e79218965eb72c92a549dd5a330112', '200820e3227815ed1756a6b531e7e0d2', 11131, 8001, '31.00', 0, '3.00', '1582194696', 0, '2019-11-02 21:25:04', '', '0', '0', '2019-11-02 21:24:22', NULL, '', '0', NULL, NULL, '0', 0, '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user_points`
--

CREATE TABLE IF NOT EXISTS `user_points` (
  `id` int(10) unsigned NOT NULL COMMENT '序号',
  `uid` char(10) NOT NULL COMMENT '会员ID',
  `points` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型, 1: 收入, 2: 支出',
  `source` varchar(255) NOT NULL DEFAULT '未知' COMMENT '积分来源',
  `reason` varchar(255) NOT NULL DEFAULT '无' COMMENT '摘要',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='积分表';

--
-- 转存表中的数据 `user_points`
--

INSERT INTO `user_points` (`id`, `uid`, `points`, `type`, `source`, `reason`, `time`) VALUES
(1, 'V999999', '8.00', 1, '未知', '无', '2025-01-18 09:56:42'),
(2, 'V666666', '3.00', 1, '未知', '无', '2025-01-18 14:06:44'),
(5, 'D446669', '3.00', 1, '未知', '无', '2025-01-18 23:46:22'),
(6, 'V333333', '2.00', 1, '未知', '无', '2025-01-27 13:47:40'),
(7, 'V111111', '2.00', 1, '未知', '无', '2025-01-28 10:45:24');

-- --------------------------------------------------------

--
-- 表的结构 `user_rewards`
--

CREATE TABLE IF NOT EXISTS `user_rewards` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `walk_steps` int(11) NOT NULL COMMENT '步数',
  `reward_points` int(11) NOT NULL COMMENT '奖励积分',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户积分奖励记录表';

-- --------------------------------------------------------

--
-- 表的结构 `user_steps`
--

CREATE TABLE IF NOT EXISTS `user_steps` (
  `id` int(11) NOT NULL,
  `uid` varchar(11) NOT NULL,
  `username` char(11) DEFAULT NULL,
  `inviter` char(11) DEFAULT NULL,
  `steps` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user_steps`
--

INSERT INTO `user_steps` (`id`, `uid`, `username`, `inviter`, `steps`, `date`, `update_at`) VALUES
(6, 'D446669', '13111111112', '19999999999', 571, '2025-01-18', '2025-01-18 09:01:50'),
(7, 'D446669', '13111111112', '19999999999', 328, '2025-01-26', '2025-01-26 14:27:44'),
(8, 'V111111', '11111111111', NULL, 419, '2025-01-28', '2025-01-28 02:47:43'),
(9, 'D446669', '13111111112', '19999999999', 1037, '2025-01-28', '2025-01-28 09:28:48'),
(10, 'D446669', '13111111112', '19999999999', 0, '2025-01-29', '2025-01-29 03:23:59'),
(11, 'V111111', '11111111111', NULL, 173, '2025-01-29', '2025-01-29 03:57:02'),
(12, 'V666666', '16666666666', NULL, 336, '2025-01-30', '2025-01-30 00:58:49'),
(13, 'D446669', '13111111112', '19999999999', 1, '2025-01-30', '2025-01-30 08:56:03'),
(14, 'D446669', '13111111112', '19999999999', 912, '2025-01-31', '2025-01-30 18:56:02'),
(15, 'D446669', '13111111112', '19999999999', 569, '2025-02-01', '2025-02-01 03:38:42'),
(16, 'D446669', '13111111112', '19999999999', 721, '2025-02-02', '2025-02-02 09:52:54'),
(17, 'D446669', '13111111112', '19999999999', 2572, '2025-02-03', '2025-02-02 21:48:18'),
(18, 'V222222', '12222222222', NULL, 2657, '2025-02-03', '2025-02-03 11:16:17'),
(19, 'V222222', '12222222222', NULL, 2657, '2025-02-04', '2025-02-04 04:25:35'),
(20, 'D446669', '13111111112', '19999999999', 49, '2025-02-04', '2025-02-04 04:31:51'),
(21, 'V111111', '11111111111', NULL, 158, '2025-02-04', '2025-02-04 08:45:23'),
(22, 'D446669', '13111111112', '19999999999', 6036, '2025-02-05', '2025-02-04 17:01:28'),
(23, 'V333333', '13333333333', NULL, 186, '2025-02-05', '2025-02-05 01:26:57'),
(24, 'V666666', '16666666666', NULL, 155, '2025-02-05', '2025-02-05 01:51:49');

-- --------------------------------------------------------

--
-- 表的结构 `user_tokens`
--

CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_plugin_installed` tinyint(1) DEFAULT '0',
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `token`, `expires_at`, `created_at`, `updated_at`, `is_plugin_installed`, `username`) VALUES
(2, 2, 'a3c5f093f6e7a1c2b48c72e423a1ef62d0c3a9b7e5d8f4c3a6e7f2d1b3e4c5f0', NULL, '2025-01-21 11:19:10', NULL, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `uuid`
--

CREATE TABLE IF NOT EXISTS `uuid` (
  `id` char(32) NOT NULL COMMENT '具体编号',
  `type` tinyint(4) NOT NULL COMMENT '业务类型'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='UUID';

--
-- 转存表中的数据 `uuid`
--

INSERT INTO `uuid` (`id`, `type`) VALUES
('A678795', 1),
('B585396', 1),
('C905836', 1),
('D446669', 1),
('E278879', 1),
('E696664', 1),
('F25012811422334', 8),
('H598397', 1),
('H613405', 1),
('I699630', 1),
('J110235', 1),
('J552469', 1),
('L25013169629632', 8),
('M610648', 1),
('N222195', 1),
('N323164', 1),
('N480698', 1),
('P444160', 1),
('P855722', 1),
('Q118619', 1),
('R157396', 1),
('R343998', 1),
('V467892', 1),
('V592451', 1),
('W25011956873137', 8),
('W342585', 1),
('W915179', 1),
('X177150', 1),
('X25020535566975', 8),
('X481414', 1),
('X867446', 1),
('Y855168', 1),
('Z610091', 1),
('Z805187', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
  `id` int(11) NOT NULL COMMENT '系统编号',
  `username` char(11) NOT NULL COMMENT '用户账户',
  `money` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '可用货币，账户余额',
  `deposit` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '冻结货币，账户存款',
  `score` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '可用积分',
  `score_deposit` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '冻结积分',
  `spend` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '商城消费额',
  `profit` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '矿机收益',
  `team_profit` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '团队矿机收益',
  `bonus` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '全球分红',
  `trade` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '交易分红',
  `sell` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '成功卖出的数量',
  `buy` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '成功买入的数量',
  `ts_in` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '转账转入的数量',
  `ts_out` decimal(30,12) NOT NULL DEFAULT '0.000000000000' COMMENT '转账转出的数量',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='钱包';

--
-- 转存表中的数据 `wallet`
--

INSERT INTO `wallet` (`id`, `username`, `money`, `deposit`, `score`, `score_deposit`, `spend`, `profit`, `team_profit`, `bonus`, `trade`, `sell`, `buy`, `ts_in`, `ts_out`, `create_at`, `update_at`) VALUES
(1, '19999999999', '0.000000000000', '0.000000000000', '20.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 16:58:20', '2025-01-17 16:58:20'),
(2, '11111111111', '50.000000000000', '0.000000000000', '2.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 16:59:18', '2025-01-28 02:45:42'),
(3, '12222222222', '50.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:15:08', '2025-01-19 03:13:37'),
(4, '13333333333', '50.000000000000', '0.000000000000', '2.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:15:20', '2025-01-31 04:43:47'),
(5, '16666666666', '50.000000000000', '0.000000000000', '2.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:15:31', '2025-02-05 02:13:43'),
(6, '17777777777', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:15:41', '2025-01-17 17:15:41'),
(7, '18888888888', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:15:52', '2025-01-17 17:15:52'),
(8, '16677777777', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:04', '2025-01-17 17:16:04'),
(9, '16688888888', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:17', '2025-01-17 17:16:17'),
(10, '16699999999', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:26', '2025-01-17 17:16:26'),
(11, '17766666666', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:35', '2025-01-17 17:16:35'),
(12, '17788888888', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:43', '2025-01-17 17:16:43'),
(13, '17799999999', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:16:52', '2025-01-17 17:16:52'),
(14, '18866666666', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:02', '2025-01-17 17:17:02'),
(15, '18877777777', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:11', '2025-01-17 17:17:11'),
(16, '18899999999', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:19', '2025-01-17 17:17:19'),
(17, '19966666666', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:32', '2025-01-17 17:17:32'),
(18, '19977777777', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:41', '2025-01-17 17:17:41'),
(19, '19988888888', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-17 17:17:52', '2025-01-17 17:17:52'),
(20, '13111111112', '10000.000000000000', '500.000000000000', '5.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 02:59:30', '2025-01-18 02:59:30'),
(21, '15971016808', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 05:18:00', '2025-01-18 05:18:00'),
(22, '15530807512', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 05:18:12', '2025-01-18 05:18:12'),
(23, '18727082107', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 05:19:42', '2025-01-18 05:19:42'),
(24, '18632558605', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 05:23:27', '2025-01-18 05:23:27'),
(25, '19969799233', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 05:35:14', '2025-01-18 05:35:14'),
(26, '18204620594', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 06:11:33', '2025-01-18 06:11:33'),
(27, '17629261573', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-18 06:17:55', '2025-01-18 06:17:55'),
(28, '19393141093', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-19 03:20:18', '2025-01-19 03:20:18'),
(29, '18290186822', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-19 03:24:31', '2025-01-19 03:24:31'),
(30, '15178968728', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '2025-01-19 17:24:08', '2025-01-19 17:24:08');

-- --------------------------------------------------------

--
-- 表的结构 `withdrawal`
--

CREATE TABLE IF NOT EXISTS `withdrawal` (
  `id` int(11) NOT NULL,
  `rid` varchar(20) DEFAULT NULL,
  `out_trade_no` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bank_card` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_address` varchar(100) NOT NULL,
  `remark` text,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL COMMENT '0: 待处理, 1: 已通过, 2: 已拒绝',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `rid`, `out_trade_no`, `username`, `account_name`, `amount`, `bank_card`, `bank_name`, `bank_address`, `remark`, `create_at`, `status`, `create_time`) VALUES
(1, NULL, '', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:10:02', 'pending', '2025-01-15 15:10:02'),
(2, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:14:12', 'pending', '2025-01-15 15:14:12'),
(3, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:17:59', 'pending', '2025-01-15 15:17:59'),
(4, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:21:35', 'pending', '2025-01-15 15:21:35'),
(5, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:26:14', 'pending', '2025-01-15 15:26:14'),
(6, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:31:52', 'pending', '2025-01-15 15:31:52'),
(7, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:33:52', 'pending', '2025-01-15 15:33:52'),
(8, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:34:35', 'pending', '2025-01-15 15:34:35'),
(9, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:35:29', 'pending', '2025-01-15 15:35:29'),
(10, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 15:36:15', 'pending', '2025-01-15 15:36:15'),
(11, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 16:24:02', 'pending', '2025-01-15 16:24:02'),
(12, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 16:32:16', 'pending', '2025-01-15 16:32:16'),
(13, NULL, 'tx_6787c76463070', '13111111112', '', '100.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 16:51:37', 'pending', '2025-01-15 16:51:37'),
(14, NULL, 'tx_6787eb3971b90', '13111111112', '', '200.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 17:10:31', 'pending', '2025-01-15 17:10:31'),
(15, NULL, 'tx_6787eb3971b90', '13111111112', '', '200.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 17:18:22', 'pending', '2025-01-15 17:18:22'),
(16, NULL, 'tx_6787eb3971b90', '13111111112', '', '200.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 17:18:59', 'pending', '2025-01-15 17:18:59'),
(17, NULL, 'tx_6787ee0a24ae2', '13111111112', '', '200.00', '1234 1234 1234 1234', 'vitebank', 'ddd ', NULL, '2025-01-15 17:22:07', 'pending', '2025-01-15 17:22:07'),
(18, NULL, 'tx6787fe1b68b3a', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:28:42', 'pending', '2025-01-15 18:28:42'),
(19, NULL, 'tx6787fe1b68b3a', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:29:31', 'pending', '2025-01-15 18:29:31'),
(20, NULL, 'tx6787fe1b68b3a', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:31:05', 'pending', '2025-01-15 18:31:05'),
(21, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:33:04', 'pending', '2025-01-15 18:33:04'),
(22, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:33:58', 'pending', '2025-01-15 18:33:58'),
(23, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:40:53', 'pending', '2025-01-15 18:40:53'),
(24, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:46:07', 'pending', '2025-01-15 18:46:07'),
(25, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:47:06', 'pending', '2025-01-15 18:47:06'),
(26, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:51:24', 'pending', '2025-01-15 18:51:24'),
(27, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:56:11', 'pending', '2025-01-15 18:56:11'),
(28, NULL, 'tx6787ff16b5698', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-15 18:56:37', 'pending', '2025-01-15 18:56:37'),
(29, NULL, 'tx67884bb91052e', '13111111112', '张三丰', '300.00', '1234564132456125', '工商银行', '北京', NULL, '2025-01-15 23:59:18', 'pending', '2025-01-15 23:59:18'),
(30, NULL, 'tx67884bb91052e', '13111111112', '张三丰', '300.00', '1234564132456125', '工商银行', '北京', NULL, '2025-01-16 00:46:54', 'pending', '2025-01-16 00:46:54'),
(31, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 01:41:13', 'pending', '2025-01-16 01:41:13'),
(32, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 01:44:24', 'pending', '2025-01-16 01:44:24'),
(33, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 02:04:36', 'pending', '2025-01-16 02:04:36'),
(34, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 02:05:30', 'pending', '2025-01-16 02:05:30'),
(35, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 02:07:39', 'pending', '2025-01-16 02:07:39'),
(36, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 02:14:04', 'pending', '2025-01-16 02:14:04'),
(37, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:05:59', 'pending', '2025-01-16 03:05:59'),
(38, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:08:33', 'pending', '2025-01-16 03:08:33'),
(39, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:12:39', 'pending', '2025-01-16 03:12:39'),
(40, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:15:55', 'pending', '2025-01-16 03:15:55'),
(41, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:16:44', 'pending', '2025-01-16 03:16:44'),
(42, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:30:14', 'pending', '2025-01-16 03:30:14'),
(43, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:34:42', 'pending', '2025-01-16 03:34:42'),
(44, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:35:30', 'pending', '2025-01-16 03:35:30'),
(45, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:37:18', 'pending', '2025-01-16 03:37:18'),
(46, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:38:21', 'pending', '2025-01-16 03:38:21'),
(47, NULL, 'tx678863a6de600', '13111111112', '攀枝花', '101.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 03:38:53', 'pending', '2025-01-16 03:38:53'),
(48, NULL, 'tx678880a4428fd', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:44:59', 'pending', '2025-01-16 03:44:59'),
(49, NULL, 'tx678880a4428fd', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:47:23', 'pending', '2025-01-16 03:47:23'),
(50, NULL, 'tx678880a4428fd', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:48:23', 'pending', '2025-01-16 03:48:23'),
(51, NULL, 'tx678880a4428fd', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:49:31', 'pending', '2025-01-16 03:49:31'),
(52, NULL, 'tx6788824d8eea8', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:51:58', 'pending', '2025-01-16 03:51:58'),
(53, NULL, 'tx6788824d8eea8', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', 'vitebank', '中国银行', NULL, '2025-01-16 03:52:39', 'pending', '2025-01-16 03:52:39'),
(54, NULL, 'tx6788824d8eea8', '13111111112', '攀枝花', '100.00', '6223421837743708107', 'vitebank', '中国银行', NULL, '2025-01-16 03:53:35', 'pending', '2025-01-16 03:53:35'),
(55, NULL, 'tx6788824d8eea8', '13111111112', '攀枝花', '100.00', '6223421837743708107', 'vitebank', '中国银行', NULL, '2025-01-16 03:58:54', 'pending', '2025-01-16 03:58:54'),
(56, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 04:00:26', 'pending', '2025-01-16 04:00:26'),
(57, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 04:17:07', 'pending', '2025-01-16 04:17:07'),
(58, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '1234 1234 1234 1234', '中国银行', '中国银行', NULL, '2025-01-16 04:18:21', 'pending', '2025-01-16 04:18:21'),
(59, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 04:18:58', 'pending', '2025-01-16 04:18:58'),
(60, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 04:21:39', 'pending', '2025-01-16 04:21:39'),
(61, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 04:29:51', 'pending', '2025-01-16 04:29:51'),
(62, NULL, 'tx67888440af0a9', '13111111112', '攀枝花', '100.00', '6223421837743708107', '中国银行', '中国银行', NULL, '2025-01-16 04:31:53', 'pending', '2025-01-16 04:31:53'),
(63, NULL, 'tx67888d164c8bf', '13111111112', 'John', '100.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 04:38:38', 'pending', '2025-01-16 04:38:38'),
(64, NULL, 'tx67888d164c8bf', '13111111112', 'John', '10.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 04:40:22', 'pending', '2025-01-16 04:40:22'),
(65, NULL, 'tx67888d164c8bf', '13111111112', 'John', '20.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 04:43:46', 'pending', '2025-01-16 04:43:46'),
(66, NULL, 'tx67888eb7a24ce', '13111111112', 'Johns', '20.00', '6223421837743708107', 'vitebank', 'kkk', NULL, '2025-01-16 04:46:16', 'pending', '2025-01-16 04:46:16'),
(67, NULL, 'tx67888fa8d9c0d', '13111111112', 'king', '1.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 04:49:11', 'pending', '2025-01-16 04:49:11'),
(68, NULL, 'tx67888fa8d9c0d', '13111111112', 'king', '101.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 05:01:11', 'pending', '2025-01-16 05:01:11'),
(69, NULL, 'tx67888fa8d9c0d', '13111111112', 'king', '50.00', '6223421837743708107', 'vitebank', 'ddd ', NULL, '2025-01-16 05:04:37', 'pending', '2025-01-16 05:04:37');

-- --------------------------------------------------------

--
-- 表的结构 `withdraw_requests`
--

CREATE TABLE IF NOT EXISTS `withdraw_requests` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `out_trade_no` varchar(32) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `subbranch` varchar(100) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `cardnumber` varchar(19) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `uid_2` (`uid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `inviter` (`inviter`) USING BTREE,
  ADD KEY `fk_team` (`team_id`);

--
-- Indexes for table `account_audit`
--
ALTER TABLE `account_audit`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category` (`category_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_publish_date` (`publish_date`);

--
-- Indexes for table `clock`
--
ALTER TABLE `clock`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `mid` (`mid`) USING BTREE,
  ADD KEY `date` (`create_at`) USING BTREE;

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `token` (`token`) USING BTREE;

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `agent` (`agent`) USING BTREE,
  ADD KEY `owner` (`owner`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `contract_log`
--
ALTER TABLE `contract_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `loop` (`loop`) USING BTREE,
  ADD KEY `action` (`action`) USING BTREE,
  ADD KEY `target` (`target`) USING BTREE,
  ADD KEY `ratio` (`ratio`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE;

--
-- Indexes for table `contract_percent`
--
ALTER TABLE `contract_percent`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `cid_username_loop` (`cid`,`username`,`loop`) USING BTREE,
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `loop` (`loop`) USING BTREE,
  ADD KEY `ratio` (`ratio`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `hit` (`hit`) USING BTREE,
  ADD KEY `reward` (`reward`) USING BTREE,
  ADD KEY `reward_type` (`reward_type`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE;

--
-- Indexes for table `funding`
--
ALTER TABLE `funding`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sort` (`sort`) USING BTREE,
  ADD KEY `visible` (`visible`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `owner` (`owner`) USING BTREE,
  ADD KEY `catalog` (`catalog`) USING BTREE,
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `people` (`people`) USING BTREE,
  ADD KEY `count` (`count`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `funding_log`
--
ALTER TABLE `funding_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fid` (`fid`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `action` (`action`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `money` (`money`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `global_bonus`
--
ALTER TABLE `global_bonus`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `date` (`date`) USING BTREE;

--
-- Indexes for table `imtoken`
--
ALTER TABLE `imtoken`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tid` (`tid`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `ip` (`ip`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE;

--
-- Indexes for table `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_prizes`
--
ALTER TABLE `lottery_prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_records`
--
ALTER TABLE `lottery_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prize_id` (`prize_id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `mid` (`mid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `product` (`product`) USING BTREE;

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `date` (`date`) USING BTREE;

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `oauth`
--
ALTER TABLE `oauth`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `oid` (`oid`) USING BTREE,
  ADD UNIQUE KEY `platform_appid_openid` (`platform`,`appid`,`openid`) USING BTREE,
  ADD UNIQUE KEY `platform_appid_unionid` (`platform`,`appid`,`unionid`) USING BTREE,
  ADD UNIQUE KEY `platform_appid_openid_username` (`platform`,`appid`,`openid`,`username`) USING BTREE,
  ADD UNIQUE KEY `platform_appid_unionid_username` (`platform`,`appid`,`unionid`,`username`) USING BTREE,
  ADD KEY `platform` (`platform`) USING BTREE,
  ADD KEY `appid` (`appid`) USING BTREE,
  ADD KEY `openid` (`openid`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `oid` (`oid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `seller` (`seller`) USING BTREE,
  ADD KEY `buyer` (`buyer`) USING BTREE,
  ADD KEY `product` (`product`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_info`
--
ALTER TABLE `platform_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool`
--
ALTER TABLE `pool`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `action` (`action`) USING BTREE,
  ADD KEY `prop` (`prop`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE;

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `idcard` (`idcard`) USING BTREE,
  ADD KEY `province` (`province`) USING BTREE,
  ADD KEY `city` (`city`) USING BTREE,
  ADD KEY `county` (`county`) USING BTREE;

--
-- Indexes for table `punch`
--
ALTER TABLE `punch`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `punch_count`
--
ALTER TABLE `punch_count`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `punch_log`
--
ALTER TABLE `punch_log`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `punch_money`
--
ALTER TABLE `punch_money`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `punch_order`
--
ALTER TABLE `punch_order`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `rid_currency` (`rid`,`currency`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `currency` (`currency`) USING BTREE,
  ADD KEY `business` (`business`) USING BTREE,
  ADD KEY `now` (`now`) USING BTREE;

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`code`) USING BTREE;

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `sign_records`
--
ALTER TABLE `sign_records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mobile` (`mobile`) USING BTREE;

--
-- Indexes for table `steps_data`
--
ALTER TABLE `steps_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `catalog` (`catalog`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `divide` (`divide`) USING BTREE,
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `team_leader` (`team_leader`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `token` (`token`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tid` (`tid`) USING BTREE,
  ADD KEY `owner` (`owner`) USING BTREE,
  ADD KEY `target` (`target`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `trade_audit`
--
ALTER TABLE `trade_audit`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tid` (`tid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `trade_log`
--
ALTER TABLE `trade_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tid` (`tid`) USING BTREE,
  ADD KEY `secret` (`secret`) USING BTREE;

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tid` (`tid`) USING BTREE,
  ADD KEY `owner` (`owner`) USING BTREE,
  ADD KEY `target` (`target`) USING BTREE,
  ADD KEY `create_at` (`create_at`) USING BTREE,
  ADD KEY `update_at` (`update_at`) USING BTREE;

--
-- Indexes for table `upgrade`
--
ALTER TABLE `upgrade`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username_level` (`username`,`level`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_points`
--
ALTER TABLE `user_points`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_uid` (`uid`) USING BTREE;

--
-- Indexes for table `user_rewards`
--
ALTER TABLE `user_rewards`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `user_steps`
--
ALTER TABLE `user_steps`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uniq_uid_date` (`uid`,`date`) USING BTREE;

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `uuid`
--
ALTER TABLE `uuid`
  ADD PRIMARY KEY (`id`,`type`) USING BTREE;

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `account_audit`
--
ALTER TABLE `account_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clock`
--
ALTER TABLE `clock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `contract_log`
--
ALTER TABLE `contract_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `contract_percent`
--
ALTER TABLE `contract_percent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `funding`
--
ALTER TABLE `funding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `funding_log`
--
ALTER TABLE `funding_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `global_bonus`
--
ALTER TABLE `global_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `imtoken`
--
ALTER TABLE `imtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lottery_prizes`
--
ALTER TABLE `lottery_prizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lottery_records`
--
ALTER TABLE `lottery_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oauth`
--
ALTER TABLE `oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=496;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `platform_info`
--
ALTER TABLE `platform_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pool`
--
ALTER TABLE `pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `punch`
--
ALTER TABLE `punch`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `punch_count`
--
ALTER TABLE `punch_count`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `punch_log`
--
ALTER TABLE `punch_log`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `punch_money`
--
ALTER TABLE `punch_money`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `punch_order`
--
ALTER TABLE `punch_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sign_records`
--
ALTER TABLE `sign_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `steps_data`
--
ALTER TABLE `steps_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `trade_audit`
--
ALTER TABLE `trade_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `trade_log`
--
ALTER TABLE `trade_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号';
--
-- AUTO_INCREMENT for table `upgrade`
--
ALTER TABLE `upgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',AUTO_INCREMENT=11203;
--
-- AUTO_INCREMENT for table `user_points`
--
ALTER TABLE `user_points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_rewards`
--
ALTER TABLE `user_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_steps`
--
ALTER TABLE `user_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统编号',AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 限制导出的表
--

--
-- 限制表 `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);

--
-- 限制表 `company_users`
--
ALTER TABLE `company_users`
  ADD CONSTRAINT `company_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- 限制表 `lottery_records`
--
ALTER TABLE `lottery_records`
  ADD CONSTRAINT `lottery_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `company_users` (`id`),
  ADD CONSTRAINT `lottery_records_ibfk_2` FOREIGN KEY (`prize_id`) REFERENCES `lottery_prizes` (`id`);

--
-- 限制表 `recharge`
--
ALTER TABLE `recharge`
  ADD CONSTRAINT `recharge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- 限制表 `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- 限制表 `steps_data`
--
ALTER TABLE `steps_data`
  ADD CONSTRAINT `steps_data_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- 限制表 `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`team_leader`) REFERENCES `account` (`id`);

--
-- 限制表 `user_points`
--
ALTER TABLE `user_points`
  ADD CONSTRAINT `fk_user_points_uid` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
