/*
 Navicat Premium Data Transfer

 Source Server         : lhc_edu
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : paxing_database

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 15/06/2023 18:37:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_account` int(11) NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (720, 'lyd200107200');
INSERT INTO `admin` VALUES (1001, '123456');
INSERT INTO `admin` VALUES (1002, '123456');
INSERT INTO `admin` VALUES (1003, '123456');
INSERT INTO `admin` VALUES (9036, 'lhc3223971');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS `class_order`;
CREATE TABLE `class_order`  (
  `class_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `class_id` int(11) DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会员姓名',
  `member_account` int(11) DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`class_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_order
-- ----------------------------
INSERT INTO `class_order` VALUES (17, 1, '增肌', '李教练', '李瀛东', 202111766, '2021-1-2 12:00');
INSERT INTO `class_order` VALUES (20, 2004, '跑步', '李教练', '张三', 202009867, '2023-6-24 12:00');
INSERT INTO `class_order` VALUES (21, 2002, '篮球', '王教练', '李瀛东', 202111766, '2023-1-2 24:00');
INSERT INTO `class_order` VALUES (22, 2110, '全身放松', '王教练', '李弈成', 202345052, '2023-6-24 3:00');
INSERT INTO `class_order` VALUES (23, 1, '增肌', '李教练', '张三', 202009867, '2021-1-2 12:00');
INSERT INTO `class_order` VALUES (24, 2002, '篮球', '王教练', '张三', 202009867, '2023-1-2 24:00');
INSERT INTO `class_order` VALUES (25, 2003, '足球', '王教练', '张三', 202009867, '2023-6-24 18:00');
INSERT INTO `class_order` VALUES (39, 1, '增肌', '李教练', '刘海城', 202126965, '2021-1-2 12:00');
INSERT INTO `class_order` VALUES (40, 2001, '跑步', '李教练', '刘海城', 202126965, '2023-1-2 24:00');
INSERT INTO `class_order` VALUES (41, 2003, '足球', '王教练', '刘海城', 202126965, '2023-6-24 18:00');

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `class_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (1, '增肌', '2021-1-2 12:00', '1', '李教练');
INSERT INTO `class_table` VALUES (2001, '跑步', '2023-1-2 24:00', '2', '李教练');
INSERT INTO `class_table` VALUES (2002, '篮球', '2023-1-2 24:00', '2', '王教练');
INSERT INTO `class_table` VALUES (2003, '足球', '2023-6-24 18:00', '1', '王教练');
INSERT INTO `class_table` VALUES (2004, '跑步', '2023-6-24 12:00', '2', '李教练');
INSERT INTO `class_table` VALUES (2110, '全身放松', '2023-6-24 3:00', '3', '王教练');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_account` int(11) NOT NULL COMMENT '员工账号',
  `employee_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工性别',
  `employee_age` int(11) DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`employee_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (101030470, '王教练', '女', 30, '2023-06-12', '教练', '      认真！');
INSERT INTO `employee` VALUES (101034208, '保洁1', '女', 48, '2010-08-01', '保洁员', '保洁');
INSERT INTO `employee` VALUES (202315553, '李教练', '男', 30, '2023-06-13', '教练', '专业健身教练');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '器材备注信息',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '哑铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (3, '跑步机1', '2号房间', '维修中', '联系厂家维修');
INSERT INTO `equipment` VALUES (5, '跑步机3', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (44, '哑铃', '5号房间', '正常', '很高');
INSERT INTO `equipment` VALUES (45, '龙门架', '1号房间', '正常', '完美品质');
INSERT INTO `equipment` VALUES (46, '哑铃15kg', '1号房间', '维修中', '练起来吧');

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip`  (
  `VIP_account` int(11) NOT NULL COMMENT '会员账号',
  `VIP_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456' COMMENT '会员密码',
  `VIP_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会员姓名',
  `VIP_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '会员性别',
  `VIP_age` int(11) DEFAULT NULL COMMENT '会员年龄',
  `VIP_height` int(11) DEFAULT NULL COMMENT '会员身高',
  `VIP_weight` int(11) DEFAULT NULL COMMENT '会员体重',
  `VIP_phone` bigint(20) DEFAULT NULL COMMENT '会员电话',
  `VIP_time` date DEFAULT NULL COMMENT '办卡时间',
  `VIP_class` int(11) DEFAULT NULL COMMENT '购买课时',
  `VIP_next_class` int(11) DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`VIP_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES (202309867, '123456', '张三', '男', 20, 182, 60, 13515548482, '2020-06-05', 40, 39);
INSERT INTO `vip` VALUES (202311766, '123456', '李瀛东', '男', 21, 180, 70, 18837111555, '2023-06-09', 12, 12);
INSERT INTO `vip` VALUES (202326965, '123456', '刘海城', '男', 21, 180, 70, 18837111555, '2023-06-09', 20, 20);
INSERT INTO `vip` VALUES (202336538, '123456', '李瀛东', '男', 20, 20, 20, 18837111555, '2023-06-11', 20, 19);
INSERT INTO `vip` VALUES (202345052, '123456', '李弈成', '未知', 21, 190, 90, 17603004524, '2023-06-14', 9999, 9999);
INSERT INTO `vip` VALUES (202368751, '123456', 'hanye', '男', 5, 190, 80, 18838730897, '2023-06-12', 99, 99);

SET FOREIGN_KEY_CHECKS = 1;
