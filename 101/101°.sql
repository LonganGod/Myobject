/*
Navicat MySQL Data Transfer

Source Server         : $('#_Ws')
Source Server Version : 80013
Source Host           : 127.0.0.1:3306
Source Database       : 101°

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-03-31 22:54:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(25) DEFAULT NULL,
  `apsw` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin` VALUES ('2', 'admin1', 'admin1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(30) NOT NULL,
  `gdes` varchar(200) NOT NULL,
  `kid` int(5) NOT NULL,
  `gprice` float NOT NULL,
  `goriginal` float NOT NULL,
  `gicon1` varchar(255) NOT NULL,
  `gicon2` varchar(255) DEFAULT NULL,
  `gicon3` varchar(255) DEFAULT NULL,
  `gdate` varchar(10) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'dell笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '1231', '2535', 'product01.png', 'product02.png', 'product03.png', '2018-02-10', '8');
INSERT INTO `goods` VALUES ('2', '荣耀 10 手机', '荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。荣耀 10 手机最新款，骚蓝色，你值得拥有。。。', '1', '2300', '3100', '\\avatar-1554043207582.jpg', '\\avatar-1554043209502.jpg', '\\avatar-1554043211065.jpg', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('3', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '3422', '5345', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('5', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '2342', '4575', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('6', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '3342', '7564', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('7', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '2342', '4356', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('8', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '3243', '3455', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('9', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '4533', '3455', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('10', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '3456', '5464', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '12');
INSERT INTO `goods` VALUES ('13', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('14', '笔记本', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '1', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('16', '书阿斯大三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '2', '12', '23', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('17', '书阿斯大三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '2', '32', '43', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('18', '书阿斯大三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '2', '21', '45', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('20', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '3', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('21', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '3', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('22', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '3', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('25', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '3', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('26', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('27', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('28', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '13');
INSERT INTO `goods` VALUES ('29', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '5', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '8');
INSERT INTO `goods` VALUES ('31', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '5', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('32', '三大四的', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('33', '阿萨德', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('34', '阿萨德', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '4', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('35', '阿萨德', '巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉', '5', '123', '300', 'product02.png', 'product02.png', 'product02.png', '2019-12-01', '10');
INSERT INTO `goods` VALUES ('36', 'dasdasd', 'asdsadasfasf', '5', '1200', '0', '\\avatar-1554035634154.jpg', '\\avatar-1554035635682.jpg', '\\avatar-1554035637389.jpg', '2019-03-31', '13');
INSERT INTO `goods` VALUES ('37', '王者荣耀账号', '出售王者荣耀账号，玩了五年，全英雄，超多精美皮肤，仅售1000，先到先得！！！！出售王者荣耀账号，玩了五年，全英雄，超多精美皮肤，仅售1000，先到先得！！！！出售王者荣耀账号，玩了五年，全英雄，超多精美皮肤，仅售1000，先到先得！！！！出售王者荣耀账号，玩了五年，全英雄，超多精美皮肤，仅售1000，先到先得！！！！出售王者荣耀账号，玩了五年，全英雄，超多精美皮肤，仅售1000，先到先得！！！！', '5', '800', '0', '\\avatar-1554035941946.jpg', '\\avatar-1554035943834.jpg', '\\avatar-1554035945722.jpg', '2019-03-31', '8');
INSERT INTO `goods` VALUES ('38', '女士毛衣', '奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 奥术大师大所大实打实大所大所大所大所错 ', '3', '520', '600', '\\avatar-1554041740493.jpg', '\\avatar-1554041745628.jpg', '\\avatar-1554041748711.jpg', '2019-03-31', '8');

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` varchar(25) NOT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '电子产品');
INSERT INTO `kind` VALUES ('2', '书籍');
INSERT INTO `kind` VALUES ('3', '服装');
INSERT INTO `kind` VALUES ('4', '生活');
INSERT INTO `kind` VALUES ('5', '其他');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(25) DEFAULT NULL,
  `ndes` varchar(255) DEFAULT NULL,
  `ndate` char(10) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '阿萨德我去下', '二七万达群多多多群多撒所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所多多多多凄凄切切群群群群群群群群群群群群群群群群群群群群群群群群', '2018-01-01', '9');
INSERT INTO `news` VALUES ('4', '来自管理员的警告', '您最近有不正当或违规操作，特此警告，如有下次，必将严惩', '2019-03-31', '8');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', 'ws359664640', 'ws#15531085321');
INSERT INTO `user` VALUES ('10', 'ws359664640ws', '123123123#ws');
INSERT INTO `user` VALUES ('13', 'ws15531085321', 'ws359664640');
INSERT INTO `user` VALUES ('16', 'fdgsgsdf', 'ws123456789');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uicon` varchar(255) NOT NULL,
  `uphone` varchar(11) NOT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `uqq` varchar(13) DEFAULT NULL,
  `uhome` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `udate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('8', '我是大哥', '\\avatar-1554037293997.jpg', '15531085321', '359664640@qq.com', '359664640', '河北工程大学', '2018-12-02');
INSERT INTO `userinfo` VALUES ('10', 'ws359664640ws', '1.jpg', '15531085321', null, null, null, null);
INSERT INTO `userinfo` VALUES ('13', '我是大哥大', '\\avatar-1554022318305.jpg', '15531085321', 'ws15531085321@163.com', '359664640', '朝曦楼628', '2019-03-28');
INSERT INTO `userinfo` VALUES ('16', 'sdf', 'default.png', '15531096543', null, null, null, '2019-03-30');
