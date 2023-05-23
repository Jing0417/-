/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : gumdatabase1

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001


*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `Admin_account` int NOT NULL COMMENT '管理员账号',
  `Admin_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`Admin_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1001, '123456');
INSERT INTO `admin` VALUES (1002, '123456');
INSERT INTO `admin` VALUES (1003, '123456');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS `class_order`;
CREATE TABLE `class_order`  (
  `Class_order_id` int NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `Class_id` int NULL DEFAULT NULL COMMENT '课程id',
  `Class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `Coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  `VIP_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `VIP_account` int NULL DEFAULT NULL COMMENT '会员账号',
  `Class_starttime` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`Class_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_order
-- ----------------------------
INSERT INTO `class_order` VALUES (1, 2, '瑜伽', '瑜伽教练', '李四', 202100788, '2023年5月2日 10:20');
INSERT INTO `class_order` VALUES (2, 2, '瑜伽', '瑜伽教练', '王五', 202132539, '2023年5月2日 10:20');
INSERT INTO `class_order` VALUES (3, 4, '运动康复', '运动康复教练', 'Mike', 202156754, '2023年5月2日 10:00');
INSERT INTO `class_order` VALUES (4, 1, '增肌', '增肌教练', 'Mike', 202156754, '2023年5月1日 15:00');
INSERT INTO `class_order` VALUES (5, 1, '增肌', '增肌教练', 'Tylor', 202183406, '2023年5月1日 15:00');
INSERT INTO `class_order` VALUES (6, 2, '瑜伽', '瑜伽教练', 'Tylor', 202183406, '2023年5月2日 10:20');
INSERT INTO `class_order` VALUES (7, 1, '增肌', '增肌教练', '李四', 202100788, '2023年5月1日 15:00');
INSERT INTO `class_order` VALUES (8, 1, '增肌', '增肌教练', '马六', 202186416, '2023年5月1日 15:00');
INSERT INTO `class_order` VALUES (9, 3, '减脂', '减脂教练', '马六', 202186416, '2023年5月6日 18:00');
INSERT INTO `class_order` VALUES (10, 3, '减脂', '减脂教练', 'Lily', 202123664, '2023年5月6日 18:00');
INSERT INTO `class_order` VALUES (11, 3, '减脂', '减脂教练', 'Emma', 202153468, '2023年5月6日 18:00');

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `Class_id` int NOT NULL DEFAULT 0 COMMENT '课程id',
  `Class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `Class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  `Class_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程时长',
  `Coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`Class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (1, '增肌', '2023年5月1日 15:00', '60分钟', '增肌教练');
INSERT INTO `class_table` VALUES (2, '瑜伽', '2023年5月2日 10:20', '90分钟', '瑜伽教练');
INSERT INTO `class_table` VALUES (3, '减脂', '2023年5月6日 18:00', '90分钟', '减脂教练');
INSERT INTO `class_table` VALUES (4, '运动康复', '2021年5月2日 10:00', '45分钟', '运动康复教练');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `Emp_account` int NOT NULL COMMENT '员工账号',
  `Emp_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `Emp_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工性别',
  `Emp_age` int NULL DEFAULT NULL COMMENT '员工年龄',
  `Emp_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `Emp_staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职务',
  `Emp_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`Emp_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (101034208, '保洁2', '女', 48, '2023-05-16', '保洁员', '');
INSERT INTO `employee` VALUES (101038721, '教练1', '女', 26, '2023-05-23', '健身教练', '健美冠军');
INSERT INTO `employee` VALUES (101045354, '教练4', '男', 24, '2023-05-05', '健身教练', '职业教练');
INSERT INTO `employee` VALUES (101053687, '教练3', '男', 30, '2023-05-09', '健身教练', '职业教练');
INSERT INTO `employee` VALUES (101058973, '保洁1', '女', 48, '2023-05-13', '保洁员', '模范员工');
INSERT INTO `employee` VALUES (101068283, '教练2', '男', 34, '2020-01-06', '健身教练', '职业教练');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `Equ_id` int NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `Equ_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材名称',
  `Equ_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材位置',
  `Equ_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材状态',
  `Equ_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材备注信息',
  PRIMARY KEY (`Equ_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '哑铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (2, '杠铃1', '2号房间', '损坏', '待维修');
INSERT INTO `equipment` VALUES (3, '跑步机1', '2号房间', '维修中', '联系厂家维修');
INSERT INTO `equipment` VALUES (4, '跑步机2', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (5, '跑步机3', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (6, '杠铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (7, '杠铃2', '1号房间', '正常', '');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `VIP_account` int NOT NULL COMMENT '会员账号',
  `VIP_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '123456' COMMENT '会员密码',
  `VIP_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `VIP_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '会员性别',
  `VIP_age` int NULL DEFAULT NULL COMMENT '会员年龄',
  `VIP_height` int NULL DEFAULT NULL COMMENT '会员身高',
  `VIP_weight` int NULL DEFAULT NULL COMMENT '会员体重',
  `VIP_phone` bigint NULL DEFAULT NULL COMMENT '会员电话',
  `Card_time` date NULL DEFAULT NULL COMMENT '办卡时间',
  `Card_class` int NULL DEFAULT NULL COMMENT '购买课时',
  `Card_next_class` int NULL DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`VIP_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (202009867, '123456', '张三', '女', 24, 182, 60, 13515548482, '2023-05-23', 40, 40);
INSERT INTO `member` VALUES (202100788, '123456', '李四', '男', 31, 178, 60, 13131554873, '2023-05-17', 50, 50);
INSERT INTO `member` VALUES (202106725, '123456', 'Tom', '男', 24, 178, 88, 13758784959, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202121345, '123456', 'Ava', '女', 28, 160, 40, 13754457488, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202123664, '123456', 'Lily', '女', 25, 165, 51, 15986457423, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202132539, '123456', '王五', '男', 31, 178, 60, 13154875489, '2023-05-23', 40, 40);
INSERT INTO `member` VALUES (202153468, '123456', 'Emma', '女', 25, 173, 44, 13786457124, '2023-05-23', 50, 50);
INSERT INTO `member` VALUES (202156754, '123456', 'Mike', '男', 36, 166, 67, 13786532448, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202176587, '123456', 'Jack', '男', 33, 177, 90, 13767546666, '2023-05-10', 30, 30);
INSERT INTO `member` VALUES (202183406, '123456', 'Tylor', '女', 19, 170, 60, 13786457488, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202186416, '123456', '马六', '女', 23, 160, 45, 13124576857, '2023-05-23', 30, 30);
INSERT INTO `member` VALUES (202189776, '123456', 'Chloe', '女', 27, 170, 50, 13986337489, '2021-03-23', 30, 30);

SET FOREIGN_KEY_CHECKS = 1;
