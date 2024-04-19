/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : wineshop

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2022-01-17 11:25:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_us
-- ----------------------------
DROP TABLE IF EXISTS `about_us`;
CREATE TABLE `about_us` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_author` varchar(30) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_us
-- ----------------------------
INSERT INTO `about_us` VALUES ('1', 'zhengzhou', 'xinxi2', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('2', 'zhengzhou', 'xinxi', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('3', '无钱无权', '2', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('4', 'wwq', '4', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('5', '545', '44554', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('6', '4545', '222', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('7', '3333', '33', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('8', '444', '4', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('9', '555', '5', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('10', '4545', '6', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('11', '11', '7', null, null, null, null, null, null, null, null);
INSERT INTO `about_us` VALUES ('12', 'zhengzhou', 'xinxi', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `identity` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `photo` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL COMMENT '0 普通人员\r\n            1 管理员',
  `create_author` varchar(30) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '小花1', 'kappy', '1234567', '1201', '1231@126.com', null, '2022-01-09 11:01:28', '男', '1', 'admin', null, null, '1');

-- ----------------------------
-- Table structure for cheak_out_room
-- ----------------------------
DROP TABLE IF EXISTS `cheak_out_room`;
CREATE TABLE `cheak_out_room` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reserve_id` int(10) DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='退房信息表';

-- ----------------------------
-- Records of cheak_out_room
-- ----------------------------
INSERT INTO `cheak_out_room` VALUES ('1', '11', '2022-01-18 21:40:17', 'admin', '不住了');
INSERT INTO `cheak_out_room` VALUES ('3', '10', '2022-01-11 22:16:51', 'admin', '11111');

-- ----------------------------
-- Table structure for member_info
-- ----------------------------
DROP TABLE IF EXISTS `member_info`;
CREATE TABLE `member_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `identity` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `photo` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `create_author` varchar(30) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员信息';

-- ----------------------------
-- Records of member_info
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `pub_time` datetime DEFAULT NULL,
  `suthor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息表';

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for reserve_info
-- ----------------------------
DROP TABLE IF EXISTS `reserve_info`;
CREATE TABLE `reserve_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `room_id` int(10) DEFAULT NULL,
  `id_card` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_author` varchar(20) DEFAULT NULL,
  `is_pay` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='预定信息';

-- ----------------------------
-- Records of reserve_info
-- ----------------------------
INSERT INTO `reserve_info` VALUES ('1', '1', '41223419990', '1110', '2', '2021-11-19 17:14:19', '2021-11-20 17:14:22', 'admin', '1', '1', null, null, null);
INSERT INTO `reserve_info` VALUES ('9', '2', '213312', '321321321122', '0', '2021-12-09 00:00:00', '2021-12-25 00:00:00', 'admin', null, '1', null, null, null);
INSERT INTO `reserve_info` VALUES ('10', '1', '2222222', '13212345678', '0', '2021-12-15 00:00:00', '2021-12-16 00:00:00', 'admin', null, '2', null, null, null);
INSERT INTO `reserve_info` VALUES ('11', '2', '222222211', '13212345678', '0', '2021-12-15 00:00:00', '2021-12-16 00:00:00', 'admin', null, '2', null, null, null);
INSERT INTO `reserve_info` VALUES ('12', '1', '234', '2', '2', '2021-09-02 00:00:00', '2022-01-09 00:00:00', null, '0', '0', null, null, null);
INSERT INTO `reserve_info` VALUES ('13', '6', '4444', '3333', '1', '2022-01-16 00:00:00', '2022-01-17 00:00:00', null, '0', '0', null, null, null);

-- ----------------------------
-- Table structure for room_comment
-- ----------------------------
DROP TABLE IF EXISTS `room_comment`;
CREATE TABLE `room_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `room_id` int(10) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_comment
-- ----------------------------
INSERT INTO `room_comment` VALUES ('1', '7', '2022-01-16 21:20:46', 'zhansgan', null, '房子不赖');
INSERT INTO `room_comment` VALUES ('2', '7', '2022-01-18 21:21:12', 'lisan', null, '看看怎么样');
INSERT INTO `room_comment` VALUES ('4', '7', '2022-01-16 21:58:19', 'lily', 'lily2@163.com', '你看好房子了么');
INSERT INTO `room_comment` VALUES ('5', null, '2022-01-17 10:34:21', 'admin', 'xiaohong1@126.com', '酒店什么时候营业');
INSERT INTO `room_comment` VALUES ('6', null, '2022-01-17 10:37:04', 'admin', 'zhansgan@123.com', '2122121');
INSERT INTO `room_comment` VALUES ('7', null, '2022-01-17 10:40:52', 'admin', 'zhansgan@123.com', '2121212121');

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(30) DEFAULT NULL,
  `area` double(5,2) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `bed` int(30) DEFAULT NULL,
  `img` varchar(300) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 未入住\r\n            1 入住\r\n            ',
  `price` double(5,2) DEFAULT NULL,
  `discount` double(5,2) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_author` varchar(30) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='酒店的客房信息';

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES ('2', '1021', '20.00', '2', '2', '2', 'images/57837bdc-9420-43c2-98ff-7a080184ee13.jpg', '1', '51.00', null, '无线网络、电视、卫生间、…', '2021-11-15 11:48:16', 'kappy', null, null);
INSERT INTO `room_info` VALUES ('5', '1022', '21.00', '1', '0', '1', 'images/57837bdc-9420-43c2-98ff-7a080184ee13.jpg', '1', null, null, '无线网络、电视、卫生间、…', '2021-11-18 11:00:33', null, null, null);
INSERT INTO `room_info` VALUES ('6', '2021', '20.00', '6', '2', null, 'images/91c341fa-3adf-4ad0-bc56-1f1ca0d9772b.jpg', '0', '200.00', null, '无线网络、电视、卫生间、…', '2022-01-16 11:45:21', 'null', null, null);
INSERT INTO `room_info` VALUES ('7', '2023', '12.00', '9', '2', null, 'images/d112d2cf-f976-46d5-80f6-31a0bbee8366.jpg', '0', '11.00', null, '无线网络、电视、卫生间、…', '2022-01-16 11:47:07', 'null', null, null);
INSERT INTO `room_info` VALUES ('8', '2034', '23.00', '10', '3', null, 'images/46c26643-9063-4317-9620-66efae502dcc.jpg', '0', '22.00', null, '无线网络、电视、卫生间、…', '2022-01-16 11:47:34', 'null', null, null);
INSERT INTO `room_info` VALUES ('9', '2033', '34.00', '9', '3', null, 'images/df274e86-a43a-4627-bd08-6c2dc3f70209.jpg', '0', '230.00', null, 'layui 提倡返璞归真，遵循于原生态的元素书写规则，所以通常而言，你仍然是在写基本的 HTML 和 CSS 代码，不同的是，在 HTML 结构上及 CSS 定义上需要小小遵循一定的规范。', '2022-01-16 12:24:26', 'null', null, null);

-- ----------------------------
-- Table structure for room_service
-- ----------------------------
DROP TABLE IF EXISTS `room_service`;
CREATE TABLE `room_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `room_id` int(10) DEFAULT NULL,
  `service_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房间服务关系表';

-- ----------------------------
-- Records of room_service
-- ----------------------------

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_author` varchar(30) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='房间类型';

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('1', '豪华间1', '2881.00', '豪华服务1', '2021-11-02 21:26:54', 'admin', '2021-10-30 14:24:40', 'kappy');
INSERT INTO `room_type` VALUES ('2', '标准间', '188.00', '标准消费', '2021-11-03 21:27:27', 'admin', '2021-11-04 14:24:53', 'kappy');
INSERT INTO `room_type` VALUES ('4', '大床房', '2.00', null, null, 'admin', null, null);
INSERT INTO `room_type` VALUES ('6', '双人床房间', '1.00', '22112', null, 'admin', null, null);
INSERT INTO `room_type` VALUES ('8', '高质量国王的房间', '2.00', '222', null, 'admin', null, null);
INSERT INTO `room_type` VALUES ('9', '豪华客房', '2.00', '', null, 'admin', null, null);
INSERT INTO `room_type` VALUES ('10', '家庭房', '1.00', '', null, 'admin', null, null);

-- ----------------------------
-- Table structure for service_info
-- ----------------------------
DROP TABLE IF EXISTS `service_info`;
CREATE TABLE `service_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(30) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务信息表';

-- ----------------------------
-- Records of service_info
-- ----------------------------
