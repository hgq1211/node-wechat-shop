/*
Navicat MySQL Data Transfer

Source Server         : mytest-mySql
Source Server Version : 50709
Source Host           : 127.0.0.1:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-05-14 21:50:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Admin_id` varchar(255) DEFAULT NULL,
  `Admin_name` varchar(255) NOT NULL,
  `Admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (null, 'admin1号', 'ICy5YqxZB1uWSwcVLSNLcA==');
INSERT INTO `admin` VALUES (null, 'admin2号', 'ICy5YqxZB1uWSwcVLSNLcA==');
INSERT INTO `admin` VALUES (null, 'admin3号', 'ICy5YqxZB1uWSwcVLSNLcA==');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `image_id` varchar(40) NOT NULL,
  `p_medical_no` int(4) unsigned zerofill DEFAULT NULL,
  `image_url` varchar(80) NOT NULL,
  `id` varchar(50) NOT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `mark` varchar(60) DEFAULT NULL,
  `mark_date` varchar(255) DEFAULT NULL,
  `mark_d_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('10a9d5e3-fd1a-483f-980e-ab78f6a8153c', '0095', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0500.JPG', '0b01e316-1c9f-4e1c-a07f-d152c266846f', '2016-4-20 15:42:21', '0', null, null);
INSERT INTO `image` VALUES ('132b3cc9-eefd-4ee5-9dd9-1fd4be3dc7a8', '0102', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG2567.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:58:26', '0', null, null);
INSERT INTO `image` VALUES ('1806e2ad-851b-40b4-b3c2-c5fdb072beed', '0093', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0475.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:39:35', '0', null, null);
INSERT INTO `image` VALUES ('2f7d639b-71e4-4479-9c8a-ede1abadada3', '0100', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0433.JPG', 'fa528b30-a36f-4224-81d4-ac803fd714ce', '2016-4-20 15:55:54', '0', null, null);
INSERT INTO `image` VALUES ('2fc8a255-da1a-46d5-b258-c77d949e8bac', '0096', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0151.JPG', '0b01e316-1c9f-4e1c-a07f-d152c266846f', '2016-4-20 15:43:2', '0', null, null);
INSERT INTO `image` VALUES ('4064e48d-8b51-4967-983b-744d0b6b0a9f', '0094', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0470.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:39:56', '0', null, null);
INSERT INTO `image` VALUES ('43de11f6-a208-4850-a480-b345895a72e8', '0104', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG2548.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:59:7', '0', null, null);
INSERT INTO `image` VALUES ('46ac23c5-31ac-4bd3-ae0a-9c3c212715dd', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye1.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:46', '0', null, null);
INSERT INTO `image` VALUES ('511e35a6-fad5-463a-a4d5-e9833dab47f0', '0107', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG2598.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 16:00:36', '0', null, null);
INSERT INTO `image` VALUES ('6739c40d-bc77-495b-afcf-4629c072697c', '0099', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0389.JPG', 'fa528b30-a36f-4224-81d4-ac803fd714ce', '2016-4-20 15:55:21', '0', null, null);
INSERT INTO `image` VALUES ('715d481c-0826-4416-8293-3d6a71c62491', '0101', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0378.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:56:39', '0', null, null);
INSERT INTO `image` VALUES ('7b636cd2-887b-4998-9752-d6f6bb6b1e98', '0091', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0467.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:25', '0', null, null);
INSERT INTO `image` VALUES ('7e8772a0-879e-416c-b7c7-d3e418c1550b', '0096', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0153.JPG', '0b01e316-1c9f-4e1c-a07f-d152c266846f', '2016-4-20 15:42:57', '0', null, null);
INSERT INTO `image` VALUES ('862d015f-23ab-4152-969f-1022cabba12b', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye3.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:47', '0', null, null);
INSERT INTO `image` VALUES ('88c7573b-6815-495e-bc2c-6b755672dd05', '0091', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0466.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:21', '0', null, null);
INSERT INTO `image` VALUES ('93ba98fc-590b-4a6a-9fe5-fab12d852a90', '0106', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG2581.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 16:00:7', '0', null, null);
INSERT INTO `image` VALUES ('97a4175d-eacb-41d4-998d-ad17c3b96546', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye2.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:46', '0', null, null);
INSERT INTO `image` VALUES ('9ba5b521-f41f-44b5-9b7e-d7ea675b32fe', '0097', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0156.JPG', '0b01e316-1c9f-4e1c-a07f-d152c266846f', '2016-4-20 15:43:37', '0', null, null);
INSERT INTO `image` VALUES ('a1d74683-8f68-4f45-8324-2939a7d9bd4b', '0100', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0476.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:34', '0', null, null);
INSERT INTO `image` VALUES ('af11c29b-c6bf-4f44-b66a-ea9e69ba0a37', '0094', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0471.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:40:3', '0', null, null);
INSERT INTO `image` VALUES ('b5bbe1d6-7b86-4af0-921b-e73dc22110f1', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye4.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:47', '0', null, null);
INSERT INTO `image` VALUES ('bc724fba-ad0d-480f-8976-f4d5d33301c9', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye5.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:47', '0', null, null);
INSERT INTO `image` VALUES ('bfcc0361-5027-45d5-a25b-d42a4b467886', '0091', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0475.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:32', '0', null, null);
INSERT INTO `image` VALUES ('c1b7182d-e3ea-43ec-bb1f-05fc4827ea27', '0094', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0475.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:40:9', '0', null, null);
INSERT INTO `image` VALUES ('cfd461bc-9ffe-41cb-a2a7-140f9861ca49', '0103', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG2559.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:58:47', '0', null, null);
INSERT INTO `image` VALUES ('d05ee39a-366e-49ce-b32b-0f6f513b4ee0', '0092', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0498.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 15:39:11', '0', null, null);
INSERT INTO `image` VALUES ('d4cb2611-032e-4556-93f8-d1bbede9fc53', '0091', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0502.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:39', '0', null, null);
INSERT INTO `image` VALUES ('e2855373-7dc2-42dd-aadc-afb7906b3188', '0110', 'http://7xlunq.com1.z0.glb.clouddn.com/shouye6.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:57:47', '0', null, null);
INSERT INTO `image` VALUES ('e2e0c285-53ca-41fa-92e9-49c87e08ad78', '0109', 'http://7xlunq.com1.z0.glb.clouddn.com/4.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:55:37', '0', null, null);
INSERT INTO `image` VALUES ('e4fae1f9-4cb2-4ae6-a3d8-0b0921475642', '0098', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0150.JPG', 'fa528b30-a36f-4224-81d4-ac803fd714ce', '2016-4-20 15:54:34', '0', null, null);
INSERT INTO `image` VALUES ('fb07c431-273a-43a6-bd62-57cfb061515e', '0101', 'http://7xlunq.com1.z0.glb.clouddn.com/CIMG0472.JPG', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-4-20 14:04:29', '0', null, null);
INSERT INTO `image` VALUES ('fbd2b77e-74e7-444c-899c-9a59c966c6d7', '0109', 'http://7xlunq.com1.z0.glb.clouddn.com/6.jpg', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '2016-5-14 12:55:37', '0', null, null);

-- ----------------------------
-- Table structure for mark_info
-- ----------------------------
DROP TABLE IF EXISTS `mark_info`;
CREATE TABLE `mark_info` (
  `mark_id` varchar(64) CHARACTER SET utf8 NOT NULL,
  `point_id` int(8) DEFAULT NULL,
  `markX` float(32,13) DEFAULT NULL,
  `markY` float(32,13) DEFAULT NULL,
  `text` longtext CHARACTER SET utf8,
  `d_doctor_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `p_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `image_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `p_register_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `mark_date` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of mark_info
-- ----------------------------
INSERT INTO `mark_info` VALUES ('0c80c9d6-edb6-41c3-a661-b50a537e5072', '3', '142.1012725830078', '60.2444381713867', '有问题么', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '88c7573b-6815-495e-bc2c-6b755672dd05', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 15:17:38');
INSERT INTO `mark_info` VALUES ('10ef7f93-6a8b-4ad9-bba2-b78d2ef4328b', '1', '409.3145141601562', '214.7422790527344', '反而方法如夫人人', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '715d481c-0826-4416-8293-3d6a71c62491', '1806e2ad-851b-40b4-b3c2-c5fdb072beed', '2016-04-22 17:16:16');
INSERT INTO `mark_info` VALUES ('11c15e37-b4db-4c0b-96ef-00292ab01330', '2', '142.1012725830078', '71.9046554565430', '电器大厦的', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '43de11f6-a208-4850-a480-b345895a72e8', '3d0c476e-3b8f-4006-80c9-4df9c50209a3', '2016-04-21 14:53:41');
INSERT INTO `mark_info` VALUES ('28a36f1c-db16-418c-be00-04d19eaaafb6', '1', '389.8808288574219', '227.3741760253906', '而且额喂喂喂', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'a1d74683-8f68-4f45-8324-2939a7d9bd4b', 'bfeb1abd-3b8b-4429-8b3a-966ed97d87cb', '2016-04-21 15:23:34');
INSERT INTO `mark_info` VALUES ('44795a97-8334-496e-8145-6a31c26e2465', '2', '732.8854370117188', '77.7347640991211', '自一次', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '88c7573b-6815-495e-bc2c-6b755672dd05', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 15:17:25');
INSERT INTO `mark_info` VALUES ('46c73a48-fde2-4af5-8a87-98314cd968cb', '3', '642.5187988281250', '128.2623596191406', 'w非顶顶顶顶大', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '43de11f6-a208-4850-a480-b345895a72e8', '3d0c476e-3b8f-4006-80c9-4df9c50209a3', '2016-04-21 14:53:47');
INSERT INTO `mark_info` VALUES ('497e4d8c-bdde-4e39-9170-5b7357b3ee7c', '2', '211.0908660888672', '183.6483764648438', '的速度速度的都是', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '715d481c-0826-4416-8293-3d6a71c62491', '70751262-a714-4a3e-83c0-7f097f0e3a88', '2016-04-22 17:25:46');
INSERT INTO `mark_info` VALUES ('4d17b36a-366d-4ef2-b438-d7ca9a77d614', '1', '397.6542968750000', '66.0745468139648', '这一次两个图片试试', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'af11c29b-c6bf-4f44-b66a-ea9e69ba0a37', '7be0164b-e482-45f8-841d-88b73f5cffc0', '2016-04-21 15:18:07');
INSERT INTO `mark_info` VALUES ('5891b12c-4e30-45e7-a82d-46dddff0ed27', '2', '570.6141357421875', '169.0731048583984', '发手机覅', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '132b3cc9-eefd-4ee5-9dd9-1fd4be3dc7a8', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 14:35:19');
INSERT INTO `mark_info` VALUES ('a6afe488-a21b-4f77-8aa9-1a4910389b0a', '1', '334.4948120117188', '52.4709625244141', '标注一次试试', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '88c7573b-6815-495e-bc2c-6b755672dd05', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 15:17:20');
INSERT INTO `mark_info` VALUES ('bb9e93fe-9eca-4536-96c7-55c0469e23f6', '1', '311.1743774414062', '122.4322509765625', '第二次标注处理一下', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '43de11f6-a208-4850-a480-b345895a72e8', '3d0c476e-3b8f-4006-80c9-4df9c50209a3', '2016-04-21 14:53:34');
INSERT INTO `mark_info` VALUES ('c4872dfa-5e79-4d4d-b809-f5a96df54f5d', '1', '334.4948120117188', '52.4709625244141', '有益次', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '88c7573b-6815-495e-bc2c-6b755672dd05', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 15:17:32');
INSERT INTO `mark_info` VALUES ('ceed00f3-98a8-4276-a8b9-cdb4b0a75b24', '1', '365.5887145996094', '292.4770507812500', '第一次接受标注', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '132b3cc9-eefd-4ee5-9dd9-1fd4be3dc7a8', '3d0c476e-3b8f-4006-80c9-4df9c50209a3', '2016-04-21 14:34:27');
INSERT INTO `mark_info` VALUES ('e78ce2c1-ca64-479e-bf91-7f6edfb772e7', '4', '196.5155944824219', '132.1490936279297', '的期望得到的', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '132b3cc9-eefd-4ee5-9dd9-1fd4be3dc7a8', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 14:35:27');
INSERT INTO `mark_info` VALUES ('ed20ce6b-d009-4a69-b718-6a758e229799', '3', '363.6453247070312', '123.4039306640625', 'vdsdadsffds', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '132b3cc9-eefd-4ee5-9dd9-1fd4be3dc7a8', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '2016-04-21 14:35:24');
INSERT INTO `mark_info` VALUES ('ef4236b2-df91-4488-ae0b-d6e935b097e2', '2', '584.2177124023438', '90.3666610717773', '日日日日日43', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'a1d74683-8f68-4f45-8324-2939a7d9bd4b', 'a1d74683-8f68-4f45-8324-2939a7d9bd4b', '2016-04-22 17:11:21');
INSERT INTO `mark_info` VALUES ('f4ee3fe4-d637-481d-a6a5-a2f79d2f9a5b', '1', '446.2385253906250', '113.6870880126953', '第二章图片', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'd4cb2611-032e-4556-93f8-d1bbede9fc53', '7be0164b-e482-45f8-841d-88b73f5cffc0', '2016-04-21 15:18:21');
INSERT INTO `mark_info` VALUES ('f72aa4d5-9f4d-4d4c-95a5-953a57de0b11', '1', '619.1983642578125', '97.1684494018555', '问问企鹅', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '4064e48d-8b51-4967-983b-744d0b6b0a9f', 'a5a292b9-0624-411a-9289-d1217b09399e', '2016-04-21 15:23:19');
INSERT INTO `mark_info` VALUES ('f8746a66-287f-436f-b59b-0fe7b34bf520', '1', '381.1356506347656', '61.2161254882812', '处理待热气个师范hi', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '1806e2ad-851b-40b4-b3c2-c5fdb072beed', '70751262-a714-4a3e-83c0-7f097f0e3a88', '2016-04-21 14:52:22');

-- ----------------------------
-- Table structure for t_diagnosis
-- ----------------------------
DROP TABLE IF EXISTS `t_diagnosis`;
CREATE TABLE `t_diagnosis` (
  `d_diagnosis_date` varchar(20) NOT NULL,
  `p_register_id` varchar(40) NOT NULL,
  `d_doctor_id` varchar(40) NOT NULL,
  `p_id` varchar(40) NOT NULL,
  `p_medical_no` int(12) DEFAULT NULL,
  `p_explain` text,
  `p_diagnosis` text,
  `p_treatment` text,
  `p_memo` text,
  PRIMARY KEY (`p_register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='本次诊断资料清单——诊断结论_治疗草案表';

-- ----------------------------
-- Records of t_diagnosis
-- ----------------------------
INSERT INTO `t_diagnosis` VALUES ('2015-12-28 21:29:51', '1181bf7e-fa36-4ab9-ba16-602f4d5e62d6', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, 'wwweeqv', '文儿去去去', null);
INSERT INTO `t_diagnosis` VALUES ('2015-12-29 13:40:11', '23204d27-72ee-4742-a5f9-42ca3393ba55', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, '事实上大师', '', null);
INSERT INTO `t_diagnosis` VALUES ('2015-12-29 13:40:27', '3a5a6c1b-7824-47ad-a106-fb02399fc4cd', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, '顶顶顶顶是', '啊啊S型心事重重', null);
INSERT INTO `t_diagnosis` VALUES ('2015-12-29 13:42:45', 'a94af5e4-d0ef-4d33-8a08-5b10120cf41c', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, '啥都回复阿富汗算法   啥速度放好水  是啊好的  的神色是宿舍水水水水水水水水水水水水水水水水水水水水', '挖的是打发谁水水水水水水水水水水水水是付费我去我去去我我我我', null);
INSERT INTO `t_diagnosis` VALUES ('2015-12-29 13:43:22', 'afb33f4d-6aa5-484b-ac1f-35e1a5f5f2c2', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, '发反反复复反复反复反复反复反复发生啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '大大大大是顶顶顶顶顶顶顶顶', null);
INSERT INTO `t_diagnosis` VALUES ('2015-12-27 14:49:34', 'b7a24200-e41d-46a2-945c-89417f8d9280', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', null, null, '去去去', '额鹅鹅鹅', null);

-- ----------------------------
-- Table structure for t_doctor_info
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor_info`;
CREATE TABLE `t_doctor_info` (
  `d_nickname` varchar(20) NOT NULL,
  `d_register_date` varchar(10) DEFAULT NULL,
  `d_password` varchar(50) DEFAULT NULL,
  `d_doctor_id` varchar(37) NOT NULL,
  `d_DID` char(18) DEFAULT NULL,
  `d_name` char(10) DEFAULT NULL,
  `d_birthday` varchar(10) DEFAULT NULL,
  `d_sex` char(8) CHARACTER SET gb2312 DEFAULT NULL,
  `d_title` char(10) DEFAULT NULL,
  `d_major` char(10) DEFAULT NULL,
  `d_hospital` varchar(20) DEFAULT NULL,
  `d_mobile` char(16) DEFAULT NULL,
  `d_email` char(20) DEFAULT NULL,
  `d_qq` char(10) DEFAULT NULL,
  `d_WeChat` char(11) DEFAULT NULL,
  `d_t1_id` char(7) DEFAULT NULL,
  `d_t2_id` char(7) DEFAULT NULL,
  `d_bachelor_no` varchar(20) DEFAULT NULL,
  `d_master_no` varchar(20) DEFAULT NULL,
  `d_doctor_no` varchar(20) DEFAULT NULL,
  `d_title_no` varchar(20) DEFAULT NULL,
  `d_education` varchar(255) DEFAULT NULL,
  `d_qualification` varchar(255) DEFAULT NULL,
  `del` int(2) DEFAULT '0',
  PRIMARY KEY (`d_doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='医生信息表';

-- ----------------------------
-- Records of t_doctor_info
-- ----------------------------
INSERT INTO `t_doctor_info` VALUES ('12奥奥', null, '123', '0a67db8f-cc5f-426f-b800-2c607a63bd98', null, '123', null, null, null, null, '千佛山', '1233211', '1111@qq.com', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('1234', '2015-12-23', 'ICy5YqxZB1uWSwcVLSNLcA==', '13764314-ffe7-4e89-8b43-bd49001cda28', '11111111111111111', '2015-12-15', '哈金额', null, 'null', 'null', '千佛山', '112212', '2015-12-15', '111@qq.com', null, '1111', '111', '21', '2131322', '1231', '12331', null, null, '1');
INSERT INTO `t_doctor_info` VALUES ('123aacc', null, '1111', '14af3331-9d60-4f26-b1a6-53857eacbc97', null, '1233', null, null, null, null, '千佛山', '11222', '12312', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('12341', null, '123', '2908eed4-65f6-411a-8a17-2cde99dfab96', null, '112', null, null, null, null, '千佛山', '213322111', '1111', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('测试1', null, '111', '32a60837-23ac-427a-9ecb-43804b22baa0', null, '123', null, null, null, null, '千佛山', '12342333333', '1233@qq.com', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('12131', '2015-12-28', 'ICy5YqxZB1uWSwcVLSNLcA==', '51eefc68-8eb9-4ad3-8785-95f07c358ef2', '111122222121111112', '11121', '2015-12-16', null, '副主任医师', '2', '人民医院', '11111111111', '12333@qq.com', '213113', '12223331', '', '', '123e', '', '', '', null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('aaa11', '2015-12-25', 'ICy5YqxZB1uWSwcVLSNLcA==', '66c6588c-8893-4630-bd89-7c753d490950', '111', '111', '2015-12-15', null, '主治医师', '3', '武警医院', '111', '123@qq.com', '222', '111', '1111', '111', '22', '11', '22', '333', null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('123qq', null, '123', '6a048efb-6d95-474e-b181-615abeec8d74', null, '123', null, null, null, null, '武警医院', '123122222111', '1111@123.com', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('1eq', null, '111', '6e860987-76d1-4d5e-b699-1f8f32afa28c', null, '1231', null, null, null, null, '武警医院', '12111111111', '2133@qq.com', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('ceshi', '2015-12-23', 'ICy5YqxZB1uWSwcVLSNLcA==', 'b22961c4-09d1-45f8-8d15-fc513205bc68', '111111111111222222', 'hgq', '1997-05-07', '男', '主治医师', '5', '山东省立医院', '12222222222', '33222@qq.com', '222222', '33333', '111', '112', '222', '111', '111', '12232', null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('123', '2015-12-23', 'ICy5YqxZB1uWSwcVLSNLcA==', 'c58c97a1-e2b8-4abe-b6f6-0c8d060a453e', '11111111111', '发发发', '2015-12-02', '男', '副主任医师', '药学', '山东省立医院', '11111111111', '111@qq.com', '1223', null, '222', '111', null, null, null, '11323321', null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('00000', '2015-12-29', 'ICy5YqxZB1uWSwcVLSNLcA==', 'ea678465-5c64-477c-be7a-565316d2f797', '123121111111111111', '1213', '2015-12-08', '男', '主任医师', '3', '山东省立医院', '12333332211', '212222@qq.com', '21222', '1222', '', '', '', '', '', '', null, null, '0');
INSERT INTO `t_doctor_info` VALUES ('123111s', '2015-12-25', 'ICy5YqxZB1uWSwcVLSNLcA==', 'eda4334f-c981-4c18-b58d-5da77805a0ef', '111', '1', '2015-12-02', '女', 'null', 'null', '省中医', '111', '111@qq.com', '111', '111', '', '', '', '', '', '', null, null, '1');
INSERT INTO `t_doctor_info` VALUES ('医生乙', '2015-12-10', 'ICy5YqxZB1uWSwcVLSNLcA==', 'f4a22b46-7da3-4310-a8a3-47c51bcbea43', null, '医生乙', '2000-01-19', '男', '22', '22', '省中医', '22', '22', '22', '77', '77', '77', '77', '77', '66', '6', '66', '', '0');
INSERT INTO `t_doctor_info` VALUES ('医生甲', '2015-12-10', 'ICy5YqxZB1uWSwcVLSNLcA==', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '', '医生甲', '1990-10-20', '男21', '33', '222', '省中医', '1111', '2222', '90', '1234', '222', '22', '222', '3', '4', '4', '5', '', '0');

-- ----------------------------
-- Table structure for t_doctor_login
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor_login`;
CREATE TABLE `t_doctor_login` (
  `id` int(11) NOT NULL,
  `p_doctor_id` int(7) NOT NULL COMMENT 'FK 注1：t_doctor_info',
  `p_pwd` char(50) NOT NULL COMMENT '密码',
  PRIMARY KEY (`p_doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='医生登录表';

-- ----------------------------
-- Records of t_doctor_login
-- ----------------------------
INSERT INTO `t_doctor_login` VALUES ('1', '123', 'ICy5YqxZB1uWSwcVLSNLcA==');

-- ----------------------------
-- Table structure for t_mang_address
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_address`;
CREATE TABLE `t_mang_address` (
  `p_maddress_id` int(4) NOT NULL,
  `p_maddress_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_maddress_fid` int(4) DEFAULT NULL,
  `p_postcode` char(6) CHARACTER SET gb2312 DEFAULT NULL,
  `p_memo` text CHARACTER SET gb2312,
  `del` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_maddress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_address
-- ----------------------------
INSERT INTO `t_mang_address` VALUES ('1', '北京22', '8', '100012', '首都', '0');
INSERT INTO `t_mang_address` VALUES ('2', '济南', '6', '250100', '省城', '0');
INSERT INTO `t_mang_address` VALUES ('6', '上海', '13', '213', '22222', '0');
INSERT INTO `t_mang_address` VALUES ('7', '11', '212', '111', '22', '0');
INSERT INTO `t_mang_address` VALUES ('8', '嘎嘎嘎22', '12', '111', '111', '1');
INSERT INTO `t_mang_address` VALUES ('12', '上海', '13', '何恩惠', '12000', '1');

-- ----------------------------
-- Table structure for t_mang_hospital
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_hospital`;
CREATE TABLE `t_mang_hospital` (
  `p_mhospital_id` int(4) unsigned zerofill NOT NULL,
  `p_mhospital_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_mhospital_fid` int(4) unsigned zerofill DEFAULT NULL,
  `p_mcity` text CHARACTER SET gb2312,
  `p_memo` text CHARACTER SET gb2312,
  `del` int(4) DEFAULT '0',
  PRIMARY KEY (`p_mhospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_hospital
-- ----------------------------
INSERT INTO `t_mang_hospital` VALUES ('0003', '军区医院', '0012', '北京', 'qqqqqq', '0');
INSERT INTO `t_mang_hospital` VALUES ('0004', '千佛山', '0002', '济南11', 'wwww', '0');
INSERT INTO `t_mang_hospital` VALUES ('0005', '22', null, null, '111', '0');
INSERT INTO `t_mang_hospital` VALUES ('0008', '省立医院东', '0001', '济南', 'eeeee', '0');
INSERT INTO `t_mang_hospital` VALUES ('0009', '省立西院', '0001', '济南', 'wwwww', '0');
INSERT INTO `t_mang_hospital` VALUES ('0012', '111', null, null, '111', '0');
INSERT INTO `t_mang_hospital` VALUES ('0013', '11', '0000', 'null', '11', '0');

-- ----------------------------
-- Table structure for t_mang_job
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_job`;
CREATE TABLE `t_mang_job` (
  `p_mjob_id` int(4) NOT NULL,
  `p_mjob_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_mjob_fid` int(4) NOT NULL,
  `p_memo` text CHARACTER SET gb2312,
  `del` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_mjob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_job
-- ----------------------------
INSERT INTO `t_mang_job` VALUES ('1', '公务员', '4', 'hhhhhhhhhhhhh', '0');
INSERT INTO `t_mang_job` VALUES ('2', '工人w', '6', '还不错1111', '0');
INSERT INTO `t_mang_job` VALUES ('3', '务农', '6', 'hiaemd', '1');
INSERT INTO `t_mang_job` VALUES ('4', '教师', '8', 'ttttttt', '0');
INSERT INTO `t_mang_job` VALUES ('5', '农民', '12', '主力军', '0');
INSERT INTO `t_mang_job` VALUES ('6', 'oo', '11', '11', '1');
INSERT INTO `t_mang_job` VALUES ('7', '护士', '12', '111', '0');

-- ----------------------------
-- Table structure for t_mang_major
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_major`;
CREATE TABLE `t_mang_major` (
  `p_mmajor_id` int(4) NOT NULL,
  `p_mmajor_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_mmajor_fid` int(4) DEFAULT NULL,
  `p_registfee_ratio` float(255,2) DEFAULT NULL,
  `p_memo` text CHARACTER SET gb2312,
  `del` int(4) DEFAULT '0',
  PRIMARY KEY (`p_mmajor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_major
-- ----------------------------
INSERT INTO `t_mang_major` VALUES ('1', '护理', '6', '1.00', '这个不贵', '0');
INSERT INTO `t_mang_major` VALUES ('2', '临床', '8', '1.20', '这个好贵', '0');
INSERT INTO `t_mang_major` VALUES ('3', '护理', '10', '3.00', '恩ggg', '0');
INSERT INTO `t_mang_major` VALUES ('4', '临床', '8', '2.00', 'nnnnn', '0');
INSERT INTO `t_mang_major` VALUES ('5', 'huli', '8', '2.00', 'eeeeee', '0');
INSERT INTO `t_mang_major` VALUES ('6', '11', '111', null, '11', '0');
INSERT INTO `t_mang_major` VALUES ('7', '123', '111', null, '111', '0');
INSERT INTO `t_mang_major` VALUES ('8', '12', '222', '22.00', '1', '1');
INSERT INTO `t_mang_major` VALUES ('10', '11', '12', '11.00', '问你', '0');

-- ----------------------------
-- Table structure for t_mang_term
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_term`;
CREATE TABLE `t_mang_term` (
  `p_mterm_id` int(4) NOT NULL,
  `p_mterm_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_mterm_fid` int(4) DEFAULT NULL,
  `p_mterm_synid` int(4) DEFAULT NULL,
  `p_memo` text CHARACTER SET gb2312,
  PRIMARY KEY (`p_mterm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_term
-- ----------------------------

-- ----------------------------
-- Table structure for t_mang_title
-- ----------------------------
DROP TABLE IF EXISTS `t_mang_title`;
CREATE TABLE `t_mang_title` (
  `p_mtitle_id` int(4) NOT NULL,
  `p_mtitle_name` varchar(30) CHARACTER SET gb2312 NOT NULL,
  `p_mtitle_fid` int(11) DEFAULT NULL,
  `p_nomin_registfee` double(20,2) DEFAULT NULL,
  `p_memo` text CHARACTER SET gb2312,
  `del` int(4) DEFAULT '0',
  PRIMARY KEY (`p_mtitle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mang_title
-- ----------------------------
INSERT INTO `t_mang_title` VALUES ('1', '公务员', '8', '10.00', '测试1', '0');
INSERT INTO `t_mang_title` VALUES ('2', '护士', '6', '5.00', '好的', '0');
INSERT INTO `t_mang_title` VALUES ('3', '医生', '6', '8.00', '恩', '0');
INSERT INTO `t_mang_title` VALUES ('5', '医师', '12', '12.00', '22222', '0');
INSERT INTO `t_mang_title` VALUES ('6', '656', '66', '66.00', '12', '1');

-- ----------------------------
-- Table structure for t_mark_info
-- ----------------------------
DROP TABLE IF EXISTS `t_mark_info`;
CREATE TABLE `t_mark_info` (
  `p_mark_date` varchar(20) CHARACTER SET utf8 NOT NULL,
  `p_medical_no` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `p_mark_id` varchar(40) CHARACTER SET utf8 NOT NULL,
  `point_id` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `p_mark_x` float(20,13) NOT NULL,
  `p_mark_y` float(20,13) NOT NULL,
  `p_mark_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `p_register_id` varchar(40) CHARACTER SET utf8 NOT NULL,
  `d_doctor_id` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `image_id` varchar(40) CHARACTER SET utf8 NOT NULL,
  `tagtext` longtext CHARACTER SET utf8,
  `tagnum` int(50) DEFAULT NULL,
  PRIMARY KEY (`p_mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_mark_info
-- ----------------------------
INSERT INTO `t_mark_info` VALUES ('2015-12-27 14:50:35', null, '09dded57-c5b2-4e3a-98cc-57835591482d', 'label-1', '651.3286743164062', '432.4817504882812', null, 'b7a24200-e41d-46a2-945c-89417f8d9280', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '0feeed14-7197-46fb-8e51-b2c02d4216b3', '医生甲第一次标注', '1');
INSERT INTO `t_mark_info` VALUES ('2015-12-29 12:37:27', null, '7976a454-6b70-4a0e-9f1b-746fb0b926a0', 'label-1', '624.8120117187500', '203.7593994140625', null, 'ebdece31-184d-4ee6-84ce-c245acfc7402', 'f4a22b46-7da3-4310-a8a3-47c51bcbea43', '49d8558a-d8a8-4c49-8d70-d03702463c90', '坎反反复复', '1');
INSERT INTO `t_mark_info` VALUES ('2015-12-29 12:36:52', null, 'a46e26f2-70e0-463a-9008-e756b637af9d', 'label-1', '567.6691894531250', '52.6315803527832', null, '473aeb05-7746-4e0c-be6b-821181cabe7b', 'f4a22b46-7da3-4310-a8a3-47c51bcbea43', '94e7f23e-1ebd-4099-a185-b2410aa37f5e', '坎坎坷坷', '1');
INSERT INTO `t_mark_info` VALUES ('2015-12-29 12:36:19', null, 'c8471b3c-51ad-4929-a161-cb1b37131c02', 'label-1', '509.7744445800781', '349.6240539550781', null, '157d1117-8447-49b3-bf4b-876eb2f47e62', 'f4a22b46-7da3-4310-a8a3-47c51bcbea43', '679ea005-3c9c-4ed3-93eb-4d81d74462a1', '斤斤计较', '1');
INSERT INTO `t_mark_info` VALUES ('2015-12-27 17:19:1', null, 'fb786ca1-9d6a-4ad0-99f2-947ec327b386', 'label-2', '408.2630004882812', '284.6715393066406', null, '3da7a916-7816-4f5c-a1e7-20438a176b99', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '0feeed14-7197-46fb-8e51-b2c02d4216b3', '甲的第二次标注', '1');

-- ----------------------------
-- Table structure for t_medical_info
-- ----------------------------
DROP TABLE IF EXISTS `t_medical_info`;
CREATE TABLE `t_medical_info` (
  `p_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `p_medical_album` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `p_medical_no` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `p_transfer_date` varchar(32) NOT NULL,
  `p_produce_date` varchar(32) NOT NULL,
  `p_pages` int(3) DEFAULT NULL,
  `p_medical_type` varchar(16) DEFAULT NULL,
  `p_major` varchar(16) DEFAULT NULL,
  `p_low_dir` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`p_medical_no`),
  KEY `p_id` (`p_id`(191))
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=gb2312 PACK_KEYS=0 COMMENT='患者医学资料表';

-- ----------------------------
-- Records of t_medical_info
-- ----------------------------
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0091', '2016-04-20 14:03:44', '2016-04-13', '1', '病历-1', 'BMP', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '骨科', '0092', '2016-04-20 15:39:02', '2016-04-08', '1', '化验报告-2', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '精神科', '0093', '2016-04-20 15:39:27', '2016-04-15', '1', '化验报告-2', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '骨科', '0094', '2016-04-20 15:39:46', '2016-04-07', '1', '化验报告-2', 'BMP', null);
INSERT INTO `t_medical_info` VALUES ('0b01e316-1c9f-4e1c-a07f-d152c266846f', '神经科', '0095', '2016-04-20 15:42:12', '2016-04-11', '1', '病历-1', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('0b01e316-1c9f-4e1c-a07f-d152c266846f', '骨科', '0096', '2016-04-20 15:42:40', '2016-04-15', '1', '化验报告-2', 'alternative', null);
INSERT INTO `t_medical_info` VALUES ('0b01e316-1c9f-4e1c-a07f-d152c266846f', '神经科', '0097', '2016-04-20 15:43:29', '2016-04-07', '1', '医学图像-3', 'BMP', null);
INSERT INTO `t_medical_info` VALUES ('fa528b30-a36f-4224-81d4-ac803fd714ce', '骨科', '0098', '2016-04-20 15:54:26', '2016-04-07', '1', '化验报告-2', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('fa528b30-a36f-4224-81d4-ac803fd714ce', '神经科', '0099', '2016-04-20 15:54:51', '2016-04-08', '1', '化验报告-2', 'MR', null);
INSERT INTO `t_medical_info` VALUES ('fa528b30-a36f-4224-81d4-ac803fd714ce', '骨科', '0100', '2016-04-20 15:55:46', '2016-04-13', '1', '化验报告-2', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '骨科', '0101', '2016-04-20 15:56:31', '2016-04-15', '1', '化验报告-2', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0102', '2016-04-20 15:57:58', '2016-04-14', '1', '医学图像-3', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0103', '2016-04-20 15:58:40', '2016-04-07', '1', '病历-1', 'BMP', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '骨科', '0104', '2016-04-20 15:59:03', '2016-04-14', '1', '医学图像-3', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0105', '2016-04-20 15:59:18', '2016-04-20', '1', '医学图像-3', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0106', '2016-04-20 16:00:01', '2016-04-08', '1', '化验报告-2', 'MR', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '神经科', '0107', '2016-04-20 16:00:28', '2016-04-08', '1', '化验报告-2', 'MR', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '新增专辑', '0108', '2016-05-14 12:50:41', '2016-05-14', '1', '医学图像-3', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '新增专辑', '0109', '2016-05-14 12:55:24', '2016-05-14', '1', '医学图像-3', 'CT', null);
INSERT INTO `t_medical_info` VALUES ('92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '新增专辑', '0110', '2016-05-14 12:57:37', '2016-05-14', '1', '医学图像-3', 'CT', null);

-- ----------------------------
-- Table structure for t_patient_info
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_info`;
CREATE TABLE `t_patient_info` (
  `p_nickname` varchar(20) NOT NULL,
  `p_register_date` varchar(32) DEFAULT NULL COMMENT '注册日期',
  `p_id` varchar(36) CHARACTER SET gb2312 NOT NULL COMMENT '患者注册号',
  `password` varchar(60) NOT NULL,
  `p_PID` char(18) DEFAULT NULL COMMENT '省份证号',
  `p_name` char(10) DEFAULT NULL COMMENT '患者姓名',
  `p_birthday` varchar(10) DEFAULT NULL,
  `p_sex` char(8) CHARACTER SET gb2312 DEFAULT NULL COMMENT '性别',
  `p_job` char(10) DEFAULT NULL COMMENT '职业（来自职业表）',
  `p_province` char(10) DEFAULT NULL COMMENT '所在省',
  `p_city` char(16) DEFAULT NULL COMMENT '所在市',
  `p_district` char(16) DEFAULT NULL COMMENT '所在（市县）表',
  `p_address` varchar(30) DEFAULT NULL COMMENT '地址',
  `p_unit` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `p_mobile` char(15) DEFAULT NULL COMMENT '手机',
  `p_email` char(20) DEFAULT NULL COMMENT 'EMAIL',
  `p_qq` char(10) DEFAULT NULL COMMENT 'QQ',
  `p_weixin` char(11) DEFAULT NULL COMMENT '微信',
  `p_r_id` char(7) DEFAULT NULL COMMENT '推荐人',
  `p_s_id` char(7) DEFAULT NULL COMMENT '配偶',
  `p_c_id` char(7) DEFAULT NULL COMMENT '子女',
  `p_f_id` char(7) DEFAULT NULL COMMENT '父亲',
  `p_m_id` char(7) DEFAULT NULL COMMENT '母亲',
  `p_b_id` char(7) DEFAULT NULL COMMENT '兄弟姐妹',
  `p_cl_id` char(7) DEFAULT NULL COMMENT '亲密朋友',
  `p_w_id` char(7) DEFAULT NULL COMMENT '病友',
  `del` int(11) NOT NULL DEFAULT '0' COMMENT '删除操作',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='患者信息表（数据入口：患者注册界面）';

-- ----------------------------
-- Records of t_patient_info
-- ----------------------------
INSERT INTO `t_patient_info` VALUES ('hgq', '2015-12-23', '0b01e316-1c9f-4e1c-a07f-d152c266846f', 'ICy5YqxZB1uWSwcVLSNLcA==', '233115444444444444', '@但是', '2000-05-24', null, '护士', '山东省', '青岛市', '四方区', '机场', '北京博万', '21455555555', '12222@qq.com', '123', '2144', '123', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('123111', '2015-12-25', '18ae133c-231e-4be0-a844-fa5cee0b86bc', 'ICy5YqxZB1uWSwcVLSNLcA==', '111', '112', '2015-12-09', null, '公务员', '重庆市', '重庆市', '大渡口区', '11111111111', '1111', 'null', '2015-12-09', '111@qq.com', '123', '111', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('21340', '2015-12-29', '1acccc46-2d45-4db0-a9ba-a7b5b395f422', 'ICy5YqxZB1uWSwcVLSNLcA==', null, '123122', '2015-12-10', null, '工人w', '山东省', '青岛市', '崂山区', '3331', '32221', '12233333333', '2221@qq.com', null, '111', '', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('22231', '2015-12-25', '3df69643-1eb3-479e-a4d2-43cb2ae1c2a4', 'ICy5YqxZB1uWSwcVLSNLcA==', '111', '111111', '2015-12-09', null, '教师', '重庆市', '重庆市', '江北区', '1111', '2222', '11111111111', '123@qq.com', null, '111', '2133', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('12311', null, '41cb11b6-ee05-423a-8624-70d58b8ac05b', '123', null, '111', null, null, null, null, null, null, null, null, '1111111', '111@11.com', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('11114c3', '2015-12-25', '456b77d0-6919-40a4-b409-93b8aa8ff8aa', 'yPPH/IDPm+Zuo732S6HILQ==', '11', '11231', '2015-12-15', null, '教师', '内蒙古', '赤峰市', '天义镇', '1122', '1111', '11111111111', '112@qq.com', null, '111', '1111', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('q1343', '2015-12-25', '64037228-a132-41bd-b05c-f0bd6209bdfd', 'ICy5YqxZB1uWSwcVLSNLcA==', '1111', '111111', '2015-12-09', null, '教师', '上海市', '上海市', '卢湾区', '111', '2222', '11111111111', '222@qq.com', null, '2132', '123', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('黑黑', '2015-12-09', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'ICy5YqxZB1uWSwcVLSNLcA==', '3213', '黑黑', '1994-01-01', '男', null, '北京', '北京', '朝阳', '山师', null, '11-5555-7777', '71704295@qq.com', '24444', '123', '23', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('ww 1', '2015-12-25', '9b6da8e0-3b5a-4399-ad22-1eef4f6274b1', 'ICy5YqxZB1uWSwcVLSNLcA==', '11', '1111', '2015-12-03', null, '工人w', '上海市', '上海市', '静安区', '111', '111', '11111111111', '111@qq.com', null, '111', '1232', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('11114c', '2015-12-25', 'bfe0e49e-cb63-425a-9fe6-909d6e56f571', 'ICy5YqxZB1uWSwcVLSNLcA==', '11', '11231', '2015-12-15', null, '教师', '山西省', '阳泉市', '郊区', '1122', '1111', '11111111111', '112@qq.com', null, '111', '1111', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('123', '2015-12-25', 'c2e853f1-b259-4017-9ce0-ec8ddba2b919', 'aY1RoZ2KEhzlgUmde3AWaA==', '1111', '123', '2015-12-08', null, '农民', '天津市', '天津市', '和平区', '111', '111', '11111111111', '1111@qq.com', null, '123', '111', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('0213', '2015-12-29', 'c3062db6-136b-48f7-9271-cf603479c9a9', 'ICy5YqxZB1uWSwcVLSNLcA==', null, '2231', '2015-12-18', 'womaen', '农民', '山东省', '济南市', '槐荫区', '21eewwwq', '111', '12111111111', '1111111@qq.com', null, '1222111', '', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('12311111', '2015-12-25', 'e9d3340f-b260-4b16-adb0-4adbc063c9c0', 'ICy5YqxZB1uWSwcVLSNLcA==', '111', '1232', '2015-12-16', null, '公务员', '内蒙古', '呼伦贝尔市', '牙克石市', '111', '1111', '11111111111', '111@qq.com', null, '123', '123', null, null, null, null, null, null, null, '0');
INSERT INTO `t_patient_info` VALUES ('王富成', '2015-12-09', 'fa528b30-a36f-4224-81d4-ac803fd714ce', 'ICy5YqxZB1uWSwcVLSNLcA==', '8910', '王富成', '1993-12-23', '男', null, '山东', '济南', '长青', '山师的', null, '11-5555-8888', 'reee@qq.com', '444444', '2222', '22', null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_patient_login
-- ----------------------------
DROP TABLE IF EXISTS `t_patient_login`;
CREATE TABLE `t_patient_login` (
  `id` int(11) NOT NULL,
  `p_id` int(7) NOT NULL COMMENT 'FK 注1：t_patient_info',
  `p_pwd` char(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- ----------------------------
-- Records of t_patient_login
-- ----------------------------

-- ----------------------------
-- Table structure for t_register_finish
-- ----------------------------
DROP TABLE IF EXISTS `t_register_finish`;
CREATE TABLE `t_register_finish` (
  `p_register_data` date NOT NULL,
  `p_id` varchar(40) NOT NULL,
  `p_register_id` char(14) NOT NULL,
  `p_doctor_id` int(7) NOT NULL,
  `p_register_finish` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='医生预约取消——确认表';

-- ----------------------------
-- Records of t_register_finish
-- ----------------------------

-- ----------------------------
-- Table structure for t_register_info
-- ----------------------------
DROP TABLE IF EXISTS `t_register_info`;
CREATE TABLE `t_register_info` (
  `p_register_date` varchar(32) DEFAULT NULL,
  `p_register_id` varchar(64) NOT NULL,
  `p_id` varchar(64) NOT NULL,
  `d_doctor_id` varchar(64) NOT NULL,
  `p_medical_no` int(16) NOT NULL,
  `p_symptoms` char(128) CHARACTER SET gb2312 DEFAULT NULL,
  `p_markshow_yes` bit(1) NOT NULL DEFAULT b'1',
  `listno` varchar(32) NOT NULL,
  `p_handle_date` varchar(32) DEFAULT NULL,
  `p_register_status` char(14) CHARACTER SET gb2312 DEFAULT NULL,
  PRIMARY KEY (`p_register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_register_info
-- ----------------------------
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:29:17', '1e48e07a-14e8-4a84-93de-bc5a92934c70', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '0a67db8f-cc5f-426f-b800-2c607a63bd98', '1', null, '', '[]', null, '未处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 19:52:30', '3d0c476e-3b8f-4006-80c9-4df9c50209a3', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-21 14:51:55', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:45:06', '45d92b2e-492f-4424-ab0d-a653bc421b7c', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-21 15:15:47', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:10:56', '5195347f-0603-4d6c-a0ad-bac85eff061b', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '0a67db8f-cc5f-426f-b800-2c607a63bd98', '1', null, '', '[]', null, '未处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:29:21', '5942b3d9-d0f6-46ee-99b1-371f7994bf92', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', '0a67db8f-cc5f-426f-b800-2c607a63bd98', '1', null, '', '[]', null, '未处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:45:10', '70751262-a714-4a3e-83c0-7f097f0e3a88', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-22 17:23:39', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:45:09', '7be0164b-e482-45f8-841d-88b73f5cffc0', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-21 15:15:47', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:29:19', 'a5a292b9-0624-411a-9289-d1217b09399e', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-21 15:22:15', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 19:52:31', 'bfeb1abd-3b8b-4429-8b3a-966ed97d87cb', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', '2016-04-21 15:22:15', '已处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 19:52:32', 'c4a76ab7-19b9-4715-be6c-af0872c58ab5', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', null, '未处理');
INSERT INTO `t_register_info` VALUES ('2016-04-20 16:45:04', 'f20e4f36-224b-4f82-aaec-85c67b3d59ee', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', null, '已拒绝');
INSERT INTO `t_register_info` VALUES ('2016-04-20 19:52:28', 'f5d946d2-d4d9-41c4-b35b-88e2bea817a4', '92e8cca5-866b-4e2e-968d-aa19d0eeb01f', 'f5a4e614-a0e2-4237-a4ee-9edf7be3f259', '1', null, '', '[]', null, '未处理');
