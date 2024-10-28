/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : db_wljx

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2020-11-06 22:09:39
*/

create database db_wljx charset utf8;
use db_wljx;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_banji`
-- ----------------------------
DROP TABLE IF EXISTS `t_banji`;
CREATE TABLE `t_banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `zhuanye_id` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_banji
-- ----------------------------
INSERT INTO `t_banji` VALUES ('1', 'd ', '2', 'yes');
INSERT INTO `t_banji` VALUES ('2', '计算机专业1班', '2', 'no');
INSERT INTO `t_banji` VALUES ('3', '计算机专业2班', '2', 'no');
INSERT INTO `t_banji` VALUES ('4', '计算机专业3班', '2', 'no');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `jieshao` varchar(1024) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1', 'Java语言', 'Java语言', 'no');
INSERT INTO `t_catelog` VALUES ('2', 'Web前/后端开发', 'Web前/后端开发', 'no');
INSERT INTO `t_catelog` VALUES ('3', '统计与数据分析', '统计与数据分析', 'no');
INSERT INTO `t_catelog` VALUES ('4', '算法与数据结构', '算法与数据结构', 'no');
INSERT INTO `t_catelog` VALUES ('5', 'C语言/c++语言', '&nbsp;C语言/c++语言', 'no');
INSERT INTO `t_catelog` VALUES ('6', '操作系统原理', '操作系统原理', 'no');
INSERT INTO `t_catelog` VALUES ('7', '系统仿真和虚拟现实', '系统仿真和虚拟现实', 'no');
INSERT INTO `t_catelog` VALUES ('8', '多媒体技术', '多媒体技术', 'no');
INSERT INTO `t_catelog` VALUES ('9', '网络安全', '网络安全', 'no');
INSERT INTO `t_catelog` VALUES ('10', '计算机组成原理', '计算机组成原理', 'no');
INSERT INTO `t_catelog` VALUES ('11', '计算机网络技术', '计算机网络技术', 'no');
INSERT INTO `t_catelog` VALUES ('12', 'MYSQL', 'MYSQL', 'no');
INSERT INTO `t_catelog` VALUES ('13', '互联网程序设计', '互联网程序设计', 'no');
INSERT INTO `t_catelog` VALUES ('14', '编译原理 ', '编译原理&nbsp;', 'no');
INSERT INTO `t_catelog` VALUES ('15', '算法分析与设计', '算法分析与设计', 'no');

-- ----------------------------
-- Table structure for `t_doc`
-- ----------------------------
DROP TABLE IF EXISTS `t_doc`;
CREATE TABLE `t_doc` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_doc
-- ----------------------------
INSERT INTO `t_doc` VALUES ('1305130323843', '网络编程', '请输入内容', '/upload/1305130321453.doc', '标准程序配置使用说明.doc', '2018-5-12 0:11:33', 'no');
INSERT INTO `t_doc` VALUES ('1305130337453', 'Java开发技术', '请输入内容', '/upload/1305130334828.doc', '标准程序配置使用说明.doc', '2018-5-12 0:12:08', 'no');
INSERT INTO `t_doc` VALUES ('1305130346906', '数据库教程', '请输入内容', '/upload/1305130345218.doc', '标准程序配置使用说明.doc', '2018-5-12 0:12:18', 'no');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1305129816156', '基于Java的在线教学系统', '在线教学系统', '2018-4-2 0:03:36');
INSERT INTO `t_gonggao` VALUES ('1305129820921', '欢迎大家多交流学习！！', '欢迎大家多交流学习', '2018-4-2 0:03:36');
INSERT INTO `t_gonggao` VALUES ('1305129825875', '最新JAVA学习资料发！！', '最新JAVA学习资料发布', '2018-4-2 0:03:36');
INSERT INTO `t_gonggao` VALUES ('1305129830484', '大家好！教学系统上线啦！！！', '大家好！教学系统上线啦！', '2018-4-2 0:03:36');

-- ----------------------------
-- Table structure for `t_jiandati`
-- ----------------------------
DROP TABLE IF EXISTS `t_jiandati`;
CREATE TABLE `t_jiandati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `daan` varchar(5000) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jiandati
-- ----------------------------
INSERT INTO `t_jiandati` VALUES ('4', '简单题简单题简单题简单题1', '简单题简单题简单题简单题1', 'no');
INSERT INTO `t_jiandati` VALUES ('5', '简单题简单题简单题简单题2', '简单题简单题简单题简单题2', 'no');

-- ----------------------------
-- Table structure for `t_kecheng`
-- ----------------------------
DROP TABLE IF EXISTS `t_kecheng`;
CREATE TABLE `t_kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `jieshao` varchar(5000) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kecheng
-- ----------------------------
INSERT INTO `t_kecheng` VALUES ('1', 'java编程', 'java编程', 'no');
INSERT INTO `t_kecheng` VALUES ('2', 'c++编程', '请输入内容', 'no');
INSERT INTO `t_kecheng` VALUES ('3', '外语课', '请输入内容', 'no');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1305360697062', '学习交流', '<p>xxxxxxxxxxxx</p>', '2018-5-14 16:11:37', '1305130930250');
INSERT INTO `t_liuyan` VALUES ('1305360701109', 'java开发', '请输入xxxxxx内容', '2018-5-14 16:11:41', '1305130930250');
INSERT INTO `t_liuyan` VALUES ('1305360776593', '数据库开发', '请输入内容xxxxxxxx', '2018-5-14 16:12:56', '1305130930250');

-- ----------------------------
-- Table structure for `t_shipin`
-- ----------------------------
DROP TABLE IF EXISTS `t_shipin`;
CREATE TABLE `t_shipin` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `catelog_id` int(11) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `fujian` varchar(255) DEFAULT NULL,
  `fujianYuanshiming` varchar(255) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shipin
-- ----------------------------
INSERT INTO `t_shipin` VALUES ('1305130464328', 'java开发视频', '1', '请输入内容', '/upload/1305130459656.avi', '1304390787500.avi', '2018-5-12 0:13:42', 'no');
INSERT INTO `t_shipin` VALUES ('1305130477406', '测试视频', '2', '请输入内容', '/upload/1305130459656.avi', '1304390787500.avi', '2018-5-12 0:14:29', 'no');
INSERT INTO `t_shipin` VALUES ('1604659783788', 'java环境部署', '2', 'java环境部署', '/upload/1604659778266.mp4', 'java环境部署.mp4', '2020-11-6 18:49:19', 'no');

-- ----------------------------
-- Table structure for `t_stu`
-- ----------------------------
DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `banji_id` varchar(50) DEFAULT NULL,
  `ruxueshijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stu
-- ----------------------------
INSERT INTO `t_stu` VALUES ('1', '2009001', '小李', '男', '25', '2', '2018-03-17 ', 'no');
INSERT INTO `t_stu` VALUES ('2', '2018002', '王均梅', '男', '20', '3', '2018-03-17', 'no');

-- ----------------------------
-- Table structure for `t_tea`
-- ----------------------------
DROP TABLE IF EXISTS `t_tea`;
CREATE TABLE `t_tea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tea
-- ----------------------------
INSERT INTO `t_tea` VALUES ('1', '001', '刘老师', '男', '33', 'no');
INSERT INTO `t_tea` VALUES ('2', '002', '张老师', '男', '36', 'no');

-- ----------------------------
-- Table structure for `t_timu`
-- ----------------------------
DROP TABLE IF EXISTS `t_timu`;
CREATE TABLE `t_timu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `xuanxianga` varchar(500) DEFAULT NULL,
  `xuanxiangb` varchar(500) DEFAULT NULL,
  `xuanxiangc` varchar(500) DEFAULT NULL,
  `xuanxiangd` varchar(500) DEFAULT NULL,
  `daan` varchar(500) DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_timu
-- ----------------------------
INSERT INTO `t_timu` VALUES ('1', 'English Corner NPC, the NPC every ', 'English Corner NPC, the NPC every ', 'English Corner NPC, the NPC every ', 'English Corner NPC, the NPC every ', 'English Corner NPC, the NPC every ', 'D', '10', 'no');
INSERT INTO `t_timu` VALUES ('2', ' Chaoyang District Library', ' Chaoyang District Library', ' Chaoyang District Library', ' Chaoyang District Library', ' Chaoyang District Library', 'D', '10', 'no');
INSERT INTO `t_timu` VALUES ('3', 'every Saturday afternoon', 'every Saturday afternoon', 'every Saturday afternoon', 'every Saturday afternoon', 'every Saturday afternoon', 'A', '10', 'no');
INSERT INTO `t_timu` VALUES ('4', 'door that side of the pond ', 'door that side of the pond ', 'door that side of the pond ', 'door that side of the pond ', 'door that side of the pond ', 'B', '10', 'no');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(50) NOT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `xuehao_jiaoshihao` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1305130780921', '001', '000000', '001', '1');
INSERT INTO `t_user` VALUES ('1305130930250', '2018002', '000000', '2018002', '2');

-- ----------------------------
-- Table structure for `t_zhuanye`
-- ----------------------------
DROP TABLE IF EXISTS `t_zhuanye`;
CREATE TABLE `t_zhuanye` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `jieshao` text,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zhuanye
-- ----------------------------
INSERT INTO `t_zhuanye` VALUES ('2', '计算机专业', '计算机专业', 'no');
INSERT INTO `t_zhuanye` VALUES ('3', '外语专业', '外语专业', 'no');
INSERT INTO `t_zhuanye` VALUES ('4', '法学专业', '法学专业', 'no');

-- ----------------------------
-- Table structure for `t_zuoye`
-- ----------------------------
DROP TABLE IF EXISTS `t_zuoye`;
CREATE TABLE `t_zuoye` (
  `id` varchar(50) NOT NULL,
  `mingcheng` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zuoye
-- ----------------------------
INSERT INTO `t_zuoye` VALUES ('1305130811546', '网络编程', '/upload/1305130809015.doc', 'socket编程.doc', '2018-5-12 0:20:11', 'no');
INSERT INTO `t_zuoye` VALUES ('1305130823062', 'Java作业', '/upload/1305130820484.doc', '标准程序配置使用说明.doc', '2018-5-12 0:20:23', 'no');
INSERT INTO `t_zuoye` VALUES ('1305130834593', '数据库作业', '/upload/1305130833187.doc', 'SQL语言.doc', '2018-5-12 0:20:34', 'no');
INSERT INTO `t_zuoye` VALUES ('1305360809765', '数据结构', '/upload/1305360807890.doc', '排序算法.doc', '2018-5-14 16:13:29', 'no');
