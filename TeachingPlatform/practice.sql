/*
 Navicat Premium Data Transfer

 Source Server         : practice
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : practice

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 08/06/2021 12:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `colname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationdate` date NULL DEFAULT NULL,
  `top` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subject` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stick` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (6, '2016-5-135', '高级编程', '工科', 'Marc', 1);
INSERT INTO `course` VALUES (8, '2018-5-254', 'python', '工科', '吕佳', 0);

-- ----------------------------
-- Table structure for courseware
-- ----------------------------
DROP TABLE IF EXISTS `courseware`;
CREATE TABLE `courseware`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `colname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `creationdate` date NULL DEFAULT NULL,
  `college` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `top` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courseware
-- ----------------------------
INSERT INTO `courseware` VALUES (2, 'yu', 'ui', '教学视频', '2021-05-03', '文学院', 0);
INSERT INTO `courseware` VALUES (3, 'op', 'ij', '课程组成员', '2021-05-08', '', 1);

-- ----------------------------
-- Table structure for evangel
-- ----------------------------
DROP TABLE IF EXISTS `evangel`;
CREATE TABLE `evangel`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evangel
-- ----------------------------
INSERT INTO `evangel` VALUES (1, '【报佳音】我校荣获2020年度全市高校安全稳定工作先进单位', '2021-03-24', '。。。\n', 'https://www.cqnu.edu.cn/info/1101/6893.htm');
INSERT INTO `evangel` VALUES (2, '【报佳音】我校教师获“全国巾帼建功标兵”称号', '2021-03-10', '。。。', 'https://www.cqnu.edu.cn/info/1101/6845.htm');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `interpretion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (2, 'yu', '意见反馈', '登录注册界面友好.....', NULL);

-- ----------------------------
-- Table structure for journalism
-- ----------------------------
DROP TABLE IF EXISTS `journalism`;
CREATE TABLE `journalism`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journalism
-- ----------------------------
INSERT INTO `journalism` VALUES (2, '市委教育工委专职副书记覃正杰一行来校调研', '2021-05-22', '。。。', 'https://www.cqnu.edu.cn/info/1058/7247.htm');
INSERT INTO `journalism` VALUES (3, '我校召开2021年实验室建设滚动项目入库专家论证会', '2021-05-21', '。。。', 'https://www.cqnu.edu.cn/info/1058/7244.htm');
INSERT INTO `journalism` VALUES (4, '校党委中心组（扩大）学习会专题学习《中国共产党统一战线工作条', '2021-05-19', '。。。', 'https://www.cqnu.edu.cn/info/1058/7218.htm');
INSERT INTO `journalism` VALUES (5, '琼台师范学院曹阳校长一行来校调研交流', '2021-05-20', '。。。', 'https://www.cqnu.edu.cn/info/1058/7232.htm');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pattern` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parentId` int NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/', NULL, 1, '所有', NULL);
INSERT INTO `menu` VALUES (2, '/home', 1, 1, '所有管理', 'Home');
INSERT INTO `menu` VALUES (3, '/home', 2, 1, '公共信息', 'Home');
INSERT INTO `menu` VALUES (4, '/home', 2, 1, '基本信息', 'Home');
INSERT INTO `menu` VALUES (5, '/home', 2, 1, '权限管理', 'Home');
INSERT INTO `menu` VALUES (6, '/journalism/**', 3, 1, '重师要闻', 'Journalism');
INSERT INTO `menu` VALUES (7, '/evangel/**', 3, 1, '佳音在线', 'Evangel');
INSERT INTO `menu` VALUES (8, '/special/**', 3, 1, '专题聚焦', 'Special');
INSERT INTO `menu` VALUES (9, '/science/**', 3, 1, '学术动态', 'Science');
INSERT INTO `menu` VALUES (10, '/subject/**', 3, 1, '学科建设', 'Subject');
INSERT INTO `menu` VALUES (11, '/message/**', 3, 1, '通知公告', 'Message');
INSERT INTO `menu` VALUES (12, '/teacher/**', 4, 1, '教师管理', 'Teacher');
INSERT INTO `menu` VALUES (13, '/course/**', 4, 1, '课程管理', 'CourseManager');
INSERT INTO `menu` VALUES (14, '/article/**', 4, 1, '文章管理', 'Article');
INSERT INTO `menu` VALUES (15, '/user/**', 5, 1, '用户管理', 'UserManage');
INSERT INTO `menu` VALUES (16, '/uploadvideo/**', 19, 1, '上传视频', 'Uploadvideo');
INSERT INTO `menu` VALUES (17, '/releaselive/**', 19, 1, '发布直播信息', 'Releaselive');
INSERT INTO `menu` VALUES (18, '/personal/**', 4, 1, '个人信息', 'Personal');
INSERT INTO `menu` VALUES (19, '/', NULL, 1, '上传功能', '');

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int NULL DEFAULT NULL,
  `rid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1, 3, 1);
INSERT INTO `menu_role` VALUES (2, 4, 1);
INSERT INTO `menu_role` VALUES (3, 5, 1);
INSERT INTO `menu_role` VALUES (14, 6, 3);
INSERT INTO `menu_role` VALUES (15, 7, 3);
INSERT INTO `menu_role` VALUES (16, 8, 3);
INSERT INTO `menu_role` VALUES (17, 9, 3);
INSERT INTO `menu_role` VALUES (18, 10, 3);
INSERT INTO `menu_role` VALUES (19, 11, 3);
INSERT INTO `menu_role` VALUES (20, 12, 3);
INSERT INTO `menu_role` VALUES (21, 13, 3);
INSERT INTO `menu_role` VALUES (22, 14, 3);
INSERT INTO `menu_role` VALUES (23, 15, 1);
INSERT INTO `menu_role` VALUES (24, 16, 4);
INSERT INTO `menu_role` VALUES (25, 17, 4);
INSERT INTO `menu_role` VALUES (26, 18, 4);
INSERT INTO `menu_role` VALUES (27, 18, 5);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '重庆师范大学2021年考核招聘博士辅导员简章', '2021-05-18', '。。。。。', 'https://www.cqnu.edu.cn/info/1050/7193.htm');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_dba', '数据库管理员');
INSERT INTO `role` VALUES (2, 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES (3, 'ROLE_user', '用户');
INSERT INTO `role` VALUES (4, 'ROLE_teacher', '教师');
INSERT INTO `role` VALUES (5, 'ROLE_student', '学生');

-- ----------------------------
-- Table structure for science
-- ----------------------------
DROP TABLE IF EXISTS `science`;
CREATE TABLE `science`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES (1, '西南大学历史文化学院博士生导师徐松岩教授应邀来校讲学', '2021-05-22', '。。。', 'https://www.cqnu.edu.cn/info/1059/7251.htm');
INSERT INTO `science` VALUES (2, '我校承办2021“智能创新·开源共享”高峰论坛', '2021-05-18', '。。。', 'https://www.cqnu.edu.cn/info/1059/7210.htm');
INSERT INTO `science` VALUES (3, '四川大学历史文化学院博士生导师杨天宏教授应邀来校讲学', '2021-04-30', '。。。', 'https://www.cqnu.edu.cn/info/1059/7137.htm');

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES (1, '【第一线】外国语学院党政领导赴实习基地调研走访', '2021-05-24', '。。。', 'https://www.cqnu.edu.cn/info/1060/7254.htm');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (29, '徐昊', 22, '男');
INSERT INTO `student` VALUES (31, 'hello', 23, '女');
INSERT INTO `student` VALUES (32, '哈哈', 22, '男');

-- ----------------------------
-- Table structure for student_copy
-- ----------------------------
DROP TABLE IF EXISTS `student_copy`;
CREATE TABLE `student_copy`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of student_copy
-- ----------------------------
INSERT INTO `student_copy` VALUES (23, '徐昊', 22, '男');
INSERT INTO `student_copy` VALUES (25, '阿旺', NULL, NULL);
INSERT INTO `student_copy` VALUES (27, '信息', 35, 'VC');
INSERT INTO `student_copy` VALUES (28, '徐哈', 22, '男');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `http` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, '学科专业成果丰硕 学院建设持续推进——历史与社会学院以多样活', '2021-05-21', '。。。', 'https://www.cqnu.edu.cn/info/1061/7233.htm');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `education` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `working` tinyint(1) NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `e_mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `native_place` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` date NULL DEFAULT NULL,
  `major` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `technical_post` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `english_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `computer_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hobby` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `motto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (41, '2015356462555', 40, '许轲', '博士', '重庆师范大学', '110000,110100,110102', 1, '15652355915', '男', '2437465431@qq.com', '汉族', '重庆', '1980-09-18', '软件工程', '一级教师', '', '二级', '运动,旅游', '将来的你，\n会感谢现在努力的自己！\n加油！');
INSERT INTO `teacher` VALUES (42, '2016254651245', 23, '谭娜', '本科', '长江师范大学', '500000,500100,500105', 0, '13546549582', '女', '249555641@qq', '土家族', '重庆', '1998-10-19', '马克思主义', '高级教师', 'CET6', '三级', '冒险,旅游', '');
INSERT INTO `teacher` VALUES (45, '2015264455214', 54, '倪弘', '硕士', '华东师范大学', '510000,510100,510104', 0, '15659248654', '女', '', '', '', NULL, '软工', '', '', '', '学习,运动', '');
INSERT INTO `teacher` VALUES (54, '1564512345612', 23, '倪鸿', '专科', '重庆师范大学', '120000,120100,120101', 0, '13545645615', '女', '2469565431@qq.com', '汉族', '重庆', '1989-04-06', '软件工程', '一级教师', 'CET4', '二级', '娱乐,冒险', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'userID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) NULL DEFAULT 1,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `registTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '超级管理员', '18568887789', '029-82881234', '哈尔滨', 1, 'admin', '$2a$10$.xEipV/k4GbHDnVX9IbRVe35Bej4CGgzcwzpMRpmb95sdBXIwAsVG', NULL);
INSERT INTO `user` VALUES (2, '徐昊', '18568123489', '029-82123434', '重庆', 1, 'xuhao', '$2a$10$j.i/f4njiFN0k4TFmh5YS.IH2gtv6/h8eIIMY50BUJ/scKZdG1Ota', NULL);
INSERT INTO `user` VALUES (3, '老王', '18568123666', '029-82111555', '广州', 1, 'laowang', '$2a$10$IXzNQDEYnP6iiWt1HzIFb.QeZgColRvypfCDO8hXj74s98aXgoVeO', NULL);
INSERT INTO `user` VALUES (32, '老师', NULL, NULL, NULL, 1, 'teacher', '$2a$10$ml5pyKqqwX6tPlWgtZi38eNIqfRSHHtwmPYi5D8Zr9uJy1VRzcs4i', '2021-06-04 00:59:15');
INSERT INTO `user` VALUES (34, '学生', NULL, NULL, NULL, 1, 'student', '$2a$10$2kqjzRyK5U44.X4rfjDP3.IG/zG4zEnGO4n1T312uT2h.sMdLJdXq', '2021-06-04 01:20:51');
INSERT INTO `user` VALUES (35, '张三', NULL, NULL, NULL, 1, 'zhangsan', '$2a$10$BlmVMq3IJd1CbT3J/AJ4nu2Xn.4XZaRG7VqoDErFWi/CgJ0Rxyfa.', '2021-06-04 18:52:32');
INSERT INTO `user` VALUES (36, NULL, NULL, NULL, NULL, 1, 'yy', '$2a$10$N/50uQx8K9n4nT8Fff4OFuLhUu04qbAGEYshS2mimYJkLAJRJ2EGO', '2021-06-06 21:57:28');
INSERT INTO `user` VALUES (37, NULL, NULL, NULL, NULL, 1, 'yyy', '$2a$10$bwG3J79.7ihyqnseZ33CduA15S2rRIWFFMPtMq2rMQUZlJVnTz7PC', '2021-06-07 09:26:12');
INSERT INTO `user` VALUES (38, NULL, NULL, NULL, NULL, 1, 'hhh', '$2a$10$P.EF4VSlXZWA7RGbJ9Ub1O7TbHQ/A3jN24fMwn4cWTJ2T4vwtXs3a', '2021-06-07 16:43:51');
INSERT INTO `user` VALUES (39, NULL, NULL, NULL, NULL, 1, '张三', '$2a$10$PX5IVi2TGCkY66GBt.pUBOA9fgWE6jZUbsGAf9ZqgBqpi2Vj9aiia', '2021-06-07 16:49:34');
INSERT INTO `user` VALUES (40, NULL, NULL, NULL, NULL, 1, 'laoshi', '$2a$10$RiyOC2lvuUxoetfdg.PiK.naycdK4KkwVOEtXiUoeXcxriav36zg6', '2021-06-07 20:11:40');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `rid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 1, 2);
INSERT INTO `user_role` VALUES (3, 2, 3);
INSERT INTO `user_role` VALUES (4, 3, 2);
INSERT INTO `user_role` VALUES (5, 1, 3);
INSERT INTO `user_role` VALUES (10, 32, 4);
INSERT INTO `user_role` VALUES (12, 34, 5);
INSERT INTO `user_role` VALUES (13, 35, 3);
INSERT INTO `user_role` VALUES (14, 36, 4);
INSERT INTO `user_role` VALUES (15, 37, 5);
INSERT INTO `user_role` VALUES (16, 38, 4);
INSERT INTO `user_role` VALUES (17, 39, 4);
INSERT INTO `user_role` VALUES (18, 40, 4);

SET FOREIGN_KEY_CHECKS = 1;
