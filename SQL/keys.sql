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

 Date: 13/09/2022 08:12:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
