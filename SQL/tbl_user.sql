/*
 Navicat Premium Data Transfer

 Source Server         : API
 Source Server Type    : MySQL
 Source Server Version : 100148
 Source Host           : localhost:3306
 Source Schema         : wrxbxgjzjf

 Target Server Type    : MySQL
 Target Server Version : 100148
 File Encoding         : 65001

 Date: 13/09/2022 08:12:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `user_id` int NOT NULL,
  `user_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
