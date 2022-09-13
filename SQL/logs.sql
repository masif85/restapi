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

 Date: 13/09/2022 08:12:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int NOT NULL,
  `rtime` float NULL DEFAULT NULL,
  `authorized` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_code` smallint NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
