/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-02-12 15:03:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bolg
-- ----------------------------
DROP TABLE IF EXISTS `bolg`;
CREATE TABLE `bolg` (
  `id` varchar(50) NOT NULL COMMENT '博客id',
  `title` varchar(100) NOT NULL COMMENT '博客标题',
  `author` varchar(30) NOT NULL COMMENT '博客作者',
  `creat_time` datetime NOT NULL COMMENT '创建时间',
  `views` int(30) NOT NULL COMMENT '浏览量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bolg
-- ----------------------------
INSERT INTO `bolg` VALUES ('1', 'Mybatis如此简单', 'kzj', '2019-12-04 20:32:07', '9999');
INSERT INTO `bolg` VALUES ('2', 'Java如此简单2', 'kzj2', '2019-12-04 20:32:07', '1000');
INSERT INTO `bolg` VALUES ('3', 'Spring如此简单', 'kzj', '2019-12-04 20:32:07', '9999');
INSERT INTO `bolg` VALUES ('4', '微服务如此简单', 'kzj', '2019-12-04 20:32:07', '9999');
INSERT INTO `bolg` VALUES ('5', 'Mybatis如此简单', 'kzj2', '2020-02-11 03:38:23', '4565');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fktid` (`tid`),
  CONSTRAINT `fktid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小明', '1');
INSERT INTO `student` VALUES ('2', '小红', '1');
INSERT INTO `student` VALUES ('3', '小张', '1');
INSERT INTO `student` VALUES ('5', '小王', '1');
INSERT INTO `student` VALUES ('6', '小康', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '秦老师');
INSERT INTO `teacher` VALUES ('2', '陈老师');
INSERT INTO `teacher` VALUES ('3', '李老师');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '狂神', '123456');
INSERT INTO `user` VALUES ('2', 'kk', '123456');
INSERT INTO `user` VALUES ('3', '李四', '123890');
INSERT INTO `user` VALUES ('5', '小王', '23234');
INSERT INTO `user` VALUES ('6', '小王', '23234');
INSERT INTO `user` VALUES ('7', '王五', '23333');
