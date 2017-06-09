/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : lhave

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-06-09 13:37:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lhave_admin_car
-- ----------------------------
DROP TABLE IF EXISTS `lhave_admin_car`;
CREATE TABLE `lhave_admin_car` (
  `car_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT '车辆名称',
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL COMMENT '客车封面',
  `description` varchar(250) DEFAULT NULL COMMENT '客车介绍',
  `sale` varchar(250) DEFAULT NULL COMMENT '车辆单价',
  `app` varchar(250) DEFAULT NULL,
  `sequence` varchar(255) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL COMMENT '创建日期',
  `class_id` int(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `url` varchar(255) DEFAULT NULL,
  `ride` varchar(255) DEFAULT NULL COMMENT '乘坐人数',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lhave_admin_car
-- ----------------------------
INSERT INTO `lhave_admin_car` VALUES ('1', '0', '金龙客车', 'jinlongkeche', null, '/lhavecms/upload/2017-06-09/2a2a1481c75b6bbc6b3ef464af2704e6.jpg', '                            ', '500', 'car', null, null, '1496726100', '33', '', 'subpage_infor', null);
INSERT INTO `lhave_admin_car` VALUES ('6', '0', '宇通客车', null, null, '', '', '321', 'car', null, null, null, null, '123123123123', 'subpage_infor', null);

-- ----------------------------
-- Table structure for lhave_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `lhave_admin_group`;
CREATE TABLE `lhave_admin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `base_purview` text,
  `menu_purview` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理组';

-- ----------------------------
-- Records of lhave_admin_group
-- ----------------------------
INSERT INTO `lhave_admin_group` VALUES ('1', '管理员', 'a:2:{i:0;s:15:\"Admin_AppManage\";i:1;s:21:\"Admin_AppManage_index\";}', 'a:4:{i:0;s:19:\"首页_管理首页\";i:1;s:19:\"内容_栏目管理\";i:2;s:19:\"内容_文章管理\";i:3;s:22:\"系统_用户组管理\";}', '1');

-- ----------------------------
-- Table structure for lhave_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `lhave_admin_log`;
CREATE TABLE `lhave_admin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `app` varchar(250) DEFAULT '1',
  `content` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台操作记录';

-- ----------------------------
-- Records of lhave_admin_log
-- ----------------------------
INSERT INTO `lhave_admin_log` VALUES ('1', '1', '1496716692', '::1', 'admin', '登录系统');
INSERT INTO `lhave_admin_log` VALUES ('2', '1', '1496804578', '::1', 'admin', '登录系统');
INSERT INTO `lhave_admin_log` VALUES ('3', '1', '1496884000', '::1', 'admin', '登录系统');
INSERT INTO `lhave_admin_log` VALUES ('4', '1', '1496972160', '::1', 'admin', '登录系统');

-- ----------------------------
-- Table structure for lhave_admin_reserve
-- ----------------------------
DROP TABLE IF EXISTS `lhave_admin_reserve`;
CREATE TABLE `lhave_admin_reserve` (
  `reserve_id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `urltitle` varchar(255) DEFAULT NULL,
  `no` int(11) DEFAULT NULL COMMENT '订单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '客户手机号码',
  `trip` varchar(255) DEFAULT NULL COMMENT '行程',
  `days` int(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL COMMENT '订单状态',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '总金额',
  `paid` decimal(11,0) DEFAULT NULL COMMENT '实付金额',
  `time` int(11) DEFAULT NULL COMMENT '下单日期',
  `description` varchar(255) DEFAULT NULL COMMENT '补充信息',
  `app` varchar(255) DEFAULT NULL,
  `font_em` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sequence` int(255) DEFAULT NULL,
  `copyfrom` varchar(255) DEFAULT NULL,
  `views` int(255) DEFAULT NULL,
  `taglink` int(255) DEFAULT NULL,
  `tpl` varchar(255) DEFAULT NULL,
  `site` int(255) DEFAULT NULL,
  PRIMARY KEY (`reserve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lhave_admin_reserve
-- ----------------------------
INSERT INTO `lhave_admin_reserve` VALUES ('1', '1', null, null, '20170102', '小王', '13552389648', '大理-丽江', '3', '1', '4500', '500', '165461354', '', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for lhave_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `lhave_admin_user`;
CREATE TABLE `lhave_admin_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户IP',
  `group_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户组ID',
  `username` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `nicename` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `level` int(5) DEFAULT '1' COMMENT '等级',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT '未知' COMMENT '登录IP',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of lhave_admin_user
-- ----------------------------
INSERT INTO `lhave_admin_user` VALUES ('1', '1', 'lhave', '1638e33171c1ee666a19fd113421282a', '管理员', 'admin@lhave.com', '1', '1', '1418960975', '1496972160', '::1');

-- ----------------------------
-- Table structure for lhave_category
-- ----------------------------
DROP TABLE IF EXISTS `lhave_category`;
CREATE TABLE `lhave_category` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT '0',
  `app` varchar(20) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `sequence` int(10) DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '1',
  `name` varchar(250) DEFAULT NULL,
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `gotosub` tinyint(1) DEFAULT '0' COMMENT '是否直接访问第一个子栏目',
  `class_tpl` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `upload_config` int(10) DEFAULT '1',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `urlname` (`urlname`) USING BTREE,
  KEY `pid` (`parent_id`),
  KEY `mid` (`app`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='栏目基础信息';

-- ----------------------------
-- Records of lhave_category
-- ----------------------------
INSERT INTO `lhave_category` VALUES ('1', '26', 'article', '1', '1', '1', '昆明', 'kunming', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('2', '26', 'article', '1', '1', '1', '楚雄', 'chuxiong', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('3', '26', 'article', '1', '1', '1', '香格里拉', 'xianggelila', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('4', '26', 'article', '1', '1', '1', '瑞丽', 'ruili', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('5', '26', 'article', '1', '1', '1', '腾冲', 'tengchong', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('6', '26', 'article', '1', '1', '1', '芒市', 'mangshi', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('7', '26', 'article', '1', '1', '1', '抚仙湖', 'fuxianhu', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('8', '26', 'article', '1', '1', '1', '墨江', 'mojiang', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('9', '26', 'article', '1', '1', '1', '普洱', 'puer', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('10', '26', 'article', '1', '1', '1', '西双版纳', 'xishuangbanna', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('11', '26', 'article', '1', '1', '1', '文山普者黑', 'wenshanpuzhehei', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('12', '26', 'article', '1', '1', '1', '元阳梯田', 'yuanyangtitian', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('13', '26', 'article', '1', '1', '1', '坝美', 'bamei', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('14', '26', 'article', '1', '1', '1', '建水', 'jianshui', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('24', '0', 'article', '1', '3', '1', '新闻资讯', 'xinwenzixun99994953', '', '', '0', 'subpage_news_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('25', '0', 'page', '1', '4', '1', '关于我们', 'guanyuwomen', '', '', '0', 'subpage_aboutus', '', '', '1');
INSERT INTO `lhave_category` VALUES ('26', '0', 'article', '1', '1', '0', '景区介绍', 'jingqujieshao', '', '', '0', 'subpage_sightspot_list', '', '', '1');
INSERT INTO `lhave_category` VALUES ('28', '25', 'page', '1', '2', '1', '资质荣誉', 'zizhirongyu', '', '', '0', 'subpage_aboutus', '', '', '1');
INSERT INTO `lhave_category` VALUES ('29', '25', 'page', '1', '4', '1', '详细地址', 'xiangxidizhi', '', '', '0', 'subpage_aboutus', '', '', '1');
INSERT INTO `lhave_category` VALUES ('30', '25', 'page', '1', '3', '1', '联系方式', 'lianxifangshi', '', '', '0', 'subpage_aboutus', '', '', '1');
INSERT INTO `lhave_category` VALUES ('32', '25', 'page', '1', '1', '1', '公司概况', 'gongsigaikuang', '', '', '0', 'subpage_aboutus', '', '', '1');
INSERT INTO `lhave_category` VALUES ('33', '0', 'article', '1', '1', '1', '车辆预定', 'cheliangyuding', '', '', '0', 'subpage_car_reserve', '', '', '1');

-- ----------------------------
-- Table structure for lhave_category_article
-- ----------------------------
DROP TABLE IF EXISTS `lhave_category_article`;
CREATE TABLE `lhave_category_article` (
  `class_id` int(10) NOT NULL,
  `fieldset_id` int(10) NOT NULL,
  `content_tpl` varchar(250) NOT NULL,
  `config_upload` text NOT NULL,
  `content_order` varchar(250) NOT NULL,
  `page` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章栏目信息';

-- ----------------------------
-- Records of lhave_category_article
-- ----------------------------
INSERT INTO `lhave_category_article` VALUES ('1', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('2', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('3', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('4', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('5', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('6', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('7', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('8', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('9', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('10', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('11', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('12', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('13', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('14', '0', 'subpage_sightspot_detail', '', 'time DESC', '15');
INSERT INTO `lhave_category_article` VALUES ('24', '0', 'subpage_news_detail', '', 'time DESC', '4');
INSERT INTO `lhave_category_article` VALUES ('26', '0', 'subpage_sightspot_detail', '', 'time DESC', '10');
INSERT INTO `lhave_category_article` VALUES ('33', '0', 'subpage_infor', '', 'time DESC', '10');

-- ----------------------------
-- Table structure for lhave_category_page
-- ----------------------------
DROP TABLE IF EXISTS `lhave_category_page`;
CREATE TABLE `lhave_category_page` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COMMENT '内容',
  KEY `cid` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单页栏目信息';

-- ----------------------------
-- Records of lhave_category_page
-- ----------------------------
INSERT INTO `lhave_category_page` VALUES ('25', '&lt;header class=&quot;abt-hd&quot; style=&quot;white-space:normal;box-sizing:border-box;margin:0px;padding:0px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#EBEBEB;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;&quot;&gt;\r\n&lt;h3 style=&quot;box-sizing:border-box;margin:0px;padding:36px 0px 26px;line-height:38px;color:#060606;font-family:inherit;font-weight:normal;font-size:34px;&quot;&gt;\r\n	关于我们&lt;br /&gt;\r\n&lt;/h3&gt;\r\n&lt;/header&gt;\r\n&lt;div class=&quot;abt-bd&quot; style=&quot;white-space:normal;box-sizing:border-box;margin:0px;padding:14px 12px 20px;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		大浪淘沙，守正出奇！回首过往，爱投资经过几年的开拓与积累，已成功跻身于国内互联网金融一线品牌。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		3年3月31日，爱投资成功上线，自上线的第一天开始，我们就将自己定为P2C（person to company）个人对企业借贷的互联网金融平台，并且开创了互联网金融全新的产品模式—爱担保，连接了个人与企业的投融资需求，这一年爱投资成交额近5亿。2014年，爱投资继爱担保产品线之后又结合市场及客户的不同需求，打造出爱融租、爱保理、爱收藏三条全新的产品线，引领了行业发展的创新之路，且自主研发并上线了爱投资APP，爱投资当年成交额达到了40亿。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2015年，随着行业进入快速发展期，竞争也变的空前激烈，但爱投资依然坚持金融服务实体这条基本路线，深耕以实体企业为核心的上下游金融服务，成功上线了“省心计划”新的产品线，开启了以实体企业为核心的供应链金融服务之路。这一年，爱投资拿到了A轮融资且成交额突破百亿大关。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2016年伴随着网贷指导意见出台，我们提出“适应环境，自我改革”的要求，引入了更强大的合作伙伴、更高端的专业人才，整合了我们业务的上下游合作伙伴，并且加大了对科技金融的探索，为即将开始科技金融之路做足准备。这一年我们完成了B轮融资，累计交易额突破200亿！\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		当然除了业务模式的不断创新与规模的不断壮大，爱投资在风险把控方面也一直追求精益求精。在信息安全方面，爱投资经过多年线上运营经验的积累已建立了一套多维度、端到端的安全保障体系，并且与国家互联网应急中心在内的多家权威安全机构合作，在网站漏洞扫描、钓鱼网站监控、APP 发布渠道监控等方面展开合作，通过借助国家级专家技术力量不断巩固和强化平台的安全性。在产品风控方面，爱投资针对不同的产品线有不同的风控标准、流程和操作规范，均涵盖项目的贷前、贷中和贷后的全面风险管理板块，建立了完善的风险管理系统，确保资产风险可控。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基石。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		未来，我们仍将不忘初心，继续专注于金融服务实体的发展方向，从现有的P2C投资端产品线上衍生出“爱投资+供应链科技金融”与“爱投资+互联网财富管理”两个业务方向，在深耕供应链科技金融小额资产的同时，也为互联网投资端中的合格投资人提供财富管理服务。努力将自己打造成以客户为中心，以供应链科技金融为核心资产，以综合服务为特色的互联网金融平台，使爱投资成为一家被社会尊重、被客户信赖、被员工拥护的优秀企业\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:10px;box-sizing:border-box;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		最后，我谨代表爱投资全体同仁，向一直关心、帮助、支持爱投资的广大客户的支持与信赖表示诚挚感谢！相信在大家的支持下和我们自身努力下，爱投资前进的步伐会迈得更加坚定，我们共同的梦想会更早实现！让我们携手同行，一同铸造更好的未来！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;');
INSERT INTO `lhave_category_page` VALUES ('28', '&lt;header class=&quot;abt-hd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:0px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#EBEBEB;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n&lt;h3 style=&quot;box-sizing:border-box;margin:0px;padding:36px 0px 26px;line-height:38px;color:#060606;font-family:inherit;font-weight:normal;font-size:34px;&quot;&gt;\r\n	资质荣誉\r\n&lt;/h3&gt;\r\n&lt;/header&gt;\r\n&lt;div class=&quot;abt-bd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:14px 12px 20px;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		大浪淘沙，守正出奇！回首过往，爱投资经过几年的开拓与积累，已成功跻身于国内互联网金融一线品牌。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		3年3月31日，爱投资成功上线，自上线的第一天开始，我们就将自己定为P2C（person to company）个人对企业借贷的互联网金融平台，并且开创了互联网金融全新的产品模式—爱担保，连接了个人与企业的投融资需求，这一年爱投资成交额近5亿。2014年，爱投资继爱担保产品线之后又结合市场及客户的不同需求，打造出爱融租、爱保理、爱收藏三条全新的产品线，引领了行业发展的创新之路，且自主研发并上线了爱投资APP，爱投资当年成交额达到了40亿。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2015年，随着行业进入快速发展期，竞争也变的空前激烈，但爱投资依然坚持金融服务实体这条基本路线，深耕以实体企业为核心的上下游金融服务，成功上线了“省心计划”新的产品线，开启了以实体企业为核心的供应链金融服务之路。这一年，爱投资拿到了A轮融资且成交额突破百亿大关。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2016年伴随着网贷指导意见出台，我们提出“适应环境，自我改革”的要求，引入了更强大的合作伙伴、更高端的专业人才，整合了我们业务的上下游合作伙伴，并且加大了对科技金融的探索，为即将开始科技金融之路做足准备。这一年我们完成了B轮融资，累计交易额突破200亿！\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		当然除了业务模式的不断创新与规模的不断壮大，爱投资在风险把控方面也一直追求精益求精。在信息安全方面，爱投资经过多年线上运营经验的积累已建立了一套多维度、端到端的安全保障体系，并且与国家互联网应急中心在内的多家权威安全机构合作，在网站漏洞扫描、钓鱼网站监控、APP 发布渠道监控等方面展开合作，通过借助国家级专家技术力量不断巩固和强化平台的安全性。在产品风控方面，爱投资针对不同的产品线有不同的风控标准、流程和操作规范，均涵盖项目的贷前、贷中和贷后的全面风险管理板块，建立了完善的风险管理系统，确保资产风险可控。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基石。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		未来，我们仍将不忘初心，继续专注于金融服务实体的发展方向，从现有的P2C投资端产品线上衍生出“爱投资+供应链科技金融”与“爱投资+互联网财富管理”两个业务方向，在深耕供应链科技金融小额资产的同时，也为互联网投资端中的合格投资人提供财富管理服务。努力将自己打造成以客户为中心，以供应链科技金融为核心资产，以综合服务为特色的互联网金融平台，使爱投资成为一家被社会尊重、被客户信赖、被员工拥护的优秀企业\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		最后，我谨代表爱投资全体同仁，向一直关心、帮助、支持爱投资的广大客户的支持与信赖表示诚挚感谢！相信在大家的支持下和我们自身努力下，爱投资前进的步伐会迈得更加坚定，我们共同的梦想会更早实现！让我们携手同行，一同铸造更好的未来！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;');
INSERT INTO `lhave_category_page` VALUES ('29', '&lt;header class=&quot;abt-hd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:0px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#EBEBEB;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n&lt;h3 style=&quot;box-sizing:border-box;margin:0px;padding:36px 0px 26px;line-height:38px;color:#060606;font-family:inherit;font-weight:normal;font-size:34px;&quot;&gt;\r\n	详细地址\r\n&lt;/h3&gt;\r\n&lt;/header&gt;\r\n&lt;div class=&quot;abt-bd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:14px 12px 20px;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		大浪淘沙，守正出奇！回首过往，爱投资经过几年的开拓与积累，已成功跻身于国内互联网金融一线品牌。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		3年3月31日，爱投资成功上线，自上线的第一天开始，我们就将自己定为P2C（person to company）个人对企业借贷的互联网金融平台，并且开创了互联网金融全新的产品模式—爱担保，连接了个人与企业的投融资需求，这一年爱投资成交额近5亿。2014年，爱投资继爱担保产品线之后又结合市场及客户的不同需求，打造出爱融租、爱保理、爱收藏三条全新的产品线，引领了行业发展的创新之路，且自主研发并上线了爱投资APP，爱投资当年成交额达到了40亿。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2015年，随着行业进入快速发展期，竞争也变的空前激烈，但爱投资依然坚持金融服务实体这条基本路线，深耕以实体企业为核心的上下游金融服务，成功上线了“省心计划”新的产品线，开启了以实体企业为核心的供应链金融服务之路。这一年，爱投资拿到了A轮融资且成交额突破百亿大关。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2016年伴随着网贷指导意见出台，我们提出“适应环境，自我改革”的要求，引入了更强大的合作伙伴、更高端的专业人才，整合了我们业务的上下游合作伙伴，并且加大了对科技金融的探索，为即将开始科技金融之路做足准备。这一年我们完成了B轮融资，累计交易额突破200亿！\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		当然除了业务模式的不断创新与规模的不断壮大，爱投资在风险把控方面也一直追求精益求精。在信息安全方面，爱投资经过多年线上运营经验的积累已建立了一套多维度、端到端的安全保障体系，并且与国家互联网应急中心在内的多家权威安全机构合作，在网站漏洞扫描、钓鱼网站监控、APP 发布渠道监控等方面展开合作，通过借助国家级专家技术力量不断巩固和强化平台的安全性。在产品风控方面，爱投资针对不同的产品线有不同的风控标准、流程和操作规范，均涵盖项目的贷前、贷中和贷后的全面风险管理板块，建立了完善的风险管理系统，确保资产风险可控。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基石。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		未来，我们仍将不忘初心，继续专注于金融服务实体的发展方向，从现有的P2C投资端产品线上衍生出“爱投资+供应链科技金融”与“爱投资+互联网财富管理”两个业务方向，在深耕供应链科技金融小额资产的同时，也为互联网投资端中的合格投资人提供财富管理服务。努力将自己打造成以客户为中心，以供应链科技金融为核心资产，以综合服务为特色的互联网金融平台，使爱投资成为一家被社会尊重、被客户信赖、被员工拥护的优秀企业\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		最后，我谨代表爱投资全体同仁，向一直关心、帮助、支持爱投资的广大客户的支持与信赖表示诚挚感谢！相信在大家的支持下和我们自身努力下，爱投资前进的步伐会迈得更加坚定，我们共同的梦想会更早实现！让我们携手同行，一同铸造更好的未来！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;');
INSERT INTO `lhave_category_page` VALUES ('30', '&lt;header class=&quot;abt-hd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:0px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#EBEBEB;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n&lt;h3 style=&quot;box-sizing:border-box;margin:0px;padding:36px 0px 26px;line-height:38px;color:#060606;font-family:inherit;font-weight:normal;font-size:34px;&quot;&gt;\r\n	联系方式\r\n&lt;/h3&gt;\r\n&lt;/header&gt;\r\n&lt;div class=&quot;abt-bd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:14px 12px 20px;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		大浪淘沙，守正出奇！回首过往，爱投资经过几年的开拓与积累，已成功跻身于国内互联网金融一线品牌。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		3年3月31日，爱投资成功上线，自上线的第一天开始，我们就将自己定为P2C（person to company）个人对企业借贷的互联网金融平台，并且开创了互联网金融全新的产品模式—爱担保，连接了个人与企业的投融资需求，这一年爱投资成交额近5亿。2014年，爱投资继爱担保产品线之后又结合市场及客户的不同需求，打造出爱融租、爱保理、爱收藏三条全新的产品线，引领了行业发展的创新之路，且自主研发并上线了爱投资APP，爱投资当年成交额达到了40亿。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2015年，随着行业进入快速发展期，竞争也变的空前激烈，但爱投资依然坚持金融服务实体这条基本路线，深耕以实体企业为核心的上下游金融服务，成功上线了“省心计划”新的产品线，开启了以实体企业为核心的供应链金融服务之路。这一年，爱投资拿到了A轮融资且成交额突破百亿大关。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2016年伴随着网贷指导意见出台，我们提出“适应环境，自我改革”的要求，引入了更强大的合作伙伴、更高端的专业人才，整合了我们业务的上下游合作伙伴，并且加大了对科技金融的探索，为即将开始科技金融之路做足准备。这一年我们完成了B轮融资，累计交易额突破200亿！\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		当然除了业务模式的不断创新与规模的不断壮大，爱投资在风险把控方面也一直追求精益求精。在信息安全方面，爱投资经过多年线上运营经验的积累已建立了一套多维度、端到端的安全保障体系，并且与国家互联网应急中心在内的多家权威安全机构合作，在网站漏洞扫描、钓鱼网站监控、APP 发布渠道监控等方面展开合作，通过借助国家级专家技术力量不断巩固和强化平台的安全性。在产品风控方面，爱投资针对不同的产品线有不同的风控标准、流程和操作规范，均涵盖项目的贷前、贷中和贷后的全面风险管理板块，建立了完善的风险管理系统，确保资产风险可控。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基石。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		未来，我们仍将不忘初心，继续专注于金融服务实体的发展方向，从现有的P2C投资端产品线上衍生出“爱投资+供应链科技金融”与“爱投资+互联网财富管理”两个业务方向，在深耕供应链科技金融小额资产的同时，也为互联网投资端中的合格投资人提供财富管理服务。努力将自己打造成以客户为中心，以供应链科技金融为核心资产，以综合服务为特色的互联网金融平台，使爱投资成为一家被社会尊重、被客户信赖、被员工拥护的优秀企业\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		最后，我谨代表爱投资全体同仁，向一直关心、帮助、支持爱投资的广大客户的支持与信赖表示诚挚感谢！相信在大家的支持下和我们自身努力下，爱投资前进的步伐会迈得更加坚定，我们共同的梦想会更早实现！让我们携手同行，一同铸造更好的未来！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;');
INSERT INTO `lhave_category_page` VALUES ('32', '&lt;header class=&quot;abt-hd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:0px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#EBEBEB;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n&lt;h3 style=&quot;box-sizing:border-box;margin:0px;padding:36px 0px 26px;line-height:38px;color:#060606;font-family:inherit;font-weight:normal;font-size:34px;&quot;&gt;\r\n	公司概况\r\n&lt;/h3&gt;\r\n&lt;/header&gt;\r\n&lt;div class=&quot;abt-bd&quot; style=&quot;box-sizing:border-box;margin:0px;padding:14px 12px 20px;color:#333333;font-family:微软雅黑;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		大浪淘沙，守正出奇！回首过往，爱投资经过几年的开拓与积累，已成功跻身于国内互联网金融一线品牌。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		3年3月31日，爱投资成功上线，自上线的第一天开始，我们就将自己定为P2C（person to company）个人对企业借贷的互联网金融平台，并且开创了互联网金融全新的产品模式—爱担保，连接了个人与企业的投融资需求，这一年爱投资成交额近5亿。2014年，爱投资继爱担保产品线之后又结合市场及客户的不同需求，打造出爱融租、爱保理、爱收藏三条全新的产品线，引领了行业发展的创新之路，且自主研发并上线了爱投资APP，爱投资当年成交额达到了40亿。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2015年，随着行业进入快速发展期，竞争也变的空前激烈，但爱投资依然坚持金融服务实体这条基本路线，深耕以实体企业为核心的上下游金融服务，成功上线了“省心计划”新的产品线，开启了以实体企业为核心的供应链金融服务之路。这一年，爱投资拿到了A轮融资且成交额突破百亿大关。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		2016年伴随着网贷指导意见出台，我们提出“适应环境，自我改革”的要求，引入了更强大的合作伙伴、更高端的专业人才，整合了我们业务的上下游合作伙伴，并且加大了对科技金融的探索，为即将开始科技金融之路做足准备。这一年我们完成了B轮融资，累计交易额突破200亿！\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		当然除了业务模式的不断创新与规模的不断壮大，爱投资在风险把控方面也一直追求精益求精。在信息安全方面，爱投资经过多年线上运营经验的积累已建立了一套多维度、端到端的安全保障体系，并且与国家互联网应急中心在内的多家权威安全机构合作，在网站漏洞扫描、钓鱼网站监控、APP 发布渠道监控等方面展开合作，通过借助国家级专家技术力量不断巩固和强化平台的安全性。在产品风控方面，爱投资针对不同的产品线有不同的风控标准、流程和操作规范，均涵盖项目的贷前、贷中和贷后的全面风险管理板块，建立了完善的风险管理系统，确保资产风险可控。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基石。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		回顾过往，爱投资虽然经历了产品模式的创新、思想上的蜕变，组织上的变革和大浪淘沙般的更迭，但我们一直保持初心未变，自成立至今的爱投资一直专注于以支持实体企业发展为宗旨，以服务大众投资者为目标，始终秉承“谦恭、诚信、创新、进取”的企业精神，不断优化服务、推陈出新，我们坚信唯有专注才可以增补我们的创业基\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		未来，我们仍将不忘初心，继续专注于金融服务实体的发展方向，从现有的P2C投资端产品线上衍生出“爱投资+供应链科技金融”与“爱投资+互联网财富管理”两个业务方向，在深耕供应链科技金融小额资产的同时，也为互联网投资端中的合格投资人提供财富管理服务。努力将自己打造成以客户为中心，以供应链科技金融为核心资产，以综合服务为特色的互联网金融平台，使爱投资成为一家被社会尊重、被客户信赖、被员工拥护的优秀企业\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#666666;line-height:30px;&quot;&gt;\r\n		最后，我谨代表爱投资全体同仁，向一直关心、帮助、支持爱投资的广大客户的支持与信赖表示诚挚感谢！相信在大家的支持下和我们自身努力下，爱投资前进的步伐会迈得更加坚定，我们共同的梦想会更早实现！让我们携手同行，一同铸造更好的未来！\r\n	&lt;/p&gt;\r\n&lt;/div&gt;');

-- ----------------------------
-- Table structure for lhave_config
-- ----------------------------
DROP TABLE IF EXISTS `lhave_config`;
CREATE TABLE `lhave_config` (
  `name` varchar(250) NOT NULL,
  `data` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of lhave_config
-- ----------------------------
INSERT INTO `lhave_config` VALUES ('site_title', '恒光客运');
INSERT INTO `lhave_config` VALUES ('site_subtitle', '简单、易用、轻巧');
INSERT INTO `lhave_config` VALUES ('site_url', '');
INSERT INTO `lhave_config` VALUES ('site_keywords', '岚海网络');
INSERT INTO `lhave_config` VALUES ('site_description', '');
INSERT INTO `lhave_config` VALUES ('site_email', 'admin@lhave.com');
INSERT INTO `lhave_config` VALUES ('site_copyright', 'Copyright2010 - 2017  LHAVE.COM  All Rights Reserved   版权所有：云南省');
INSERT INTO `lhave_config` VALUES ('site_statistics', '');
INSERT INTO `lhave_config` VALUES ('tpl_name', 'htkeyun');
INSERT INTO `lhave_config` VALUES ('tpl_index', 'index');
INSERT INTO `lhave_config` VALUES ('tpl_search', 'search');
INSERT INTO `lhave_config` VALUES ('tpl_tags', 'tag');
INSERT INTO `lhave_config` VALUES ('mobile_status', '0');
INSERT INTO `lhave_config` VALUES ('mobile_tpl', 'mobile');
INSERT INTO `lhave_config` VALUES ('mobile_domain', '');
INSERT INTO `lhave_config` VALUES ('phone', '400-871-8989');
INSERT INTO `lhave_config` VALUES ('address', '云南省昆明市滇池路南亚第壹国际C1座F14（邮编：650000）');
INSERT INTO `lhave_config` VALUES ('phone_1', '0871-6985221');

-- ----------------------------
-- Table structure for lhave_config_upload
-- ----------------------------
DROP TABLE IF EXISTS `lhave_config_upload`;
CREATE TABLE `lhave_config_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `upload_size` int(10) NOT NULL,
  `upload_exts` varchar(250) DEFAULT NULL,
  `upload_replace` tinyint(1) DEFAULT NULL,
  `thumb_status` tinyint(1) DEFAULT NULL,
  `water_status` tinyint(1) DEFAULT NULL,
  `thumb_type` tinyint(1) DEFAULT NULL,
  `thumb_width` int(10) DEFAULT NULL,
  `thumb_height` int(10) DEFAULT NULL,
  `water_image` varchar(250) DEFAULT NULL,
  `water_position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of lhave_config_upload
-- ----------------------------
INSERT INTO `lhave_config_upload` VALUES ('1', '默认', '10', 'jpg,gif,bmp,png', '0', '0', '0', '1', '800', '800', 'logo.jpg', '1');

-- ----------------------------
-- Table structure for lhave_content
-- ----------------------------
DROP TABLE IF EXISTS `lhave_content`;
CREATE TABLE `lhave_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `class_id` int(10) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `urltitle` varchar(250) DEFAULT NULL COMMENT 'URL路径',
  `font_color` varchar(250) DEFAULT NULL COMMENT '颜色',
  `font_bold` tinyint(1) DEFAULT NULL COMMENT '加粗',
  `font_em` tinyint(1) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(250) DEFAULT NULL COMMENT '描述',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  `image` varchar(250) DEFAULT NULL COMMENT '封面图',
  `url` varchar(250) DEFAULT NULL COMMENT '跳转',
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `views` int(10) DEFAULT '0' COMMENT '浏览数',
  `taglink` int(10) DEFAULT '0' COMMENT 'TAG链接',
  `tpl` varchar(250) DEFAULT NULL,
  `site` int(10) DEFAULT '1',
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `urltitle` (`urltitle`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `description` (`description`) USING BTREE,
  KEY `keywords` (`keywords`),
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='内容基础';

-- ----------------------------
-- Records of lhave_content
-- ----------------------------
INSERT INTO `lhave_content` VALUES ('1', '1', '建水-燕子洞', 'jianshui-yanzidong', '0', '0', '0', '3', '', '燕子洞位于云南红河州建水县城东30公里处。洞外有3万多平方米枝叶茂盛的天然林地，洞内巢居百万雨燕，云南红河每年春夏，燕飞如万箭齐发，十分壮观。推荐行程1D1第1天昆明接团、火车', '1496726100', '/lhavecms/upload/2017-06-06/5b302a9b28cd94fb52a46a56886ad3e2.jpg', null, '1', '1', '本站', '43', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('3', '24', '爱投资iSAFE儿童安全公益项目 走进朝阳新城社区', 'aitouziiSAFEertonganquangongyi', '0', '0', '0', '2', '', '当今世界充满不确定性，人们对未来既寄予期待又感到困惑。“世界怎么了、我们怎么办？”5月14日，在“一带一路”国际合作高峰论坛开幕式上，习近平从历史和现实两大维度，深刻总结', '1496745360', '/lhavecms/upload/2017-06-06/09df02fff275fe57fe5e8ce07fc8206a.jpg', null, '0', '1', '本站', '10', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('5', '24', 'WWDC 2017全纪录：越来越贵的硬件，更像Android的iOS', 'WWDC-2017quanjiluyuelaiyueguid', '0', '0', '0', '2', '', '“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”圣何塞是硅谷的起', '1496804640', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', null, '0', '1', '本站', '15', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('6', '24', 'WWDC 2017全纪录：越来越贵的硬件，更像Android的iOS', 'WWDC-2017quanjiluyuelaiyuegui', '0', '0', '0', '1', '', '“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”圣何塞是硅谷的起', '1496804640', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', '', '0', '1', '本站', '4', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('7', '24', 'WWDC 2017全纪录：越来越贵的硬件，更像Android的iOS', 'WWDC-2017quanjiluyuelaiyueguid1', '0', '0', '0', '1', '', '“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”圣何塞是硅谷的起', '1496804640', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', '', '0', '1', '本站', '4', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('8', '24', 'WWDC 2017全纪录：越来越贵的硬件，更像Android的iOS', 'WWDC-2017quanjiluyuelaiyueguid2', '0', '0', '0', '1', '', '“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”圣何塞是硅谷的起', '1496804640', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', '', '0', '1', '本站', '6', '1', '', '1');
INSERT INTO `lhave_content` VALUES ('9', '24', 'WWDC 2017全纪录：越来越贵的硬件，更像Android的iOS', 'WWDC-2017quanjiluyuelaiyueguid3', '0', '0', '0', '1', '', '“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”圣何塞是硅谷的起', '1496804640', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', '', '0', '1', '本站', '6', '1', '', '1');

-- ----------------------------
-- Table structure for lhave_content_article
-- ----------------------------
DROP TABLE IF EXISTS `lhave_content_article`;
CREATE TABLE `lhave_content_article` (
  `content_id` int(10) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容信息';

-- ----------------------------
-- Records of lhave_content_article
-- ----------------------------
INSERT INTO `lhave_content_article` VALUES ('1', '&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-06/0be875610e57a43ba7cee77a2723cee1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	燕子洞位于云南红河州建水县城东30公里处。洞外有3万多平方米枝叶茂盛的天然林地，洞内巢居百万雨燕，云南红河每年春夏，燕飞如万箭齐发，十分壮观。\r\n&lt;/p&gt;\r\n&lt;h4 style=&quot;box-sizing:border-box;margin:10px 0px;padding:0px;line-height:1.1;color:#333333;font-family:微软雅黑;font-weight:500;font-size:18px;font-style:normal;font-variant:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	推荐行程1\r\n&lt;/h4&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D1\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第1天昆明接团、火车下大理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	昆明接团后签订旅游合同，如抵达昆明的时间尚早，您可在酒店稍适休息后自行前往昆明市中心观赏闹市胜景“品字三坊”—即【金马坊、碧鸡坊、忠爱坊】，逛逛昆明南屏步行街街景，到建新园或江氏桥乡园品尝昆明特色小吃“过桥米线”又或者到祥云美食城品尝云南各地特色小吃。稍作高原适应性休息调整，放松心情准备开始愉快的旅程。 晚昆明乘21：30-23:00火车卧铺前往风花雪月之城-大理。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	翠湖\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	金马坊\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：火车\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：火车上\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	用餐：自理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D2\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第2天丽江、拉市海、束河古镇、木府、丽江古城、四方街 丽江早接火车，乘车前往候鸟的天堂—【拉市海】，欣赏拉市海的田园风光。拉市海就像一面大镜子一样镶嵌在群山之间，显得淡泊宁静。欣赏纳西生态村，体验民族风情，由700多户纯正的纳西农家组成，面海背山而居，700多年的历史，纳西文化、壁画、古建筑等全部展现。古朴的纳西民风，一幅绝美的田园诗画。如需要在拉市海骑马、划船，费用请自理。之后前往茶马古道重镇之地—【束河古镇】（浏览时间约40分钟），世界文化遗产—丽江古城的重要组成部分、国家AAAA级旅游景区、中国魅力名镇、最佳人居环境名镇，它也是整个束河古镇的标志建筑。 前往素有“北有故宫，南有木府” -【木府】（木府是丽江木氏土司衙门的俗称，位于丽江古城狮子山下，是丽江古城文化之“大观园”，浏览时间约40分钟）。晚上自行前往世界文化遗产-【丽江古城】、大水车，大石桥，纳西壁画【漫步四方街】,感受古城夜景的炫美，开始神仙般的逍遥时光，感受一下纳西人民的热情，尝尝当地的特色小吃。晚也可自愿自费观看大型歌舞表演—【丽江千古情】，这是一生必看的演出，用各种不可思议的高科技手段和舞台表现形式，演绎了纳西创世纪的生命礼赞、泸沽湖女儿国的浪漫情怀、木府辉煌的兴盛和睦、马帮传奇的惊险震撼、玉龙第三国的生命绝唱……极度震撼、视觉盛宴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	拉市海\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	木府\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：旅游大巴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：丽江\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/lhavecms/upload/2017-06-06/8c06930c3383fd80e0f2ff4fa57ad63e.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;h4 style=&quot;box-sizing:border-box;margin:10px 0px;padding:0px;line-height:1.1;color:#333333;font-family:微软雅黑;font-weight:500;font-size:18px;font-style:normal;font-variant:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	推荐行程2\r\n&lt;/h4&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D1\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第1天昆明接团、火车下大理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	昆明接团后签订旅游合同，如抵达昆明的时间尚早，您可在酒店稍适休息后自行前往昆明市中心观赏闹市胜景“品字三坊”—即【金马坊、碧鸡坊、忠爱坊】，逛逛昆明南屏步行街街景，到建新园或江氏桥乡园品尝昆明特色小吃“过桥米线”又或者到祥云美食城品尝云南各地特色小吃。稍作高原适应性休息调整，放松心情准备开始愉快的旅程。 晚昆明乘21：30-23:00火车卧铺前往风花雪月之城-大理。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	翠湖\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	金马坊\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：火车\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：火车上\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	用餐：自理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D2\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第2天丽江、拉市海、束河古镇、木府、丽江古城、四方街 丽江早接火车，乘车前往候鸟的天堂—【拉市海】，欣赏拉市海的田园风光。拉市海就像一面大镜子一样镶嵌在群山之间，显得淡泊宁静。欣赏纳西生态村，体验民族风情，由700多户纯正的纳西农家组成，面海背山而居，700多年的历史，纳西文化、壁画、古建筑等全部展现。古朴的纳西民风，一幅绝美的田园诗画。如需要在拉市海骑马、划船，费用请自理。之后前往茶马古道重镇之地—【束河古镇】（浏览时间约40分钟），世界文化遗产—丽江古城的重要组成部分、国家AAAA级旅游景区、中国魅力名镇、最佳人居环境名镇，它也是整个束河古镇的标志建筑。 前往素有“北有故宫，南有木府” -【木府】（木府是丽江木氏土司衙门的俗称，位于丽江古城狮子山下，是丽江古城文化之“大观园”，浏览时间约40分钟）。晚上自行前往世界文化遗产-【丽江古城】、大水车，大石桥，纳西壁画【漫步四方街】,感受古城夜景的炫美，开始神仙般的逍遥时光，感受一下纳西人民的热情，尝尝当地的特色小吃。晚也可自愿自费观看大型歌舞表演—【丽江千古情】，这是一生必看的演出，用各种不可思议的高科技手段和舞台表现形式，演绎了纳西创世纪的生命礼赞、泸沽湖女儿国的浪漫情怀、木府辉煌的兴盛和睦、马帮传奇的惊险震撼、玉龙第三国的生命绝唱……极度震撼、视觉盛宴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	拉市海\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	木府\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：旅游大巴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：丽江\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/lhavecms/upload/2017-06-06/6d926bbc8bba7d2b93632061bdda7be4.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;h4 style=&quot;box-sizing:border-box;margin:10px 0px;padding:0px;line-height:1.1;color:#333333;font-family:微软雅黑;font-weight:500;font-size:18px;font-style:normal;font-variant:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	推荐行程3\r\n&lt;/h4&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D1\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第1天昆明接团、火车下大理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	昆明接团后签订旅游合同，如抵达昆明的时间尚早，您可在酒店稍适休息后自行前往昆明市中心观赏闹市胜景“品字三坊”—即【金马坊、碧鸡坊、忠爱坊】，逛逛昆明南屏步行街街景，到建新园或江氏桥乡园品尝昆明特色小吃“过桥米线”又或者到祥云美食城品尝云南各地特色小吃。稍作高原适应性休息调整，放松心情准备开始愉快的旅程。 晚昆明乘21：30-23:00火车卧铺前往风花雪月之城-大理。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	翠湖\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	金马坊\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：火车\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：火车上\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	用餐：自理\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	D2\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	第2天丽江、拉市海、束河古镇、木府、丽江古城、四方街 丽江早接火车，乘车前往候鸟的天堂—【拉市海】，欣赏拉市海的田园风光。拉市海就像一面大镜子一样镶嵌在群山之间，显得淡泊宁静。欣赏纳西生态村，体验民族风情，由700多户纯正的纳西农家组成，面海背山而居，700多年的历史，纳西文化、壁画、古建筑等全部展现。古朴的纳西民风，一幅绝美的田园诗画。如需要在拉市海骑马、划船，费用请自理。之后前往茶马古道重镇之地—【束河古镇】（浏览时间约40分钟），世界文化遗产—丽江古城的重要组成部分、国家AAAA级旅游景区、中国魅力名镇、最佳人居环境名镇，它也是整个束河古镇的标志建筑。 前往素有“北有故宫，南有木府” -【木府】（木府是丽江木氏土司衙门的俗称，位于丽江古城狮子山下，是丽江古城文化之“大观园”，浏览时间约40分钟）。晚上自行前往世界文化遗产-【丽江古城】、大水车，大石桥，纳西壁画【漫步四方街】,感受古城夜景的炫美，开始神仙般的逍遥时光，感受一下纳西人民的热情，尝尝当地的特色小吃。晚也可自愿自费观看大型歌舞表演—【丽江千古情】，这是一生必看的演出，用各种不可思议的高科技手段和舞台表现形式，演绎了纳西创世纪的生命礼赞、泸沽湖女儿国的浪漫情怀、木府辉煌的兴盛和睦、马帮传奇的惊险震撼、玉龙第三国的生命绝唱……极度震撼、视觉盛宴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	拉市海\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	木府\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	交通：旅游大巴\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	住宿：丽江\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('3', '&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-06/5cc76a696fba3e67d54723d99dae4b58.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	当今世界充满不确定性，人们对未来既寄予期待又感到困惑。“世界怎么了、我们怎么办？”5月14日，在“一带一路”国际合作高峰论坛开幕式上，习近平从历史和现实两大维度，深刻总结了他对当今世界和人类命运的思考。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	    ——从历史维度看，人类社会正处在一个大发展大变革大调整时代。“各国之间的联系从来没有像今天这样紧密，世界人民对美好生活的向往从来没有像今天这样强烈，人类战胜困难的手段从来没有像今天这样丰富”，习近平用这3句话高度概括了当今的时代潮流。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	    ——从历史维度看，人类社会正处在一个大发展大变革大调整时代。“各国之间的联系从来没有像今天这样紧密，世界人民对美好生活的向往从来没有像今天这样强烈，人类战胜困难的手段从来没有像今天这样丰富”，习近平用这3句话高度概括了当今的时代潮流。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	    如何顺势而为、应对挑战，习近平提出了“构建人类命运共同体，实现共赢共享”的中国方案。今年1月，他在联合国日内瓦总部演讲时坚定表示：中国维护世界和平的决心不会改变，中国促进共同发展的决心不会改变，中国打造伙伴关系的决心不会改变，中国支持多边主义的决心不会改变。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing:border-box;margin:0px 0px 10px;padding:0px;color:#454545;font-size:14px;line-height:26px;font-family:微软雅黑;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;orphans:auto;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:1;word-spacing:0px;-webkit-text-stroke-width:0px;background-color:#FFFFFF;&quot;&gt;\r\n	    4个“不会改变”，既是与世界命运与共、休戚相关之诺，也是迎难而上、实干担当之诺。化之行动，重要一步就是携手推进“一带一路”建设。习近平多次强调，“我提出‘一带一路’倡议，就是要实现共赢共享发展”。\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('5', '&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	圣何塞是硅谷的起源地，时隔15年之后，苹果回归到这座老硅谷轴心城市举办年度最重要，同时也是苹果史上规模最大的WWDC全球开发者大会。此次活动吸引了来自全球75个国家的5300名开发者，以及分析师、媒体记者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在这次大会中，最年轻的一个开发者来自澳大利亚，只有10岁，6岁的时候就开始编码，目前在Apple Store已经有自己的app。年纪最大的开发者是一位来自&lt;span style=&quot;font-size:13.6364px;&quot;&gt;日本的&lt;/span&gt;&lt;span style=&quot;text-indent:2em;&quot;&gt;82岁老太太，她在今年早些时候发布了自己第一个app。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	这届的苹果WWDC 2017信息量巨大。原本是一个软件唱主角的全球开发者大会，苹果硬生生地给办成了一场硬件产品的发布会。除了新品iPhone 8以及Apple Watch没有亮相，苹果把剩下的几条重要产品线的硬件都更新了一遍。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	新版iMac、iMac Pro、iPad Pro相继亮相之后，最后还如会前预测一般，“炸”出了一款对标亚马逊Echo和Google Home的智能音箱HomePod。下面就是所有更新的汇总。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;iOS 11：界面变化很大 &lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iPhone 8正在富士康的工厂紧锣密鼓的量产中，作为比肉身提前了三个多月发布的新一代iPhone灵魂，iOS 11这次的操作界面变化很大，但亮点功能并不是太多。不过这并不妨碍苹果CEO蒂姆·库克嘲讽安卓，他说iOS 10的用户满意度达到96%，升级率达到了86%，而另一阵营的Android 7.0升级率才7%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iOS 11还开始支持AR功能，通过ARKit配合相机，可以实现一些简单的AR数据处理。另外在中国区，摄像头将支持直接识别二维码。当然，iOS 11的AR功能也能配合游戏使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	此前苹果和微信的“打赏事件”风波，足以体现苹果对于超级app微信的重视。此次将二维码扫描功能植入相机，流量入口从微信独占变为和相机共享，流量的获取变得更加公平，也有可能是苹果应对微信的一招，微信小程序生存环境更加恶劣。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	除此之外，iOS 11还非常照顾中国用户的习惯，也越来越像Android，不仅能识别诈骗短信，国内的手机号码也可以作为Apple ID注册了。还增加了拼音键盘和Siri对于上海话的识别。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;font-size:14px;line-height:24px;text-align:justify;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;今年的iOS 11是苹果从扁平化走向透视炫彩化的又一大重要转折。它的控制中心、锁屏和消息界面进行了重新设计，在锁屏界面上划可以看到更多消息通知。不同于iOS 10，它的控制中心的各项功能变成了分块显示，利用3D Touch压感技术，甚至可以调节手电筒的亮度显示，并且还加入了个人热点开关、HomeKit家庭控制等功能。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		iMessage信息的贴纸进行了更新，在新设备中登陆可以通过iCloud进行同步，同步信息显示，同步信息删除，点对点加密。另一个大的更新是Apple Pay。截止今年年底，Apple Pay在美国本土使用率将达到50%以上。新的Apple Pay也变得更加强大，即将开通iMessage与好友转账的功能（当然微信早就有了）。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		和以前每一次系统更新一样，Siri也是iOS 11的更新重点，它有了更好的视觉界面，有多个搜索系统，还支持翻译英译中文、法语、德语、意大利语和西班牙语。甚至连扫微信二维码都可以通过Siri来操作。另外，Siri也变得更加的聪明，加入了人工智能，它可以对用户行为预测，进行提醒，如帮助自动搜索新闻等。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		另外，这次iOS 11对拍照进行了优化，支持HEVC 视频编码。照片方面，JPEG 也被High Efficiency Image Format（高效影像格式，HEIF ）图像格式所取代，在提升图片存储质量的同时，存储容量减少一半。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		记忆相册功能更加强大，还可以拍成小电影，Live动态照片可以剪辑。CarPlay则是拥有全新的用户界面，开车的时候自动开启免打扰功能。假如你收到信息，它会自动回复给对方你正在开车中；如果有特别紧急的信息，则是会弹出。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		在HomeKit智能家居应用方面，支持Speakers智能音箱接入，另外它在音乐界面方面也有所优化调整。值得一提的是，苹果地图也升级了更加强大的室内导航，以商场导航为例，它可以精确到每一个楼层，未来主要机场也将覆盖。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		苹果在此次发布会上宣布，参加此次WWDC 2017的开发者今天就可以升级到iOS 11工程版进行应用开发。按照惯例，正式版iOS 11将在今年9月份随着新品iPhone的发布推送更新升级。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;watchOS 4：小修小补&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		tvOS和在此次开发者大会上最先亮相。但是tvOS方面的功能提升苹果没有过多的提及，只是宣布tvOS全面接入亚马逊的app。适用于Apple Watch智能手表的watchOS 4操作系统，亮点不多，目前看来只是小修小补。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('6', '&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	圣何塞是硅谷的起源地，时隔15年之后，苹果回归到这座老硅谷轴心城市举办年度最重要，同时也是苹果史上规模最大的WWDC全球开发者大会。此次活动吸引了来自全球75个国家的5300名开发者，以及分析师、媒体记者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在这次大会中，最年轻的一个开发者来自澳大利亚，只有10岁，6岁的时候就开始编码，目前在Apple Store已经有自己的app。年纪最大的开发者是一位来自&lt;span style=&quot;font-size:13.6364px;&quot;&gt;日本的&lt;/span&gt;&lt;span style=&quot;text-indent:2em;&quot;&gt;82岁老太太，她在今年早些时候发布了自己第一个app。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	这届的苹果WWDC 2017信息量巨大。原本是一个软件唱主角的全球开发者大会，苹果硬生生地给办成了一场硬件产品的发布会。除了新品iPhone 8以及Apple Watch没有亮相，苹果把剩下的几条重要产品线的硬件都更新了一遍。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	新版iMac、iMac Pro、iPad Pro相继亮相之后，最后还如会前预测一般，“炸”出了一款对标亚马逊Echo和Google Home的智能音箱HomePod。下面就是所有更新的汇总。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;iOS 11：界面变化很大 &lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iPhone 8正在富士康的工厂紧锣密鼓的量产中，作为比肉身提前了三个多月发布的新一代iPhone灵魂，iOS 11这次的操作界面变化很大，但亮点功能并不是太多。不过这并不妨碍苹果CEO蒂姆·库克嘲讽安卓，他说iOS 10的用户满意度达到96%，升级率达到了86%，而另一阵营的Android 7.0升级率才7%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iOS 11还开始支持AR功能，通过ARKit配合相机，可以实现一些简单的AR数据处理。另外在中国区，摄像头将支持直接识别二维码。当然，iOS 11的AR功能也能配合游戏使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	此前苹果和微信的“打赏事件”风波，足以体现苹果对于超级app微信的重视。此次将二维码扫描功能植入相机，流量入口从微信独占变为和相机共享，流量的获取变得更加公平，也有可能是苹果应对微信的一招，微信小程序生存环境更加恶劣。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	除此之外，iOS 11还非常照顾中国用户的习惯，也越来越像Android，不仅能识别诈骗短信，国内的手机号码也可以作为Apple ID注册了。还增加了拼音键盘和Siri对于上海话的识别。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;font-size:14px;line-height:24px;text-align:justify;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;今年的iOS 11是苹果从扁平化走向透视炫彩化的又一大重要转折。它的控制中心、锁屏和消息界面进行了重新设计，在锁屏界面上划可以看到更多消息通知。不同于iOS 10，它的控制中心的各项功能变成了分块显示，利用3D Touch压感技术，甚至可以调节手电筒的亮度显示，并且还加入了个人热点开关、HomeKit家庭控制等功能。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		iMessage信息的贴纸进行了更新，在新设备中登陆可以通过iCloud进行同步，同步信息显示，同步信息删除，点对点加密。另一个大的更新是Apple Pay。截止今年年底，Apple Pay在美国本土使用率将达到50%以上。新的Apple Pay也变得更加强大，即将开通iMessage与好友转账的功能（当然微信早就有了）。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		和以前每一次系统更新一样，Siri也是iOS 11的更新重点，它有了更好的视觉界面，有多个搜索系统，还支持翻译英译中文、法语、德语、意大利语和西班牙语。甚至连扫微信二维码都可以通过Siri来操作。另外，Siri也变得更加的聪明，加入了人工智能，它可以对用户行为预测，进行提醒，如帮助自动搜索新闻等。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		另外，这次iOS 11对拍照进行了优化，支持HEVC 视频编码。照片方面，JPEG 也被High Efficiency Image Format（高效影像格式，HEIF ）图像格式所取代，在提升图片存储质量的同时，存储容量减少一半。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		记忆相册功能更加强大，还可以拍成小电影，Live动态照片可以剪辑。CarPlay则是拥有全新的用户界面，开车的时候自动开启免打扰功能。假如你收到信息，它会自动回复给对方你正在开车中；如果有特别紧急的信息，则是会弹出。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		在HomeKit智能家居应用方面，支持Speakers智能音箱接入，另外它在音乐界面方面也有所优化调整。值得一提的是，苹果地图也升级了更加强大的室内导航，以商场导航为例，它可以精确到每一个楼层，未来主要机场也将覆盖。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		苹果在此次发布会上宣布，参加此次WWDC 2017的开发者今天就可以升级到iOS 11工程版进行应用开发。按照惯例，正式版iOS 11将在今年9月份随着新品iPhone的发布推送更新升级。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;watchOS 4：小修小补&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		tvOS和在此次开发者大会上最先亮相。但是tvOS方面的功能提升苹果没有过多的提及，只是宣布tvOS全面接入亚马逊的app。适用于Apple Watch智能手表的watchOS 4操作系统，亮点不多，目前看来只是小修小补。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('7', '&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	圣何塞是硅谷的起源地，时隔15年之后，苹果回归到这座老硅谷轴心城市举办年度最重要，同时也是苹果史上规模最大的WWDC全球开发者大会。此次活动吸引了来自全球75个国家的5300名开发者，以及分析师、媒体记者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在这次大会中，最年轻的一个开发者来自澳大利亚，只有10岁，6岁的时候就开始编码，目前在Apple Store已经有自己的app。年纪最大的开发者是一位来自&lt;span style=&quot;font-size:13.6364px;&quot;&gt;日本的&lt;/span&gt;&lt;span style=&quot;text-indent:2em;&quot;&gt;82岁老太太，她在今年早些时候发布了自己第一个app。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	这届的苹果WWDC 2017信息量巨大。原本是一个软件唱主角的全球开发者大会，苹果硬生生地给办成了一场硬件产品的发布会。除了新品iPhone 8以及Apple Watch没有亮相，苹果把剩下的几条重要产品线的硬件都更新了一遍。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	新版iMac、iMac Pro、iPad Pro相继亮相之后，最后还如会前预测一般，“炸”出了一款对标亚马逊Echo和Google Home的智能音箱HomePod。下面就是所有更新的汇总。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;iOS 11：界面变化很大 &lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iPhone 8正在富士康的工厂紧锣密鼓的量产中，作为比肉身提前了三个多月发布的新一代iPhone灵魂，iOS 11这次的操作界面变化很大，但亮点功能并不是太多。不过这并不妨碍苹果CEO蒂姆·库克嘲讽安卓，他说iOS 10的用户满意度达到96%，升级率达到了86%，而另一阵营的Android 7.0升级率才7%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iOS 11还开始支持AR功能，通过ARKit配合相机，可以实现一些简单的AR数据处理。另外在中国区，摄像头将支持直接识别二维码。当然，iOS 11的AR功能也能配合游戏使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	此前苹果和微信的“打赏事件”风波，足以体现苹果对于超级app微信的重视。此次将二维码扫描功能植入相机，流量入口从微信独占变为和相机共享，流量的获取变得更加公平，也有可能是苹果应对微信的一招，微信小程序生存环境更加恶劣。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	除此之外，iOS 11还非常照顾中国用户的习惯，也越来越像Android，不仅能识别诈骗短信，国内的手机号码也可以作为Apple ID注册了。还增加了拼音键盘和Siri对于上海话的识别。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;font-size:14px;line-height:24px;text-align:justify;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;今年的iOS 11是苹果从扁平化走向透视炫彩化的又一大重要转折。它的控制中心、锁屏和消息界面进行了重新设计，在锁屏界面上划可以看到更多消息通知。不同于iOS 10，它的控制中心的各项功能变成了分块显示，利用3D Touch压感技术，甚至可以调节手电筒的亮度显示，并且还加入了个人热点开关、HomeKit家庭控制等功能。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		iMessage信息的贴纸进行了更新，在新设备中登陆可以通过iCloud进行同步，同步信息显示，同步信息删除，点对点加密。另一个大的更新是Apple Pay。截止今年年底，Apple Pay在美国本土使用率将达到50%以上。新的Apple Pay也变得更加强大，即将开通iMessage与好友转账的功能（当然微信早就有了）。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		和以前每一次系统更新一样，Siri也是iOS 11的更新重点，它有了更好的视觉界面，有多个搜索系统，还支持翻译英译中文、法语、德语、意大利语和西班牙语。甚至连扫微信二维码都可以通过Siri来操作。另外，Siri也变得更加的聪明，加入了人工智能，它可以对用户行为预测，进行提醒，如帮助自动搜索新闻等。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		另外，这次iOS 11对拍照进行了优化，支持HEVC 视频编码。照片方面，JPEG 也被High Efficiency Image Format（高效影像格式，HEIF ）图像格式所取代，在提升图片存储质量的同时，存储容量减少一半。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		记忆相册功能更加强大，还可以拍成小电影，Live动态照片可以剪辑。CarPlay则是拥有全新的用户界面，开车的时候自动开启免打扰功能。假如你收到信息，它会自动回复给对方你正在开车中；如果有特别紧急的信息，则是会弹出。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		在HomeKit智能家居应用方面，支持Speakers智能音箱接入，另外它在音乐界面方面也有所优化调整。值得一提的是，苹果地图也升级了更加强大的室内导航，以商场导航为例，它可以精确到每一个楼层，未来主要机场也将覆盖。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		苹果在此次发布会上宣布，参加此次WWDC 2017的开发者今天就可以升级到iOS 11工程版进行应用开发。按照惯例，正式版iOS 11将在今年9月份随着新品iPhone的发布推送更新升级。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;watchOS 4：小修小补&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		tvOS和在此次开发者大会上最先亮相。但是tvOS方面的功能提升苹果没有过多的提及，只是宣布tvOS全面接入亚马逊的app。适用于Apple Watch智能手表的watchOS 4操作系统，亮点不多，目前看来只是小修小补。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('8', '&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	圣何塞是硅谷的起源地，时隔15年之后，苹果回归到这座老硅谷轴心城市举办年度最重要，同时也是苹果史上规模最大的WWDC全球开发者大会。此次活动吸引了来自全球75个国家的5300名开发者，以及分析师、媒体记者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在这次大会中，最年轻的一个开发者来自澳大利亚，只有10岁，6岁的时候就开始编码，目前在Apple Store已经有自己的app。年纪最大的开发者是一位来自&lt;span style=&quot;font-size:13.6364px;&quot;&gt;日本的&lt;/span&gt;&lt;span style=&quot;text-indent:2em;&quot;&gt;82岁老太太，她在今年早些时候发布了自己第一个app。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	这届的苹果WWDC 2017信息量巨大。原本是一个软件唱主角的全球开发者大会，苹果硬生生地给办成了一场硬件产品的发布会。除了新品iPhone 8以及Apple Watch没有亮相，苹果把剩下的几条重要产品线的硬件都更新了一遍。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	新版iMac、iMac Pro、iPad Pro相继亮相之后，最后还如会前预测一般，“炸”出了一款对标亚马逊Echo和Google Home的智能音箱HomePod。下面就是所有更新的汇总。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;iOS 11：界面变化很大 &lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iPhone 8正在富士康的工厂紧锣密鼓的量产中，作为比肉身提前了三个多月发布的新一代iPhone灵魂，iOS 11这次的操作界面变化很大，但亮点功能并不是太多。不过这并不妨碍苹果CEO蒂姆·库克嘲讽安卓，他说iOS 10的用户满意度达到96%，升级率达到了86%，而另一阵营的Android 7.0升级率才7%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iOS 11还开始支持AR功能，通过ARKit配合相机，可以实现一些简单的AR数据处理。另外在中国区，摄像头将支持直接识别二维码。当然，iOS 11的AR功能也能配合游戏使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	此前苹果和微信的“打赏事件”风波，足以体现苹果对于超级app微信的重视。此次将二维码扫描功能植入相机，流量入口从微信独占变为和相机共享，流量的获取变得更加公平，也有可能是苹果应对微信的一招，微信小程序生存环境更加恶劣。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	除此之外，iOS 11还非常照顾中国用户的习惯，也越来越像Android，不仅能识别诈骗短信，国内的手机号码也可以作为Apple ID注册了。还增加了拼音键盘和Siri对于上海话的识别。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;font-size:14px;line-height:24px;text-align:justify;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;今年的iOS 11是苹果从扁平化走向透视炫彩化的又一大重要转折。它的控制中心、锁屏和消息界面进行了重新设计，在锁屏界面上划可以看到更多消息通知。不同于iOS 10，它的控制中心的各项功能变成了分块显示，利用3D Touch压感技术，甚至可以调节手电筒的亮度显示，并且还加入了个人热点开关、HomeKit家庭控制等功能。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		iMessage信息的贴纸进行了更新，在新设备中登陆可以通过iCloud进行同步，同步信息显示，同步信息删除，点对点加密。另一个大的更新是Apple Pay。截止今年年底，Apple Pay在美国本土使用率将达到50%以上。新的Apple Pay也变得更加强大，即将开通iMessage与好友转账的功能（当然微信早就有了）。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		和以前每一次系统更新一样，Siri也是iOS 11的更新重点，它有了更好的视觉界面，有多个搜索系统，还支持翻译英译中文、法语、德语、意大利语和西班牙语。甚至连扫微信二维码都可以通过Siri来操作。另外，Siri也变得更加的聪明，加入了人工智能，它可以对用户行为预测，进行提醒，如帮助自动搜索新闻等。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		另外，这次iOS 11对拍照进行了优化，支持HEVC 视频编码。照片方面，JPEG 也被High Efficiency Image Format（高效影像格式，HEIF ）图像格式所取代，在提升图片存储质量的同时，存储容量减少一半。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		记忆相册功能更加强大，还可以拍成小电影，Live动态照片可以剪辑。CarPlay则是拥有全新的用户界面，开车的时候自动开启免打扰功能。假如你收到信息，它会自动回复给对方你正在开车中；如果有特别紧急的信息，则是会弹出。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		在HomeKit智能家居应用方面，支持Speakers智能音箱接入，另外它在音乐界面方面也有所优化调整。值得一提的是，苹果地图也升级了更加强大的室内导航，以商场导航为例，它可以精确到每一个楼层，未来主要机场也将覆盖。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		苹果在此次发布会上宣布，参加此次WWDC 2017的开发者今天就可以升级到iOS 11工程版进行应用开发。按照惯例，正式版iOS 11将在今年9月份随着新品iPhone的发布推送更新升级。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;watchOS 4：小修小补&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		tvOS和在此次开发者大会上最先亮相。但是tvOS方面的功能提升苹果没有过多的提及，只是宣布tvOS全面接入亚马逊的app。适用于Apple Watch智能手表的watchOS 4操作系统，亮点不多，目前看来只是小修小补。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;');
INSERT INTO `lhave_content_article` VALUES ('9', '&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	“感觉看了一场假的WWDC 2017。” 熬了两个半小时的夜，看完今天苹果的全球开发者大会之后，同事如此感慨。前方现场的同事传回的感受是“直播时，感觉手都快废了。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	圣何塞是硅谷的起源地，时隔15年之后，苹果回归到这座老硅谷轴心城市举办年度最重要，同时也是苹果史上规模最大的WWDC全球开发者大会。此次活动吸引了来自全球75个国家的5300名开发者，以及分析师、媒体记者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	在这次大会中，最年轻的一个开发者来自澳大利亚，只有10岁，6岁的时候就开始编码，目前在Apple Store已经有自己的app。年纪最大的开发者是一位来自&lt;span style=&quot;font-size:13.6364px;&quot;&gt;日本的&lt;/span&gt;&lt;span style=&quot;text-indent:2em;&quot;&gt;82岁老太太，她在今年早些时候发布了自己第一个app。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	这届的苹果WWDC 2017信息量巨大。原本是一个软件唱主角的全球开发者大会，苹果硬生生地给办成了一场硬件产品的发布会。除了新品iPhone 8以及Apple Watch没有亮相，苹果把剩下的几条重要产品线的硬件都更新了一遍。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	新版iMac、iMac Pro、iPad Pro相继亮相之后，最后还如会前预测一般，“炸”出了一款对标亚马逊Echo和Google Home的智能音箱HomePod。下面就是所有更新的汇总。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;iOS 11：界面变化很大 &lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iPhone 8正在富士康的工厂紧锣密鼓的量产中，作为比肉身提前了三个多月发布的新一代iPhone灵魂，iOS 11这次的操作界面变化很大，但亮点功能并不是太多。不过这并不妨碍苹果CEO蒂姆·库克嘲讽安卓，他说iOS 10的用户满意度达到96%，升级率达到了86%，而另一阵营的Android 7.0升级率才7%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	iOS 11还开始支持AR功能，通过ARKit配合相机，可以实现一些简单的AR数据处理。另外在中国区，摄像头将支持直接识别二维码。当然，iOS 11的AR功能也能配合游戏使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	此前苹果和微信的“打赏事件”风波，足以体现苹果对于超级app微信的重视。此次将二维码扫描功能植入相机，流量入口从微信独占变为和相机共享，流量的获取变得更加公平，也有可能是苹果应对微信的一招，微信小程序生存环境更加恶劣。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	除此之外，iOS 11还非常照顾中国用户的习惯，也越来越像Android，不仅能识别诈骗短信，国内的手机号码也可以作为Apple ID注册了。还增加了拼音键盘和Siri对于上海话的识别。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;font-size:14px;line-height:24px;text-align:justify;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;今年的iOS 11是苹果从扁平化走向透视炫彩化的又一大重要转折。它的控制中心、锁屏和消息界面进行了重新设计，在锁屏界面上划可以看到更多消息通知。不同于iOS 10，它的控制中心的各项功能变成了分块显示，利用3D Touch压感技术，甚至可以调节手电筒的亮度显示，并且还加入了个人热点开关、HomeKit家庭控制等功能。&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		iMessage信息的贴纸进行了更新，在新设备中登陆可以通过iCloud进行同步，同步信息显示，同步信息删除，点对点加密。另一个大的更新是Apple Pay。截止今年年底，Apple Pay在美国本土使用率将达到50%以上。新的Apple Pay也变得更加强大，即将开通iMessage与好友转账的功能（当然微信早就有了）。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		和以前每一次系统更新一样，Siri也是iOS 11的更新重点，它有了更好的视觉界面，有多个搜索系统，还支持翻译英译中文、法语、德语、意大利语和西班牙语。甚至连扫微信二维码都可以通过Siri来操作。另外，Siri也变得更加的聪明，加入了人工智能，它可以对用户行为预测，进行提醒，如帮助自动搜索新闻等。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		另外，这次iOS 11对拍照进行了优化，支持HEVC 视频编码。照片方面，JPEG 也被High Efficiency Image Format（高效影像格式，HEIF ）图像格式所取代，在提升图片存储质量的同时，存储容量减少一半。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		记忆相册功能更加强大，还可以拍成小电影，Live动态照片可以剪辑。CarPlay则是拥有全新的用户界面，开车的时候自动开启免打扰功能。假如你收到信息，它会自动回复给对方你正在开车中；如果有特别紧急的信息，则是会弹出。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		在HomeKit智能家居应用方面，支持Speakers智能音箱接入，另外它在音乐界面方面也有所优化调整。值得一提的是，苹果地图也升级了更加强大的室内导航，以商场导航为例，它可以精确到每一个楼层，未来主要机场也将覆盖。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		苹果在此次发布会上宣布，参加此次WWDC 2017的开发者今天就可以升级到iOS 11工程版进行应用开发。按照惯例，正式版iOS 11将在今年9月份随着新品iPhone的发布推送更新升级。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;watchOS 4：小修小补&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:25px;padding:0px;text-indent:28px;font-size:14px;text-align:justify;word-break:normal;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;line-height:24px;white-space:normal;background-color:#FFFFFF;&quot;&gt;\r\n		tvOS和在此次开发者大会上最先亮相。但是tvOS方面的功能提升苹果没有过多的提及，只是宣布tvOS全面接入亚马逊的app。适用于Apple Watch智能手表的watchOS 4操作系统，亮点不多，目前看来只是小修小补。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;');

-- ----------------------------
-- Table structure for lhave_ext_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `lhave_ext_guestbook`;
CREATE TABLE `lhave_ext_guestbook` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lhave_ext_guestbook
-- ----------------------------
INSERT INTO `lhave_ext_guestbook` VALUES ('1', 'Life', '349865361@qq.com', '欢迎使用LhaveCMS内容管理系统！', '1418960975');

-- ----------------------------
-- Table structure for lhave_field
-- ----------------------------
DROP TABLE IF EXISTS `lhave_field`;
CREATE TABLE `lhave_field` (
  `field_id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldset_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `type` int(5) DEFAULT '1',
  `tip` varchar(250) DEFAULT NULL,
  `verify_type` varchar(250) DEFAULT NULL,
  `verify_data` text,
  `verify_data_js` text,
  `verify_condition` tinyint(1) DEFAULT NULL,
  `default` varchar(250) DEFAULT NULL,
  `sequence` int(10) DEFAULT '0',
  `errormsg` varchar(250) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`field_id`),
  KEY `field` (`field`),
  KEY `sequence` (`sequence`),
  KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='扩展字段基础';

-- ----------------------------
-- Records of lhave_field
-- ----------------------------
INSERT INTO `lhave_field` VALUES ('1', '1', '昵称', 'name', '1', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '', '0', '', '');
INSERT INTO `lhave_field` VALUES ('2', '1', '邮箱', 'email', '1', '', 'regex', 'ZW1haWw=', 'ZQ==', '1', '', '1', '', '');
INSERT INTO `lhave_field` VALUES ('3', '1', '内容', 'content', '2', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '', '3', '', '');
INSERT INTO `lhave_field` VALUES ('4', '1', '时间', 'time', '10', '', 'regex', '', '', '1', '', '2', '', '');
INSERT INTO `lhave_field` VALUES ('6', '2', '客车名称', 'name', '1', '', 'regex', 'cmVxdWlyZQ==', '', '1', '', '0', '', '');
INSERT INTO `lhave_field` VALUES ('7', '2', '客车编号', 'no', '1', '', 'regex', 'cmVxdWlyZQ==', '', '1', '', '0', '', '');
INSERT INTO `lhave_field` VALUES ('8', '3', '车辆名称', 'name', '1', '', 'regex', 'cmVxdWlyZQ==', '', '1', '', '0', '', '');

-- ----------------------------
-- Table structure for lhave_fieldset
-- ----------------------------
DROP TABLE IF EXISTS `lhave_fieldset`;
CREATE TABLE `lhave_fieldset` (
  `fieldset_id` int(10) NOT NULL AUTO_INCREMENT,
  `table` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='字段集基础';

-- ----------------------------
-- Records of lhave_fieldset
-- ----------------------------
INSERT INTO `lhave_fieldset` VALUES ('1', 'guestbook', '留言板');
INSERT INTO `lhave_fieldset` VALUES ('3', 'car', '车辆管理');

-- ----------------------------
-- Table structure for lhave_fieldset_expand
-- ----------------------------
DROP TABLE IF EXISTS `lhave_fieldset_expand`;
CREATE TABLE `lhave_fieldset_expand` (
  `fieldset_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展模型';

-- ----------------------------
-- Records of lhave_fieldset_expand
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_fieldset_form
-- ----------------------------
DROP TABLE IF EXISTS `lhave_fieldset_form`;
CREATE TABLE `lhave_fieldset_form` (
  `fieldset_id` int(10) DEFAULT NULL,
  `show_list` tinyint(1) DEFAULT NULL,
  `show_info` tinyint(1) DEFAULT NULL,
  `list_page` int(5) DEFAULT NULL,
  `list_where` varchar(250) DEFAULT NULL,
  `list_order` varchar(250) DEFAULT NULL,
  `tpl_list` varchar(250) DEFAULT NULL,
  `tpl_info` varchar(250) DEFAULT NULL,
  `post_status` tinyint(1) DEFAULT NULL,
  `post_msg` varchar(250) DEFAULT NULL,
  `post_return_url` varchar(250) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展表单';

-- ----------------------------
-- Records of lhave_fieldset_form
-- ----------------------------
INSERT INTO `lhave_fieldset_form` VALUES ('1', '1', '0', '10', '', 'data_id desc', 'guestbook', 'guestbook', '1', '留言发布成功！', '');
INSERT INTO `lhave_fieldset_form` VALUES ('3', '1', '1', '15', '', 'data_id desc', 'form_list', 'form_content', '1', '表单提交成功！', '');

-- ----------------------------
-- Table structure for lhave_field_expand
-- ----------------------------
DROP TABLE IF EXISTS `lhave_field_expand`;
CREATE TABLE `lhave_field_expand` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-扩展模型';

-- ----------------------------
-- Records of lhave_field_expand
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_field_form
-- ----------------------------
DROP TABLE IF EXISTS `lhave_field_form`;
CREATE TABLE `lhave_field_form` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `search` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-表单';

-- ----------------------------
-- Records of lhave_field_form
-- ----------------------------
INSERT INTO `lhave_field_form` VALUES ('1', '1', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('2', '1', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('3', '1', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('4', '0', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('6', '1', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('7', '1', '1', '1');
INSERT INTO `lhave_field_form` VALUES ('8', '1', '1', '1');

-- ----------------------------
-- Table structure for lhave_file
-- ----------------------------
DROP TABLE IF EXISTS `lhave_file`;
CREATE TABLE `lhave_file` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `original` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ext` varchar(250) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `ext` (`ext`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='上传文件';

-- ----------------------------
-- Records of lhave_file
-- ----------------------------
INSERT INTO `lhave_file` VALUES ('1', '/lhavecms/upload/2017-06-06/5b302a9b28cd94fb52a46a56886ad3e2.jpg', '/lhavecms/upload/2017-06-06/5b302a9b28cd94fb52a46a56886ad3e2.jpg', 'slight-detalis_03', 'jpg', '83048', '1496726209');
INSERT INTO `lhave_file` VALUES ('2', '/lhavecms/upload/2017-06-06/0be875610e57a43ba7cee77a2723cee1.jpg', '/lhavecms/upload/2017-06-06/0be875610e57a43ba7cee77a2723cee1.jpg', 'slight-detalis_10', 'jpg', '126782', '1496741847');
INSERT INTO `lhave_file` VALUES ('3', '/lhavecms/upload/2017-06-06/8c06930c3383fd80e0f2ff4fa57ad63e.jpg', '/lhavecms/upload/2017-06-06/8c06930c3383fd80e0f2ff4fa57ad63e.jpg', 'slight-detalis_18', 'jpg', '63355', '1496741937');
INSERT INTO `lhave_file` VALUES ('4', '/lhavecms/upload/2017-06-06/6d926bbc8bba7d2b93632061bdda7be4.jpg', '/lhavecms/upload/2017-06-06/6d926bbc8bba7d2b93632061bdda7be4.jpg', 'slight-detalis_22', 'jpg', '51248', '1496741956');
INSERT INTO `lhave_file` VALUES ('5', '/lhavecms/upload/2017-06-06/0be875610e57a43ba7cee77a2723cee1.jpg', '/lhavecms/upload/2017-06-06/0be875610e57a43ba7cee77a2723cee1.jpg', 'slight-detalis_10', 'jpg', '126782', '1496741974');
INSERT INTO `lhave_file` VALUES ('6', '/lhavecms/upload/2017-06-06/09df02fff275fe57fe5e8ce07fc8206a.jpg', '/lhavecms/upload/2017-06-06/09df02fff275fe57fe5e8ce07fc8206a.jpg', 'news-list_03', 'jpg', '7127', '1496745483');
INSERT INTO `lhave_file` VALUES ('7', '/lhavecms/upload/2017-06-06/5cc76a696fba3e67d54723d99dae4b58.jpg', '/lhavecms/upload/2017-06-06/5cc76a696fba3e67d54723d99dae4b58.jpg', 'news-detail_03', 'jpg', '106980', '1496745516');
INSERT INTO `lhave_file` VALUES ('8', '/lhavecms/upload/2017-06-06/6d926bbc8bba7d2b93632061bdda7be4.jpg', '/lhavecms/upload/2017-06-06/6d926bbc8bba7d2b93632061bdda7be4.jpg', 'slight-detalis_22', 'jpg', '51248', '1496749844');
INSERT INTO `lhave_file` VALUES ('9', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', '/lhavecms/upload/2017-06-07/934c5e92e0b69f6b2544c8c5170faf59.jpg', 'e55a477426ad02c_size126_w797_h532', 'jpg', '128726', '1496804770');
INSERT INTO `lhave_file` VALUES ('10', '/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg', '/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg', '0335df9c435a7d3_size34_w719_h639', 'jpg', '34928', '1496804801');
INSERT INTO `lhave_file` VALUES ('11', '/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg', '/lhavecms/upload/2017-06-07/9c26499f6d4309694c6590e7059935df.jpg', '0335df9c435a7d3_size34_w719_h639', 'jpg', '34928', '1496804826');
INSERT INTO `lhave_file` VALUES ('12', '/lhavecms/upload/2017-06-07/7a58eb7fb42c48113210df5b19bf62df.jpg', '/lhavecms/upload/2017-06-07/7a58eb7fb42c48113210df5b19bf62df.jpg', '7ef731d651f6c24_size33_w719_h638', 'jpg', '33654', '1496804836');
INSERT INTO `lhave_file` VALUES ('13', '/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg', '/lhavecms/upload/2017-06-07/21f519f1c7471948afcce0798c42dc99.jpg', 'a7ac50b31bf0ba5_size36_w719_h642', 'jpg', '37225', '1496804857');
INSERT INTO `lhave_file` VALUES ('14', '/lhavecms/upload/2017-06-08/74337b5b5456eba430d0fdab6ef5f07f.jpg', '/lhavecms/upload/2017-06-08/74337b5b5456eba430d0fdab6ef5f07f.jpg', '42cfa26a7bf0a002f019c6904c87fba15a855a9b23087-cyqrLC', 'jpg', '143495', '1496916976');
INSERT INTO `lhave_file` VALUES ('15', '/lhavecms/upload/2017-06-08/2e60abf6de68a0fc25227458861e2ceb.jpg', '/lhavecms/upload/2017-06-08/2e60abf6de68a0fc25227458861e2ceb.jpg', '1b82003faceff83_size41_w534_h356', 'jpg', '42492', '1496917032');
INSERT INTO `lhave_file` VALUES ('16', '/lhavecms/upload/2017-06-08/2e60abf6de68a0fc25227458861e2ceb.jpg', '/lhavecms/upload/2017-06-08/2e60abf6de68a0fc25227458861e2ceb.jpg', '1b82003faceff83_size41_w534_h356', 'jpg', '42492', '1496917734');
INSERT INTO `lhave_file` VALUES ('17', '/lhavecms/upload/2017-06-08/5ba3d8a85cdfed33e046d75aaa76bbbd.jpg', '/lhavecms/upload/2017-06-08/5ba3d8a85cdfed33e046d75aaa76bbbd.jpg', '36b2b429c5e37a60f74f9d7d0ef6d733da99bbf9e381f-6xmSXT_fw658', 'jpg', '338506', '1496917963');
INSERT INTO `lhave_file` VALUES ('18', '/lhavecms/upload/2017-06-08/2a2a1481c75b6bbc6b3ef464af2704e6.jpg', '/lhavecms/upload/2017-06-08/2a2a1481c75b6bbc6b3ef464af2704e6.jpg', '360截图20170426094732028', 'jpg', '19985', '1496918067');
INSERT INTO `lhave_file` VALUES ('19', '/lhavecms/upload/2017-06-08/5ba3d8a85cdfed33e046d75aaa76bbbd.jpg', '/lhavecms/upload/2017-06-08/5ba3d8a85cdfed33e046d75aaa76bbbd.jpg', '36b2b429c5e37a60f74f9d7d0ef6d733da99bbf9e381f-6xmSXT_fw658', 'jpg', '338506', '1496918150');
INSERT INTO `lhave_file` VALUES ('20', '/lhavecms/upload/2017-06-08/60b3e3704d6a908da80e13618fca5c31.jpg', '/lhavecms/upload/2017-06-08/60b3e3704d6a908da80e13618fca5c31.jpg', '360截图20170426094800124', 'jpg', '10651', '1496918593');
INSERT INTO `lhave_file` VALUES ('21', '/lhavecms/upload/2017-06-09/2a2a1481c75b6bbc6b3ef464af2704e6.jpg', '/lhavecms/upload/2017-06-09/2a2a1481c75b6bbc6b3ef464af2704e6.jpg', '360截图20170426094732028', 'jpg', '19985', '1496977617');

-- ----------------------------
-- Table structure for lhave_fragment
-- ----------------------------
DROP TABLE IF EXISTS `lhave_fragment`;
CREATE TABLE `lhave_fragment` (
  `fragment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`fragment_id`),
  KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站碎片';

-- ----------------------------
-- Records of lhave_fragment
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_position
-- ----------------------------
DROP TABLE IF EXISTS `lhave_position`;
CREATE TABLE `lhave_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sequence` int(10) DEFAULT '0',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of lhave_position
-- ----------------------------
INSERT INTO `lhave_position` VALUES ('1', '首页推荐', '0');
INSERT INTO `lhave_position` VALUES ('2', '文章推荐', '1');
INSERT INTO `lhave_position` VALUES ('3', '景点推荐', '1');

-- ----------------------------
-- Table structure for lhave_tags
-- ----------------------------
DROP TABLE IF EXISTS `lhave_tags`;
CREATE TABLE `lhave_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `click` int(10) DEFAULT '1',
  `quote` int(10) DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  KEY `quote` (`quote`),
  KEY `click` (`click`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG标签';

-- ----------------------------
-- Records of lhave_tags
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_tags_has
-- ----------------------------
DROP TABLE IF EXISTS `lhave_tags_has`;
CREATE TABLE `lhave_tags_has` (
  `content_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT NULL,
  KEY `aid` (`content_id`),
  KEY `tid` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG关系';

-- ----------------------------
-- Records of lhave_tags_has
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_total_spider
-- ----------------------------
DROP TABLE IF EXISTS `lhave_total_spider`;
CREATE TABLE `lhave_total_spider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `baidu` int(10) DEFAULT '0',
  `google` int(10) DEFAULT '0',
  `soso` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蜘蛛统计';

-- ----------------------------
-- Records of lhave_total_spider
-- ----------------------------

-- ----------------------------
-- Table structure for lhave_total_visitor
-- ----------------------------
DROP TABLE IF EXISTS `lhave_total_visitor`;
CREATE TABLE `lhave_total_visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='访客统计';

-- ----------------------------
-- Records of lhave_total_visitor
-- ----------------------------
INSERT INTO `lhave_total_visitor` VALUES ('1', '1496678400', '529');
INSERT INTO `lhave_total_visitor` VALUES ('2', '1496764800', '868');
INSERT INTO `lhave_total_visitor` VALUES ('3', '1496851200', '34');
INSERT INTO `lhave_total_visitor` VALUES ('4', '1496937600', '7');
