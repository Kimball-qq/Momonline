/*
 Navicat Premium Data Transfer

 Source Server         : momonline
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : momonline

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 13/11/2020 09:01:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add Bookmark', 6, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (22, 'Can change Bookmark', 6, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (23, 'Can delete Bookmark', 6, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (24, 'Can view Bookmark', 6, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (25, 'Can add User Setting', 7, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (26, 'Can change User Setting', 7, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (27, 'Can delete User Setting', 7, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (28, 'Can view User Setting', 7, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (29, 'Can add User Widget', 8, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (30, 'Can change User Widget', 8, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (31, 'Can delete User Widget', 8, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (32, 'Can view User Widget', 8, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (33, 'Can add log entry', 9, 'add_log');
INSERT INTO `auth_permission` VALUES (34, 'Can change log entry', 9, 'change_log');
INSERT INTO `auth_permission` VALUES (35, 'Can delete log entry', 9, 'delete_log');
INSERT INTO `auth_permission` VALUES (36, 'Can view log entry', 9, 'view_log');
INSERT INTO `auth_permission` VALUES (37, 'Can add revision', 10, 'add_revision');
INSERT INTO `auth_permission` VALUES (38, 'Can change revision', 10, 'change_revision');
INSERT INTO `auth_permission` VALUES (39, 'Can delete revision', 10, 'delete_revision');
INSERT INTO `auth_permission` VALUES (40, 'Can view revision', 10, 'view_revision');
INSERT INTO `auth_permission` VALUES (41, 'Can add version', 11, 'add_version');
INSERT INTO `auth_permission` VALUES (42, 'Can change version', 11, 'change_version');
INSERT INTO `auth_permission` VALUES (43, 'Can delete version', 11, 'delete_version');
INSERT INTO `auth_permission` VALUES (44, 'Can view version', 11, 'view_version');
INSERT INTO `auth_permission` VALUES (45, 'Can add captcha store', 12, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (46, 'Can change captcha store', 12, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (47, 'Can delete captcha store', 12, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (48, 'Can view captcha store', 12, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (49, 'Can add 轮播图', 13, 'add_banner');
INSERT INTO `auth_permission` VALUES (50, 'Can change 轮播图', 13, 'change_banner');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 轮播图', 13, 'delete_banner');
INSERT INTO `auth_permission` VALUES (52, 'Can view 轮播图', 13, 'view_banner');
INSERT INTO `auth_permission` VALUES (53, 'Can add 邮箱验证码', 14, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (54, 'Can change 邮箱验证码', 14, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 邮箱验证码', 14, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (56, 'Can view 邮箱验证码', 14, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (57, 'Can add user', 15, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (58, 'Can change user', 15, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (59, 'Can delete user', 15, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (60, 'Can view user', 15, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (61, 'Can add 课程', 16, 'add_course');
INSERT INTO `auth_permission` VALUES (62, 'Can change 课程', 16, 'change_course');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 课程', 16, 'delete_course');
INSERT INTO `auth_permission` VALUES (64, 'Can view 课程', 16, 'view_course');
INSERT INTO `auth_permission` VALUES (65, 'Can add 章节', 17, 'add_lession');
INSERT INTO `auth_permission` VALUES (66, 'Can change 章节', 17, 'change_lession');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 章节', 17, 'delete_lession');
INSERT INTO `auth_permission` VALUES (68, 'Can view 章节', 17, 'view_lession');
INSERT INTO `auth_permission` VALUES (69, 'Can add 视频', 18, 'add_video');
INSERT INTO `auth_permission` VALUES (70, 'Can change 视频', 18, 'change_video');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 视频', 18, 'delete_video');
INSERT INTO `auth_permission` VALUES (72, 'Can view 视频', 18, 'view_video');
INSERT INTO `auth_permission` VALUES (73, 'Can add 课程资源', 19, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (74, 'Can change 课程资源', 19, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 课程资源', 19, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (76, 'Can view 课程资源', 19, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (77, 'Can add 课程评论', 20, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (78, 'Can change 课程评论', 20, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 课程评论', 20, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (80, 'Can view 课程评论', 20, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (81, 'Can add 用户咨询', 21, 'add_userask');
INSERT INTO `auth_permission` VALUES (82, 'Can change 用户咨询', 21, 'change_userask');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 用户咨询', 21, 'delete_userask');
INSERT INTO `auth_permission` VALUES (84, 'Can view 用户咨询', 21, 'view_userask');
INSERT INTO `auth_permission` VALUES (85, 'Can add 用户课程', 22, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (86, 'Can change 用户课程', 22, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 用户课程', 22, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (88, 'Can view 用户课程', 22, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (89, 'Can add 用户收藏', 23, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (90, 'Can change 用户收藏', 23, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 用户收藏', 23, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (92, 'Can view 用户收藏', 23, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (93, 'Can add 用户消息', 24, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (94, 'Can change 用户消息', 24, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 用户消息', 24, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (96, 'Can view 用户消息', 24, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (97, 'Can add 城市', 25, 'add_citydict');
INSERT INTO `auth_permission` VALUES (98, 'Can change 城市', 25, 'change_citydict');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 城市', 25, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (100, 'Can view 城市', 25, 'view_citydict');
INSERT INTO `auth_permission` VALUES (101, 'Can add 课程机构', 26, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (102, 'Can change 课程机构', 26, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 课程机构', 26, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (104, 'Can view 课程机构', 26, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (105, 'Can add 讲师', 27, 'add_teacher');
INSERT INTO `auth_permission` VALUES (106, 'Can change 讲师', 27, 'change_teacher');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 讲师', 27, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (108, 'Can view 讲师', 27, 'view_teacher');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (5, 'MHHI', 'mhhi', '2ce4dbaf151c715fe731d068bbc6ea50b8072611', '2020-11-12 09:49:47.271778');

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_time` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_course_course_org_id_6a10e205_fk_organizat`(`course_org_id`) USING BTREE,
  INDEX `course_course_teacher_id_f04a37b5_fk_organization_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES (1, 'python开发', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'cj', 123131, 1214, 232423, 'courses/2020/11/QQ浏览器截图20201111092600_HOsvrTX.png', 31131, '2020-11-12 10:17:00.000000', 3, '', '', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (2, '微博开发', '阿斯达是的发生的', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'cj', 23122, 1313, 14134, 'courses/2020/11/QQ浏览器截图20201111092600_FErDZsH.png', 23427, '2020-11-12 10:18:00.000000', 1, '', '', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (3, 'web开发', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'zj', 342342, 32424, 23423, 'courses/2020/11/QQ浏览器截图20201020184652.png', 23425, '2020-11-12 10:19:00.000000', 2, '', '', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (4, 'PHP和', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'zj', 123123, 12312, 12331, 'courses/2020/11/QQ浏览器截图20201111092852_Ik9m8Sf.png', 234240, '2020-11-12 10:20:00.000000', 3, '', '', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (5, 'web个东方闪电', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'gj', 12312, 3235, 23424, 'courses/2020/11/QQ浏览器截图20201111093251_b9oTNLX.png', 23424, '2020-11-12 10:20:00.000000', 4, '', '', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (6, '沃尔沃', '维多利亚葡萄', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 'cj', 445, 5448, 4534, 'courses/2020/11/QQ浏览器截图20201020184652_QZLkOec.png', 4550, '2020-11-12 10:23:00.000000', 6, '大数据', 'PHP', NULL, '', '', 0);
INSERT INTO `course_course` VALUES (7, '法国队', '俺师傅说', '阿斯顿发送到发生的方式让我和奋斗士大夫士大夫士大夫撒发士大夫撒法定', 'cj', 5345, 34569, 4534, 'courses/2020/11/QQ浏览器截图20201111092600_zzwmwvr.png', 5480, '2020-11-12 10:23:00.000000', 10, '人工智能', 'VR', NULL, '', '', 0);

-- ----------------------------
-- Table structure for course_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `course_courseresource`;
CREATE TABLE `course_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_courseresource_course_id_d5504211_fk_course_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_courseresource
-- ----------------------------
INSERT INTO `course_courseresource` VALUES (1, '大萨达', 'course/resource/2020/11/QQ浏览器截图20201111093251.png', '2020-11-12 10:27:00.000000', 1);
INSERT INTO `course_courseresource` VALUES (2, '敖德萨多所多', 'course/resource/2020/11/QQ浏览器截图20201020184652.png', '2020-11-12 10:27:00.000000', 5);

-- ----------------------------
-- Table structure for course_lession
-- ----------------------------
DROP TABLE IF EXISTS `course_lession`;
CREATE TABLE `course_lession`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_lession_course_id_d717179a_fk_course_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `course_lession_course_id_d717179a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_lession
-- ----------------------------
INSERT INTO `course_lession` VALUES (1, '发范德001', '2020-11-12 10:24:00.000000', 1);
INSERT INTO `course_lession` VALUES (2, '阿斯蒂芬002', '2020-11-12 10:25:00.000000', 1);
INSERT INTO `course_lession` VALUES (3, '阿萨省003', '2020-11-12 10:25:00.000000', 1);
INSERT INTO `course_lession` VALUES (4, '阿斯顿发送到', '2020-11-12 10:25:00.000000', 3);
INSERT INTO `course_lession` VALUES (5, '奥术大师', '2020-11-12 10:25:00.000000', 3);
INSERT INTO `course_lession` VALUES (6, '送达方式', '2020-11-12 10:25:00.000000', 2);
INSERT INTO `course_lession` VALUES (7, '阿斯顿发送到', '2020-11-12 10:25:00.000000', 4);
INSERT INTO `course_lession` VALUES (8, '阿斯顿发生', '2020-11-12 10:26:00.000000', 4);
INSERT INTO `course_lession` VALUES (9, '阿斯顿发生', '2020-11-12 10:26:00.000000', 5);
INSERT INTO `course_lession` VALUES (10, '阿道夫', '2020-11-12 10:26:00.000000', 5);
INSERT INTO `course_lession` VALUES (11, '阿斯顿发送到', '2020-11-12 10:26:00.000000', 6);
INSERT INTO `course_lession` VALUES (12, '撒地方撒', '2020-11-12 10:26:00.000000', 7);
INSERT INTO `course_lession` VALUES (13, '撒打算', '2020-11-12 10:26:00.000000', 7);
INSERT INTO `course_lession` VALUES (14, '敖德萨所', '2020-11-12 10:26:00.000000', 3);
INSERT INTO `course_lession` VALUES (15, '打发撒旦法', '2020-11-12 10:26:00.000000', 2);
INSERT INTO `course_lession` VALUES (16, '按地方撒奥德赛', '2020-11-12 10:26:00.000000', 5);

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_video_lesson_id_0731e8a9_fk_course_lession_id`(`lesson_id`) USING BTREE,
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lession_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lession` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES (1, '大师傅', '2020-11-12 10:26:00.000000', 1, '天堂影院', 0);
INSERT INTO `course_video` VALUES (2, '大法师', '2020-11-12 10:26:00.000000', 1, '天堂影院', 0);
INSERT INTO `course_video` VALUES (3, '打发撒旦法', '2020-11-12 10:27:00.000000', 2, '天堂影院', 0);
INSERT INTO `course_video` VALUES (4, 'ad发送到发斯蒂芬', '2020-11-12 10:27:00.000000', 4, '天堂影院', 0);
INSERT INTO `course_video` VALUES (5, '的撒发地方撒地方', '2020-11-12 10:27:00.000000', 4, '天堂影院', 0);
INSERT INTO `course_video` VALUES (6, '爱的方式的', '2020-11-12 10:27:00.000000', 3, '天堂影院', 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (12, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (16, 'course', 'course');
INSERT INTO `django_content_type` VALUES (19, 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES (17, 'course', 'lession');
INSERT INTO `django_content_type` VALUES (18, 'course', 'video');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (22, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (23, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (24, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (25, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (26, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (27, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (10, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (11, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (13, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (14, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (15, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (6, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-11-12 09:35:00.517469');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-11-12 09:35:01.371187');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-11-12 09:35:02.852451');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-11-12 09:35:06.040972');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-11-12 09:35:06.085855');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-11-12 09:35:06.137697');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-11-12 09:35:06.188529');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-11-12 09:35:06.238397');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-11-12 09:35:06.291285');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-11-12 09:35:06.348102');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-11-12 09:35:06.395005');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-11-12 09:35:06.926556');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-11-12 09:35:06.963488');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2020-11-12 09:35:08.822673');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-11-12 09:35:13.321767');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-11-12 09:35:15.472253');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-12 09:35:15.524115');
INSERT INTO `django_migrations` VALUES (18, 'captcha', '0001_initial', '2020-11-12 09:35:15.861182');
INSERT INTO `django_migrations` VALUES (19, 'organization', '0001_initial', '2020-11-12 09:35:17.526083');
INSERT INTO `django_migrations` VALUES (20, 'course', '0001_initial', '2020-11-12 09:35:20.827536');
INSERT INTO `django_migrations` VALUES (21, 'operation', '0001_initial', '2020-11-12 09:35:27.707672');
INSERT INTO `django_migrations` VALUES (22, 'operation', '0002_auto_20201112_0927', '2020-11-12 09:35:29.778500');
INSERT INTO `django_migrations` VALUES (23, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-11-12 09:35:37.657134');
INSERT INTO `django_migrations` VALUES (24, 'reversion', '0002_auto_20201104_2112', '2020-11-12 09:35:44.748163');
INSERT INTO `django_migrations` VALUES (25, 'reversion', '0003_auto_20201105_0829', '2020-11-12 09:35:46.740871');
INSERT INTO `django_migrations` VALUES (26, 'reversion', '0004_auto_20201105_0831', '2020-11-12 09:35:48.800325');
INSERT INTO `django_migrations` VALUES (27, 'reversion', '0005_auto_20201105_0834', '2020-11-12 09:35:50.765322');
INSERT INTO `django_migrations` VALUES (28, 'sessions', '0001_initial', '2020-11-12 09:35:51.122336');
INSERT INTO `django_migrations` VALUES (29, 'xadmin', '0001_initial', '2020-11-12 09:35:53.441833');
INSERT INTO `django_migrations` VALUES (30, 'xadmin', '0002_log', '2020-11-12 09:36:00.221700');
INSERT INTO `django_migrations` VALUES (31, 'xadmin', '0003_auto_20160715_0100', '2020-11-12 09:36:05.606299');
INSERT INTO `django_migrations` VALUES (32, 'xadmin', '0004_auto_20201104_2112', '2020-11-12 09:36:13.832298');
INSERT INTO `django_migrations` VALUES (33, 'xadmin', '0005_auto_20201105_0829', '2020-11-12 09:36:19.749835');
INSERT INTO `django_migrations` VALUES (34, 'xadmin', '0006_auto_20201105_0831', '2020-11-12 09:36:26.624423');
INSERT INTO `django_migrations` VALUES (35, 'xadmin', '0007_auto_20201105_0834', '2020-11-12 09:36:34.116352');
INSERT INTO `django_migrations` VALUES (36, 'course', '0002_auto_20201112_1437', '2020-11-12 14:38:05.778773');
INSERT INTO `django_migrations` VALUES (37, 'course', '0003_video_url', '2020-11-12 14:53:35.866559');
INSERT INTO `django_migrations` VALUES (38, 'course', '0004_video_learn_times', '2020-11-12 15:00:02.704075');
INSERT INTO `django_migrations` VALUES (39, 'course', '0005_auto_20201112_1535', '2020-11-12 15:35:50.326742');
INSERT INTO `django_migrations` VALUES (40, 'users', '0002_auto_20201112_1649', '2020-11-12 16:49:10.147783');
INSERT INTO `django_migrations` VALUES (41, 'course', '0006_auto_20201112_1717', '2020-11-12 17:17:32.992679');
INSERT INTO `django_migrations` VALUES (42, 'organization', '0002_auto_20201112_1717', '2020-11-12 17:17:33.466142');
INSERT INTO `django_migrations` VALUES (43, 'users', '0003_auto_20201112_1826', '2020-11-12 18:26:50.343952');
INSERT INTO `django_migrations` VALUES (44, 'users', '0004_auto_20201112_1829', '2020-11-12 18:29:49.958063');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('s2yc5liw86b99frmz0xpcr41vtsz73j8', 'ODA1YzMwMjUzYjBlYTY4YTU1ZTBiYTQzODE0NDNiYzY1ZDRkNjcxNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZmNTExY2RjZmM3MTEzOThiYTgyYmU0NTYyNTJhMzU4OTc0MGQxZmEiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2020-11-26 19:41:36.991639');
INSERT INTO `django_session` VALUES ('x19gv5i7tozgnzlzzn2ofvlac04b7q8q', 'OGQwODM0MWM2M2NkZDgxZjU1OTg2NGViNTZjMGUyODA4ZTlkNjAzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMxY2NjY2Q0NWRmM2U3YjUzM2Y5ZmQ0ZDk1MWYyYzA3NmM5OGYyOTUifQ==', '2020-11-26 09:46:07.287482');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id`(`course_id`) USING BTREE,
  INDEX `operation_coursecomm_user_id_f5ff70b3_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (1, 'mabo', '18535734095', '111', '2020-11-12 11:05:51.952849');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_course_id_9f1eab2e_fk_course_course_id`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2020-11-12 15:06:22.491485', 7, 2);
INSERT INTO `operation_usercourse` VALUES (2, '2020-11-12 16:13:49.965148', 2, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2020-11-12 16:14:10.659799', 3, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2020-11-12 16:26:40.791738', 1, 2);
INSERT INTO `operation_usercourse` VALUES (5, '2020-11-12 16:39:07.619996', 6, 2);
INSERT INTO `operation_usercourse` VALUES (6, '2020-11-12 19:20:54.213258', 5, 2);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (2, 1, 2, '2020-11-12 14:10:48.693726', 2);
INSERT INTO `operation_userfavorite` VALUES (5, 4, 1, '2020-11-12 19:25:10.552447', 2);
INSERT INTO `operation_userfavorite` VALUES (7, 3, 2, '2020-11-12 19:25:39.932730', 2);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '上海', '中西方文化融合的一座超现代化城市——上海，中国最接近西方文化的城市，发达而具有自己最独特的魅力，中国最繁华的大都市，魔都，发达程度在全世界能排上名次', '2020-11-12 09:50:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '洛阳', '中国文化古城——洛阳（西安），洛阳和西安是密不可分的，武则天当初从西安迁出，把洛阳作为东都，发展自己的势力政权，而前前后后洛阳有十三位皇帝在这里定都', '2020-11-12 09:51:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '重庆', '重庆火锅，重庆山城，重庆的夜景在国内外都有一定的知名度。重庆也以3000多万的人口经常被人们津津乐道。很多人去重庆也主要是为了吃火锅', '2020-11-12 09:51:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '巴塞罗那', '地理方位：巴塞罗那是西班牙东北部加泰隆尼亚自治区首府，北邻法国，东南部濒临地中海，是地中海第二大港，也是西班牙仅次于马德里的第二大城市', '2020-11-12 09:51:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '伊斯坦布尔', '伊斯坦布尔之所以闻名于世，主要原因之一是其得天独厚的地理位置。在亚洲大陆最西端的黑海与地中海之间，有一条至关重要的“黄金水道”，它把亚洲和欧洲大陆分割开来，其中间部分是马尔马拉海峡，南端叫达达尼尔海峡，北端叫博斯普鲁斯海峡，总称黑海海峡。此“黄金水道”是黑海通向外界的咽喉要地，伊斯坦布尔就坐落在博斯普鲁斯海峡的南端。从这里出发向北从海上直达黑海沿岸各国；向南接着地中海，从海上可通欧、亚、非三个大陆；站在伊斯坦布尔的高处向西望去，欧洲大陆近在咫尺；向东虽有帕米尔高原阻隔，但200O年间丝绸之路上商贾不断往来。这种优越的地理位置，不仅使其成为洲际交通枢纽，而且成为兵家必争之地。', '2020-11-12 09:52:00.000000');
INSERT INTO `organization_citydict` VALUES (6, '耶路撒冷', '耶路撒冷位于近东黎凡特地区的一座历史悠久的城市，在地理上位于犹大山地，介于地中海与死海之间。', '2020-11-12 09:53:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '伦敦', '伦敦最早是一个凯尔特人的城镇，由罗马入侵者于公元50年左右建立，作为泰晤士河畔的一个港口，并命名为Londinium。公元7世纪罗马帝国灭亡後，Londinium遭弃城，撒克逊人於今Aldwych以西1英里处建立了Lundenwic的城镇。直到公元9至10世纪罗马伦敦老城才再次恢复人烟。 　　\r\n\r\n伦敦逐渐地发展、扩大，吸收了附近的村庄、聚居地方，向四面八方扩散。到17世纪时伦敦已经是当时大英帝国乃至欧洲最大的都市。1666年的伦敦大火灾毁坏了伦敦城内大部分的建筑但大火后伦敦又立即开始了10年间的重建，包括圣保罗大教堂在内的标志性建筑都是在此期间开始动工的。', '2020-11-12 09:53:00.000000');
INSERT INTO `organization_citydict` VALUES (8, '纽约', '纽约位于纽约州东南哈得孙河口，濒临大西洋。它由五个区组成：曼哈顿、布鲁克林、布朗克斯、昆斯和里士满，面积828. 8平方公里，市区人口700多万，包括郊区在内的大纽约市人口1800万。纽约还是联合国总部所在地，总部大厦坐落在曼哈顿岛东河河畔。\r\n\r\n纽约市是美国最大都市及第一大港，也是世界第五大都市，位于美国东海岸北部，纽约州东南部。纽约是世界最著名城市之一、是国际经济、金融、艺术、传媒之都、联合国总部所在地。纽约市还是众多世界级博物馆、画廊和演艺比赛场地的所在地，使其成为西半球的文化及娱乐中心之一。由于有着超过八百万人口(生活在309平方英里的土地上)，和来自180多个国家的大量移民，这个城市常常被亲切地称呼为大苹果除了这些海外移民外，这个城市又是许多希望体验一个比美国其它地方更加国际化的生活方式的外地美国人的家。', '2020-11-12 09:53:00.000000');
INSERT INTO `organization_citydict` VALUES (9, '巴黎', '法国首都巴黎是欧洲大陆上第二大城市，也是世界上最繁华的都市之一。地处法国北部，塞纳河西岸，距河口(英吉利海峡)375公里。塞纳河蜿蜒穿过城市，形成两座河心岛(斯德和圣路易)。市区人口217万。城市本身在巴黎盆地中央，属温和的海洋性气候，冬暖夏凉；1月平均气温3℃，7月平均气温18℃，年平均气温10℃。全年降雨分布均衡，夏秋季稍多，年平均降雨量619毫米。\r\n\r\n早在地球上尚未存在“法兰西”这个国家，也未曾有今天我们称为“法兰西人”的两千多年前，便有了古代巴黎。不过，那时的巴黎还只是塞纳河中间西岱岛上的一个小渔村，岛上的主人是古代高卢部族的“巴黎西人”。公元前一世纪，罗马人开始在此定居并逐渐将其发展成为一座城市，名为“吕岱兹”(法语“沼泽”的意思)。公元4世纪时，为纪念此地最早的主人，将该城命名为“巴黎”。', '2020-11-12 09:53:00.000000');
INSERT INTO `organization_citydict` VALUES (10, '里约热内卢', '里约热内卢位于巴西国土的东南部，南临大西洋，在向北伸入的瓜纳巴拉湾西岸，有长达14公里的跨湾公路大桥与东岸的尼泰罗伊市相连。1502年1月，葡萄牙航海家来到海湾，误以为这里是一条大河的入海口，随口起名\"一月的河\"，译音便是\"里约热内卢\"。建于1565年，1763年到1960年为首都，1960年迁都巴西利亚。\r\n\r\n里约市坐落在美丽的瓜纳巴拉海湾，依山傍水，风景优美，是巴西和世界著名的旅游观光胜地。主要名胜有耶稣山、面包山、尼特罗伊大桥、马拉卡纳体育场、植物园等。里约的海滩举世闻名，其数目和延伸长度为世界之最，全市共有海滩72个，其中两个最有名的海滩是：科巴卡巴纳海滩和依巴内玛海滩。', '2020-11-12 09:54:00.000000');
INSERT INTO `organization_citydict` VALUES (11, '旧金山', '旧金山的确是一个度假的天堂。文史景观赏心悦目，餐馆佳肴令人惊喜，大饭店的富丽超乎想象。游客所期望的美国大城市中的戏剧表演和体育运动，这里也应有尽有。 　　从空中俯瞰旧金山，这座城市就象晶体管收音机一样整洁：一块块精妙绝伦的维多利亚式的建筑群、四四方方的公园、蔚蓝的海滨美景，摩天大楼装饰精美，反光玻璃辉映着绚丽的街景，蜿蜒曲折的高速公路连绵伸向高耸入云的商业区。 　　\r\n\r\n旧金山的最强音是移民们迸发出的热情，这是一个令人陶醉的文化混合体：特色鲜明的意大利人，中国人、西班牙人、日本人和南亚人等不同的聚居区点缀在加州这块土地上。', '2020-11-12 09:54:00.000000');
INSERT INTO `organization_citydict` VALUES (12, '威尼斯', '威尼斯是一个美丽的城市，它建筑在最不可能建造城市的地方。这个面积只有不到7平方公里的城市，一度曾握有全欧最强大的人力、物力和权势。威尼斯的历史相传开始于公元453年；当时这个地方的农民和渔民为逃避酷嗜刀兵的游牧民族，转而避往亚德里亚海中的这个小岛。肥沃的冲积土质，就地而取材的石块，加上用邻近内陆的木头做的小船往来其间；在淤泥中，在水上，先祖们建起了威尼斯。\r\n\r\n这个不到8平方公里的城市，却被一百多条蛛网般密布的运河割成一百多座小岛，岛与岛之间只凭各式桥梁错落连接，初来乍到很快便会迷失在这座“水城”中。好在有大运河呈S形贯穿整个城市。沿着这条号称“威尼斯最长的街道”，可以饱览威尼斯的精华而不用担心迷路。沿岸的近200栋宫殿、豪宅和七座教堂，多半建于14至16世纪，有拜占庭风格、哥特风格、巴洛克风格、威尼斯式等等，所有的建筑地基都淹没在水中，看起来就像水中升起的一座艺术长廊。平日里大运河真的像一条熙熙攘攘的大街一样，各式船只往来穿梭其上，最别致的当然还是贡多拉。', '2020-11-12 09:54:00.000000');
INSERT INTO `organization_citydict` VALUES (13, '香港', '在香港，最令摄影人难忘的是香港的城市夜景，香港最有名的观看城市夜景的地方是太平山顶与维多利亚港，太平山俗称山顶，雄居香港岛的西部，海拔554米，是港岛最高的山峰，为香港岛之巅，也是俯瞰维多利亚港景色的最佳地点，游览香港的第一焦点，一直是香港的标志。它又称维多利亚峰或扯旗山，是港岛最负盛名的豪华高级住宅区。游览太平山，可以乘车从公路盘旋而上山顶。不过，更多的游客喜欢选择登山缆车站在太平山上放眼四望，当夜幕低垂，华灯初放之时，港岛和九龙宛如镶嵌在维多利亚港湾的两颗明珠，互相辉映。 　　\r\n\r\n维多利亚港是位于香港的香港岛和九龙半岛之间的港口和海域，是世界第三大海港，而在维多利亚港看香港城市霓虹灯火带给你的是无尽的繁华与浪漫，如果您乘坐观光轮船，可以观赏两岸红磡、尖沙咀与香港岛的心脏中环地区，但见高楼林立，灯火辉煌，无不彰显着“东方明珠”香港的繁华兴旺。 　　\r\n\r\n内地人去香港多数都要去香港会展中心前紫荆广场，金紫荆雕像矗立于香港会议展览中心新翼海旁的博览海滨花园内。在海风轻拂下，香港会展中心前紫荆广场上镀金的紫荆花显得无比灿烂绚丽。游人喜欢在此留影，成为到香港最有意义的纪念与美好回忆。', '2020-11-12 09:54:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `city_id` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseo_city_id_4a842f85_fk_organizat`(`city_id`) USING BTREE,
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '欧美思教育', '欧美思教育加盟，经市场调查可知：欧美思教育加盟店经营平均利润在百分之六十五以上，欧美思教育特别符合早教市场需求，发展前景可观。在这个竞争激烈的社会，孩子的成长和教育也就成了家长的重要诉求，从小培养孩子的兴趣爱好，也是很多家长所重视和追求的，欧美思教育无处不在，欧美思教育有益于孩子在成长培养综合能力、锻炼意志力方面都有显著的成效，赢得了很高的家长满意度。', 'pxjg', 2313, 3413, 23423, 232, 'org/202011/QQ浏览器截图20201112100028.png', '北京', '2020-11-12 09:57:00.000000', 1, '全国知名');
INSERT INTO `organization_courseorg` VALUES (2, '火星时代科', '北京火星时代科技有限公司，其前身“王琦电脑动画工作室”成立于1993年，是较早进入中国电脑动画领域的企业之一。其自主知名品牌“火星人”系列CG教材，自1997年创办起，已有十多年的历史，在业内享有极高的知名度；火星时代网则已成为全国知名的CG网络媒体。\r\n\r\n北京火星时代科技有限公司，成立于2001年4月，经过多年的发展运作，公司目前已是一家集实体培训、在线教育、图书出版、网络媒体于一身的大型动漫企业。公司秉承超前的经营理念，可持续发展的创新能力，获得了中国动漫界的多个奖项。其旗下的火星时代实训基地连续多年荣获“中国十大CG培训机构”及“最受欢迎培训机构”的奖项和荣誉称号。', 'pxjg', 34234, 234, 342, 2342, 'org/202011/9d063ecd458543378fe46da6cc3ebf92_q5QsO9B.jpg', '纽约', '2020-11-12 10:01:00.000000', 2, '全国知名');
INSERT INTO `organization_courseorg` VALUES (3, '北大青鸟', '北大青鸟APTECH（全称北京阿博泰克北大青鸟信息技术有限公司），由北大青鸟集团与印度阿博泰克（APTECH）合资成立于1999年。公司依托北京大学优质雄厚的教育资源和背景，秉承“教育改变生活”的发展理念，一直致力于培养中国IT技能型紧缺人才，通过特许加盟和院校合作两大经营模式以及先进的IT职业教育课程体系在教育领域广泛开展合作。\r\n\r\n北大青鸟APTECH在中国职业教育发展的重要历史阶段，始终引领行业发展方向，并以完善的标准化管理为依托实现了体系的规模化发展。当前，北大青鸟APTECH的200余家授权培训中心遍布全国60多个重要城市，全国合作院校超过600所，同10000余家知名企业建立了战略合作伙伴关系，累计培养和输送50余万IT职业化人才进入IT行业，得到了社会各界广泛的认可。', 'pxjg', 34234, 2342, 4522, 322, 'org/202011/e26bbf3d73bec79e82e03450eb69a5eb_uQstkLQ.jpg', '东京', '2020-11-12 10:02:00.000000', 3, '全国知名');
INSERT INTO `organization_courseorg` VALUES (4, '学大教育', '学成世纪(北京)信息技术有限公司，学大教育，中国十大教育培训机构，国内个性化教育的领导者，中小学个性化教育领先品牌，全国最大规模的个性化教育连锁机构之一，实现O2O转型的教育机构。\r\n\r\n学大教育集团（NYSE:XUE）创立于2001年9月，目前已在全国81个城市开设了462多所个性化学习中心，在全国拥有近17000名员工，其中专职教师逾万人，是目前国内个性化教育辅导机构的领导者。2010年11月2日，学大教育集团以“XUE”为股票代码，在纽约股票交易所（NYSE）上市交易，是迄今中国赴美IPO融资规模最大的教育类公司。', 'pxjg', 4244, 4444, 4444, 244, 'org/202011/14364260817680_SjDcSzQ.jpg', '首尔', '2020-11-12 10:04:00.000000', 7, '全国知名');
INSERT INTO `organization_courseorg` VALUES (5, '好未来', '好未来(NYSE:XRS)，英文缩写：TAL（TomorrowAdvancingLife），是一家中国领先的教育科技企业，以科技驱动、人才亲密、品质领先为发展的核心目标。自创立以来，一直致力于促进科技互联网与教育融合，为孩子创造更美好的学习体验。\r\n\r\n10余年来，好未来致力科技互联网推动教育进步，旗下拥有子品牌：学而思培优、智康1对1、摩比思维馆、学而思网校、家长帮、乐外教、考研网和励步英语。其中，学而思培优作为K12高端培优教育平台，下设三个子品牌：学而思理科、乐加乐英语和东学堂语文。在全国26个城市，共有150万学员走进好未来的课堂，另有160万学员通过线上获取优质的教育资源。另外，好未来旗下的家长帮是国内覆盖面广、可信度高的教育互联网信息平台，月度活跃用户达3000万人。', 'pxjg', 4257, 4444, 5555, 343, 'org/202011/14930607228970_1y7yUmZ.gif', '伦敦', '2020-11-12 10:05:00.000000', 5, '全国知名');
INSERT INTO `organization_courseorg` VALUES (6, '新东方', '新东方教育科技集团，由1993年11月16日成立的北京新东方学校发展壮大而来，目前集团以语言培训为核心，拥有短期培训系统、基础教育系统、文化传播系统、科技产业系统、咨询服务系统等多个发展平台，是一家集教育培训、教育产品研发、教育服务等于一体的大型综合性教育科技集团。新东方教育科技集团于2006年9月7日在美国纽约证券交易所成功上市，成为中国大陆首家海外上市的教育培训机构。\r\n\r\n截止2014年5月31日，新东方已经在全国50座城市设立了56所学校、31家书店以及703家学习中心。自成立以来，新东方累计面授学员近2000万人次。\r\n\r\n发展历程', 'pxjg', 5557, 3454, 8774, 733, 'org/202011/bd20f0ce8b70aaf2f155a775df764235_BTlZPWM.jpg', '洛杉矶', '2020-11-12 10:05:00.000000', 9, '全国知名');
INSERT INTO `organization_courseorg` VALUES (7, '中公教育', '北京中公教育科技股份有限公司，是国内民办教育知名品牌“中公教育”的主要实体，北京市民办教育协会成员（理事）单位。在中国教育咨询培训和职业教育领域有较强的影响力，先后被评为“最具社会影响力教育集团”、“最具综合实力教育集团”。\r\n\r\n中公教育总部位于北京，直营分校覆盖国内众多城市，在全国31个省市自治区，近350个地市，拥有470家直营分校和旗舰学习中心，全国专用教学场地超过30万平米。', 'pxjg', 4555, 6555, 4434, 3434, 'org/202011/c7621791f7b76b2fd587eb9820235417_poIUM0G.jpg', '东京', '2020-11-12 10:07:00.000000', 11, '全国知名');
INSERT INTO `organization_courseorg` VALUES (8, '正保远程教育', '北京东大正保科技有限公司，中国十大教育培训机构，北京市高新技术企业，中国领先的网络教育机构，远程教育行业的领跑者，经教育部批准开展远程教育的专业公司。\r\n\r\n正保远程教育（ChinaDistanceEducationHoldingsLtd.,CDEL）为美国纽约证券交易所上市公司。自2000年成立以来，始终坚持“学员利益至上，一切为学员服务”，汇聚天下名师，自主建设智能交互远程教育平台，采用高清视频课件并结合手机移动课堂，为学员提供高质量的课程，并辅以24小时在线答疑和客户服务，倾力打造完美的虚拟课堂。', 'pxjg', 5454, 54545, 5344, 453, 'org/202011/a6d6a685c30372fac89cfcd55d7366d1_Ngp8Lyz.jpg', '北京', '2020-11-12 10:08:00.000000', 1, '全国知名');
INSERT INTO `organization_courseorg` VALUES (9, '巨人学校', '巨人学校始于1994年7月18日，是由一所培训机构发展成的大型综合教育集团机构，涉及的领域有教育培训、全日制教育、出版、加盟等。其培训覆盖幼儿、青少年、成人教育领域。集团结构完善、部门设置科学。拥有杰出的管理团队和优秀的师资队伍，同时拥有最具核心竞争力的教学研发队伍。目前开设科目涉及英语、中小学、文体艺术、计算机、职业认证、家教等各个领域，科目多达100余种，遍布范围之广，科目设置之多，在我国民办培训教育领域中，独占鳌头，堪称典范。', 'pxjg', 5444, 4555, 5575, 544, 'org/202011/9d063ecd458543378fe46da6cc3ebf92_XNZoFAk.jpg', '北京', '2020-11-12 10:08:00.000000', 1, '全国知名');
INSERT INTO `organization_courseorg` VALUES (10, '安博教育', '北京安博创赢教育科技有限责任公司，安博教育集团旗下，中国十大教育培训机构，以升学与就业两大关键需求为导向的全国性教育服务品牌，中国教育连锁最具影响力品牌之一。\r\n\r\n安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线下结合的', 'pxjg', 5444, 3554, 5344, 545, 'org/202011/2531061482442d37f7fa41da75e4dc8d_2AwxD4o.jpg', '北京', '2020-11-12 10:09:00.000000', 2, '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  `org_id` int(11) NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_org_id_cd000a1a_fk_organizat`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, '阿大', 32, '北大青鸟', '阿士大夫士大夫士大夫撒旦是的撒个撒格式打发斯蒂芬斯蒂芬撒大声地', 2345, 242, 'teacher/2020/11/QQ浏览器截图20201109094046_AGDvZLO.png', '2020-11-12 10:10:00.000000', 3, '');
INSERT INTO `organization_teacher` VALUES (2, '阿二', 12, '北大青鸟', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 2346, 3234, 'teacher/2020/11/QQ浏览器截图20201109094238_bRV97WS.png', '2020-11-12 10:11:00.000000', 1, '');
INSERT INTO `organization_teacher` VALUES (3, '阿三', 23, '北大青鸟', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 2344, 5234, 'teacher/2020/11/QQ浏览器截图20201109094415_bsmSqh2.png', '2020-11-12 10:12:00.000000', 3, '');
INSERT INTO `organization_teacher` VALUES (4, '二位无', 22, '新东方', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 4244, 4555, 'teacher/2020/11/QQ浏览器截图20201109094525_HfMwm9Y.png', '2020-11-12 10:12:00.000000', 4, '');
INSERT INTO `organization_teacher` VALUES (5, '丽丽', 24, '巨人教育', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 234, 2234, 'teacher/2020/11/QQ浏览器截图20201109094622_6Qnqcj0.png', '2020-11-12 10:13:00.000000', 4, '');
INSERT INTO `organization_teacher` VALUES (6, '阿斯顿发生', 12, '好未来', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 12324, 32323, 'teacher/2020/11/QQ浏览器截图20201109094908_6HZrdWV.png', '2020-11-12 10:14:00.000000', 4, '');
INSERT INTO `organization_teacher` VALUES (7, '阿五', 12, '中公教育', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 1233, 23442, 'teacher/2020/11/QQ浏览器截图20201109095017_cH1Jceo.png', '2020-11-12 10:14:00.000000', 8, '');
INSERT INTO `organization_teacher` VALUES (8, '阿六', 22, '新东方', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 1233, 2342, 'teacher/2020/11/QQ浏览器截图20201109094622_3xuxB2t.png', '2020-11-12 10:15:00.000000', 10, '');
INSERT INTO `organization_teacher` VALUES (9, '阿奇', 12, '新东方', '安博教育是“以学习者为中心”面向个人及机构提供学习和教育服务的领航机构，致力于通过领先的技术方案、高品位的教育服务和变革性的创新资源，完善个体的终生学习和学习型组织的发展进程，助力于全社会的创新能力和国民素质的提升。安博教育基于每位学习者的个性特征，着眼于每个人的长远发展，通过线上、线', 12313, 31212, 'teacher/2020/11/QQ浏览器截图20201109094238_eNDx91u.png', '2020-11-12 10:16:00.000000', 5, '');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reversion_revision_date_created_96f7c20c`(`date_created`) USING BTREE,
  INDEX `reversion_revision_user_id_17095f45_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serialized_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `object_repr` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reversion_version_db_content_type_id_objec_b2c54f65_uniq`(`db`, `content_type_id`, `object_id`, `revision_id`) USING BTREE,
  INDEX `reversion_version_content_type_id_7d0ff25c_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id`(`revision_id`) USING BTREE,
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, 'web开发工程师', 'banner/202011/QQ浏览器截图20201111092600.png', 'https://www.dadatuyy.com/', 100, '2020-11-12 18:30:00.000000');
INSERT INTO `users_banner` VALUES (2, '不获全胜决不轻言成功 习近平这样指挥战“', 'banner/202011/QQ浏览器截图20201111093251.png', 'https://www.dadatuyy.com/', 100, '2020-11-12 18:30:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, '9w2cS9IAHqUHZi11', '1365689361@qq.com', 'register', '2020-11-12 09:38:24.406286');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$150000$OFmORePelRHY$CnzyT2P7Rv/W1Gp9KNyLgTkmaw7QtiBnE750rSwgk60=', '2020-11-12 09:46:40.020620', 0, '1365689361@qq.com', '', '', '1365689361@qq.com', 0, 1, '2020-11-12 09:38:24.229791', '', NULL, 'man', '', NULL, 'image/default.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$150000$igV6EdNFVEjt$kn21HBML1BLd7POhcpXAgM2+xOepItS2di0LpFEV8Is=', '2020-11-12 09:48:00.000000', 1, 'xadmin', '', '', '', 1, 1, '2020-11-12 09:47:00.000000', '', NULL, 'man', '北京', NULL, 'image/202011/QQ浏览器截图20201109094908.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2020-11-12 09:51:23.212675', '127.0.0.1', '1', '上海', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (2, '2020-11-12 09:51:39.088187', '127.0.0.1', '2', '洛阳', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (3, '2020-11-12 09:51:55.474888', '127.0.0.1', '3', '重庆', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (4, '2020-11-12 09:52:46.714355', '127.0.0.1', '4', '巴塞罗那', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (5, '2020-11-12 09:53:04.514618', '127.0.0.1', '5', '伊斯坦布尔', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (6, '2020-11-12 09:53:20.330361', '127.0.0.1', '6', '耶路撒冷', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (7, '2020-11-12 09:53:32.998046', '127.0.0.1', '7', '伦敦', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (8, '2020-11-12 09:53:47.880120', '127.0.0.1', '8', '纽约', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (9, '2020-11-12 09:54:01.899808', '127.0.0.1', '9', '巴黎', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (10, '2020-11-12 09:54:16.334231', '127.0.0.1', '10', '里约热内卢', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (11, '2020-11-12 09:54:29.852282', '127.0.0.1', '11', '旧金山', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (12, '2020-11-12 09:54:45.221529', '127.0.0.1', '12', '威尼斯', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (13, '2020-11-12 09:55:03.618683', '127.0.0.1', '13', '香港', 'create', '已添加。', 25, 2);
INSERT INTO `xadmin_log` VALUES (14, '2020-11-12 10:01:01.732267', '127.0.0.1', '1', '欧美思教育', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (15, '2020-11-12 10:02:49.940608', '127.0.0.1', '2', '火星时代科', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (16, '2020-11-12 10:04:19.097538', '127.0.0.1', '3', '北大青鸟', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (17, '2020-11-12 10:05:04.454261', '127.0.0.1', '4', '学大教育', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (18, '2020-11-12 10:05:51.064349', '127.0.0.1', '5', '好未来', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (19, '2020-11-12 10:07:07.243870', '127.0.0.1', '6', '新东方', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (20, '2020-11-12 10:08:00.262710', '127.0.0.1', '7', '中公教育', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (21, '2020-11-12 10:08:49.295353', '127.0.0.1', '8', '正保远程教育', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (22, '2020-11-12 10:09:26.833248', '127.0.0.1', '9', '巨人学校', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (23, '2020-11-12 10:10:08.289079', '127.0.0.1', '10', '安博教育', 'create', '已添加。', 26, 2);
INSERT INTO `xadmin_log` VALUES (24, '2020-11-12 10:11:07.270669', '127.0.0.1', '1', '{0}的教师：阿大', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (25, '2020-11-12 10:12:04.660784', '127.0.0.1', '2', '{0}的教师：阿二', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (26, '2020-11-12 10:12:38.707219', '127.0.0.1', '3', '{0}的教师：阿三', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (27, '2020-11-12 10:13:18.249019', '127.0.0.1', '4', '{0}的教师：二位无', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (28, '2020-11-12 10:14:01.715688', '127.0.0.1', '5', '{0}的教师：丽丽', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (29, '2020-11-12 10:14:41.789255', '127.0.0.1', '6', '{0}的教师：阿斯顿发生', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (30, '2020-11-12 10:15:26.389943', '127.0.0.1', '7', '{0}的教师：阿五', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (31, '2020-11-12 10:16:34.398182', '127.0.0.1', '8', '{0}的教师：阿六', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (32, '2020-11-12 10:17:30.250021', '127.0.0.1', '9', '{0}的教师：阿奇', 'create', '已添加。', 27, 2);
INSERT INTO `xadmin_log` VALUES (33, '2020-11-12 10:18:45.406972', '127.0.0.1', '1', 'python开发', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (34, '2020-11-12 10:19:28.968895', '127.0.0.1', '2', '微博开发', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (35, '2020-11-12 10:20:06.855632', '127.0.0.1', '3', 'web开发', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (36, '2020-11-12 10:20:52.844012', '127.0.0.1', '4', 'PHP和', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (37, '2020-11-12 10:21:42.467937', '127.0.0.1', '5', 'web个东方闪电', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (38, '2020-11-12 10:23:41.948195', '127.0.0.1', '6', '沃尔沃', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (39, '2020-11-12 10:24:36.244582', '127.0.0.1', '7', '法国队', 'create', '已添加。', 16, 2);
INSERT INTO `xadmin_log` VALUES (40, '2020-11-12 10:25:02.122646', '127.0.0.1', '1', '《python开发课程的章节》发范德001', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (41, '2020-11-12 10:25:11.032207', '127.0.0.1', '2', '《python开发课程的章节》阿斯蒂芬002', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (42, '2020-11-12 10:25:24.202597', '127.0.0.1', '3', '《python开发课程的章节》阿萨省003', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (43, '2020-11-12 10:25:40.186284', '127.0.0.1', '4', '《web开发课程的章节》阿斯顿发送到', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (44, '2020-11-12 10:25:47.873727', '127.0.0.1', '5', '《web开发课程的章节》奥术大师', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (45, '2020-11-12 10:25:52.184111', '127.0.0.1', '5', '《web开发课程的章节》奥术大师', 'change', '没有字段被修改。', 17, 2);
INSERT INTO `xadmin_log` VALUES (46, '2020-11-12 10:25:57.387837', '127.0.0.1', '6', '《微博开发课程的章节》送达方式', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (47, '2020-11-12 10:26:01.807643', '127.0.0.1', '7', '《PHP和课程的章节》阿斯顿发送到', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (48, '2020-11-12 10:26:06.647662', '127.0.0.1', '8', '《PHP和课程的章节》阿斯顿发生', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (49, '2020-11-12 10:26:11.281175', '127.0.0.1', '9', '《web个东方闪电课程的章节》阿斯顿发生', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (50, '2020-11-12 10:26:16.702430', '127.0.0.1', '10', '《web个东方闪电课程的章节》阿道夫', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (51, '2020-11-12 10:26:21.579603', '127.0.0.1', '11', '《沃尔沃课程的章节》阿斯顿发送到', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (52, '2020-11-12 10:26:26.302604', '127.0.0.1', '12', '《法国队课程的章节》撒地方撒', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (53, '2020-11-12 10:26:32.015095', '127.0.0.1', '13', '《法国队课程的章节》撒打算', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (54, '2020-11-12 10:26:37.404335', '127.0.0.1', '14', '《web开发课程的章节》敖德萨所', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (55, '2020-11-12 10:26:43.221292', '127.0.0.1', '15', '《微博开发课程的章节》打发撒旦法', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (56, '2020-11-12 10:26:49.474298', '127.0.0.1', '16', '《web个东方闪电课程的章节》按地方撒奥德赛', 'create', '已添加。', 17, 2);
INSERT INTO `xadmin_log` VALUES (57, '2020-11-12 10:26:59.023216', '127.0.0.1', '1', 'Video object (1)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (58, '2020-11-12 10:27:04.754086', '127.0.0.1', '2', 'Video object (2)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (59, '2020-11-12 10:27:10.749712', '127.0.0.1', '3', 'Video object (3)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (60, '2020-11-12 10:27:16.020534', '127.0.0.1', '4', 'Video object (4)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (61, '2020-11-12 10:27:28.565786', '127.0.0.1', '5', 'Video object (5)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (62, '2020-11-12 10:27:33.037609', '127.0.0.1', '6', 'Video object (6)', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (63, '2020-11-12 10:27:48.073863', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (64, '2020-11-12 10:27:59.898518', '127.0.0.1', '2', 'CourseResource object (2)', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (65, '2020-11-12 14:44:20.437047', '127.0.0.1', '7', '法国队', 'change', '修改 tag，image 和 category', 16, 2);
INSERT INTO `xadmin_log` VALUES (66, '2020-11-12 14:44:59.316685', '127.0.0.1', '6', '沃尔沃', 'change', '修改 tag，image 和 category', 16, 2);
INSERT INTO `xadmin_log` VALUES (67, '2020-11-12 14:54:40.755884', '127.0.0.1', '6', 'Video object (6)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (68, '2020-11-12 14:54:55.182332', '127.0.0.1', '5', 'Video object (5)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (69, '2020-11-12 14:55:01.399098', '127.0.0.1', '4', 'Video object (4)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (70, '2020-11-12 14:55:05.273755', '127.0.0.1', '3', 'Video object (3)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (71, '2020-11-12 14:55:09.669554', '127.0.0.1', '3', 'Video object (3)', 'change', '没有字段被修改。', 18, 2);
INSERT INTO `xadmin_log` VALUES (72, '2020-11-12 14:55:19.444066', '127.0.0.1', '1', 'Video object (1)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (73, '2020-11-12 14:55:24.077739', '127.0.0.1', '2', 'Video object (2)', 'change', '修改 url', 18, 2);
INSERT INTO `xadmin_log` VALUES (74, '2020-11-12 14:56:08.077296', '127.0.0.1', '3', 'Video object (3)', 'change', '没有字段被修改。', 18, 2);
INSERT INTO `xadmin_log` VALUES (75, '2020-11-12 18:30:49.413537', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', 13, 2);
INSERT INTO `xadmin_log` VALUES (76, '2020-11-12 18:31:16.872086', '127.0.0.1', '2', 'Banner object (2)', 'create', '已添加。', 13, 2);
INSERT INTO `xadmin_log` VALUES (77, '2020-11-12 19:41:36.267258', '127.0.0.1', '2', 'xadmin', 'change', '修改 last_login，address 和 image', 15, 2);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 2);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
