/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : boot_hospital_yuyue

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-06-20 00:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `patientid` int(11) DEFAULT NULL COMMENT '患者id',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `time` date DEFAULT NULL COMMENT '预约时间',
  `expenses` decimal(10,2) DEFAULT NULL COMMENT '门诊费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('1', '1', '1', '2018-12-08', '30.00');
INSERT INTO `appointment` VALUES ('2', '3', '2', '2018-11-27', '30.00');
INSERT INTO `appointment` VALUES ('3', '1', '1', '2019-03-07', '15.00');
INSERT INTO `appointment` VALUES ('4', '4', '1', '2019-03-14', '30.00');
INSERT INTO `appointment` VALUES ('5', '5', '4', '2019-03-16', '10.00');
INSERT INTO `appointment` VALUES ('6', '4', '7', '2019-03-28', '15.00');
INSERT INTO `appointment` VALUES ('7', '5', '6', '2019-04-02', '30.00');
INSERT INTO `appointment` VALUES ('8', '3', '4', '2019-04-10', '10.00');
INSERT INTO `appointment` VALUES ('9', '2', '1', '2019-04-13', '30.00');
INSERT INTO `appointment` VALUES ('24', '6', '1', '2019-11-16', '2.00');
INSERT INTO `appointment` VALUES ('25', '6', '1', '2020-02-09', '20.00');
INSERT INTO `appointment` VALUES ('26', '1', '7', '2022-06-20', '11.00');
INSERT INTO `appointment` VALUES ('27', '1', '1', '2022-06-20', '11.00');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `certId` varchar(255) DEFAULT NULL COMMENT '身份证',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `loginid` int(11) DEFAULT NULL COMMENT '登录',
  `text` text COMMENT '介绍',
  `expert` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', '韩梅梅', '32', '320586198807191278', '1', '内科', '江苏/苏州', '3', null, '1');
INSERT INTO `doctor` VALUES ('2', '李雷', '32', '320283198802102526', '0', '呼吸内科', '江苏/无锡', '4', '手动阀手动阀手动阀手动阀啊JKDASJDKLADLASLDKASL1312KASDKLASDKASJFLASFJKSGFJSDAKJFSAKFJSKFJSDKFJSDKLFJSDKLFJSCMxlSKkdosadkfsd看风使舵李开复十六分就开了反射定律攻击速度老师的课反对法工地上可22插卡式西欧的靠谱的看312课程搜房参考2', '1');
INSERT INTO `doctor` VALUES ('4', '赵志', '38', '310103198212062428', '0', '口腔科', '上海', '12', '手动阀手动阀手动阀手动阀啊JKDASJDKLADLASLDKASL1312KASDKLASDKASJFLASFJKSGFJSDAKJFSAKFJSKFJSDKFJSDKLFJSDKLFJSCMxlSKkdosadkfsd看风使舵李开复十六分就开了反射定律攻击速度老师的课反对法工地上可22插卡式西欧的靠谱的看312课程搜房参考2', '1');
INSERT INTO `doctor` VALUES ('5', '杨丽娟', '45', '320283197504207624', '1', '急诊科', '江苏/无锡', '18', '手动阀手动阀手动阀手动阀啊JKDASJDKLADLASLDKASL1312KASDKLASDKASJFLASFJKSGFJSDAKJFSAKFJSKFJSDKFJSDKLFJSDKLFJSCMxlSKkdosadkfsd看风使舵李开复十六分就开了反射定律攻击速度老师的课反对法工地上可22插卡式西欧的靠谱的看312课程搜房参考2', '1');
INSERT INTO `doctor` VALUES ('6', '王五', '45', '320283197508091516', '1', '神经内科', '江苏/无锡', '17', '手动阀手动阀手动阀手动阀啊JKDASJDKLADLASLDKASL1312KASDKLASDKASJFLASFJKSGFJSDAKJFSAKFJSKFJSDKFJSDKLFJSDKLFJSCMxlSKkdosadkfsd看风使舵李开复十六分就开了反射定律攻击速度老师的课反对法工地上可22插卡式西欧的靠谱的看312课程搜房参考2', '0');
INSERT INTO `doctor` VALUES ('7', '王一一', '40', '320586198807191279', '1', '内科', '江苏/无锡', null, '手动阀手动阀手动阀手动阀啊JKDASJDKLADLASLDKASL1312KASDKLASDKASJFLASFJKSGFJSDAKJFSAKFJSKFJSDKFJSDKLFJSDKLFJSCMxlSKkdosadkfsd看风使舵李开复十六分就开了反射定律攻击速度老师的课反对法工地上可22插卡式西欧的靠谱的看312课程搜房参考2', '0');

-- ----------------------------
-- Table structure for drugs
-- ----------------------------
DROP TABLE IF EXISTS `drugs`;
CREATE TABLE `drugs` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '药品名称',
  `type` int(10) DEFAULT NULL COMMENT '药品类型',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `text` varchar(111) DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of drugs
-- ----------------------------
INSERT INTO `drugs` VALUES ('1', '名称1', '4', '65.00', '188', '1');
INSERT INTO `drugs` VALUES ('2', '名称2', '1', '20.00', '88', '1');
INSERT INTO `drugs` VALUES ('3', '名称3', '2', '50.00', '88', '1');
INSERT INTO `drugs` VALUES ('4', '名称4', '3', '45.00', '100', '1');
INSERT INTO `drugs` VALUES ('5', '名称5', '4', '120.00', '88', '1');
INSERT INTO `drugs` VALUES ('7', '名称6', '5', '30.00', '100', '1');
INSERT INTO `drugs` VALUES ('13', '名称7', '2', '60.00', '100', '1');
INSERT INTO `drugs` VALUES ('15', '名称8', '1', '11.00', '11', '1');
INSERT INTO `drugs` VALUES ('17', '名称9', '2', '11222.00', '11', null);
INSERT INTO `drugs` VALUES ('18', '测试', '0', '112222.00', '11', null);

-- ----------------------------
-- Table structure for hospitalization
-- ----------------------------
DROP TABLE IF EXISTS `hospitalization`;
CREATE TABLE `hospitalization` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `floor` varchar(10) DEFAULT NULL COMMENT '楼层',
  `bed` varchar(255) DEFAULT NULL COMMENT '床号',
  `door` varchar(255) DEFAULT NULL COMMENT '房间号',
  `medicalname` varchar(255) DEFAULT NULL COMMENT '病名称',
  `patientid` int(11) DEFAULT NULL COMMENT '患者id',
  `intime` date DEFAULT NULL COMMENT '住院时间',
  `outtime` date DEFAULT NULL COMMENT '出院时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hospitalization
-- ----------------------------
INSERT INTO `hospitalization` VALUES ('1', '1', '4', '104', '头疼', '1', '2018-12-08', '2018-12-09');
INSERT INTO `hospitalization` VALUES ('2', '2', '3', '203', '呼吸系统疾病', '3', '2019-03-07', '2019-03-10');
INSERT INTO `hospitalization` VALUES ('3', '2', '1', '201', '慢性阻塞性肺疾病', '1', '2019-03-12', '2019-03-18');
INSERT INTO `hospitalization` VALUES ('4', '3', '1', '301', '胆石症', '4', '2019-03-14', '2019-03-25');
INSERT INTO `hospitalization` VALUES ('5', '3', '2', '302', '胆管疾病', '5', '2019-03-16', '2019-03-22');
INSERT INTO `hospitalization` VALUES ('6', '2', '2', '202', '肺结石', '3', '2019-04-10', null);
INSERT INTO `hospitalization` VALUES ('8', '1', '2', '102', '阑尾炎', '4', '2019-03-28', '2019-03-31');
INSERT INTO `hospitalization` VALUES ('10', '3', '3', '303', '脑血管疾病', '5', '2019-04-02', null);
INSERT INTO `hospitalization` VALUES ('11', '5', '4', '3', '心血管', '4', '2019-04-25', null);

-- ----------------------------
-- Table structure for illness
-- ----------------------------
DROP TABLE IF EXISTS `illness`;
CREATE TABLE `illness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of illness
-- ----------------------------
INSERT INTO `illness` VALUES ('1', '牙疼', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `illness` VALUES ('2', '头疼', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `illness` VALUES ('3', '呼吸性疾病', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `illness` VALUES ('4', '胆结石', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `illness` VALUES ('5', '胆管疾病', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `illness` VALUES ('6', '阑尾炎', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` int(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'admin', '123456', '1');
INSERT INTO `login` VALUES ('2', 'admin2', '123456', '1');
INSERT INTO `login` VALUES ('3', 'doctor', '123456', '2');
INSERT INTO `login` VALUES ('4', 'lilei', '123456', '2');
INSERT INTO `login` VALUES ('5', 'haoyi', '123456', '3');
INSERT INTO `login` VALUES ('6', 'liyiyi', '123456', '3');
INSERT INTO `login` VALUES ('7', 'zhangxiaoxiao', '123456', '3');
INSERT INTO `login` VALUES ('8', 'wumei', '123456', '3');
INSERT INTO `login` VALUES ('9', 'user', '123456', '3');
INSERT INTO `login` VALUES ('10', 'admin3', '123456', '1');
INSERT INTO `login` VALUES ('11', 'admin4', '123456', '1');
INSERT INTO `login` VALUES ('12', 'zhaozhi', '12345', '2');
INSERT INTO `login` VALUES ('14', 'admin5', '123456', '1');
INSERT INTO `login` VALUES ('15', 'admin7', '123456', '1');
INSERT INTO `login` VALUES ('17', 'wangwu', '123456', '2');
INSERT INTO `login` VALUES ('18', 'yanglijuan', '123456', '2');
INSERT INTO `login` VALUES ('19', 'sunzhi', '123456', '3');
INSERT INTO `login` VALUES ('20', 'wangyiyi', '123456', '2');

-- ----------------------------
-- Table structure for medicalhistory
-- ----------------------------
DROP TABLE IF EXISTS `medicalhistory`;
CREATE TABLE `medicalhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `patientid` int(10) DEFAULT NULL COMMENT '患者id',
  `name` varchar(255) DEFAULT NULL COMMENT '病史名称',
  `time` date DEFAULT NULL COMMENT '患病时间',
  `hospitalizationid` int(11) DEFAULT NULL COMMENT '住院信息',
  `doctorid` int(11) DEFAULT NULL COMMENT '确诊人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of medicalhistory
-- ----------------------------
INSERT INTO `medicalhistory` VALUES ('1', '1', '头疼', '2018-12-08', '1', '1');
INSERT INTO `medicalhistory` VALUES ('2', '3', '呼吸系统疾病', '2019-03-07', '2', '2');
INSERT INTO `medicalhistory` VALUES ('3', '4', '胆结石', '2019-03-14', '4', '4');
INSERT INTO `medicalhistory` VALUES ('4', '5', '胆管疾病', '2019-03-16', '5', '7');
INSERT INTO `medicalhistory` VALUES ('8', '1', '阑尾炎', '2019-04-08', null, '5');
INSERT INTO `medicalhistory` VALUES ('9', '6', '感冒', '2019-11-16', null, '2');

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('1', '大血', '血液科室', '100.00');
INSERT INTO `option` VALUES ('2', '小血', '血液科室', '200.00');
INSERT INTO `option` VALUES ('3', 'B超（彩超）', '超生室', '300.00');
INSERT INTO `option` VALUES ('4', '心电图', '心电图室', '200.00');
INSERT INTO `option` VALUES ('5', '大便', '厕所门口自行拿管', '200.00');
INSERT INTO `option` VALUES ('6', '小便', '厕所门口自行拿管', '200.00');
INSERT INTO `option` VALUES ('7', 'CT', '放射科室', '200.00');
INSERT INTO `option` VALUES ('8', 'X光片', '放射科室', '200.00');
INSERT INTO `option` VALUES ('9', '核磁共振', '放射科室', '200.00');
INSERT INTO `option` VALUES ('10', '其他', '无', '0.00');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `certId` varchar(255) DEFAULT NULL COMMENT '身份证',
  `sex` int(10) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `Hospitalizationid` int(10) DEFAULT NULL COMMENT '住院信息',
  `drugsids` varchar(255) DEFAULT NULL COMMENT '药品信息',
  `isout` int(255) DEFAULT NULL COMMENT '是否出院',
  `appointmentid` int(11) DEFAULT NULL COMMENT '预约信息',
  `loginid` int(11) DEFAULT NULL COMMENT '登录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('1', '郝一', '22', '320283199805201625', '1', '江苏/无锡', '1', '1@12,2@12,3@12,5@12', '2', '27', '5');
INSERT INTO `patient` VALUES ('2', '李依依', '21', '320283199903106214', '1', '江苏/无锡', '0', '', '0', '9', '6');
INSERT INTO `patient` VALUES ('3', '赵康', '22', '320586199807122289', '0', '江苏/苏州', '3', '', '2', '8', '7');
INSERT INTO `patient` VALUES ('4', '吴威', '23', '310103199712241820', '0', '上海', '4', '', '2', '6', '8');
INSERT INTO `patient` VALUES ('5', '孙志', '30', '320283199011105234', '0', '江苏/无锡', '5', '', '1', '7', '19');
INSERT INTO `patient` VALUES ('6', '胡图', '34', '320586198609191226', '0', '江苏/无锡', '5', null, '0', '25', '9');

-- ----------------------------
-- Table structure for seek
-- ----------------------------
DROP TABLE IF EXISTS `seek`;
CREATE TABLE `seek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `describes` varchar(255) DEFAULT NULL,
  `illname` varchar(255) DEFAULT NULL,
  `drugs` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `patientid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of seek
-- ----------------------------
INSERT INTO `seek` VALUES ('1', '2e3wsdasda', '1212', '1@12,2@12,3@12,5@12', '1,6', '0', '4380.00', '1');
INSERT INTO `seek` VALUES ('2', 'dasdasdas', '脑膜炎', '1@12,2@12,3@12,5@12', '10', '10', '3060.00', '1');
INSERT INTO `seek` VALUES ('3', '感冒', '感冒', null, '1,2,3', '0', '600.00', '4');
INSERT INTO `seek` VALUES ('4', '11', '11', null, '1', '0', '100.00', '1');
