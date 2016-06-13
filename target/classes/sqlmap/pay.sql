/*
Navicat MySQL Data Transfer

Source Server         : 120.27.122.191
Source Server Version : 50628
Source Host           : 120.27.122.191:3306
Source Database       : pay

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-06-13 14:24:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bank`
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '登录名称',
  `name` varchar(50) DEFAULT NULL COMMENT '户主',
  `bank_id` varchar(50) DEFAULT NULL COMMENT '卡号',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '开户行',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('123', '111', '111', '111');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `comment` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `temps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '开盘了', '最近开盘敬请期待！', 'news', '2016-03-09 16:24:28');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL COMMENT 'ID,7+13位',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(120) DEFAULT NULL COMMENT '密码',
  `pay` varchar(120) DEFAULT NULL COMMENT '支付码',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `card_id` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `leader` varchar(255) DEFAULT NULL COMMENT '直属领导',
  `father` varchar(255) DEFAULT NULL COMMENT '父节点',
  `left_son` varchar(255) DEFAULT NULL COMMENT '左孩子',
  `right_son` varchar(255) DEFAULT NULL COMMENT '右孩子',
  `level` varchar(50) DEFAULT NULL COMMENT '等级',
  `place` varchar(50) DEFAULT NULL COMMENT '区域',
  `key_path` varchar(255) DEFAULT NULL COMMENT '编码',
  `valid` varchar(50) DEFAULT NULL COMMENT '用户有效性！“冻结”',
  `binding` varchar(255) DEFAULT NULL COMMENT '绑定的账号',
  `temps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1456815847739', '123', '123', '123123', '杜涛', null, '13621177881', null, null, '', '', '六级会员', null, null, '0', '123,123,123,123,123', '2016-03-01 15:04:20');
INSERT INTO `user` VALUES ('14568158477392', '321', '321', '321', '王鹏', null, '13625894656', '123', '123', null, null, null, null, '123', '0', null, '2016-03-11 15:39:58');

-- ----------------------------
-- Table structure for `wallet`
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `sum_bonus` decimal(10,0) NOT NULL DEFAULT '0',
  `k_coin` decimal(10,0) NOT NULL DEFAULT '0',
  `a_coin` decimal(10,0) NOT NULL DEFAULT '0',
  `e_coin` decimal(10,0) NOT NULL DEFAULT '0',
  `c_coin` decimal(10,0) NOT NULL DEFAULT '0',
  `cpm_coin` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wallet
-- ----------------------------
INSERT INTO `wallet` VALUES ('123', '0', '200', '0', '0', '0', '0');
INSERT INTO `wallet` VALUES ('321', '0', '0', '0', '0', '0', '0');
