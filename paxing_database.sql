-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-06-14 12:46:21
-- 服务器版本： 10.4.27-MariaDB
-- PHP 版本： 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `paxing_database`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `admin_account` int(11) NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) DEFAULT NULL COMMENT '管理员密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_account`, `admin_password`) VALUES
(720, 'lyd200107200'),
(1001, '123456'),
(1002, '123456'),
(1003, '123456');

-- --------------------------------------------------------

--
-- 表的结构 `class_order`
--

CREATE TABLE `class_order` (
  `class_order_id` int(11) NOT NULL COMMENT '报名表id',
  `class_id` int(11) DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) DEFAULT NULL COMMENT '会员姓名',
  `member_account` int(11) DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) DEFAULT NULL COMMENT '开课时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `class_order`
--

INSERT INTO `class_order` (`class_order_id`, `class_id`, `class_name`, `coach`, `member_name`, `member_account`, `class_begin`) VALUES
(17, 1, '增肌', '增肌教练', '李瀛东', 202111766, '2021年1月1日 15:00'),
(19, 2001, '跑步', '小明', '张三', 202009867, '2023-6月-12'),
(20, 2004, '跑步', '李教练', '张三', 202009867, '2023-6-15'),
(21, 2002, '篮球', '小王', '李瀛东', 202111766, '2023-6-12'),
(22, 2110, '全身放松', '陈教练', '李弈成', 202345052, '2023年6月21号');

-- --------------------------------------------------------

--
-- 表的结构 `class_table`
--

CREATE TABLE `class_table` (
  `class_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程id',
  `class_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) DEFAULT NULL COMMENT '教练'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `class_table`
--

INSERT INTO `class_table` (`class_id`, `class_name`, `class_begin`, `class_time`, `coach`) VALUES
(1, '增肌', '2021年1月1日 15:00', '60分钟', '增肌教练'),
(2001, '跑步', '2023-6月-12', '120', '小明'),
(2002, '篮球', '2023-6-12', '120mins', '小王'),
(2003, '足球', '2023-6-24', '60mins', '刘教练'),
(2004, '跑步', '2023-6-15', '30mins', '李教练'),
(2110, '全身放松', '2023年6月21号', '120', '陈教练');

-- --------------------------------------------------------

--
-- 表的结构 `employee`
--

CREATE TABLE `employee` (
  `employee_account` int(11) NOT NULL COMMENT '员工账号',
  `employee_name` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) DEFAULT NULL COMMENT '员工性别',
  `employee_age` int(11) DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) DEFAULT NULL COMMENT '备注信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `employee`
--

INSERT INTO `employee` (`employee_account`, `employee_name`, `employee_gender`, `employee_age`, `entry_time`, `staff`, `employee_message`) VALUES
(101030470, '王女士', '女', 30, '2023-06-12', '前台', '      认真！'),
(101034208, '保洁2', '女', 48, '2010-08-01', '保洁员', '保洁'),
(202315553, '李先生', '男', 30, '2023-06-13', '教练', '      专业健身教练');

-- --------------------------------------------------------

--
-- 表的结构 `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL COMMENT '器材id',
  `equipment_name` varchar(255) DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) DEFAULT NULL COMMENT '器材备注信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `equipment_name`, `equipment_location`, `equipment_status`, `equipment_message`) VALUES
(1, '哑铃1', '1号房间', '正常', ''),
(3, '跑步机1', '2号房间', '维修中', '联系厂家维修'),
(5, '跑步机3', '2号房间', '正常', ''),
(44, '哑铃', '5', '好', '很高'),
(45, '龙门架', '1号房间', '崭新出场', '完美品质'),
(46, '哑铃15kg', '1号房间', '略有磨损', '练起来吧');

-- --------------------------------------------------------

--
-- 表的结构 `vip`
--

CREATE TABLE `vip` (
  `VIP_account` int(11) NOT NULL COMMENT '会员账号',
  `VIP_password` varchar(255) DEFAULT '123456' COMMENT '会员密码',
  `VIP_name` varchar(255) DEFAULT NULL COMMENT '会员姓名',
  `VIP_gender` varchar(255) DEFAULT '' COMMENT '会员性别',
  `VIP_age` int(11) DEFAULT NULL COMMENT '会员年龄',
  `VIP_height` int(11) DEFAULT NULL COMMENT '会员身高',
  `VIP_weight` int(11) DEFAULT NULL COMMENT '会员体重',
  `VIP_phone` bigint(20) DEFAULT NULL COMMENT '会员电话',
  `VIP_time` date DEFAULT NULL COMMENT '办卡时间',
  `VIP_class` int(11) DEFAULT NULL COMMENT '购买课时',
  `VIP_next_class` int(11) DEFAULT NULL COMMENT '剩余课时'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `vip`
--

INSERT INTO `vip` (`VIP_account`, `VIP_password`, `VIP_name`, `VIP_gender`, `VIP_age`, `VIP_height`, `VIP_weight`, `VIP_phone`, `VIP_time`, `VIP_class`, `VIP_next_class`) VALUES
(202009867, '123456', '张三', '男', 20, 182, 60, 13515548482, '2020-06-05', 40, 40),
(202111766, '123456', '李瀛东', '男', 21, 180, 70, 18837111555, '2023-06-09', 12, 12),
(202126965, '123456', '刘海城', '男', 21, 180, 70, 18837111555, '2023-06-09', 20, 20),
(202136538, '123456', '李瀛东', '男', 20, 20, 20, 18837111555, '2023-06-11', 20, 20),
(202168751, '123456', 'hanye', '男', 5, 190, 80, 18838730897, '2023-06-12', 99, 99),
(202345052, '123456', '李弈成', '未知', 21, 190, 90, 17603004524, '2023-06-14', 9999, 9999);

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_account`) USING BTREE;

--
-- 表的索引 `class_order`
--
ALTER TABLE `class_order`
  ADD PRIMARY KEY (`class_order_id`) USING BTREE;

--
-- 表的索引 `class_table`
--
ALTER TABLE `class_table`
  ADD PRIMARY KEY (`class_id`) USING BTREE;

--
-- 表的索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_account`) USING BTREE;

--
-- 表的索引 `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`) USING BTREE;

--
-- 表的索引 `vip`
--
ALTER TABLE `vip`
  ADD PRIMARY KEY (`VIP_account`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `class_order`
--
ALTER TABLE `class_order`
  MODIFY `class_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报名表id', AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '器材id', AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
