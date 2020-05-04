/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-17 18:34:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', '1000');
INSERT INTO `account` VALUES ('2', '5', '2000');
INSERT INTO `account` VALUES ('3', '4', '500');
INSERT INTO `account` VALUES ('4', '8', '334');
INSERT INTO `account` VALUES ('5', '10', '900');
INSERT INTO `account` VALUES ('6', '11', '356');
INSERT INTO `account` VALUES ('7', '13', '234');
INSERT INTO `account` VALUES ('8', '1', '2000');
INSERT INTO `account` VALUES ('9', '4', '1000');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'zhangsan', '30', '1', 'hb');
INSERT INTO `person` VALUES ('2', 'lisi', '20', '男', 'bj');
INSERT INTO `person` VALUES ('3', 'wangwu', '24', '男', ' sc');
INSERT INTO `person` VALUES ('4', 'zhaoliu', '30', '男', 'gd');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '经理');
INSERT INTO `role` VALUES ('3', '职员');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lili');
INSERT INTO `user` VALUES ('4', 'tianqi');
INSERT INTO `user` VALUES ('5', 'wangwu');
INSERT INTO `user` VALUES ('8', 'jack');
INSERT INTO `user` VALUES ('10', 'zhangsan');
INSERT INTO `user` VALUES ('11', 'tianqi');
INSERT INTO `user` VALUES ('13', 'xiaohuang');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('1', '3');
INSERT INTO `user_role` VALUES ('4', '1');
INSERT INTO `user_role` VALUES ('4', '2');
INSERT INTO `user_role` VALUES ('5', '1');
INSERT INTO `user_role` VALUES ('8', '2');
INSERT INTO `user_role` VALUES ('10', '3');
INSERT INTO `user_role` VALUES ('11', '3');
INSERT INTO `user_role` VALUES ('13', '3');
