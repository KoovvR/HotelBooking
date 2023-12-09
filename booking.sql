/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80200
 Source Host           : localhost:3306
 Source Schema         : booking

 Target Server Type    : MySQL
 Target Server Version : 80200
 File Encoding         : 65001

 Date: 10/12/2023 01:13:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京');
INSERT INTO `city` VALUES (2, '上海');
INSERT INTO `city` VALUES (3, '广州');
INSERT INTO `city` VALUES (4, '深圳');
INSERT INTO `city` VALUES (5, '杭州');
INSERT INTO `city` VALUES (6, '成都');
INSERT INTO `city` VALUES (7, '重庆');
INSERT INTO `city` VALUES (8, '南京');
INSERT INTO `city` VALUES (9, '武汉');
INSERT INTO `city` VALUES (10, '西安');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city_id` int NOT NULL,
  `address` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hotel_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`hotel_id`) USING BTREE,
  INDEX `fk_city`(`city_id`) USING BTREE,
  CONSTRAINT `fk_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (1, '盛大酒店', 1, '111', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fthehoughtonhotel.com%2Fwp-content%2Fuploads%2F2023%2F02%2FHoughton-Hotel-3-20-scaled.jpg&tbnid=Fr05P-yD2QEbAM&vet=12ahUKEwid6KmmpYODAxVgpycCHQQJBYoQMygKegUIARCJAQ..i&imgrefurl=https%3A%2F%2Fthehoughtonhot', 3);
INSERT INTO `hotel` VALUES (2, '四季酒店', 2, '朝阳区', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.britannica.com%2F96%2F115096-050-5AFDAF5D%2FBellagio-Hotel-Casino-Las-Vegas.jpg&tbnid=sFKM_o0VZGLU2M&vet=12ahUKEwid6KmmpYODAxVgpycCHQQJBYoQMygJegUIARCHAQ..i&imgrefurl=https%3A%2F%2Fwww.britannica.com%', 2);
INSERT INTO `hotel` VALUES (3, '七七电竞酒店', 2, '朝阳区', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fthehoughtonhotel.com%2Fwp-content%2Fuploads%2F2023%2F02%2FHoughton-Hotel-3-20-scaled.jpg&tbnid=Fr05P-yD2QEbAM&vet=12ahUKEwid6KmmpYODAxVgpycCHQQJBYoQMygKegUIARCJAQ..i&imgrefurl=https%3A%2F%2Fthehoughtonhot', 4);
INSERT INTO `hotel` VALUES (4, '啊啊啊激情酒店', 4, '三里墩儿', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.ahstatic.com%2Fphotos%2Fc096_ho_00_p_1024x768.jpg&tbnid=a3l5xaHNDFK-IM&vet=12ahUKEwid6KmmpYODAxVgpycCHQQJBYoQMygPegUIARCUAQ..i&imgrefurl=https%3A%2F%2Fall.accor.com%2Fhotel%2FC096%2Findex.en.shtml&doc', 1);
INSERT INTO `hotel` VALUES (5, '坐牢主题酒店', 5, '武汉', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.ahstatic.com%2Fphotos%2Fc096_ho_00_p_1024x768.jpg&tbnid=a3l5xaHNDFK-IM&vet=12ahUKEwid6KmmpYODAxVgpycCHQQJBYoQMygPegUIARCUAQ..i&imgrefurl=https%3A%2F%2Fall.accor.com%2Fhotel%2FC096%2Findex.en.shtml&doc', 4);

-- ----------------------------
-- Table structure for hotel_admin
-- ----------------------------
DROP TABLE IF EXISTS `hotel_admin`;
CREATE TABLE `hotel_admin`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hotel_id` int NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE,
  INDEX `fk_hotel`(`hotel_id`) USING BTREE,
  CONSTRAINT `fk_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_admin
-- ----------------------------
INSERT INTO `hotel_admin` VALUES (1, 'yyp', '1234', 1);
INSERT INTO `hotel_admin` VALUES (2, 'xxx', '1212', 2);
INSERT INTO `hotel_admin` VALUES (3, 'yu', '1111', 3);
INSERT INTO `hotel_admin` VALUES (4, 'yt', '1111', 4);

-- ----------------------------
-- Table structure for hotel_type
-- ----------------------------
DROP TABLE IF EXISTS `hotel_type`;
CREATE TABLE `hotel_type`  (
  `hotel_type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`hotel_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_type
-- ----------------------------
INSERT INTO `hotel_type` VALUES (1, '情侣主题');
INSERT INTO `hotel_type` VALUES (2, '普通酒店');
INSERT INTO `hotel_type` VALUES (3, '露天浴池');
INSERT INTO `hotel_type` VALUES (4, '坐牢');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `room_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `num` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 1, 101, '1', '豪华单人房', '欧式装修，温馨', 1);
INSERT INTO `room` VALUES (2, 1, 201, '2', '双人房', '干净', 2);
INSERT INTO `room` VALUES (3, 4, 808, '3', '情侣双人房', '爱不停歇', 2);

-- ----------------------------
-- Table structure for room_img
-- ----------------------------
DROP TABLE IF EXISTS `room_img`;
CREATE TABLE `room_img`  (
  `img_id` int NOT NULL,
  `room_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_img
-- ----------------------------
INSERT INTO `room_img` VALUES (1, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fburyatiahotel.com%2Fupload%2Fresize_cache%2Fiblock%2F8aa%2F780_455_2%2FDSC_8096.jpg&tbnid=AYv4TuJiBwQdoM&vet=12ahUKEwiKn6e4qYODAxWLnCcCHYQMDdYQMygCegQIARBa..i&imgrefurl=https%3A%2F%2Fburyatiahotel.com%2Fc');
INSERT INTO `room_img` VALUES (1, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fburyatiahotel.com%2Fupload%2Fresize_cache%2Fiblock%2F681%2F780_455_2%2FLUKA3289_90_91_92_93_94_95.jpg&tbnid=pm6Cx2mNl7jbnM&vet=12ahUKEwiI9eGkqoODAxXMT6QEHZezCiwQMygAegQIARAz..i&imgrefurl=https%3A%2F%2Fbur');
INSERT INTO `room_img` VALUES (2, 'https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.xibeishiyouhotel.com%2Fuploads%2F211127%2F1_160318_1.jpg&tbnid=xcvJ6V9Ari_8TM&vet=12ahUKEwib1uO5qoODAxVoUKQEHf7bDRgQMygBegQIARBQ..i&imgrefurl=http%3A%2F%2Fwww.xibeishiyouhotel.com%2Froom%2Fbiaozhunshua');
INSERT INTO `room_img` VALUES (2, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.scaligerorooms.it%2Fwp-content%2Fuploads%2F2019%2F04%2FIMG_0497.jpg&tbnid=j2gTz6YN6_rQUM&vet=12ahUKEwipwJjUqoODAxWlsCcCHZE1DFIQMygKegQIARBH..i&imgrefurl=https%3A%2F%2Fwww.scaligerorooms.it%2Fzh-hans%2');
INSERT INTO `room_img` VALUES (3, 'https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.cittadiparenzo.it%2Fwp-content%2Fuploads%2F2020%2F10%2F1.-Camera-matrimoniale-comfort-Hotel-Citt%25C3%25A0-di-Parenzo-FOTO-COPERTINA-1-1024x683.jpg&tbnid=A_PL4YoMiSXKOM&vet=12ahUKEwjkzNyfq4ODAxVNpycCHS');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '单人间');
INSERT INTO `room_type` VALUES (2, '双人间');
INSERT INTO `room_type` VALUES (3, '三人间');
INSERT INTO `room_type` VALUES (4, '家庭房');

-- ----------------------------
-- Table structure for super_admin
-- ----------------------------
DROP TABLE IF EXISTS `super_admin`;
CREATE TABLE `super_admin`  (
  `super_admin_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`super_admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of super_admin
-- ----------------------------
INSERT INTO `super_admin` VALUES (1, 'zqm', '1234');
INSERT INTO `super_admin` VALUES (2, 'zzz', '123');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123@qq.com', 'user01');
INSERT INTO `user` VALUES (2, 'uuu@tt.com', '小黑子');

SET FOREIGN_KEY_CHECKS = 1;
