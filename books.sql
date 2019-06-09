/*
Navicat MySQL Data Transfer

Source Server         : book
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-06 19:29:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(4) DEFAULT NULL,
  `name` char(100) NOT NULL,
  `price` int(5) DEFAULT NULL,
  `bookcount` int(5) DEFAULT NULL,
  `author` char(100) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `outwhere` char(110) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (null, '哈哈', '250', '250', '汪志敏', '13095505587', '按时');
INSERT INTO `book` VALUES (null, '孙孟强', '25', '0', '汪志敏', '13025896357', '凤阳');
INSERT INTO `book` VALUES (null, '安徽科技血压', '12', '0', '张大吊 22', '18709875819', '按时');
INSERT INTO `book` VALUES (null, '数学', '66', '33', '网二', '1569633322', '凤阳');
INSERT INTO `book` VALUES (null, '数据库', '25', '250', '孙孟强', '12312312', '安科');
INSERT INTO `book` VALUES (null, '数据库原理', '66', '0', '段老师', '8888888888', '安徽科技');
INSERT INTO `book` VALUES (null, '物理', '99', '888', '李老师', '666666666', '北大新出版');
INSERT INTO `book` VALUES (null, '王者荣耀', '25', '0', '马化腾', '8888888', '腾讯');
INSERT INTO `book` VALUES (null, '英语1', '99', '0', '张老师', '1888888888', '清华出版社');
INSERT INTO `book` VALUES (null, '英语3', '99', '0', '张老师', '66666666', '中科大出版社');
INSERT INTO `book` VALUES (null, '英语4', '99', '888', '孙老师', '123987456', '中科大出版社');
INSERT INTO `book` VALUES (null, '西游记', '4', '0', '朱景超', '9999999', '杭州出版社');
INSERT INTO `book` VALUES (null, '西游记1', '4', '0', '朱景超', '9999999', '杭州出版社');
INSERT INTO `book` VALUES (null, '计算机2', '22', '333', '张大吊 22', '9999999', '安可达');
INSERT INTO `book` VALUES (null, '计算机科学', '25', '66', null, '13095505587', '北京出版社');
INSERT INTO `book` VALUES (null, '计算机组成原理', '21', '0', '张泰岳', '13095504487', '北京出版社');
INSERT INTO `book` VALUES (null, '计算机网络', '250', '555', '蔡春雨', '7777', '家里蹲');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` char(100) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  `nickname` char(100) DEFAULT NULL,
  `sex` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '11', '1', '1233');
INSERT INTO `users` VALUES ('2', 's_username', 's_password', 's_nickname', 's_sex', 's_email');
INSERT INTO `users` VALUES ('3', '2701160119', '123', '阿强', '0', '1602300370@qq.com');
INSERT INTO `users` VALUES ('4', '孙孟强', '', '', '0', '');
INSERT INTO `users` VALUES ('5', '孟强', '123', '阿强', '0', '1602300370@qq.com');
INSERT INTO `users` VALUES ('6', '孟', '123', '阿强', '0', '1602300370@qq.com');
INSERT INTO `users` VALUES ('7', '孙', '123', '阿强', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('8', 'dazhi申请', '123', 'nihao', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('9', 'super', '123', '123', 'null', '11');
INSERT INTO `users` VALUES ('10', 'dajia', '123', '123', 'null', '11');
INSERT INTO `users` VALUES ('11', 'dajiaaq的', '123', '123', 'null', '11');
INSERT INTO `users` VALUES ('12', 'daji', '123', '123', 'null', '11');
INSERT INTO `users` VALUES ('13', '强', '123', '123', 'null', '11');
INSERT INTO `users` VALUES ('14', 'ha', '123', '12', 'null', '123');
INSERT INTO `users` VALUES ('15', 'da123', '123', '12', 'null', '12');
INSERT INTO `users` VALUES ('16', '1234', '123', '12', 'null', '12');
INSERT INTO `users` VALUES ('17', '111', '123', '123', 'null', '1323');
INSERT INTO `users` VALUES ('18', '1111', '123', '123', 'null', '1323');
INSERT INTO `users` VALUES ('19', '11111', '11', '123', 'null', '1323');
INSERT INTO `users` VALUES ('20', '111111', '12', '123', 'null', '1323');
INSERT INTO `users` VALUES ('21', '21', '12', '12', 'null', '123');
INSERT INTO `users` VALUES ('22', '211', '12', '12', 'null', '123');
INSERT INTO `users` VALUES ('23', '2111', '12', '12', 'null', '123');
INSERT INTO `users` VALUES ('24', '21111', '12', '12', 'null', '123');
INSERT INTO `users` VALUES ('25', '233', '12', '12', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('26', '2333', '12', '12', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('27', '23331', '12', '12', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('28', '34', '34', '34', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('29', '343', '12', '34', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('30', '3431', '12', '34', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('31', '211113', '12', '12', 'null', '123');
INSERT INTO `users` VALUES ('32', '114', '12', '12', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('33', '1144', '12', '12', 'null', '160230037');
INSERT INTO `users` VALUES ('34', '78', '12', '12', 'null', '1602300370@qq.com');
INSERT INTO `users` VALUES ('35', '784', '23', '12', 'null', 'fr@qq.com');
INSERT INTO `users` VALUES ('36', '7843', '34', '12', 'null', '12qw@qq.com');
INSERT INTO `users` VALUES ('37', '784355', '34', '78', 'null', '3333@qq.cn');
INSERT INTO `users` VALUES ('38', 'zhangaq', '123', '张泰岳', 'null', '123@qq.com');
INSERT INTO `users` VALUES ('39', '69', '123', '阿强', 'null', '3207157164@qq.com');
INSERT INTO `users` VALUES ('40', '96', '123', '阿', 'null', '3207157164@qq.com');
INSERT INTO `users` VALUES ('41', '95', '123', '哈哈', 'null', '3207157164@qq.com');
INSERT INTO `users` VALUES ('42', '988', '123', 'nihao', 'null', 'fr@qq.com');
INSERT INTO `users` VALUES ('43', '54', '123', 'lp', 'null', '3207157164@qq.com');
INSERT INTO `users` VALUES ('44', '334', '34', '阿强', 'null', 'fr@qq.com');
INSERT INTO `users` VALUES ('45', '221', '123', 'nij', 'null', '3207157164@qq.com');
INSERT INTO `users` VALUES ('46', 'q1', '123', 'niaho', 'null', '1236@qq.com');
INSERT INTO `users` VALUES ('47', 'w1', '123', 'wq', 'null', 'fr@qq.com');
INSERT INTO `users` VALUES ('48', 'zhangsan', '123', '大哥好', 'null', '1231231213@qq.com');
INSERT INTO `users` VALUES ('49', 'lisi', '123', '李四', 'null', '9999999@qq.com');
INSERT INTO `users` VALUES ('50', 'wanger', '123', '王二', 'null', '123456789@qq.com');
INSERT INTO `users` VALUES ('51', '2701160101', '123', '123', 'null', '3207157164@qq.com');
