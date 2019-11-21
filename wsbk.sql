/*
 Navicat Premium Data Transfer

 Source Server         : WS-DB
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : wsbk

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 21/11/2019 17:40:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `articleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `articleTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `articleCate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章分类',
  `articleLabel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标签',
  `articleImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章配图',
  `articleContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章状态：1、已发布，2、草稿',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '哦摩西咯一', '13', '6,4,3', 'blob:http://localhost:3000/0e1ca521-83dd-4798-b29e-2a6788509939', '<h2 class=\"ql-align-center\">Hello World</h2><p class=\"ql-indent-1\">哈哈哈哈哈！！！嗝~</p><p class=\"ql-indent-2\"><img src=\"//:0\"></p><p class=\"ql-indent-1\">哎哎~~</p>', '1', '2019-11-21 15:58:50');
INSERT INTO `article` VALUES (2, '啦啦啦啦啦啦啦', '15', '7,3', 'blob:http://localhost:3000/0aca8f49-ffeb-4cb2-85e4-3cd2565760ab', '<p>nice 大夫</p>', '1', '2019-11-21 16:54:10');

-- ----------------------------
-- Table structure for articlecate
-- ----------------------------
DROP TABLE IF EXISTS `articlecate`;
CREATE TABLE `articlecate`  (
  `cateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `cateName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `catePId` int(11) NULL DEFAULT NULL COMMENT '父级类别ID',
  `cateStatus` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别状态',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cateId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articlecate
-- ----------------------------
INSERT INTO `articlecate` VALUES (1, '测试', 0, '1', '2019-10-18 11:52:38');
INSERT INTO `articlecate` VALUES (2, 'web前端适配', 0, '1', '2019-10-18 13:23:56');
INSERT INTO `articlecate` VALUES (3, '原生JS', 0, '1', '2019-10-18 13:24:31');
INSERT INTO `articlecate` VALUES (4, '样式CSS', 0, '1', '2019-10-18 13:24:40');
INSERT INTO `articlecate` VALUES (5, 'DIV盒模型', 0, '1', '2019-10-18 13:24:56');
INSERT INTO `articlecate` VALUES (6, 'Vue大法好', 0, '1', '2019-10-18 13:25:13');
INSERT INTO `articlecate` VALUES (11, '对对对', 5, '1', '2019-10-18 16:27:29');
INSERT INTO `articlecate` VALUES (12, '是是是', 5, '1', '2019-10-18 16:27:57');
INSERT INTO `articlecate` VALUES (13, '对对对', 5, '1', '2019-10-18 16:28:01');
INSERT INTO `articlecate` VALUES (14, '发发发', 5, '1', '2019-10-18 16:28:05');
INSERT INTO `articlecate` VALUES (15, '啊啊啊4', 5, '1', '2019-10-18 16:28:09');
INSERT INTO `articlecate` VALUES (18, '是是是', 6, '1', '2019-10-18 17:34:12');

-- ----------------------------
-- Table structure for backendnav
-- ----------------------------
DROP TABLE IF EXISTS `backendnav`;
CREATE TABLE `backendnav`  (
  `navId` int(11) NOT NULL AUTO_INCREMENT COMMENT '后台导航Id',
  `navName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台导航名',
  `navIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台导航图标',
  `navJumpPage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台导航跳转路径',
  `navPId` int(11) NULL DEFAULT NULL COMMENT '后台导航父级Id',
  `navIndex` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台导航位置',
  `navStatus` int(11) NULL DEFAULT NULL COMMENT '状态',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`navId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backendnav
-- ----------------------------
INSERT INTO `backendnav` VALUES (1, '首页', 'el-icon-s-home', '/home', 0, '1', 1, '2019-10-03 09:44:47');
INSERT INTO `backendnav` VALUES (2, '用户管理', 'el-icon-user-solid', '/user', 0, '2', 1, '2019-10-03 09:45:31');
INSERT INTO `backendnav` VALUES (3, '用户列表', NULL, '/user/userList', 2, '2-1', 1, '2019-10-04 09:46:08');
INSERT INTO `backendnav` VALUES (4, '用户留言', NULL, '/user/userMsg', 2, '2-2', 1, '2019-10-04 09:46:47');
INSERT INTO `backendnav` VALUES (5, '文章管理', 'el-icon-document', '/article', 0, '3', 1, '2019-10-04 09:47:35');
INSERT INTO `backendnav` VALUES (6, '文章分类', NULL, '/article/articleCateList', 5, '3-1', 1, '2019-10-04 09:48:26');
INSERT INTO `backendnav` VALUES (7, '文章列表', NULL, '/article/articleList', 5, '3-2', 1, '2019-10-05 09:48:56');
INSERT INTO `backendnav` VALUES (8, '发布文章', NULL, '/article/releaseArticle', 5, '3-3', 1, '2019-10-05 09:50:13');
INSERT INTO `backendnav` VALUES (9, '标签管理', 'el-icon-collection-tag', '/labels', 0, '4', 1, '2019-10-06 09:50:52');
INSERT INTO `backendnav` VALUES (10, '数据统计', 'el-icon-s-data', '/charts', 0, '5', 2, '2019-10-08 09:51:26');
INSERT INTO `backendnav` VALUES (11, '基本设置', 'el-icon-setting', '/config', 0, '6', 1, '2019-10-08 09:51:57');
INSERT INTO `backendnav` VALUES (12, '后台导航列表', NULL, '/config/backgroundNavList', 11, '6-1', 1, '2019-10-09 09:52:25');
INSERT INTO `backendnav` VALUES (13, '前台导航列表', NULL, '/config/frontDeskNav', 11, '6-2', 2, '2019-10-09 09:52:58');
INSERT INTO `backendnav` VALUES (14, '角色权限管理', NULL, '/config/permissions', 11, '6', 1, '2019-11-21 17:36:52');
INSERT INTO `backendnav` VALUES (16, 'ggg', '', 'ddd', 1, '1', 2, '2019-10-18 10:38:03');
INSERT INTO `backendnav` VALUES (18, 'ccc', '', 'sss', 1, '1-2', 2, '2019-10-18 10:28:06');

-- ----------------------------
-- Table structure for labels
-- ----------------------------
DROP TABLE IF EXISTS `labels`;
CREATE TABLE `labels`  (
  `labelId` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `labelName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签名',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`labelId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of labels
-- ----------------------------
INSERT INTO `labels` VALUES (1, '佛系Node', 1, '2019-10-21 16:32:37');
INSERT INTO `labels` VALUES (3, '暴走前端', 1, '2019-10-22 15:35:09');
INSERT INTO `labels` VALUES (4, '起飞', 1, '2019-10-22 15:35:25');
INSERT INTO `labels` VALUES (5, 'javaScript', 1, '2019-10-22 15:36:26');
INSERT INTO `labels` VALUES (6, 'Vue.js', 1, '2019-10-22 15:36:37');
INSERT INTO `labels` VALUES (7, 'css样式大集合', 1, '2019-10-22 15:36:48');

-- ----------------------------
-- Table structure for leavemsg
-- ----------------------------
DROP TABLE IF EXISTS `leavemsg`;
CREATE TABLE `leavemsg`  (
  `msgId` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言Id',
  `msgPId` int(11) NOT NULL COMMENT '父级留言Id',
  `respondTo` int(11) NOT NULL COMMENT '回复用户Id',
  `userId` int(11) NOT NULL COMMENT '用户Id',
  `articleId` int(11) NOT NULL COMMENT '文章Id',
  `msgDetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `createTime` datetime(0) NOT NULL COMMENT '留言时间',
  PRIMARY KEY (`msgId`) USING BTREE,
  INDEX `msgPId_FK`(`msgPId`) USING BTREE,
  INDEX `msgUserId_FK`(`userId`) USING BTREE,
  INDEX `respondTo_FK`(`respondTo`) USING BTREE,
  CONSTRAINT `msgUserId_FK` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `respondTo_FK` FOREIGN KEY (`respondTo`) REFERENCES `userinfo` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leavemsg
-- ----------------------------
INSERT INTO `leavemsg` VALUES (1, 0, 1, 3, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-10 13:15:00');
INSERT INTO `leavemsg` VALUES (2, 1, 3, 1, 1, '感谢回复', '2019-10-10 15:15:00');
INSERT INTO `leavemsg` VALUES (3, 1, 1, 3, 1, '不客气', '2019-10-10 16:15:00');
INSERT INTO `leavemsg` VALUES (4, 1, 3, 1, 1, '哈哈哈', '2019-10-10 18:15:00');
INSERT INTO `leavemsg` VALUES (5, 0, 1, 2, 1, '喜欢这篇文章', '2019-10-11 08:15:00');
INSERT INTO `leavemsg` VALUES (6, 5, 2, 1, 1, '多谢，互顶', '2019-10-11 13:15:00');
INSERT INTO `leavemsg` VALUES (7, 5, 1, 2, 1, '可以，#####，这我博客', '2019-10-11 19:15:00');
INSERT INTO `leavemsg` VALUES (8, 5, 1, 3, 1, '加我一个', '2019-10-13 13:30:00');
INSERT INTO `leavemsg` VALUES (9, 5, 3, 2, 1, '博客地址已发', '2019-10-13 15:15:00');
INSERT INTO `leavemsg` VALUES (10, 5, 2, 4, 1, '我也喜欢', '2019-10-14 12:15:00');
INSERT INTO `leavemsg` VALUES (11, 5, 4, 1, 1, '哈哈哈哈', '2019-10-14 20:15:00');
INSERT INTO `leavemsg` VALUES (12, 0, 1, 3, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (13, 0, 1, 3, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (14, 0, 1, 3, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (15, 0, 1, 2, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (18, 0, 1, 4, 1, '荷兰优质淡奶，奶香浓而不腻4', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (19, 0, 1, 2, 1, '荷兰优质淡奶，奶香浓而不腻5', '2019-10-15 13:15:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `passwork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin');
INSERT INTO `user` VALUES (2, 'loss', 'loss');
INSERT INTO `user` VALUES (3, 'bookman', 'bookman');
INSERT INTO `user` VALUES (4, 'asddd', 'asddd');
INSERT INTO `user` VALUES (5, '游K_232133', '123456');
INSERT INTO `user` VALUES (6, '游K_454353', '123456');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `userIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `nickName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `userType` int(11) NULL DEFAULT NULL COMMENT '用户类别 1：管理员，2：注册用户，3：游客',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态 1：启用，2：停用',
  PRIMARY KEY (`userId`) USING BTREE,
  CONSTRAINT `ForeignKey_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', '桂圆上火', 'ws15531085321@163.com', 1, '2019-09-21 13:15:00', '1');
INSERT INTO `userinfo` VALUES (2, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', 'loss', '1233213144@163.com', 2, '2019-09-22 13:15:00', '1');
INSERT INTO `userinfo` VALUES (3, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', 'bookman', 'asd223213123@163.com', 2, '2019-09-23 13:15:00', '1');
INSERT INTO `userinfo` VALUES (4, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png', 'asddd', 'asdfgfd33423@163.com', 2, '2019-09-23 13:15:00', '2');
INSERT INTO `userinfo` VALUES (5, '', '游K_232133', '', 3, '2019-09-23 13:15:00', '1');
INSERT INTO `userinfo` VALUES (6, '', '游K_454353', '', 3, '2019-09-23 13:15:00', '1');

SET FOREIGN_KEY_CHECKS = 1;
