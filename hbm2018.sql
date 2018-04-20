/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : hbm2018

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2018-04-20 17:14:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `userid` varchar(10) NOT NULL DEFAULT '',
  `username` varchar(10) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('am11', '任我行', '111', '666');
INSERT INTO `admin` VALUES ('am12', '向问天', '112', '666');
INSERT INTO `admin` VALUES ('am13', '左冷禅', '113', '666');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CID` varchar(255) NOT NULL,
  `COURSENAME` varchar(255) DEFAULT NULL,
  `TIMES` int(11) DEFAULT NULL,
  `GRADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('cc01', 'java', null, '3');
INSERT INTO `course` VALUES ('cc02', 'sql', null, '5');
INSERT INTO `course` VALUES ('cc03', 'html', '30', '2');

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `DID` varchar(255) NOT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES ('dd1', '计算机系');
INSERT INTO `depart` VALUES ('dd2', '数学系');

-- ----------------------------
-- Table structure for stud
-- ----------------------------
DROP TABLE IF EXISTS `stud`;
CREATE TABLE `stud` (
  `STUID` varchar(255) NOT NULL,
  `STUNAME` varchar(255) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `TEAM` varchar(255) DEFAULT NULL,
  `GRADE` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`STUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stud
-- ----------------------------
INSERT INTO `stud` VALUES ('ss11', '张飞', '男', '2018-04-19 09:53:30', '112', null, null, null);
INSERT INTO `stud` VALUES ('ss12', '赵云', '女', '0199-11-11 00:00:00', '111', null, null, null);

-- ----------------------------
-- Table structure for s_c
-- ----------------------------
DROP TABLE IF EXISTS `s_c`;
CREATE TABLE `s_c` (
  `STUID` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  PRIMARY KEY (`STUID`,`cid`),
  KEY `FK1BB97835F9823` (`STUID`),
  KEY `FK1BB977E4728FD` (`cid`),
  CONSTRAINT `FK1BB977E4728FD` FOREIGN KEY (`cid`) REFERENCES `course` (`CID`),
  CONSTRAINT `FK1BB97835F9823` FOREIGN KEY (`STUID`) REFERENCES `stud` (`STUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_c
-- ----------------------------
INSERT INTO `s_c` VALUES ('ss11', 'cc01');
INSERT INTO `s_c` VALUES ('ss11', 'cc02');
INSERT INTO `s_c` VALUES ('ss11', 'cc03');
INSERT INTO `s_c` VALUES ('ss12', 'cc02');
INSERT INTO `s_c` VALUES ('ss12', 'cc03');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `TID` varchar(255) NOT NULL,
  `TNAME` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TID`),
  KEY `FKD4FD57C27F9A0E5D` (`dept`),
  CONSTRAINT `FKD4FD57C27F9A0E5D` FOREIGN KEY (`dept`) REFERENCES `depart` (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('tt1', '刘备', 'dd1');
INSERT INTO `teacher` VALUES ('tt2', '孙权', 'dd1');
INSERT INTO `teacher` VALUES ('tt3', '曹操', 'dd2');
