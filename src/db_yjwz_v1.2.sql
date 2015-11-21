CREATE SCHEMA IF NOT EXISTS db_yjwz
	DEFAULT CHARACTER SET = utf8 -- 设置默认编码
    DEFAULT COLLATE = utf8_general_ci; -- 设置默认排序规则

SET FOREIGN_KEY_CHECKS=0;
USE db_yjwz;

-- ----------------------------
-- Table structure for tb_advice
-- ----------------------------
DROP TABLE IF EXISTS `tb_advice`;
CREATE TABLE `tb_advice` (
  `AdviceID` int(4) NOT NULL AUTO_INCREMENT,
  `Content` text NOT NULL,
  `UserMail` varchar(200) NOT NULL,
  `AdviceTime` datetime NOT NULL,
  `Reply` text,
  `IsReply` int(4) NOT NULL,
  PRIMARY KEY (`AdviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_advice
-- ----------------------------
INSERT INTO `tb_advice` VALUES ('2', '投诉建议1', '123123@qq.com', '2015-01-24 20:57:32', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('3', '啊实打实的', '123123@qq.com', '2015-01-24 20:59:18', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('4', '我对你们的服务很不满意', '8928398@qq.com', '2015-01-24 21:05:52', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('5', '鱼竿坏了', '2389283@qq.com', '2015-01-24 21:09:54', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('6', '123123', '244123123@qq.com', '2015-01-24 21:28:32', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('7', '阿斯顿可垃圾啊色的', '21381723873@qq.com', '2015-01-24 21:32:36', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('8', '123123123123', '123123@qq.com', '2015-01-24 21:35:10', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('9', '123asda是', '123123@qq.com', '2015-01-24 21:35:23', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('10', '23', '2389283@qq.com', '2015-01-24 21:37:44', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('11', '123123', '244123123@qq.com', '2015-01-24 21:37:57', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('12', '131asda达到', '21381723873@qq.com', '2015-01-24 21:38:07', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('13', '123123123', '2389283@qq.com', '2015-01-24 21:59:16', '你好！', '1');
INSERT INTO `tb_advice` VALUES ('14', '我了个擦', '27123123@qq.com', '2015-01-25 10:45:58', '2', '1');
INSERT INTO `tb_advice` VALUES ('15', '耳机盒子里面的小铁片是怎么用的', '123123@qq.com', '2015-01-25 20:14:26', '暂无', '0');
INSERT INTO `tb_advice` VALUES ('16', '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '769398477@qq.com', '2015-01-26 21:27:54', '暂无', '0');

-- ----------------------------
-- Table structure for tb_company_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_company_info`;
CREATE TABLE `tb_company_info` (
  `InfoID` int(4) NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `InfoType` int(4) NOT NULL COMMENT '信息类型（0为企业介绍、1为企业联系方式、2为企业招聘）',
  `InfoContent` text NOT NULL COMMENT '信息正文',
  PRIMARY KEY (`InfoID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_company_info
-- ----------------------------
INSERT INTO `tb_company_info` VALUES ('1', '0', '<p>\r\n	上海水产（集团）总公司的前身为上海市水产局，1992年撤局整建制改组为企业集团，目前由上海市国资委全资控股。上海水产（集团）总公司是一家利用国际渔业资源，以远洋渔业及水产品精深加工为主营业务的国有集团公司，下属有30多家全资、控股和参股企业，总资产36.44亿元，年综合销售额69.75亿元，年进出口额5500万美元。</p>\r\n<p>\r\n	集团现拥有80余艘大型远洋拖网加工船、金枪鱼围网船、金枪鱼延绳钓船、大型鱿钓船和过洋作业渔轮等，年均产量逾15万吨，在海外10个国家和地区投资建立18家合资合作企业或代表处，形成了外向型经济格局，并获得上海市政府颁发的&ldquo;走出去&rdquo;贡献奖和&ldquo;走出去&rdquo;企业领头羊光荣称号，是上海市跨国经营20强企业之一。<br />\r\n	<br />\r\n	联系电话：(0759)3119200<br />\r\n	地址：广东省湛江市赤坎湾南路10号<br />\r\n	&nbsp;</p>\r\n');
INSERT INTO `tb_company_info` VALUES ('2', '1', '<img alt=\"\" src=\"../RelationPicture/o_20150124203648536.png\" style=\"width: 627px; height: 383px; float: left;\" />公司名:菲尔迪服饰<br />\r\n<div class=\"info_contact\">\r\n	联系人：陈生</div>\r\n<div class=\"info_contact\">\r\n	所在城市：广东广州</div>\r\n<div class=\"info_contact\">\r\n	联系电话：02084012387</div>\r\n<div class=\"info_contact\">\r\n	E-mail: cmycm@163.com</div>\r\n<div class=\"info_contact\">\r\n	传 真: 02028364118</div>\r\n<div class=\"info_contact\">\r\n	网 址: http://fedfs.ziyouhu.com/</div>\r\n<div class=\"info_contact\">\r\n	公司地址：广州市海珠区</div>\r\n');
INSERT INTO `tb_company_info` VALUES ('3', '2', '<p>\r\n	<img alt=\"\" height=\"294\" src=\"../RecruitmentPicture/o_20150124202620868.jpg\" style=\"float: right;padding:0px 0px 15px 15px;\" width=\"324\" /> 广厦控股集团有限公司（简称&ldquo;广厦控股&rdquo;）是在中国改革开放大潮中成长发展起来，以建筑、房地产、能源为主业，涉足金融、制造、教育、医疗、文化传媒、宾馆旅游等产业的大型现代化企业集团，下辖的浙江广厦股份有限公司是原国家建设部推荐的全国建筑业首家上市公司。</p>\r\n<p>\r\n	公司现有成员企业100多家，员工总数达12万人，企业总资产达328亿元，是浙江省人民政府重点培育的26家大型企业之一，被浙江省工商局、浙 江省民营企业发展联合会认定为&ldquo;浙江省转型升级引领示范企业&rdquo;。2013年，广厦控股全年共完成总产值907亿元，创利税60亿元，同比增长13.5%， 位列中国企业500强第150位，中国民营企业500强第10位，浙江省百强企业第7位，获得首届浙江全面小康特别贡献企业奖、全国先进生产力优秀企业等 荣誉。</p>\r\n<p>\r\n	广厦控股积极投身社会公益、慈善事业，回报社会。造公园、办大学、建医院、设立慈善基金、投资希望小学&hellip;&hellip; 近年来，公司累计捐助、投资社会公益事业、慈善事业超过15亿元，2005、2006、2007年连续三届被授予&ldquo;中国优秀企业公民&rdquo;称号，并为2009 年&ldquo;浙商社会责任大奖&rdquo;和&ldquo;中华慈善突出贡献奖&rdquo;获得者</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"jobs_1\" width=\"98%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"job_detail\" colspan=\"6\" style=\"width:100%\">\r\n				<div class=\"jobdetail_divLeft_70\">\r\n					<strong>薪酬福利:</strong></div>\r\n				<div class=\"jobdetail_divRight_span\">\r\n					<span class=\"Welfare_label\">五险一金</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"job_detail\" colspan=\"6\" style=\"width:100%\">\r\n				<strong>职位职能:</strong>&nbsp;&nbsp;结构/土木/土建工程师&nbsp;&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"txt_4 wordBreakNormal job_detail \" colspan=\"6\" style=\"width:100%\">\r\n				<strong>职位描述:</strong><br />\r\n				<div style=\"padding-bottom:30px;\">\r\n					要求：大学本科以上文化，土木工程专业，1-2年以上PC设计工作经历，能独立转化具备工厂加工生产的详细的构件详图，较强的沟通交流能力，满足上述条件情况下有现场及构件工厂施工经验优先考虑\r\n					<div>\r\n						邮箱：76102118@qq.com</div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n');

-- ----------------------------
-- Table structure for tb_company_info_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_company_info_picture`;
CREATE TABLE `tb_company_info_picture` (
  `PictureID` int(4) NOT NULL,
  `InfoID` int(4) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `PictureAddr` varchar(200) NOT NULL,
  `PictureBreAddr` varchar(200) NOT NULL,
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_company_info_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tb_complaint
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaint`;
CREATE TABLE `tb_complaint` (
  `ComplaintID` int(4) NOT NULL AUTO_INCREMENT,
  `ComplaintAccount` varchar(50) NOT NULL,
  `ComplaintReason` varchar(200) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `IsPass` int(4) NOT NULL,
  PRIMARY KEY (`ComplaintID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_complaint
-- ----------------------------

-- ----------------------------
-- Table structure for tb_firstpage_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_firstpage_picture`;
CREATE TABLE `tb_firstpage_picture` (
  `PictureID` int(4) NOT NULL AUTO_INCREMENT COMMENT '首页图片ID',
  `FileName` varchar(50) NOT NULL COMMENT '图片文件名字',
  `PictureAddr` varchar(200) NOT NULL COMMENT '原图地址',
  `PictureBreAddr` varchar(200) NOT NULL COMMENT '缩略图地址',
  `SortingNum` int(4) NOT NULL COMMENT '排列序号',
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_firstpage_picture
-- ----------------------------
INSERT INTO `tb_firstpage_picture` VALUES ('18', 'o_20150124194158325.jpg', '../FirstPagePicture/o_20150124194158325.jpg', '../FirstPagePicture/c_20150124194159665.jpg', '2');
INSERT INTO `tb_firstpage_picture` VALUES ('19', 'o_20150124194209316.jpg', '../FirstPagePicture/o_20150124194209316.jpg', '../FirstPagePicture/c_20150124194209354.jpg', '3');
INSERT INTO `tb_firstpage_picture` VALUES ('20', 'o_20150124194217791.jpg', '../FirstPagePicture/o_20150124194217791.jpg', '../FirstPagePicture/c_20150124194217825.jpg', '4');
INSERT INTO `tb_firstpage_picture` VALUES ('21', 'o_20150124194224967.jpg', '../FirstPagePicture/o_20150124194224967.jpg', '../FirstPagePicture/c_20150124194225001.jpg', '5');
INSERT INTO `tb_firstpage_picture` VALUES ('22', 'o_20150124194241007.jpg', '../FirstPagePicture/o_20150124194241007.jpg', '../FirstPagePicture/c_20150124194241092.jpg', '1');

-- ----------------------------
-- Table structure for tb_firstpage_productlist
-- ----------------------------
DROP TABLE IF EXISTS `tb_firstpage_productlist`;
CREATE TABLE `tb_firstpage_productlist` (
  `ListItemID` int(4) NOT NULL AUTO_INCREMENT COMMENT '列表项ID',
  `ProductID` varchar(50) NOT NULL COMMENT '产品ID',
  `SortingNum` int(4) NOT NULL COMMENT '排序序号',
  PRIMARY KEY (`ListItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_firstpage_productlist
-- ----------------------------

-- ----------------------------
-- Table structure for tb_function
-- ----------------------------
DROP TABLE IF EXISTS `tb_function`;
CREATE TABLE `tb_function` (
  `FunctionID` int(4) NOT NULL AUTO_INCREMENT COMMENT '一级导航功能ID',
  `Name` varchar(15) NOT NULL COMMENT '一级导航功能名字',
  `IsShow` int(4) NOT NULL COMMENT '是否显示(0表示不显示、1表示显示)',
  PRIMARY KEY (`FunctionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_function
-- ----------------------------
INSERT INTO `tb_function` VALUES ('1', '产品中心', '1');
INSERT INTO `tb_function` VALUES ('2', '关于我们', '1');
INSERT INTO `tb_function` VALUES ('3', '新闻中心', '1');
INSERT INTO `tb_function` VALUES ('4', '人才招聘', '1');
INSERT INTO `tb_function` VALUES ('5', '建议反馈', '1');
INSERT INTO `tb_function` VALUES ('6', '联系我们', '1');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `ManagerID` int(4) NOT NULL AUTO_INCREMENT,
  `ManagerName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ManagerAccount` varchar(50) NOT NULL,
  `ManagerLevel` varchar(4) NOT NULL,
  PRIMARY KEY (`ManagerID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('20', '陈少波', 'cf79ae6addba60ad018347359bd144d2', '3113006110', '1');
INSERT INTO `tb_manager` VALUES ('21', '周宇钦', 'cf79ae6addba60ad018347359bd144d2', '3113005757', '1');
INSERT INTO `tb_manager` VALUES ('22', '胡文峰', 'cf79ae6addba60ad018347359bd144d2', '3113006165', '1');
INSERT INTO `tb_manager` VALUES ('23', '陈家荣', 'cf79ae6addba60ad018347359bd144d2', '3113005819', '1');
INSERT INTO `tb_manager` VALUES ('27', '钱杰明', 'cf79ae6addba60ad018347359bd144d2', '3112006299', '1');
INSERT INTO `tb_manager` VALUES ('28', '于伟聪', 'cf79ae6addba60ad018347359bd144d2', '3112006401', '1');
INSERT INTO `tb_manager` VALUES ('29', '廖进飘', 'cf79ae6addba60ad018347359bd144d2', '3112006099', '1');
INSERT INTO `tb_manager` VALUES ('30', '李东海', 'cf79ae6addba60ad018347359bd144d2', '3112005774', '1');
INSERT INTO `tb_manager` VALUES ('31', '黄映焜', 'cf79ae6addba60ad018347359bd144d2', '3111005680', '1');
INSERT INTO `tb_manager` VALUES ('32', '超级管理员', 'cf79ae6addba60ad018347359bd144d2', '8888', '0');

-- ----------------------------
-- Table structure for tb_mapping_manager_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_mapping_manager_permission`;
CREATE TABLE `tb_mapping_manager_permission` (
  `MappingID` int(4) NOT NULL AUTO_INCREMENT,
  `ManagerID` int(4) NOT NULL,
  `Permission` varchar(50) NOT NULL,
  PRIMARY KEY (`MappingID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mapping_manager_permission
-- ----------------------------
INSERT INTO `tb_mapping_manager_permission` VALUES ('198', '20', '产品管理');
INSERT INTO `tb_mapping_manager_permission` VALUES ('199', '20', '新闻管理');
INSERT INTO `tb_mapping_manager_permission` VALUES ('200', '20', '企业信息管理');

-- ----------------------------
-- Table structure for tb_mapping_permission_apply
-- ----------------------------
DROP TABLE IF EXISTS `tb_mapping_permission_apply`;
CREATE TABLE `tb_mapping_permission_apply` (
  `MappingID` int(4) NOT NULL AUTO_INCREMENT,
  `PerApplyID` int(4) NOT NULL,
  `Permission` varchar(50) NOT NULL,
  PRIMARY KEY (`MappingID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mapping_permission_apply
-- ----------------------------
INSERT INTO `tb_mapping_permission_apply` VALUES ('24', '19', '产品管理');
INSERT INTO `tb_mapping_permission_apply` VALUES ('27', '21', '反馈管理');
INSERT INTO `tb_mapping_permission_apply` VALUES ('28', '21', '企业信息管理');
INSERT INTO `tb_mapping_permission_apply` VALUES ('29', '21', '功能管理');
INSERT INTO `tb_mapping_permission_apply` VALUES ('30', '22', '反馈管理');

-- ----------------------------
-- Table structure for tb_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `NewsID` int(4) NOT NULL AUTO_INCREMENT,
  `TypeID` int(4) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Content` text NOT NULL,
  `PublishTime` datetime NOT NULL,
  PRIMARY KEY (`NewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news
-- ----------------------------

-- ----------------------------
-- Table structure for tb_news_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_news_picture`;
CREATE TABLE `tb_news_picture` (
  `NewsPicID` int(4) NOT NULL,
  `NewsID` int(4) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `PictureAddr` varchar(200) NOT NULL,
  `PictureBreAddr` varchar(200) NOT NULL,
  PRIMARY KEY (`NewsPicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tb_news_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_news_type`;
CREATE TABLE `tb_news_type` (
  `TypeID` int(4) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news_type
-- ----------------------------
INSERT INTO `tb_news_type` VALUES ('1', '行内新闻');

-- ----------------------------
-- Table structure for tb_other_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_other_picture`;
CREATE TABLE `tb_other_picture` (
  `PictureID` int(4) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(50) NOT NULL COMMENT '图片文件名字',
  `PictureAddr` varchar(200) NOT NULL COMMENT '原图地址',
  `PictureBreAddr` varchar(200) NOT NULL COMMENT '缩略图地址',
  `PictureType` int(4) NOT NULL COMMENT '0为LOGO、1为公司简介图片',
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_other_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tb_page_bottom_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_page_bottom_info`;
CREATE TABLE `tb_page_bottom_info` (
  `InfoID` int(4) NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `InfoName` varchar(50) NOT NULL COMMENT '信息名称',
  `InfoValue` varchar(200) NOT NULL COMMENT '信息值',
  PRIMARY KEY (`InfoID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_page_bottom_info
-- ----------------------------
INSERT INTO `tb_page_bottom_info` VALUES ('4', '联系电话', '(0759)3119200');
INSERT INTO `tb_page_bottom_info` VALUES ('5', '地址', '广东省湛江市赤坎湾南路10号');
INSERT INTO `tb_page_bottom_info` VALUES ('6', 'E-mail', 'info@163.com');
INSERT INTO `tb_page_bottom_info` VALUES ('7', '传真', '027-87561945');
INSERT INTO `tb_page_bottom_info` VALUES ('8', '邮编', '430074');

-- ----------------------------
-- Table structure for tb_password_protect_problem
-- ----------------------------
DROP TABLE IF EXISTS `tb_password_protect_problem`;
CREATE TABLE `tb_password_protect_problem` (
  `ProblemID` int(4) NOT NULL AUTO_INCREMENT,
  `ManagerID` int(4) NOT NULL,
  `Problem` varchar(50) NOT NULL,
  `Answer` varchar(50) NOT NULL,
  PRIMARY KEY (`ProblemID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_password_protect_problem
-- ----------------------------
INSERT INTO `tb_password_protect_problem` VALUES ('1', '32', '项目前端负责人', '胡文峰');
INSERT INTO `tb_password_protect_problem` VALUES ('2', '32', '权限模块开发者', '陈少波');
INSERT INTO `tb_password_protect_problem` VALUES ('3', '32', '管理员登陆模块', '周宇钦');
INSERT INTO `tb_password_protect_problem` VALUES ('4', '20', '项目前端负责人', '胡文峰');
INSERT INTO `tb_password_protect_problem` VALUES ('5', '20', '权限模块开发者', '陈少波');
INSERT INTO `tb_password_protect_problem` VALUES ('6', '20', '管理员登陆模块', '周宇钦');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission` (
  `PermissionID` int(4) NOT NULL AUTO_INCREMENT,
  `Content` varchar(50) NOT NULL,
  PRIMARY KEY (`PermissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES ('1', '产品管理');
INSERT INTO `tb_permission` VALUES ('2', '新闻管理');
INSERT INTO `tb_permission` VALUES ('3', '首页管理');
INSERT INTO `tb_permission` VALUES ('4', '反馈管理');
INSERT INTO `tb_permission` VALUES ('5', '企业信息管理');
INSERT INTO `tb_permission` VALUES ('6', '功能管理');

-- ----------------------------
-- Table structure for tb_permission_apply
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission_apply`;
CREATE TABLE `tb_permission_apply` (
  `PerApplyID` int(4) NOT NULL AUTO_INCREMENT,
  `ManagerID` int(4) NOT NULL,
  `IsRead` int(4) NOT NULL,
  `IsPass` int(4) NOT NULL,
  `ApplyTime` datetime NOT NULL,
  PRIMARY KEY (`PerApplyID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_permission_apply
-- ----------------------------
INSERT INTO `tb_permission_apply` VALUES ('19', '21', '1', '1', '2014-12-07 12:13:01');
INSERT INTO `tb_permission_apply` VALUES ('21', '21', '1', '1', '2014-12-07 12:13:09');
INSERT INTO `tb_permission_apply` VALUES ('22', '20', '0', '0', '2014-12-19 09:44:51');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `ProductID` int(4) NOT NULL AUTO_INCREMENT,
  `ProductTypeID` int(4) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Introduce` text NOT NULL,
  `PublishTime` datetime NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES ('124', '8', '佳钓尼娇龙4.5 5.4米台钓竿', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124195139782.jpg\" style=\"width: 650px; height: 919px;\" />', '2015-01-24 19:50:40');
INSERT INTO `tb_product` VALUES ('125', '8', '让保罗钓鱼用具 手竿钓鱼竿套装碳素', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124195457130.jpg\" style=\"width: 650px; height: 376px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195513791.jpg\" style=\"width: 650px; height: 376px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195523826.jpg\" style=\"width: 650px; height: 248px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195532612.jpg\" style=\"width: 650px; height: 376px;\" />', '2015-01-24 19:54:07');
INSERT INTO `tb_product` VALUES ('126', '12', '弄塘鲤钓鱼竿', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124195812220.jpg\" style=\"width: 650px; height: 398px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195819894.jpg\" style=\"width: 650px; height: 429px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195826450.jpg\" style=\"width: 650px; height: 212px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195832588.jpg\" style=\"width: 650px; height: 361px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195838415.jpg\" style=\"width: 650px; height: 776px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195844805.jpg\" style=\"width: 650px; height: 385px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195850421.jpg\" style=\"width: 650px; height: 422px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124195855591.jpg\" style=\"width: 650px; height: 538px;\" />', '2015-01-24 19:57:14');
INSERT INTO `tb_product` VALUES ('127', '8', '光威龙纹鲤台钓竿', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124200201746.jpg\" style=\"width: 650px; height: 1354px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124200208662.jpg\" style=\"width: 650px; height: 519px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124200213976.jpg\" style=\"width: 650px; height: 416px;\" />', '2015-01-24 20:01:08');
INSERT INTO `tb_product` VALUES ('128', '8', '钓不断', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124200441816.jpg\" style=\"width: 650px; height: 1354px;\" />', '2015-01-24 20:04:11');
INSERT INTO `tb_product` VALUES ('129', '12', '特价池魂鲤8米9米10米11米12米碳素超硬手竿钓鱼竿钓竿鱼杆渔具 ', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124200604772.jpg\" style=\"width: 650px; height: 376px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124200614455.jpg\" style=\"width: 650px; height: 376px;\" />', '2015-01-24 20:05:31');
INSERT INTO `tb_product` VALUES ('130', '13', '禧玛诺鱼竿台钓竿超轻超细超硬7.2米钓鱼竿鲤杆鲫杆长节鱼杆渔具', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124200826332.jpg\" style=\"width: 650px; height: 804px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124200833096.jpg\" style=\"width: 650px; height: 550px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124200839149.jpg\" style=\"width: 650px; height: 777px;\" />', '2015-01-24 20:07:54');
INSERT INTO `tb_product` VALUES ('131', '8', '光威龙纹鲤钓鱼竿碳素超轻超硬4.5 5.4 3.6 7.2米手竿渔具台钓竿 ', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124201020715.jpg\" style=\"width: 650px; height: 244px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124201028433.jpg\" style=\"width: 650px; height: 804px;\" />', '2015-01-24 20:09:44');
INSERT INTO `tb_product` VALUES ('132', '8', '正品小稻穗2.7米3.6米4.5米玻璃钢矶竿 矶钓竿手海两用钓鱼竿超硬', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124201130450.jpg\" style=\"width: 650px; height: 244px;\" />', '2015-01-24 20:11:09');
INSERT INTO `tb_product` VALUES ('133', '20', '德岛旗舰店正品鱼轮渔线轮渔轮纺车轮全金属支架双轴承渔具HF 6轴 ', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124201346941.jpg\" style=\"width: 650px; height: 1354px;\" />', '2015-01-24 20:13:18');
INSERT INTO `tb_product` VALUES ('134', '16', '佳钓尼鱼线轮tz 7轴渔轮 前卸力纺车轮金属头路亚轮渔线轮', '<img alt=\"\" src=\"../ProductIntroPic/c_20150124201502041.jpg\" style=\"width: 650px; height: 247px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124201507950.jpg\" style=\"width: 650px; height: 288px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124201514168.jpg\" style=\"width: 650px; height: 247px;\" /><img alt=\"\" src=\"../ProductIntroPic/c_20150124201519536.jpg\" style=\"width: 650px; height: 247px;\" />', '2015-01-24 20:14:31');

-- ----------------------------
-- Table structure for tb_product_param
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_param`;
CREATE TABLE `tb_product_param` (
  `ParamID` int(4) NOT NULL AUTO_INCREMENT,
  `ProductID` int(4) NOT NULL,
  `ParamName` varchar(20) NOT NULL,
  `ParamValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ParamID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product_param
-- ----------------------------
INSERT INTO `tb_product_param` VALUES ('179', '124', '产地', '中国');
INSERT INTO `tb_product_param` VALUES ('180', '124', '品牌', '佳钓尼');
INSERT INTO `tb_product_param` VALUES ('181', '124', '产地', '中国');
INSERT INTO `tb_product_param` VALUES ('182', '124', '重量', '82G');
INSERT INTO `tb_product_param` VALUES ('183', '124', '节数', '4-6节');
INSERT INTO `tb_product_param` VALUES ('184', '125', '货号', 'YG-晴川鲤3.6 4.5');
INSERT INTO `tb_product_param` VALUES ('185', '125', '上市时间', '2013年夏季');
INSERT INTO `tb_product_param` VALUES ('186', '125', '收缩后长度', '72');
INSERT INTO `tb_product_param` VALUES ('187', '126', '货号', '8888');
INSERT INTO `tb_product_param` VALUES ('188', '126', '钓竿长度', '5.4m');
INSERT INTO `tb_product_param` VALUES ('189', '126', '上市时间', '2014年春季');
INSERT INTO `tb_product_param` VALUES ('190', '126', '收缩后长度', '115cm');
INSERT INTO `tb_product_param` VALUES ('191', '126', '钓竿调性', '超硬调');
INSERT INTO `tb_product_param` VALUES ('192', '126', '垂钓场所', '水库池塘');
INSERT INTO `tb_product_param` VALUES ('193', '127', '品牌', 'GW/光威');
INSERT INTO `tb_product_param` VALUES ('194', '127', '材质', '碳素');
INSERT INTO `tb_product_param` VALUES ('195', '127', '钓竿调性', '超硬调');
INSERT INTO `tb_product_param` VALUES ('196', '127', '节数', '7');
INSERT INTO `tb_product_param` VALUES ('197', '127', '先经', '1.2mm');
INSERT INTO `tb_product_param` VALUES ('198', '127', '元经', '1.3cm');
INSERT INTO `tb_product_param` VALUES ('199', '127', '重量', '150g');
INSERT INTO `tb_product_param` VALUES ('200', '128', '品牌', '钓鱼王');
INSERT INTO `tb_product_param` VALUES ('201', '128', '货号', '004');
INSERT INTO `tb_product_param` VALUES ('202', '128', '材质', '碳素');
INSERT INTO `tb_product_param` VALUES ('203', '128', '上市时间', '2014年春季');
INSERT INTO `tb_product_param` VALUES ('204', '128', '节数', '6');
INSERT INTO `tb_product_param` VALUES ('205', '128', '价格区间', '51-100元');
INSERT INTO `tb_product_param` VALUES ('206', '129', '钓竿分类', '强力手竿');
INSERT INTO `tb_product_param` VALUES ('207', '129', '货号', '池魂鲤');
INSERT INTO `tb_product_param` VALUES ('208', '129', '钓竿调性', '硬钓');
INSERT INTO `tb_product_param` VALUES ('209', '130', '钓竿调性', '硬钓');
INSERT INTO `tb_product_param` VALUES ('210', '130', '元经', '19.60mm');
INSERT INTO `tb_product_param` VALUES ('211', '131', '品牌', '龙纹鲤');
INSERT INTO `tb_product_param` VALUES ('212', '131', '材质', '碳素');
INSERT INTO `tb_product_param` VALUES ('213', '131', '钓竿调性', '硬钓');
INSERT INTO `tb_product_param` VALUES ('214', '131', '收缩后长度', '1.1');
INSERT INTO `tb_product_param` VALUES ('215', '131', '节数', '4');
INSERT INTO `tb_product_param` VALUES ('216', '132', '品牌', '小稻穗');
INSERT INTO `tb_product_param` VALUES ('217', '132', '产地', '中国');
INSERT INTO `tb_product_param` VALUES ('218', '133', '品牌', 'TOKUSHIma/德岛');
INSERT INTO `tb_product_param` VALUES ('219', '133', '货号', 'HF系列');
INSERT INTO `tb_product_param` VALUES ('220', '133', '上市时间', '2013年春季');
INSERT INTO `tb_product_param` VALUES ('221', '133', '价格区间', '101-200元');
INSERT INTO `tb_product_param` VALUES ('222', '133', '轴承数', '6轴');
INSERT INTO `tb_product_param` VALUES ('223', '133', '产地', '中国');
INSERT INTO `tb_product_param` VALUES ('224', '134', '鱼线轮分类 ', '前卸力纺车轮');
INSERT INTO `tb_product_param` VALUES ('225', '134', '品牌', '佳钓尼');

-- ----------------------------
-- Table structure for tb_product_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_picture`;
CREATE TABLE `tb_product_picture` (
  `PictureID` int(4) NOT NULL AUTO_INCREMENT,
  `ProductID` int(4) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `Display` int(4) NOT NULL,
  `PictureAddr` varchar(200) NOT NULL,
  `pictureBreAddr` varchar(200) NOT NULL,
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product_picture
-- ----------------------------
INSERT INTO `tb_product_picture` VALUES ('77', '124', 'o_20150124195104627.jpg', '0', '../ProductPicture/o_20150124195104627.jpg', '../ProductPicture/c_20150124195104670.jpg');
INSERT INTO `tb_product_picture` VALUES ('78', '124', 'o_20150124195113304.jpg', '0', '../ProductPicture/o_20150124195113304.jpg', '../ProductPicture/c_20150124195113328.jpg');
INSERT INTO `tb_product_picture` VALUES ('79', '124', 'o_20150124195121126.jpg', '0', '../ProductPicture/o_20150124195121126.jpg', '../ProductPicture/c_20150124195121155.jpg');
INSERT INTO `tb_product_picture` VALUES ('80', '124', 'o_20150124195130449.jpg', '0', '../ProductPicture/o_20150124195130449.jpg', '../ProductPicture/c_20150124195130482.jpg');
INSERT INTO `tb_product_picture` VALUES ('81', '125', 'o_20150124195417674.jpg', '0', '../ProductPicture/o_20150124195417674.jpg', '../ProductPicture/c_20150124195417749.jpg');
INSERT INTO `tb_product_picture` VALUES ('82', '125', 'o_20150124195425388.jpg', '0', '../ProductPicture/o_20150124195425388.jpg', '../ProductPicture/c_20150124195425404.jpg');
INSERT INTO `tb_product_picture` VALUES ('83', '125', 'o_20150124195433149.jpg', '0', '../ProductPicture/o_20150124195433149.jpg', '../ProductPicture/c_20150124195433176.jpg');
INSERT INTO `tb_product_picture` VALUES ('84', '125', 'o_20150124195448268.jpg', '0', '../ProductPicture/o_20150124195448268.jpg', '../ProductPicture/c_20150124195448289.jpg');
INSERT INTO `tb_product_picture` VALUES ('85', '126', 'o_20150124195725189.jpg', '0', '../ProductPicture/o_20150124195725189.jpg', '../ProductPicture/c_20150124195725277.jpg');
INSERT INTO `tb_product_picture` VALUES ('86', '126', 'o_20150124195739166.jpg', '0', '../ProductPicture/o_20150124195739166.jpg', '../ProductPicture/c_20150124195739180.jpg');
INSERT INTO `tb_product_picture` VALUES ('87', '126', 'o_20150124195746604.jpg', '0', '../ProductPicture/o_20150124195746604.jpg', '../ProductPicture/c_20150124195746637.jpg');
INSERT INTO `tb_product_picture` VALUES ('88', '126', 'o_20150124195755204.jpg', '0', '../ProductPicture/o_20150124195755204.jpg', '../ProductPicture/c_20150124195755246.jpg');
INSERT INTO `tb_product_picture` VALUES ('89', '126', 'o_20150124195804839.jpg', '0', '../ProductPicture/o_20150124195804839.jpg', '../ProductPicture/c_20150124195804867.jpg');
INSERT INTO `tb_product_picture` VALUES ('90', '127', 'o_20150124200121855.jpg', '0', '../ProductPicture/o_20150124200121855.jpg', '../ProductPicture/c_20150124200122024.jpg');
INSERT INTO `tb_product_picture` VALUES ('91', '127', 'o_20150124200130435.jpg', '0', '../ProductPicture/o_20150124200130435.jpg', '../ProductPicture/c_20150124200130463.jpg');
INSERT INTO `tb_product_picture` VALUES ('92', '127', 'o_20150124200136985.jpg', '0', '../ProductPicture/o_20150124200136985.jpg', '../ProductPicture/c_20150124200137006.jpg');
INSERT INTO `tb_product_picture` VALUES ('93', '127', 'o_20150124200145527.jpg', '0', '../ProductPicture/o_20150124200145527.jpg', '../ProductPicture/c_20150124200145552.jpg');
INSERT INTO `tb_product_picture` VALUES ('94', '127', 'o_20150124200153962.jpg', '0', '../ProductPicture/o_20150124200153962.jpg', '../ProductPicture/c_20150124200154055.jpg');
INSERT INTO `tb_product_picture` VALUES ('95', '128', 'o_20150124200420299.jpg', '0', '../ProductPicture/o_20150124200420299.jpg', '../ProductPicture/c_20150124200420330.jpg');
INSERT INTO `tb_product_picture` VALUES ('96', '128', 'o_20150124200426470.jpg', '0', '../ProductPicture/o_20150124200426470.jpg', '../ProductPicture/c_20150124200426495.jpg');
INSERT INTO `tb_product_picture` VALUES ('97', '128', 'o_20150124200433481.jpg', '0', '../ProductPicture/o_20150124200433481.jpg', '../ProductPicture/c_20150124200433507.jpg');
INSERT INTO `tb_product_picture` VALUES ('98', '129', 'o_20150124200541607.jpg', '0', '../ProductPicture/o_20150124200541607.jpg', '../ProductPicture/c_20150124200541641.jpg');
INSERT INTO `tb_product_picture` VALUES ('99', '129', 'o_20150124200549570.jpg', '0', '../ProductPicture/o_20150124200549570.jpg', '../ProductPicture/c_20150124200549588.jpg');
INSERT INTO `tb_product_picture` VALUES ('100', '129', 'o_20150124200554815.jpg', '0', '../ProductPicture/o_20150124200554815.jpg', '../ProductPicture/c_20150124200554835.jpg');
INSERT INTO `tb_product_picture` VALUES ('101', '130', 'o_20150124200804639.jpg', '0', '../ProductPicture/o_20150124200804639.jpg', '../ProductPicture/c_20150124200804707.jpg');
INSERT INTO `tb_product_picture` VALUES ('102', '130', 'o_20150124200813527.jpg', '0', '../ProductPicture/o_20150124200813527.jpg', '../ProductPicture/c_20150124200813591.jpg');
INSERT INTO `tb_product_picture` VALUES ('103', '130', 'o_20150124200819526.jpg', '0', '../ProductPicture/o_20150124200819526.jpg', '../ProductPicture/c_20150124200819590.jpg');
INSERT INTO `tb_product_picture` VALUES ('104', '131', 'o_20150124200951736.jpg', '0', '../ProductPicture/o_20150124200951736.jpg', '../ProductPicture/c_20150124200951885.jpg');
INSERT INTO `tb_product_picture` VALUES ('105', '131', 'o_20150124200957460.jpg', '0', '../ProductPicture/o_20150124200957460.jpg', '../ProductPicture/c_20150124200957533.jpg');
INSERT INTO `tb_product_picture` VALUES ('106', '131', 'o_20150124201004099.jpg', '0', '../ProductPicture/o_20150124201004099.jpg', '../ProductPicture/c_20150124201004157.jpg');
INSERT INTO `tb_product_picture` VALUES ('107', '131', 'o_20150124201013945.jpg', '0', '../ProductPicture/o_20150124201013945.jpg', '../ProductPicture/c_20150124201014004.jpg');
INSERT INTO `tb_product_picture` VALUES ('108', '132', 'o_20150124201116956.jpg', '0', '../ProductPicture/o_20150124201116956.jpg', '../ProductPicture/c_20150124201117065.jpg');
INSERT INTO `tb_product_picture` VALUES ('109', '132', 'o_20150124201123499.jpg', '0', '../ProductPicture/o_20150124201123499.jpg', '../ProductPicture/c_20150124201123586.jpg');
INSERT INTO `tb_product_picture` VALUES ('110', '133', 'o_20150124201325378.jpg', '0', '../ProductPicture/o_20150124201325378.jpg', '../ProductPicture/c_20150124201325451.jpg');
INSERT INTO `tb_product_picture` VALUES ('111', '133', 'o_20150124201333268.jpg', '0', '../ProductPicture/o_20150124201333268.jpg', '../ProductPicture/c_20150124201333283.jpg');
INSERT INTO `tb_product_picture` VALUES ('112', '134', 'o_20150124201438793.jpg', '0', '../ProductPicture/o_20150124201438793.jpg', '../ProductPicture/c_20150124201438806.jpg');
INSERT INTO `tb_product_picture` VALUES ('113', '134', 'o_20150124201443174.jpg', '0', '../ProductPicture/o_20150124201443174.jpg', '../ProductPicture/c_20150124201443190.jpg');
INSERT INTO `tb_product_picture` VALUES ('114', '134', 'o_20150124201447694.jpg', '0', '../ProductPicture/o_20150124201447694.jpg', '../ProductPicture/c_20150124201447708.jpg');
INSERT INTO `tb_product_picture` VALUES ('115', '134', 'o_20150124201455167.jpg', '0', '../ProductPicture/o_20150124201455167.jpg', '../ProductPicture/c_20150124201455182.jpg');

-- ----------------------------
-- Table structure for tb_product_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_type`;
CREATE TABLE `tb_product_type` (
  `TypeID` int(4) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(20) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product_type
-- ----------------------------
INSERT INTO `tb_product_type` VALUES ('8', '台钓竿');
INSERT INTO `tb_product_type` VALUES ('12', '海竿');
INSERT INTO `tb_product_type` VALUES ('13', '路亚竿');
INSERT INTO `tb_product_type` VALUES ('14', '中通竿');
INSERT INTO `tb_product_type` VALUES ('16', '鱼线');
INSERT INTO `tb_product_type` VALUES ('17', '鱼钩');
INSERT INTO `tb_product_type` VALUES ('18', '鱼饵');
INSERT INTO `tb_product_type` VALUES ('19', '鱼漂');
INSERT INTO `tb_product_type` VALUES ('20', '渔轮');

-- ----------------------------
-- View structure for v_product_pic_bre
-- ----------------------------
DROP VIEW IF EXISTS `v_product_pic_bre`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_product_pic_bre` AS SELECT *,COUNT(DISTINCT Display)
FROM tb_product_picture
WHERE Display = 0
GROUP BY ProductID,Display ;

-- ----------------------------
-- View structure for v_product_list
-- ----------------------------
DROP VIEW IF EXISTS `v_product_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_product_list` AS SELECT DISTINCT
tb_product.ProductID,
tb_product.ProductTypeID,
tb_product.ProductName,
tb_product.PublishTime,
v_product_pic_bre.pictureBreAddr
FROM
	tb_product
LEFT OUTER JOIN
	v_product_pic_bre
ON
	tb_product.ProductID = v_product_pic_bre.ProductID ;


