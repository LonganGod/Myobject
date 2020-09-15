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

 Date: 15/09/2020 09:52:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminUserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员用户姓名',
  `adminPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');
INSERT INTO `admin` VALUES (2, 'admin1', 'admin1');
INSERT INTO `admin` VALUES (3, 'role1', 'role1');
INSERT INTO `admin` VALUES (4, 'role2', 'role2');
INSERT INTO `admin` VALUES (5, 'role3', 'role3');

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员Id',
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员姓名',
  `adminIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员头像',
  `adminRole` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员角色',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES (1, '大魔王sama', 'http://127.0.0.1:9988/serverImage/articleImg-1574843047158.jpg', '1', '2019-11-26 16:43:31');
INSERT INTO `admininfo` VALUES (2, '卡萨丁', 'http://127.0.0.1:9988/serverImage/articleImg-1574843049776.jpg', '2', '2019-11-26 16:44:01');
INSERT INTO `admininfo` VALUES (3, '卢西奥', 'http://127.0.0.1:9988/serverImage/articleImg-1574843047158.jpg', '5', '2019-11-26 16:44:15');

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
  `articleAbstract` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章摘要',
  `articleContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章状态：1、已发布，2、草稿',
  `adminId` int(11) NULL DEFAULT NULL COMMENT '作者Id',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '哦摩西咯一', '28', '6,4,3', 'http://127.0.0.1:9988/serverImage/articleImg-1575617275574.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p class=\"ql-indent-2\"><span style=\"background-color: rgb(204, 224, 245);\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit aug</span>ue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-06 15:28:46');
INSERT INTO `article` VALUES (2, '啦啦啦啦啦啦啦', '25', '7,3', 'http://127.0.0.1:9988/serverImage/articleImg-1575617210929.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p><span style=\"color: rgb(161, 0, 0);\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p><span style=\"color: rgb(178, 178, 0);\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p><span style=\"color: rgb(0, 71, 178);\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-06 15:27:33');
INSERT INTO `article` VALUES (4, '摇滚秦腔 - 相声台词', '25', '6,3,1', 'http://127.0.0.1:9988/serverImage/articleImg-1575617065062.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<pre class=\"ql-syntax\" spellcheck=\"false\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n</pre>', '1', 1, '2019-12-06 15:26:23');
INSERT INTO `article` VALUES (5, '测试文章发布', '25', '6', 'http://127.0.0.1:9988/serverImage/articleImg-1575617350654.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-06 15:29:30');
INSERT INTO `article` VALUES (6, '吵完架，一起去吃早餐吧', '30', '6', 'http://127.0.0.1:9988/serverImage/articleImg-1575869425919.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-09 13:30:54');
INSERT INTO `article` VALUES (7, '创作是一个艰苦孕育的过程', '30', '4', 'http://127.0.0.1:9988/serverImage/articleImg-1575869587458.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p class=\"ql-align-center\"><img src=\"http://127.0.0.1:9988/serverImage/articleImg-1575869608113.jpg\"></p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-09 13:33:37');
INSERT INTO `article` VALUES (8, '关于你，我输了。', '30', '5', 'http://127.0.0.1:9988/serverImage/articleImg-1575869673046.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\n</pre><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-09 13:34:44');
INSERT INTO `article` VALUES (9, '不露声色的大人', '30', '7', 'http://127.0.0.1:9988/serverImage/articleImg-1575869720566.jpg', 'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', '<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><br></p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '1', 1, '2019-12-09 13:35:29');

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articlecate
-- ----------------------------
INSERT INTO `articlecate` VALUES (23, '生活', 0, '1', '2019-12-06 17:32:16');
INSERT INTO `articlecate` VALUES (24, '学习', 0, '1', '2019-12-06 17:32:58');
INSERT INTO `articlecate` VALUES (25, '慢生活', 23, '1', '2019-12-06 17:33:09');
INSERT INTO `articlecate` VALUES (26, '欢乐人生', 23, '1', '2019-12-06 17:33:26');
INSERT INTO `articlecate` VALUES (27, '学无止境', 24, '1', '2019-12-06 17:33:56');
INSERT INTO `articlecate` VALUES (28, '牛刀小试', 24, '1', '2019-12-06 17:34:08');
INSERT INTO `articlecate` VALUES (29, 'Bug总结', 24, '1', '2019-12-06 17:34:21');
INSERT INTO `articlecate` VALUES (30, '关于我', 23, '1', '2019-12-09 10:23:32');

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
  `navIndex` int(11) NULL DEFAULT NULL COMMENT '后台导航位置',
  `navStatus` int(11) NULL DEFAULT NULL COMMENT '状态',
  `type` int(11) NULL DEFAULT NULL COMMENT '0.页面  1.路由',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`navId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backendnav
-- ----------------------------
INSERT INTO `backendnav` VALUES (1, '首页', 'el-icon-s-home', '/home', 0, 1, 1, 1, '2019-11-22 10:53:39');
INSERT INTO `backendnav` VALUES (2, '用户管理', 'el-icon-user-solid', '/user', 0, 2, 1, 1, '2019-10-03 09:45:31');
INSERT INTO `backendnav` VALUES (3, '用户列表', NULL, '/user/userList', 2, 1, 1, 1, '2019-11-22 10:52:14');
INSERT INTO `backendnav` VALUES (4, '用户留言', NULL, '/user/userMsg', 2, 2, 1, 1, '2019-11-22 10:52:18');
INSERT INTO `backendnav` VALUES (5, '文章管理', 'el-icon-document', '/article', 0, 3, 1, 1, '2019-10-04 09:47:35');
INSERT INTO `backendnav` VALUES (6, '文章分类', NULL, '/article/articleCateList', 5, 1, 1, 1, '2019-11-22 10:52:22');
INSERT INTO `backendnav` VALUES (7, '文章列表', NULL, '/article/articleList', 5, 2, 1, 1, '2019-11-22 10:52:26');
INSERT INTO `backendnav` VALUES (8, '发布文章', NULL, '/article/releaseArticle', 5, 3, 1, 1, '2019-11-22 10:52:31');
INSERT INTO `backendnav` VALUES (9, '标签管理', 'el-icon-collection-tag', '/labels', 0, 4, 1, 1, '2019-10-06 09:50:52');
INSERT INTO `backendnav` VALUES (10, '数据统计', 'el-icon-s-data', '/charts', 0, 5, 2, 1, '2019-10-08 09:51:26');
INSERT INTO `backendnav` VALUES (11, '基本设置', 'el-icon-setting', '/config', 0, 6, 1, 1, '2019-11-29 14:51:48');
INSERT INTO `backendnav` VALUES (12, '后台导航列表', NULL, '/config/backgroundNavList', 11, 4, 1, 1, '2019-11-29 14:51:58');
INSERT INTO `backendnav` VALUES (13, '前台导航列表', NULL, '/config/frontDeskNavList', 11, 3, 1, 1, '2019-12-06 15:47:16');
INSERT INTO `backendnav` VALUES (19, '角色管理', '', '/config/roleList', 11, 1, 1, 1, '2019-11-22 15:01:28');
INSERT INTO `backendnav` VALUES (27, '查看用户列表', NULL, '/user/userList,/api/userList/getUserData,/api/userList/getLastDataId,/api/userList/getUserTotalList', 3, 1, 1, 0, '2019-11-28 13:06:58');
INSERT INTO `backendnav` VALUES (28, '查看用户详细信息', NULL, '/user/userDetails,/api/userList/showUserDetail', 3, 1, 1, 0, '2019-11-28 13:06:58');
INSERT INTO `backendnav` VALUES (29, '删除用户', NULL, '/api/userList/deleteUser', 3, 1, 1, 0, '2019-11-28 13:06:58');
INSERT INTO `backendnav` VALUES (30, '查看用户留言', NULL, '/user/userMsg,/api/userMsg/getLeaveMsgData,/api/userMsg/getUserMsgTotalList', 4, 1, 1, 0, '2019-11-28 13:07:21');
INSERT INTO `backendnav` VALUES (31, '删除用户留言', NULL, '/api/userMsg/deleteMsg', 4, 1, 1, 0, '2019-11-28 13:07:21');
INSERT INTO `backendnav` VALUES (32, '查看文章分类列表（一级、二级）', NULL, '/article/articleCateList,/api/article/getFirCateList,/article/secArticleCateList,/api/article/getSecCateList', 6, 1, 1, 0, '2019-11-28 13:08:38');
INSERT INTO `backendnav` VALUES (33, '新增文章分类（一级、二级）', NULL, '/article/addArticleCate,/api/article/addFirCate,/article/addSecArticleCate,/api/article/addSecCate', 6, 1, 1, 0, '2019-11-28 13:08:38');
INSERT INTO `backendnav` VALUES (34, '编辑文章分类（一级、二级）', NULL, '/article/editArticleCate,/api/article/getFirCateData,/api/article/editFirCateData,/article/editSecArticleCate,/api/article/getSecCateData', 6, 1, 1, 0, '2019-11-28 13:08:38');
INSERT INTO `backendnav` VALUES (35, '删除文章分类（一级、二级）', NULL, '/api/article/deleteFirCate,/api/article/deleteSecCate', 6, 1, 1, 0, '2019-11-28 13:08:38');
INSERT INTO `backendnav` VALUES (36, '停用 / 启用文章分类（一级、二级）', NULL, '/api/article/changeFirCateStatus', 6, 1, 1, 0, '2019-11-28 13:08:38');
INSERT INTO `backendnav` VALUES (37, '查看文章列表', NULL, '/article/articleList,/api/article/getArticleList,/api/article/articlePageGetCate', 7, 1, 1, 0, '2019-11-28 13:09:45');
INSERT INTO `backendnav` VALUES (38, '发布文章', NULL, '/api/article/releaseArticle', 7, 1, 1, 0, '2019-11-28 13:09:45');
INSERT INTO `backendnav` VALUES (39, '删除文章', NULL, '/api/article/deleteArticle', 7, 1, 1, 0, '2019-11-28 13:09:45');
INSERT INTO `backendnav` VALUES (40, '编辑文章', NULL, '/article/editArticle,/api/article/getEditArticle,/api/article/editArticle', 7, 1, 1, 0, '2019-11-28 13:09:45');
INSERT INTO `backendnav` VALUES (41, '新增文章，保存草稿', NULL, '/article/releaseArticle,/api/article/articlePageGetCate,/api/article/articlePageGetLabel,/api/article/addArticle', 8, 1, 1, 0, '2019-11-28 13:10:04');
INSERT INTO `backendnav` VALUES (42, '查看标签列表', NULL, '/labels,/api/labels/getLabelsList', 9, 1, 1, 0, '2019-11-28 13:10:51');
INSERT INTO `backendnav` VALUES (43, '新增标签', NULL, '/labels/addLabels,/api/labels/addLabels', 9, 1, 1, 0, '2019-11-28 13:10:51');
INSERT INTO `backendnav` VALUES (44, '编辑标签', NULL, '/labels/editLabels,/api/labels/getLabelData,/api/labels/editLabels', 9, 1, 1, 0, '2019-11-28 13:10:51');
INSERT INTO `backendnav` VALUES (45, '删除标签', NULL, '/api/article/deleteLabelsStatus', 9, 1, 1, 0, '2019-11-28 13:10:51');
INSERT INTO `backendnav` VALUES (46, '停用 / 启用标签', NULL, '/api/article/changeLabelsStatus', 9, 1, 1, 0, '2019-11-28 13:10:51');
INSERT INTO `backendnav` VALUES (47, '查看角色列表', NULL, '/config/roleList,/api/role/getRoleList', 19, 1, 1, 0, '2019-11-28 14:29:15');
INSERT INTO `backendnav` VALUES (48, '新增角色', NULL, '/config/addRole,/api/role/getFirRoleList,/api/role/getPermissionsList,/api/role/addRole', 19, 1, 1, 0, '2019-11-28 14:29:15');
INSERT INTO `backendnav` VALUES (49, '编辑角色', NULL, '/config/editRole,/api/role/getRoleData,/api/role/editRole,/api/role/editRoleIncludeChildren', 19, 1, 1, 0, '2019-11-28 14:29:15');
INSERT INTO `backendnav` VALUES (50, '删除角色', NULL, '/api/config/deleteRole', 19, 1, 1, 0, '2019-11-28 14:29:15');
INSERT INTO `backendnav` VALUES (51, '查看导航列表', NULL, '/config/backgroundNavList,/api/backend/getBackendNavList', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (52, '新增导航', NULL, '/config/addBackgroundNav,/api/backend/getFirBackendNavList,/api/backend/addBackendNav', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (53, '编辑导航', NULL, '/config/editBackgroundNav,/api/backend/getBackendNav,/api/backend/editBackendNav', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (54, '删除导航', NULL, '/api/backend/deleteBackendNav', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (55, '停用 / 启用导航', NULL, '/api/backend/disableBackendNav,/api/backend/enableBackendNav', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (56, '编辑权限', NULL, '/config/editPermission,/api/backend/getPermissionListData,/api/backend/editPermission', 12, 1, 1, 0, '2019-11-28 14:32:26');
INSERT INTO `backendnav` VALUES (58, '查看前台导航列表', NULL, '/api/frontDesk/getFrontDeskNavList', 13, 1, 1, 0, '2019-12-06 16:07:14');
INSERT INTO `backendnav` VALUES (59, '新增前台权限', NULL, '/config/addFrontDeskNav,/api/frontDesk/addFrontDeskNav', 13, 1, 1, 0, '2019-12-06 16:28:30');
INSERT INTO `backendnav` VALUES (60, '编辑前台权限', NULL, '/config/editFrontDeskNav,/api/frontDesk/getFrontDeskNavData,/api/frontDesk/editFrontDeskNav', 13, 1, 1, 0, '2019-12-06 17:02:23');
INSERT INTO `backendnav` VALUES (61, '改变导航状态', NULL, '/api/frontDesk/changeFrontDeskNavStatus', 13, 1, 1, 0, '2019-12-06 17:14:33');
INSERT INTO `backendnav` VALUES (62, '删除导航', NULL, '/api/frontDesk/deleteFrontDeskNav', 13, 1, 1, 0, '2019-12-06 17:14:33');

-- ----------------------------
-- Table structure for frontdesknav
-- ----------------------------
DROP TABLE IF EXISTS `frontdesknav`;
CREATE TABLE `frontdesknav`  (
  `navId` int(11) NOT NULL AUTO_INCREMENT,
  `navName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `navPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `navIndex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `navStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cateId` int(11) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`navId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frontdesknav
-- ----------------------------
INSERT INTO `frontdesknav` VALUES (1, '首页', '/home', '1', '1', NULL, '2019-12-06 15:53:28');
INSERT INTO `frontdesknav` VALUES (2, '关于我', '/about', '2', '1', 30, '2019-12-06 15:53:58');
INSERT INTO `frontdesknav` VALUES (3, '慢生活', '/cate', '3', '1', 25, '2019-12-06 15:54:26');
INSERT INTO `frontdesknav` VALUES (4, '学无止境', '/cate', '4', '1', 27, '2019-12-06 15:54:42');
INSERT INTO `frontdesknav` VALUES (5, '时间轴', '/timeline', '5', '1', NULL, '2019-12-06 15:55:05');
INSERT INTO `frontdesknav` VALUES (6, '留言', '/leave', '6', '1', NULL, '2019-12-06 15:55:40');

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
INSERT INTO `leavemsg` VALUES (5, 0, 1, 2, 2, '喜欢这篇文章', '2019-10-11 08:15:00');
INSERT INTO `leavemsg` VALUES (6, 5, 2, 1, 1, '多谢，互顶', '2019-10-11 13:15:00');
INSERT INTO `leavemsg` VALUES (7, 5, 1, 2, 1, '可以，#####，这我博客', '2019-10-11 19:15:00');
INSERT INTO `leavemsg` VALUES (8, 5, 1, 3, 1, '加我一个', '2019-10-13 13:30:00');
INSERT INTO `leavemsg` VALUES (9, 5, 3, 2, 1, '博客地址已发', '2019-10-13 15:15:00');
INSERT INTO `leavemsg` VALUES (10, 5, 2, 4, 1, '我也喜欢', '2019-10-14 12:15:00');
INSERT INTO `leavemsg` VALUES (11, 5, 4, 1, 1, '哈哈哈哈', '2019-10-14 20:15:00');
INSERT INTO `leavemsg` VALUES (12, 0, 1, 3, 4, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (13, 0, 1, 3, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (14, 0, 1, 3, 2, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (15, 0, 1, 2, 1, '荷兰优质淡奶，奶香浓而不腻', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (18, 0, 1, 4, 4, '荷兰优质淡奶，奶香浓而不腻4', '2019-10-15 13:15:00');
INSERT INTO `leavemsg` VALUES (19, 0, 1, 2, 2, '荷兰优质淡奶，奶香浓而不腻5', '2019-10-15 13:15:00');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `rolePId` int(11) NULL DEFAULT NULL COMMENT '父级角色ID',
  `rolePermissions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限ID',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 0, '1,2,3,27,28,29,4,30,31,5,6,32,33,34,35,36,7,37,38,39,40,8,41,9,42,43,44,45,46,10,11,12,51,52,53,54,55,56,13,58,59,60,61,62,19,47,48,49,50', '2019-11-22 11:07:24');
INSERT INTO `role` VALUES (2, '管理员', 0, '1,2,3,27,28,29,4,30,31,5,6,32,33,34,35,36,7,37,38,39,40,8,41,9,42,43,44,45,46,10', '2019-11-22 11:07:41');
INSERT INTO `role` VALUES (3, '普通博主', 2, '1,2,3,27,28,29,4,30,31,5,6,32,33,34,35,36,7,37,38,39,40,8,41,9,42,43,44,45,46,10', '2019-11-22 11:08:29');
INSERT INTO `role` VALUES (5, '观察者', 0, '1,27,28,30,32,37,42,10,51,13,47', '2019-11-22 17:23:32');

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
INSERT INTO `userinfo` VALUES (1, 'http://127.0.0.1:9988/serverImage/articleImg-1574843047158.jpg', '桂圆上火', 'ws15531085321@163.com', 2, '2019-09-21 13:15:00', '1');
INSERT INTO `userinfo` VALUES (2, 'http://127.0.0.1:9988/serverImage/articleImg-1574843049776.jpg', 'loss', '1233213144@163.com', 2, '2019-09-22 13:15:00', '1');
INSERT INTO `userinfo` VALUES (3, 'http://127.0.0.1:9988/serverImage/articleImg-1574843047158.jpg', 'bookman', 'asd223213123@163.com', 2, '2019-09-23 13:15:00', '1');
INSERT INTO `userinfo` VALUES (4, 'http://127.0.0.1:9988/serverImage/articleImg-1574843049776.jpg', 'asddd', 'asdfgfd33423@163.com', 2, '2019-09-23 13:15:00', '1');

SET FOREIGN_KEY_CHECKS = 1;
