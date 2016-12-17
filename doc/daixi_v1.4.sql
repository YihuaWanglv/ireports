/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50509
Source Host           : localhost:3306
Source Database       : daixi

Target Server Type    : MYSQL
Target Server Version : 50509
File Encoding         : 65001

Date: 2016-09-13 01:20:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `piid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=正常，-1=待测试，1=已测试',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'dubbo', '0', '0', '-1');

-- ----------------------------
-- Table structure for `point`
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL DEFAULT '0',
  `description` varchar(512) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `scores` tinyint(4) NOT NULL DEFAULT '1' COMMENT '分值',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('1', '1', 'ggg', '0', '1', '第一题听力题');
INSERT INTO `point` VALUES ('2', '1', '这是一个题目', '0', '1', '第二题');
INSERT INTO `point` VALUES ('3', '1', 'what is dubbo?', '0', '10', '第三题');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(4) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'iyihua', '0');
INSERT INTO `role` VALUES ('2', 'admin', '0');
INSERT INTO `role` VALUES ('3', 'user', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(64) NOT NULL,
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(64) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(64) NOT NULL DEFAULT '',
  `ucid` bigint(20) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'iyihua', '0', '457ebd4372bbb8f58881e3aabb254ade16296f0deba1853f', '0', '619361578@qq.com', '13560427799', '123456789', '0', '', '0', '2016-09-09 02:05:21', '2016-09-09 02:24:53', '0');

-- ----------------------------
-- Table structure for `user_item`
-- ----------------------------
DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item` (
  `ilid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `point_level` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ilid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_item
-- ----------------------------

-- ----------------------------
-- Table structure for `user_point`
-- ----------------------------
DROP TABLE IF EXISTS `user_point`;
CREATE TABLE `user_point` (
  `upid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `detail` varchar(512) DEFAULT NULL,
  `options` tinyint(4) DEFAULT '0',
  `score` tinyint(4) DEFAULT '0' COMMENT '得分',
  PRIMARY KEY (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_point
-- ----------------------------
INSERT INTO `user_point` VALUES ('1', '1', '1', '这是我的答案', '0', '0');
INSERT INTO `user_point` VALUES ('3', '1', '3', 'rpc', '0', '0');
INSERT INTO `user_point` VALUES ('4', '1', '2', '古古怪怪灌灌灌灌灌灌', '0', '0');
