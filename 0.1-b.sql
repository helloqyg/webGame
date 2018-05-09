/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : app

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-02-25 09:45:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wd_adver
-- ----------------------------
DROP TABLE IF EXISTS `wd_adver`;
CREATE TABLE `wd_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '广告名称',
  `images` varchar(250) NOT NULL COMMENT '广告示意图',
  `price` varchar(20) NOT NULL COMMENT '广告价格',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT 'booth status',
  `add_time` varchar(20) NOT NULL COMMENT 'add time',
  `add_user` int(10) unsigned NOT NULL COMMENT 'add booth user id',
  `uid` int(11) unsigned DEFAULT NULL COMMENT 'pay uid',
  `time` varchar(20) DEFAULT NULL COMMENT 'pay time',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_adver
-- ----------------------------
INSERT INTO `wd_adver` VALUES ('44', '封三', '/upload/20151104/563968daa35f7.jpg', '5000', '1', '1446604154', '1', null, '');
INSERT INTO `wd_adver` VALUES ('46', '会刊内页', '/upload/20151104/563968cda0d40.jpg', '5000', '1', '1446602960', '1', null, '');
INSERT INTO `wd_adver` VALUES ('47', '扉页正面', '/upload/20151104/563968ea7ada3.jpg', '5000', '1', '1446604167', '1', null, null);
INSERT INTO `wd_adver` VALUES ('48', '参观证背面广告', '/upload/20151104/56395df412091.jpg', '5000', '1', '1446604176', '1', null, null);
INSERT INTO `wd_adver` VALUES ('49', '请柬广告', '/upload/20151104/56396935bccd7.jpg', '5000', '1', '1446603532', '1', null, null);

-- ----------------------------
-- Table structure for wd_apply
-- ----------------------------
DROP TABLE IF EXISTS `wd_apply`;
CREATE TABLE `wd_apply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `company_name` varchar(250) NOT NULL COMMENT '企业名称',
  `detail` varchar(255) DEFAULT '' COMMENT '购买产品详细信息',
  `address` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL COMMENT '同合对应的订单id',
  `person` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `stime` varchar(20) DEFAULT NULL,
  `ptime` varchar(20) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `express` varchar(40) DEFAULT NULL COMMENT '快递单号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_apply
-- ----------------------------
INSERT INTO `wd_apply` VALUES ('34', '41', ' 上海国泰电梯有限公司', null, '上海市青浦区赵巷镇沪青平公路3271号 （联系电话：13816597323）', 'sales@gtlift.com', null, '许培玮', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('31', '44', '湖州克尼姆电梯部件有限公司', null, null, 'knm@chinaknm.com', null, null, '2', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('32', '46', '丹纳赫西特传感工业控制天津有限公司', null, '天津市西青区微电子工业园微五路28号', 'meng.wang@danaher.com', null, '王萌', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('33', '45', '拉法特电机苏州有限公司', null, null, '1690555623@qq.com', null, null, '2', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('35', '55', '河北轻工进出口集团股份有限公司', null, null, 'shangxg@china-heli.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('36', '56', '广州佳海机电设备有限公司', null, null, 'sales@jhm-bearing.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('37', '64', '宁波华兴伟业电子科技开发有限公司', null, null, 'cao_fh@nbhxwy.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('38', '60', '上海倚云电子科技有限公司', null, null, '491318103@QQ.COM', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('39', '54', '张家港市泓晟电梯配件制造有限公司', null, null, 'andy@hongsheng-liftrail.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('40', '93', '柳州汉华驱动设备有限公司', null, null, 'linx_hanhua@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('41', '99', '深圳市大帝金茂实业有限公司', null, null, 'wanglixin@ddjmlcm.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('42', '61', '宁波经济技术开发区昊鸿电子有限公司', null, null, '1161481908@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('43', '116', '南通奇萌电器有限公司', null, null, 'szcui321@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('44', '132', '泰州斯隆达胶带有限公司', null, null, 'silongda@foxmail.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('45', '117', '深圳楚光金典科技有限公司', null, null, 'yuyang@trudin.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('46', '139', '宁波晟洋电梯有限公司', null, null, 'les@sinyoelevator.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('47', '141', '天津市爱力维电器有限公司', null, null, '83922233@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('48', '142', '广州捷开电子有限公司', null, '广州市白云区岗贝路266号403A房', 'jiekai01@126.com', null, '黄琥霞', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('49', '118', '佛山市钿汇不锈钢有限公司', null, null, 'info@topsonstainless.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('50', '147', '佛山伊思珀金属制品有限公司', null, null, '603331373@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('51', '143', '长沙五力机电设备有限公司', null, null, 'cswlhjh@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('52', '145', '海安县申菱电器制造有限公司', null, '上海市杨浦区黄兴路2077号蓝天大厦706-709室', 'lilywu@relevator.cc', null, '吴晓鹂', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('53', '140', '友士科技深圳有限公司', null, null, 'winflower@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('54', '100', '重庆威斯特电梯有限公司', null, '重庆市江北区东升门路61号江北嘴金融城T2栋12-3', 'litele@163.com', null, '李特勒', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('55', '126', '苏州市新奥电梯配件有限公司', null, null, 'yfj0512@126.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('56', '149', '上海拓沛实业有限公司', null, null, '693635583@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('57', '156', '广州市白云区固铂五金机械供应站', null, null, 'gubowujin@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('58', '168', '长春盛昊电子有限公司', null, null, 'sh@ccshdz.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('59', '128', '爱科科技有限公司', null, null, 'agz2xxx@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('60', '169', '苏州久德机电科技有限公司', null, null, 'mingzhu.zhang@jd-elevator.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('61', '167', '武汉长光电源有限公司', null, null, 'sales@cgbbattery.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('62', '160', '上海魁固塑胶制品有限公司', null, null, 'sales3@skgtec.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('63', '166', '杭州东华链条集团有限公司', null, '杭州市余杭经济开发区宏达路10号', 'dandyfjz@163.com', null, '冯建忠', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('64', '186', '宁津县新未来电扶梯配件有限公司', null, null, 'xwldftpj@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('65', '188', '上海川翔电子有限公司', null, null, 'jason@chuanxiangsh.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('66', '198', '佛山市顺德区雅泓不锈钢有限公司', null, null, '2880399755@QQ.COM', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('67', '194', '厦门嘉菱电气机械设备有限公司', null, null, '413344823@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('68', '196', ' 季龙上海电梯配件有限公司', null, null, 'yangjiyongjl@126.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('69', '82', '苏州中远电梯有限公司', null, '江苏省太仓市港口开发区浮桥镇南环西路6号苏州中远电梯有限公司技术部', 'zhangx@suzhouzoyo.com', null, '张秀', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('70', '228', '堡盟电子上海有限公司', null, '上海市松江区民强路1525号（申田高科园）11幢', 'lsong@baumer.com', null, '宋凌', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('71', '227', '武汉德诺谊科技有限公司', null, null, 'info@lakeparts.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('72', '157', '江苏意迪驱动设备有限公司', null, null, '798259160@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('73', '210', '南通金塔电梯配件有限公司', null, null, '1565104644@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('74', '208', '厦门汇科中升自动化科技有限公司', null, null, 'jmaocai@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('75', '246', '上海万戎电梯配件有限公司', null, null, '8495858@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('76', '69', '上海稳利达科技股份有限公司', null, '上海市嘉定区高石公路2439号8栋2楼网络部', 'dzj@wenlida.com', null, '杜子君', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('77', '164', '朝闻电梯装备科技苏州有限公司', null, null, '328731596@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('78', '171', '宁波盛大风机有限公司', null, null, '320nickcat@sina.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('79', '241', '库伯勒北京自动化设备贸易有限公司', null, null, 'xiwei.xiao@kuebler.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('80', '268', '山东冠县乾峰轴承有限公司', null, null, '7626312@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('81', '257', '无锡市泰坛电梯部件有限公司', null, '江苏省无锡市锡贤路78号4号楼2楼', '32015341@qq.com', null, '蔡晨红', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('82', '223', '扬州家和电梯有限公司', null, null, 'yzjhdt@163.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('83', '136', '上海兰宝传感科技股份有限公司', null, null, 'lizhihong@shlanbao.cn', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('84', '264', '宁波通菱电梯有限公司', null, null, '18476090@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('85', '282', '厦门科携自动化科技有限公司', null, null, '408708552@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('86', '175', '东莞市旭恒电子有限公司', null, null, '495264523@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('87', '274', '天津兴晟和橡胶制造有限公司', null, null, 'jsk@tjthxj.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('88', '271', '上海天逸电器股份有限公司', null, null, 'zgq@tayee.com.cn', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('89', '288', '广州市索达电气设备有限公司', null, '广州市番禺区东涌镇太石工业区博盈工业园索达电气', '312606133@qq.com', null, '林海丰', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('90', '233', '驰美电机上海有限公司', null, null, 'ccm_sales@126.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('91', '286', '无锡申菱电梯配套有限公司', null, '无锡市惠山区玉祁街道堰玉路85号', 'songdan48@sina.com', null, '宋聃', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('92', '270', '嘉兴市思尔德薄膜开关有限公司', null, null, 'post001@jxdgq.sina.net', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('93', '292', '张家港市盛通机械制造有限公司', null, null, 'lijun.fan@stjx.js.cn', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('94', '280', '广州市启泰模具工业有限公司', null, null, 'market@ketectool.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('95', '193', '深圳市杰瑞欧电子有限公司', null, null, '2106367535@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('96', '138', '佛山市坚利东成标件有限公司', null, '广东省佛山市禅城去魁奇西路陶机城B座3B坚利东成', '296899@qq.com', null, '招景镇', '1', null, null, '2', null);
INSERT INTO `wd_apply` VALUES ('97', '205', '东莞市冉通电子有限公司', null, null, '2659320093@qq.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('98', '315', '宁波晟实电梯配件有限公司', null, null, 'spider.hu@seesinc.com', null, null, '1', null, null, '1', null);
INSERT INTO `wd_apply` VALUES ('99', '303', '上海意美清洁器材有限公司', null, null, 'liao.ww@emclean.cn', null, null, '1', null, null, '2', null);

-- ----------------------------
-- Table structure for wd_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `wd_auth_group`;
CREATE TABLE `wd_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  `is_admin` tinyint(4) DEFAULT NULL COMMENT '前后台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_auth_group
-- ----------------------------
INSERT INTO `wd_auth_group` VALUES ('1', '超级管理员', '1', '1', '1');
INSERT INTO `wd_auth_group` VALUES ('3', '认证会员', '1', '2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', '0');
INSERT INTO `wd_auth_group` VALUES ('2', '注册会员', '1', '2,3,4,5,6,7,8', '0');
INSERT INTO `wd_auth_group` VALUES ('4', '项目人员', '1', '1,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40', '1');
INSERT INTO `wd_auth_group` VALUES ('5', '财务人员', '1', '1,19,20,21,22,34,35', '1');

-- ----------------------------
-- Table structure for wd_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `wd_auth_group_access`;
CREATE TABLE `wd_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_auth_group_access
-- ----------------------------
INSERT INTO `wd_auth_group_access` VALUES ('1', '1');
INSERT INTO `wd_auth_group_access` VALUES ('2', '5');
INSERT INTO `wd_auth_group_access` VALUES ('3', '4');
INSERT INTO `wd_auth_group_access` VALUES ('4', '3');
INSERT INTO `wd_auth_group_access` VALUES ('21', '3');
INSERT INTO `wd_auth_group_access` VALUES ('22', '3');
INSERT INTO `wd_auth_group_access` VALUES ('23', '3');
INSERT INTO `wd_auth_group_access` VALUES ('24', '3');
INSERT INTO `wd_auth_group_access` VALUES ('25', '3');
INSERT INTO `wd_auth_group_access` VALUES ('26', '3');
INSERT INTO `wd_auth_group_access` VALUES ('27', '3');
INSERT INTO `wd_auth_group_access` VALUES ('28', '3');
INSERT INTO `wd_auth_group_access` VALUES ('29', '3');
INSERT INTO `wd_auth_group_access` VALUES ('30', '3');
INSERT INTO `wd_auth_group_access` VALUES ('31', '3');
INSERT INTO `wd_auth_group_access` VALUES ('32', '3');
INSERT INTO `wd_auth_group_access` VALUES ('33', '3');
INSERT INTO `wd_auth_group_access` VALUES ('34', '2');
INSERT INTO `wd_auth_group_access` VALUES ('35', '3');
INSERT INTO `wd_auth_group_access` VALUES ('36', '3');
INSERT INTO `wd_auth_group_access` VALUES ('37', '3');
INSERT INTO `wd_auth_group_access` VALUES ('38', '3');
INSERT INTO `wd_auth_group_access` VALUES ('39', '3');
INSERT INTO `wd_auth_group_access` VALUES ('40', '3');
INSERT INTO `wd_auth_group_access` VALUES ('41', '3');
INSERT INTO `wd_auth_group_access` VALUES ('42', '3');
INSERT INTO `wd_auth_group_access` VALUES ('43', '3');
INSERT INTO `wd_auth_group_access` VALUES ('44', '3');
INSERT INTO `wd_auth_group_access` VALUES ('45', '3');
INSERT INTO `wd_auth_group_access` VALUES ('46', '3');
INSERT INTO `wd_auth_group_access` VALUES ('47', '3');
INSERT INTO `wd_auth_group_access` VALUES ('48', '3');
INSERT INTO `wd_auth_group_access` VALUES ('49', '3');
INSERT INTO `wd_auth_group_access` VALUES ('50', '3');
INSERT INTO `wd_auth_group_access` VALUES ('51', '3');
INSERT INTO `wd_auth_group_access` VALUES ('52', '3');
INSERT INTO `wd_auth_group_access` VALUES ('53', '3');
INSERT INTO `wd_auth_group_access` VALUES ('54', '3');
INSERT INTO `wd_auth_group_access` VALUES ('55', '3');
INSERT INTO `wd_auth_group_access` VALUES ('56', '3');
INSERT INTO `wd_auth_group_access` VALUES ('57', '3');
INSERT INTO `wd_auth_group_access` VALUES ('58', '3');
INSERT INTO `wd_auth_group_access` VALUES ('59', '3');
INSERT INTO `wd_auth_group_access` VALUES ('60', '3');
INSERT INTO `wd_auth_group_access` VALUES ('61', '3');
INSERT INTO `wd_auth_group_access` VALUES ('62', '3');
INSERT INTO `wd_auth_group_access` VALUES ('63', '3');
INSERT INTO `wd_auth_group_access` VALUES ('64', '3');
INSERT INTO `wd_auth_group_access` VALUES ('65', '3');
INSERT INTO `wd_auth_group_access` VALUES ('66', '3');
INSERT INTO `wd_auth_group_access` VALUES ('67', '3');
INSERT INTO `wd_auth_group_access` VALUES ('68', '3');
INSERT INTO `wd_auth_group_access` VALUES ('69', '3');
INSERT INTO `wd_auth_group_access` VALUES ('70', '3');
INSERT INTO `wd_auth_group_access` VALUES ('71', '3');
INSERT INTO `wd_auth_group_access` VALUES ('72', '3');
INSERT INTO `wd_auth_group_access` VALUES ('73', '3');
INSERT INTO `wd_auth_group_access` VALUES ('74', '3');
INSERT INTO `wd_auth_group_access` VALUES ('75', '3');
INSERT INTO `wd_auth_group_access` VALUES ('76', '3');
INSERT INTO `wd_auth_group_access` VALUES ('77', '3');
INSERT INTO `wd_auth_group_access` VALUES ('78', '3');
INSERT INTO `wd_auth_group_access` VALUES ('79', '3');
INSERT INTO `wd_auth_group_access` VALUES ('80', '3');
INSERT INTO `wd_auth_group_access` VALUES ('81', '3');
INSERT INTO `wd_auth_group_access` VALUES ('82', '3');
INSERT INTO `wd_auth_group_access` VALUES ('83', '3');
INSERT INTO `wd_auth_group_access` VALUES ('84', '3');
INSERT INTO `wd_auth_group_access` VALUES ('85', '3');
INSERT INTO `wd_auth_group_access` VALUES ('86', '3');
INSERT INTO `wd_auth_group_access` VALUES ('87', '3');
INSERT INTO `wd_auth_group_access` VALUES ('88', '3');
INSERT INTO `wd_auth_group_access` VALUES ('89', '3');
INSERT INTO `wd_auth_group_access` VALUES ('90', '3');
INSERT INTO `wd_auth_group_access` VALUES ('91', '3');
INSERT INTO `wd_auth_group_access` VALUES ('92', '3');
INSERT INTO `wd_auth_group_access` VALUES ('93', '3');
INSERT INTO `wd_auth_group_access` VALUES ('94', '3');
INSERT INTO `wd_auth_group_access` VALUES ('95', '3');
INSERT INTO `wd_auth_group_access` VALUES ('96', '3');
INSERT INTO `wd_auth_group_access` VALUES ('97', '3');
INSERT INTO `wd_auth_group_access` VALUES ('98', '3');
INSERT INTO `wd_auth_group_access` VALUES ('99', '3');
INSERT INTO `wd_auth_group_access` VALUES ('100', '3');
INSERT INTO `wd_auth_group_access` VALUES ('101', '3');
INSERT INTO `wd_auth_group_access` VALUES ('102', '3');
INSERT INTO `wd_auth_group_access` VALUES ('103', '3');
INSERT INTO `wd_auth_group_access` VALUES ('104', '2');
INSERT INTO `wd_auth_group_access` VALUES ('105', '3');
INSERT INTO `wd_auth_group_access` VALUES ('106', '3');
INSERT INTO `wd_auth_group_access` VALUES ('107', '3');
INSERT INTO `wd_auth_group_access` VALUES ('108', '3');
INSERT INTO `wd_auth_group_access` VALUES ('109', '3');
INSERT INTO `wd_auth_group_access` VALUES ('110', '3');
INSERT INTO `wd_auth_group_access` VALUES ('111', '3');
INSERT INTO `wd_auth_group_access` VALUES ('112', '3');
INSERT INTO `wd_auth_group_access` VALUES ('113', '3');
INSERT INTO `wd_auth_group_access` VALUES ('114', '3');
INSERT INTO `wd_auth_group_access` VALUES ('115', '3');
INSERT INTO `wd_auth_group_access` VALUES ('116', '3');
INSERT INTO `wd_auth_group_access` VALUES ('117', '3');
INSERT INTO `wd_auth_group_access` VALUES ('118', '3');
INSERT INTO `wd_auth_group_access` VALUES ('119', '3');
INSERT INTO `wd_auth_group_access` VALUES ('120', '3');
INSERT INTO `wd_auth_group_access` VALUES ('121', '3');
INSERT INTO `wd_auth_group_access` VALUES ('122', '3');
INSERT INTO `wd_auth_group_access` VALUES ('123', '3');
INSERT INTO `wd_auth_group_access` VALUES ('124', '3');
INSERT INTO `wd_auth_group_access` VALUES ('125', '3');
INSERT INTO `wd_auth_group_access` VALUES ('126', '3');
INSERT INTO `wd_auth_group_access` VALUES ('127', '3');
INSERT INTO `wd_auth_group_access` VALUES ('128', '3');
INSERT INTO `wd_auth_group_access` VALUES ('129', '3');
INSERT INTO `wd_auth_group_access` VALUES ('130', '3');
INSERT INTO `wd_auth_group_access` VALUES ('131', '3');
INSERT INTO `wd_auth_group_access` VALUES ('132', '3');
INSERT INTO `wd_auth_group_access` VALUES ('133', '3');
INSERT INTO `wd_auth_group_access` VALUES ('134', '3');
INSERT INTO `wd_auth_group_access` VALUES ('135', '3');
INSERT INTO `wd_auth_group_access` VALUES ('136', '3');
INSERT INTO `wd_auth_group_access` VALUES ('137', '3');
INSERT INTO `wd_auth_group_access` VALUES ('138', '3');
INSERT INTO `wd_auth_group_access` VALUES ('139', '3');
INSERT INTO `wd_auth_group_access` VALUES ('140', '3');
INSERT INTO `wd_auth_group_access` VALUES ('141', '3');
INSERT INTO `wd_auth_group_access` VALUES ('142', '3');
INSERT INTO `wd_auth_group_access` VALUES ('143', '3');
INSERT INTO `wd_auth_group_access` VALUES ('144', '3');
INSERT INTO `wd_auth_group_access` VALUES ('145', '3');
INSERT INTO `wd_auth_group_access` VALUES ('146', '3');
INSERT INTO `wd_auth_group_access` VALUES ('147', '3');
INSERT INTO `wd_auth_group_access` VALUES ('148', '3');
INSERT INTO `wd_auth_group_access` VALUES ('149', '3');
INSERT INTO `wd_auth_group_access` VALUES ('150', '3');
INSERT INTO `wd_auth_group_access` VALUES ('151', '3');
INSERT INTO `wd_auth_group_access` VALUES ('152', '3');
INSERT INTO `wd_auth_group_access` VALUES ('153', '3');
INSERT INTO `wd_auth_group_access` VALUES ('154', '3');
INSERT INTO `wd_auth_group_access` VALUES ('155', '3');
INSERT INTO `wd_auth_group_access` VALUES ('156', '3');
INSERT INTO `wd_auth_group_access` VALUES ('157', '3');
INSERT INTO `wd_auth_group_access` VALUES ('158', '3');
INSERT INTO `wd_auth_group_access` VALUES ('159', '3');
INSERT INTO `wd_auth_group_access` VALUES ('160', '3');
INSERT INTO `wd_auth_group_access` VALUES ('161', '3');
INSERT INTO `wd_auth_group_access` VALUES ('162', '3');
INSERT INTO `wd_auth_group_access` VALUES ('163', '3');
INSERT INTO `wd_auth_group_access` VALUES ('164', '3');
INSERT INTO `wd_auth_group_access` VALUES ('165', '3');
INSERT INTO `wd_auth_group_access` VALUES ('166', '3');
INSERT INTO `wd_auth_group_access` VALUES ('167', '3');
INSERT INTO `wd_auth_group_access` VALUES ('168', '3');
INSERT INTO `wd_auth_group_access` VALUES ('169', '3');
INSERT INTO `wd_auth_group_access` VALUES ('170', '3');
INSERT INTO `wd_auth_group_access` VALUES ('171', '3');
INSERT INTO `wd_auth_group_access` VALUES ('172', '3');
INSERT INTO `wd_auth_group_access` VALUES ('173', '3');
INSERT INTO `wd_auth_group_access` VALUES ('174', '3');
INSERT INTO `wd_auth_group_access` VALUES ('175', '3');
INSERT INTO `wd_auth_group_access` VALUES ('176', '3');
INSERT INTO `wd_auth_group_access` VALUES ('177', '3');
INSERT INTO `wd_auth_group_access` VALUES ('178', '3');
INSERT INTO `wd_auth_group_access` VALUES ('179', '3');
INSERT INTO `wd_auth_group_access` VALUES ('180', '3');
INSERT INTO `wd_auth_group_access` VALUES ('181', '3');
INSERT INTO `wd_auth_group_access` VALUES ('182', '3');
INSERT INTO `wd_auth_group_access` VALUES ('183', '3');
INSERT INTO `wd_auth_group_access` VALUES ('184', '3');
INSERT INTO `wd_auth_group_access` VALUES ('185', '3');
INSERT INTO `wd_auth_group_access` VALUES ('186', '3');
INSERT INTO `wd_auth_group_access` VALUES ('187', '3');
INSERT INTO `wd_auth_group_access` VALUES ('188', '3');
INSERT INTO `wd_auth_group_access` VALUES ('189', '3');
INSERT INTO `wd_auth_group_access` VALUES ('190', '3');
INSERT INTO `wd_auth_group_access` VALUES ('191', '3');
INSERT INTO `wd_auth_group_access` VALUES ('192', '3');
INSERT INTO `wd_auth_group_access` VALUES ('193', '3');
INSERT INTO `wd_auth_group_access` VALUES ('194', '3');
INSERT INTO `wd_auth_group_access` VALUES ('195', '3');
INSERT INTO `wd_auth_group_access` VALUES ('196', '3');
INSERT INTO `wd_auth_group_access` VALUES ('197', '3');
INSERT INTO `wd_auth_group_access` VALUES ('198', '3');
INSERT INTO `wd_auth_group_access` VALUES ('199', '3');
INSERT INTO `wd_auth_group_access` VALUES ('200', '3');
INSERT INTO `wd_auth_group_access` VALUES ('201', '3');
INSERT INTO `wd_auth_group_access` VALUES ('202', '3');
INSERT INTO `wd_auth_group_access` VALUES ('203', '3');
INSERT INTO `wd_auth_group_access` VALUES ('204', '3');
INSERT INTO `wd_auth_group_access` VALUES ('205', '3');
INSERT INTO `wd_auth_group_access` VALUES ('206', '3');
INSERT INTO `wd_auth_group_access` VALUES ('207', '3');
INSERT INTO `wd_auth_group_access` VALUES ('208', '3');
INSERT INTO `wd_auth_group_access` VALUES ('209', '3');
INSERT INTO `wd_auth_group_access` VALUES ('210', '3');
INSERT INTO `wd_auth_group_access` VALUES ('211', '3');
INSERT INTO `wd_auth_group_access` VALUES ('212', '3');
INSERT INTO `wd_auth_group_access` VALUES ('213', '3');
INSERT INTO `wd_auth_group_access` VALUES ('214', '3');
INSERT INTO `wd_auth_group_access` VALUES ('215', '3');
INSERT INTO `wd_auth_group_access` VALUES ('216', '3');
INSERT INTO `wd_auth_group_access` VALUES ('217', '3');
INSERT INTO `wd_auth_group_access` VALUES ('218', '3');
INSERT INTO `wd_auth_group_access` VALUES ('219', '3');
INSERT INTO `wd_auth_group_access` VALUES ('220', '3');
INSERT INTO `wd_auth_group_access` VALUES ('221', '3');
INSERT INTO `wd_auth_group_access` VALUES ('222', '3');
INSERT INTO `wd_auth_group_access` VALUES ('223', '3');
INSERT INTO `wd_auth_group_access` VALUES ('224', '3');
INSERT INTO `wd_auth_group_access` VALUES ('225', '3');
INSERT INTO `wd_auth_group_access` VALUES ('226', '3');
INSERT INTO `wd_auth_group_access` VALUES ('227', '3');
INSERT INTO `wd_auth_group_access` VALUES ('228', '3');
INSERT INTO `wd_auth_group_access` VALUES ('229', '3');
INSERT INTO `wd_auth_group_access` VALUES ('230', '3');
INSERT INTO `wd_auth_group_access` VALUES ('231', '3');
INSERT INTO `wd_auth_group_access` VALUES ('232', '3');
INSERT INTO `wd_auth_group_access` VALUES ('233', '3');
INSERT INTO `wd_auth_group_access` VALUES ('234', '3');
INSERT INTO `wd_auth_group_access` VALUES ('235', '2');
INSERT INTO `wd_auth_group_access` VALUES ('236', '3');
INSERT INTO `wd_auth_group_access` VALUES ('237', '3');
INSERT INTO `wd_auth_group_access` VALUES ('238', '3');
INSERT INTO `wd_auth_group_access` VALUES ('239', '3');
INSERT INTO `wd_auth_group_access` VALUES ('240', '3');
INSERT INTO `wd_auth_group_access` VALUES ('241', '3');
INSERT INTO `wd_auth_group_access` VALUES ('242', '3');
INSERT INTO `wd_auth_group_access` VALUES ('243', '3');
INSERT INTO `wd_auth_group_access` VALUES ('244', '3');
INSERT INTO `wd_auth_group_access` VALUES ('245', '3');
INSERT INTO `wd_auth_group_access` VALUES ('246', '3');
INSERT INTO `wd_auth_group_access` VALUES ('247', '3');
INSERT INTO `wd_auth_group_access` VALUES ('248', '3');
INSERT INTO `wd_auth_group_access` VALUES ('249', '3');
INSERT INTO `wd_auth_group_access` VALUES ('250', '3');
INSERT INTO `wd_auth_group_access` VALUES ('251', '3');
INSERT INTO `wd_auth_group_access` VALUES ('252', '3');
INSERT INTO `wd_auth_group_access` VALUES ('253', '3');
INSERT INTO `wd_auth_group_access` VALUES ('254', '3');
INSERT INTO `wd_auth_group_access` VALUES ('255', '3');
INSERT INTO `wd_auth_group_access` VALUES ('256', '3');
INSERT INTO `wd_auth_group_access` VALUES ('257', '3');
INSERT INTO `wd_auth_group_access` VALUES ('258', '3');
INSERT INTO `wd_auth_group_access` VALUES ('259', '3');
INSERT INTO `wd_auth_group_access` VALUES ('260', '3');
INSERT INTO `wd_auth_group_access` VALUES ('261', '3');
INSERT INTO `wd_auth_group_access` VALUES ('262', '3');
INSERT INTO `wd_auth_group_access` VALUES ('263', '3');
INSERT INTO `wd_auth_group_access` VALUES ('264', '3');
INSERT INTO `wd_auth_group_access` VALUES ('265', '2');
INSERT INTO `wd_auth_group_access` VALUES ('266', '3');
INSERT INTO `wd_auth_group_access` VALUES ('267', '3');
INSERT INTO `wd_auth_group_access` VALUES ('268', '3');
INSERT INTO `wd_auth_group_access` VALUES ('269', '3');
INSERT INTO `wd_auth_group_access` VALUES ('270', '3');
INSERT INTO `wd_auth_group_access` VALUES ('271', '3');
INSERT INTO `wd_auth_group_access` VALUES ('272', '3');
INSERT INTO `wd_auth_group_access` VALUES ('273', '3');
INSERT INTO `wd_auth_group_access` VALUES ('274', '3');
INSERT INTO `wd_auth_group_access` VALUES ('275', '3');
INSERT INTO `wd_auth_group_access` VALUES ('276', '3');
INSERT INTO `wd_auth_group_access` VALUES ('277', '3');
INSERT INTO `wd_auth_group_access` VALUES ('278', '3');
INSERT INTO `wd_auth_group_access` VALUES ('279', '3');
INSERT INTO `wd_auth_group_access` VALUES ('280', '3');
INSERT INTO `wd_auth_group_access` VALUES ('281', '3');
INSERT INTO `wd_auth_group_access` VALUES ('282', '3');
INSERT INTO `wd_auth_group_access` VALUES ('283', '3');
INSERT INTO `wd_auth_group_access` VALUES ('284', '3');
INSERT INTO `wd_auth_group_access` VALUES ('285', '3');
INSERT INTO `wd_auth_group_access` VALUES ('286', '3');
INSERT INTO `wd_auth_group_access` VALUES ('287', '3');
INSERT INTO `wd_auth_group_access` VALUES ('288', '3');
INSERT INTO `wd_auth_group_access` VALUES ('289', '3');
INSERT INTO `wd_auth_group_access` VALUES ('290', '2');
INSERT INTO `wd_auth_group_access` VALUES ('291', '3');
INSERT INTO `wd_auth_group_access` VALUES ('292', '3');
INSERT INTO `wd_auth_group_access` VALUES ('293', '3');
INSERT INTO `wd_auth_group_access` VALUES ('294', '3');
INSERT INTO `wd_auth_group_access` VALUES ('295', '3');
INSERT INTO `wd_auth_group_access` VALUES ('296', '3');
INSERT INTO `wd_auth_group_access` VALUES ('297', '3');
INSERT INTO `wd_auth_group_access` VALUES ('298', '3');
INSERT INTO `wd_auth_group_access` VALUES ('299', '3');
INSERT INTO `wd_auth_group_access` VALUES ('300', '3');
INSERT INTO `wd_auth_group_access` VALUES ('301', '3');
INSERT INTO `wd_auth_group_access` VALUES ('302', '3');
INSERT INTO `wd_auth_group_access` VALUES ('303', '3');
INSERT INTO `wd_auth_group_access` VALUES ('304', '3');
INSERT INTO `wd_auth_group_access` VALUES ('305', '3');
INSERT INTO `wd_auth_group_access` VALUES ('306', '3');
INSERT INTO `wd_auth_group_access` VALUES ('307', '3');
INSERT INTO `wd_auth_group_access` VALUES ('308', '3');
INSERT INTO `wd_auth_group_access` VALUES ('309', '3');
INSERT INTO `wd_auth_group_access` VALUES ('310', '3');
INSERT INTO `wd_auth_group_access` VALUES ('311', '3');
INSERT INTO `wd_auth_group_access` VALUES ('312', '3');
INSERT INTO `wd_auth_group_access` VALUES ('313', '3');
INSERT INTO `wd_auth_group_access` VALUES ('314', '3');
INSERT INTO `wd_auth_group_access` VALUES ('315', '3');
INSERT INTO `wd_auth_group_access` VALUES ('316', '3');
INSERT INTO `wd_auth_group_access` VALUES ('317', '3');
INSERT INTO `wd_auth_group_access` VALUES ('318', '3');
INSERT INTO `wd_auth_group_access` VALUES ('319', '3');
INSERT INTO `wd_auth_group_access` VALUES ('320', '3');
INSERT INTO `wd_auth_group_access` VALUES ('321', '3');
INSERT INTO `wd_auth_group_access` VALUES ('322', '3');
INSERT INTO `wd_auth_group_access` VALUES ('323', '3');
INSERT INTO `wd_auth_group_access` VALUES ('324', '2');
INSERT INTO `wd_auth_group_access` VALUES ('325', '3');
INSERT INTO `wd_auth_group_access` VALUES ('326', '3');
INSERT INTO `wd_auth_group_access` VALUES ('327', '3');

-- ----------------------------
-- Table structure for wd_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `wd_auth_rule`;
CREATE TABLE `wd_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_auth_rule
-- ----------------------------
INSERT INTO `wd_auth_rule` VALUES ('1', 'Manager/Index/index', '后台首页', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('2', 'User/Index/index', '用户首页', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('3', 'User/Account/password', '修改密码', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('4', 'User/Account/check_password', '验证密码', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('6', 'User/Login/loginout', '退出登录', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('5', 'User/Apply/invoice', '发票申请', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('7', 'User/Account/company', '企业信息', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('8', 'User/Booth/order', '订购选择', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('9', 'User/Booth/hall', '展馆选择', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('10', 'User/booth/index', '展馆选择', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('11', 'User/booth/select', '选择展位', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('12', 'User/booth/pay', '支付功能', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('13', 'User/apply/receipt', '发票申请成功', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('14', 'User/account/booth', '个人展位', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('15', 'User/Booth/pay_up', '汇款功能', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('16', 'User/Apply/checks', '预付款', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('17', 'User/Adver/index', '广告订购', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('18', 'User/apply/index', '', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('19', 'Manager/invoice/apply', '汇款审核', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('20', 'Manager/invoice/index', '发票申请', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('21', 'Manager/invoice/show', '发票显示', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('22', 'Manager/invoice/ashow', '汇款审核', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('23', 'Manager/chart/hall', '展馆列表', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('24', 'Manager/chart/add', '添加展馆', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('25', 'Manager/chart/edit', '修改展馆', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('26', 'Manager/chart/booth', '展位管理', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('27', 'Manager/chart/add_booth', '添加展位', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('28', 'Manager/chart/edit_booth', '修改展位', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('29', 'Manager/chart/trade', '展位订单', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('30', 'Manager/chart/apply', '合同申请', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('31', 'Manager/chart/ashow', '合同审核', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('32', 'Manager/user/index', '用户列表', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('33', 'Manager/user/verify', '审核用户', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('34', 'Manager/user/add', '添加用户', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('35', 'Manager/user/modify', '修改密码', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('36', 'Manager/Adver/index', '添加广告', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('37', 'Manager/Adver/add', '添加修改广告', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('38', 'Manager/Adver/del', '删除广告', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('39', 'Manager/chart/update_trade', 'zhanweixiugai', '1', '1', '');
INSERT INTO `wd_auth_rule` VALUES ('40', 'Manager/chart/trade_del', 'shanchuzhanwei', '1', '1', '');

-- ----------------------------
-- Table structure for wd_booth
-- ----------------------------
DROP TABLE IF EXISTS `wd_booth`;
CREATE TABLE `wd_booth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `booth_num` varchar(20) NOT NULL COMMENT '展位号',
  `hid` int(10) unsigned NOT NULL COMMENT 'hall id',
  `plan` varchar(255) DEFAULT NULL COMMENT 'exhibition plan',
  `area` varchar(20) NOT NULL COMMENT 'booth area',
  `payment` varchar(20) DEFAULT '0' COMMENT 'advance payment',
  `price` varchar(20) NOT NULL COMMENT 'booth price',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT 'booth status',
  `add_time` varchar(20) NOT NULL COMMENT 'add time',
  `add_user` int(10) unsigned NOT NULL COMMENT 'add booth user id',
  `uid` int(11) unsigned DEFAULT NULL COMMENT 'pay uid',
  `time` varchar(20) DEFAULT NULL COMMENT 'pay time',
  `special` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否特装展位',
  `hall_type` tinyint(4) unsigned NOT NULL COMMENT '展位类型',
  `hall_area` varchar(10) DEFAULT NULL COMMENT '展位区域',
  `checks` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '展位是否需要审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=794 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_booth
-- ----------------------------
INSERT INTO `wd_booth` VALUES ('1', '5201', '2', null, '11', '112', '0.1', '1', '1439542392', '1', null, null, '1', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('2', '5202', '2', null, '11', '112', '0.1', '1', '1439542392', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('3', '5203', '2', null, '11', '112', '0.1', '1', '1439542392', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('4', '5205', '2', null, '11', '112', '0.1', '2', '1439542392', '1', null, null, '0', '1', null, '1');
INSERT INTO `wd_booth` VALUES ('5', '5206', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('6', '5207', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('7', '5208', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('8', '5209', '2', null, '11', '112', '0.1', '0', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('9', '5210', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('10', '5211', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('11', '5212', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('12', '5213', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('13', '5215', '2', null, '11', '112', '0.1', '0', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('14', '5216', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('15', '5217', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('16', '5218', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('17', '5219', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('18', '5220', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('19', '5221', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('20', '5222', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('21', '5223', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('22', '5225', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('23', '5226', '2', null, '11', '112', '0.1', '0', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('24', '5227', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('25', '5228', '2', null, '11', '112', '0.1', '0', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('26', '5229', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('27', '5230', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('28', '5231', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('29', '5232', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('30', '5233', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('31', '5235', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('32', '5236', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('33', '5237', '2', null, '11', '112', '0.1', '2', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('34', '5238', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('35', '5239', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('36', '5250', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('37', '5251', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('38', '5252', '2', null, '11', '112', '0.1', '1', '1439542395', '1', null, null, '0', '1', null, '0');
INSERT INTO `wd_booth` VALUES ('40', '7f33', '5', null, '24', '11', '0.1', '0', '1444639481', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('41', '7f35', '5', null, '24', '5000', '0.1', '0', '1445312143', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('42', '7f36', '5', null, '24', '5000', '0.1', '0', '1445312206', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('43', '7205', '5', null, '8*10=80', '5000', '0.1', '1', '1445312248', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('44', '7212', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '82', '1447633326', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('45', '7a08', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('46', '7a07', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '51', '1447394456', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('47', '7211', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('48', '7a06', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('49', '7a05', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '65', '1447385265', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('50', '7a01', '5', null, '36', '11', '0.1', '2', '1444639481', '1', '116', '1447977875', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('51', '7a02', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('52', '7a03', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('53', '7210', '5', null, '6*12=72', '11', '0.1', '1', '1444639481', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('54', '7209', '5', null, '13*6=78', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('55', '7213', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '223', '1451266789', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('56', '7a22', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('57', '7a21', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '127', '1447985169', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('58', '7215', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '100', '1447988018', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('59', '7a20', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('60', '7a19', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '103', '1447997240', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('61', '7a16', '5', null, '36', '11', '0.1', '2', '1444639481', '1', '75', '1448495435', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('62', '7a17', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('63', '7a18', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('64', '7216', '5', null, '6*12=72', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('65', '7217', '5', null, '13*6=78', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('66', '7230', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '68', '1447396120', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('67', '7a23', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('68', '7a25', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '111', '1447923842', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('69', '7229', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '58', '1447391865', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('70', '7a26', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('71', '7a27', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '64', '1447393536', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('72', '7a30', '5', null, '36', '11', '0.1', '2', '1444639481', '1', '202', '1449454873', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('73', '7a29', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('74', '7a28', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('75', '7228', '5', null, '6*12=72', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('76', '7227', '5', null, '13*6=78', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('77', '7231', '5', null, '6*15=90', '11', '0.1', '2', '1444639481', '1', '117', '1448000824', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('78', '7232', '5', null, '6*15=90', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('79', '7233', '5', null, '6*9=54', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('80', '7235', '5', null, '13*6=78', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('81', '7258', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('82', '7257', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '171', '1450925148', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('83', '7256', '5', null, '9*10=90', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('84', '7255', '5', null, '8*13=104', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('85', '7a85', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '141', '1448005614', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('86', '7a86', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('87', '7a87', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '190', '1449278349', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('88', '7a88', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('89', '7a83', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '138', '1447993643', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('90', '7a82', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('91', '7a81', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '140', '1448243878', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('92', '7a80', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('93', '7259', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '77', '1447400553', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('94', '7260', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '176', '1450075556', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('95', '7a76', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '60', '1447381569', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('96', '7a77', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('97', '7a78', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '96', '1448070333', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('98', '7a79', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('99', '7262', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '46', '1447220225', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('100', '7261', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '43', '1447398948', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('101', '7263', '5', null, '13*8=104', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('102', '7a89', '5', null, '36', '11', '0.1', '1', '1444639481', '1', '0', null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('103', '7a90', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('104', '7a91', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('105', '7a92', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '194', '1449282889', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('106', '7a93', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('107', '7b02', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '218', '1451026025', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('108', '7b01', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('109', '7a99', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '152', '1449465616', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('110', '7a98', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('111', '7a95', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('112', '7285', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '78', '1447724728', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('113', '7283', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '241', '1450669944', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('114', '7a96', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('115', '7a97', '5', null, '36', '11', '0.1', '2', '1444639481', '1', '63', '1447475097', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('116', '7b03', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '139', '1448004365', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('117', '7b05', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('118', '7b06', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '97', '1447813035', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('119', '7b07', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('120', '7b08', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('121', '7281', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '48', '1447224736', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('122', '7282', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '67', '1447389044', '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('123', '7b09', '5', null, '160', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('124', '7b10', '5', null, '36', '11', '0.1', '2', '1444639481', '1', '76', '1447399716', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('125', '7280', '5', null, '13*10=130', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('126', '7e+086', '5', null, '24', '11', '0.1', '1', '1444639481', '1', '0', null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('127', '7e+087', '5', null, '24', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('128', '7e+088', '5', null, '24', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('129', '7289', '5', null, '13*8=104', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('396', '7f05', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('397', '7f10', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('398', '7f08', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('399', '7f03', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('400', '7f06', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('401', '7f21', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('402', '7f19', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('403', '7f07', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('404', '7f09', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('405', '7f11', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('406', '7f15', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('407', '7f12', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('408', '7f13', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('409', '7f32', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('410', '7f31', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('411', '727d', '5', null, '4*8=48', '0', '0.1', '0', '1447857625', '1', '0', null, '1', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('412', '7d95', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('414', '7d89', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('415', '7d88', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('416', '7f17', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('417', '7f20', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('418', '7f16', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('419', '7f18', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('420', '7f30', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('421', '7f29', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('422', '7d91', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('423', '7d90', '5', null, '24', '0', '0.1', '1', '1447857625', '1', '0', null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('424', '7d87', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('425', '7d86', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('426', '7f23', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('427', '7f26', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('428', '7f22', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('429', '7f25', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('430', '7f28', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('431', '7f27', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('432', '7d85', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '296', '1452133722', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('433', '7d75', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('434', '7d73', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('435', '7d70', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '257', '1450841214', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('436', '7d69', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '305', '1453098758', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('437', '7d72', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('438', '7d67', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '250', '1450769078', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('439', '7d68', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '224', '1452492431', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('440', '7d71', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '163', '1451016757', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('441', '7d65', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '221', '1450667620', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('442', '7d66', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '295', '1452064488', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('443', '7f82', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '288', '1452044274', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('444', '7d63', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '279', '1453366463', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('445', '7d62', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '307', '1452842985', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('446', '7f83', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('447', '7f85', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('448', '7f86', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '315', '1453252322', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('449', '7f87', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('450', '7f88', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '206', '1450753647', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('451', '7d60', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '264', '1451442272', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('452', '7d61', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '227', '1450659764', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('453', '7d59', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '270', '1451897389', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('454', '7d58', '5', null, '12', '0', '0.1', '1', '1447857625', '1', '0', null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('455', '7d56', '5', null, '24', '0', '0.1', '1', '1447857625', '1', '206', '1450685487', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('456', '7d57', '5', null, '24', '0', '0.1', '1', '1447857625', '1', '0', null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('134', '7b76', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '132', '1447987774', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('135', '7b77', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '177', '1448870021', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('136', '7b78', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '173', '1448958265', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('137', '7b79', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '119', '1447990856', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('151', '7b80', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '109', '1447897657', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('152', '7b81', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '201', '1449304185', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('153', '7b82', '5', null, '12', '11', '0.1', '0', '1444639481', '1', '0', null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('154', '7b83', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '99', '1447812565', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('138', '7b75', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '69', '1447724569', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('139', '7b73', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '197', '1450163424', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('140', '7b72', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '182', '1449127492', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('141', '7b71', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '128', '1448600951', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('155', '7b88', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '57', '1447378389', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('156', '7b87', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '196', '1449542515', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('157', '7b86', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '198', '1449291174', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('158', '7b85', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '49', '1451027488', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('144', '7b67', '5', null, '12', '11', '0.1', '2', '1444639481', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('145', '7b68', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '83', '1447499899', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('146', '7b69', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '118', '1448010403', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('147', '7b70', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '73', '1447399891', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('161', '7b89', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '72', '1447398086', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('162', '7b90', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '161', '1448526734', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('163', '7b91', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '142', '1448010375', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('164', '7b92', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '84', '1447490720', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('167', '721y', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('150', '721h', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('133', '7299', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '157', '1450661480', '1', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('174', '7296', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('175', '7295', '5', null, '6*16=96', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('177', '7b50', '5', null, '12', '11', '0.1', '2', '1444639481', '1', null, '1448330138', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('178', '7b51', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '85', '1447843691', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('179', '7b52', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '92', '1447656684', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('181', '721l', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('182', '721k', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('183', '7b66', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '61', '1447383309', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('184', '7b65', '5', null, '12', '11', '0.1', '0', '1444639481', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('185', '7b63', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '113', '1448003754', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('186', '7b62', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '95', '1447725873', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('187', '721m', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('188', '721n', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('189', '7b58', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '62', '1447396219', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('190', '7b59', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '144', '1448266494', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('191', '7b60', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '115', '1448342453', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('192', '7b61', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '110', '1448000913', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('193', '721q', '5', null, '6*8=48', '11', '0.1', '2', '1444639481', '1', '87', '1447743763', '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('194', '721p', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('195', '7b53', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '66', '1447401176', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('196', '7b55', '5', null, '12', '11', '0.1', '0', '1444639481', '1', '0', null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('197', '7b56', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '167', '1448596714', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('198', '7b57', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '122', '1447981900', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('200', '721w', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('201', '721v', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('202', '7b97', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '86', '1447658656', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('203', '7b96', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '149', '1448267572', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('204', '7b95', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '160', '1448527970', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('205', '7b93', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '107', '1447893403', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('206', '721t', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('207', '721u', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('208', '7b98', '5', null, '12', '11', '0.1', '0', '1444639481', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('209', '7b99', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '158', '1448426295', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('210', '7c01', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '174', '1448851674', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('211', '7c02', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '81', '1447401700', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('212', '721s', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('213', '721r', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('214', '7c07', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '66', '1447398622', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('283', '7293', '5', null, '6*16=96', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('284', '7b35', '5', null, '24', '11', '0.1', '0', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('285', '7b36', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('286', '7b37', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '90', '1447652617', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('287', '7b38', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('288', '7206', '5', null, '91.5', '11', '0.1', '2', '1555639581', '1', '37', '1447125293', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('289', '7208', '5', null, '12*6=72', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('290', '7207', '5', null, '16*16/2=128', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('291', '7218', '5', null, '12*6=72', '11', '0.1', '1', '1555639581', '1', '145', '1448248618', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('292', '7219', '5', null, '6*12=72', '11', '0.1', '2', '1555639581', '1', '38', '1447642075', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('293', '7a15', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '120', '1448023241', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('294', '7a13', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('295', '7a12', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('296', '7220', '5', null, '7*9=63', '11', '0.1', '2', '1555639581', '1', '52', '1447304049', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('297', '7a11', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('298', '7a10', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('299', '7a09', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '53', '1447315063', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('300', '7221', '5', null, '96.5', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('301', '7226', '5', null, '12*6=72', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('302', '7225', '5', null, '6*12=72', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('303', '7a31', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '195', '1450339842', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('304', '7a32', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('305', '7a33', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('306', '7223', '5', null, '6*12=72', '11', '0.1', '1', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('307', '7a37', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '136', '1450935249', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('308', '7a36', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('309', '7a35', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('310', '7222', '5', null, '6*8=48', '11', '0.1', '1', '1555639581', '1', '0', null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('311', '7a38', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('312', '7a39', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '125', '1447983323', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('313', '7a50', '5', null, '36', '11', '0.1', '0', '1555639581', '1', '0', null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('314', '7a51', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('315', '7a52', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('316', '7236', '5', null, '12*6=72', '11', '0.1', '0', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('317', '7237', '5', null, '9*6=54', '11', '0.1', '2', '1555639581', '1', '146', '1450163760', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('318', '7238', '5', null, '9*6=54', '11', '0.1', '2', '1555639581', '1', '266', '1451981166', '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('319', '7239', '5', null, '6*15=90', '11', '0.1', '0', '1555639581', '1', null, null, '1', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('320', '7a53', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '79', '1447401198', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('321', '7a55', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('322', '7a56', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '71', '1447468927', '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('323', '7a57', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('324', '723b', '5', null, '8*10=80', '0', '0.1', '1', '1447857135', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('325', '723n', '5', null, '9*9=81', '0', '0.1', '1', '1447857153', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('326', '723d', '5', null, '6*13=78', '0', '0.1', '1', '1447857175', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('327', '723e', '5', null, '6*13=78', '0', '0.1', '1', '1447857192', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('328', '723f', '5', null, '9*13=117', '0', '0.1', '2', '1447857209', '1', '234', '1450254690', '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('329', '723p', '5', null, '6*9=54', '0', '0.1', '2', '1447857235', '1', '228', '1450251379', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('330', '723c', '5', null, '6*13=78', '0', '0.1', '1', '1447857353', '1', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('331', '723q', '5', null, '6*13=78', '0', '0.1', '1', '1447857407', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('332', '723u', '5', null, '8*13=104', '0', '0.1', '0', '1447857427', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('333', '723v', '5', null, '10*13=130', '0', '0.1', '0', '1447857456', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('387', '7d01', '5', null, '24', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('335', '725a', '5', null, '8*13=104', '0', '0.1', '0', '1447857483', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('395', '7f02', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('337', '725e', '5', null, '6*8=48', '0', '0.1', '1', '1447857547', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('338', '725g', '5', null, '6*8=48', '0', '0.1', '1', '1447857565', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('339', '725k', '5', null, '6*8=48', '0', '0.1', '1', '1447857589', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('340', '7f02', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('341', '725l', '5', null, '6*13=78', '0', '0.1', '1', '1447857643', '1', '4', '1447921960', '0', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('342', '725d', '5', null, '8*12=96', '0', '0.1', '1', '1447857665', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('343', '725c', '5', null, '8*9=72', '0', '0.1', '2', '1447857679', '1', '102', '1452928904', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('344', '725b', '5', null, '8*9=72', '0', '0.1', '1', '1447857702', '1', '0', null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('347', '725m', '5', null, '6*12=72', '0', '0.1', '1', '1447857752', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('348', '725n', '5', null, '6*9=54', '0', '0.1', '1', '1447857790', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('349', '725q', '5', null, '6*9=54', '0', '0.1', '1', '1447857803', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('350', '723r', '5', null, '6*9=54', '0', '0.1', '2', '1447857827', '1', '94', '1447919501', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('351', '723s', '5', null, '6*9=54', '0', '0.1', '2', '1447857843', '1', '126', '1448263473', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('352', '723t', '5', null, '8*12=96', '0', '0.1', '0', '1447857861', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('353', '723w', '5', null, '10*12=120', '0', '0.1', '0', '1447857878', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('354', '723z', '5', null, '8*12=96', '0', '0.1', '0', '1447857899', '1', '0', null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('355', '723y', '5', null, '6*8=48', '0', '0.1', '2', '1447857914', '1', '271', '1451983582', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('356', '723x', '5', null, '6*8=48', '0', '0.1', '1', '1447857928', '1', '0', null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('358', '723k', '5', null, '6*12=72', '0', '0.1', '1', '1447857964', '1', '0', null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('359', '723j', '5', null, '6*12=72', '0', '0.1', '1', '1447857979', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('360', '723h', '5', null, '6*12=72', '0', '0.1', '1', '1447857993', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('361', '723g', '5', null, '12*9=108', '0', '0.1', '0', '1447859442', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('362', '723L', '5', null, '9*9=81', '0', '0.1', '1', '1447859456', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('363', '723m', '5', null, '9*9=81', '0', '0.1', '1', '1447859471', '1', null, null, '0', '2', '6', '0');
INSERT INTO `wd_booth` VALUES ('364', '7f37', '5', null, '24', '5000', '0.1', '0', '1445312143', '1', '0', null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('365', '7f38', '5', null, '24', '5000', '0.1', '0', '1445312143', '1', '0', null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('366', '7f39', '5', null, '24', '5000', '0.1', '0', '1445312143', '1', '0', null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('367', '7f50', '5', null, '24', '5000', '0.1', '1', '1445312143', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('368', '7f53', '5', null, '24', '5000', '0.1', '2', '1445312143', '1', '159', '1450849358', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('369', '7f51', '5', null, '24', '5000', '0.1', '1', '1445312143', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('370', '7f52', '5', null, '24', '5000', '0.1', '1', '1445312143', '1', '0', null, '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('371', '7f55', '5', null, '24', '5000', '0.1', '2', '1445312143', '1', '291', '1452740870', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('372', '7f56', '5', null, '24', '5000', '0.1', '2', '1445312143', '1', '205', '1450683220', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('373', '7f57', '5', null, '24', '5000', '0.1', '2', '1445312143', '1', '233', '1452052854', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('374', '7f58', '5', null, '24', '5000', '0.1', '2', '1445312143', '1', '298', '1452827370', '1', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('375', '7e+075', '5', null, '24', '11', '0.1', '0', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('376', '7e+077', '5', null, '24', '11', '0.1', '0', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('377', '7e+079', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '313', '1453091247', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('378', '7e+080', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '287', '1453259646', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('379', '727e', '5', null, '8*13=104', '11', '0.1', '0', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('380', '7e+089', '5', null, '24', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('381', '725e', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('382', '7e+095', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '286', '1451970791', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('383', '7e+096', '5', null, '24', '11', '0.1', '2', '1444639481', '1', '289', '1453102965', '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('384', '725b', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('385', '725c', '5', null, '6*8=48', '11', '0.1', '1', '1444639481', '1', null, null, '0', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('386', '727e', '5', null, '8*13=104', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '2', '0');
INSERT INTO `wd_booth` VALUES ('388', '7d02', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '292', '1452499228', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('389', '7d03', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '284', '1452930312', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('390', '7d05', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '304', '1453258138', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('391', '7d06', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '256', '1452248037', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('392', '7d07', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '187', '1450682033', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('393', '7d12', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '210', '1450662201', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('394', '7d13', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '246', '1450669801', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('215', '7c06', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '155', '1448520038', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('216', '7c05', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '186', '1449043340', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('217', '7c03', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '147', '1448181535', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('218', '722h', '5', null, '12*6=72', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('219', '722j', '5', null, '9*6=54', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('220', '722k', '5', null, '9*6=54', '11', '0.1', '1', '1444639481', '1', '0', null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('221', '722l', '5', null, '6*12=72', '11', '0.1', '1', '1444639481', '1', null, null, '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('222', '7c08', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '156', '1448356544', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('223', '7c09', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '154', '1449215931', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('224', '7c10', '5', null, '12', '11', '0.1', '2', '1444639481', '1', '188', '1449111151', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('457', '727c', '5', null, '6*8=48', '0', '0.1', '2', '1447857625', '1', '280', '1452216038', '1', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('458', '7d26', '5', null, '24', '0', '0.1', '2', '1447857625', '1', '310', '1452847446', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('461', '7e+011', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('462', '727a', '5', null, '6*8=48', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('463', '7e+023', '5', null, '24', '0', '0.1', '1', '1447857625', '1', '0', null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('464', '7e+021', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('465', '7293', '5', null, '6*8=48', '0', '0.1', '1', '1447857625', '1', null, null, '1', '2', '3', '0');
INSERT INTO `wd_booth` VALUES ('467', '7d09', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('474', '7d18', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('475', '7d20', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('476', '7d17', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('477', '7d19', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('478', '7000000', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('479', '70', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('480', '7d10', '5', null, '24', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('483', '7e+038', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '208', '1450584037', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('484', '7e+051', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('485', '7e+039', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('486', '7e+050', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('493', '7d22', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('494', '7d25', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('495', '7d21', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('496', '7d23', '5', null, '24', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('499', '7d15', '5', null, '24', '0', '0.1', '2', '1447857625', '1', '278', '1451444708', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('500', '7d16', '5', null, '24', '0', '0.1', '2', '1447857625', '1', '215', '1450660928', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('501', '7e+053', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('502', '7e+055', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('503', '7e+058', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('504', '7e+059', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('505', '7e+052', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('506', '7e+056', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('507', '7e+057', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('508', '7e+060', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('515', '7d32', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '213', '1450674658', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('516', '7d35', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '308', '1453106723', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('517', '7d37', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '135', '1451545597', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('518', '7d38', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '209', '1451885465', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('520', '7d50', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '175', '1451889756', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('521', '7d51', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '268', '1451215592', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('522', '7d52', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '282', '1451538382', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('523', '7d53', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '216', '1450757168', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('524', '7d55', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '274', '1451891898', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('525', '7d76', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '225', '1450752545', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('526', '7d77', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '193', '1451895109', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('527', '7d78', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '323', '1453358164', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('533', '7e+062', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '231', '1450680104', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('534', '7e+063', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '214', '1452843926', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('535', '7e+061', '5', null, '12', '0', '0.1', '2', '1447857625', '1', '212', '1450677597', '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('536', '7e+065', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('537', '7e+067', '5', null, '12', '0', '0.1', '1', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('538', '7e+066', '5', null, '12', '0', '0.1', '0', '1447857625', '1', null, null, '0', '2', '4', '0');
INSERT INTO `wd_booth` VALUES ('542', '7e+089', '5', null, '12', '0', '0.1', '0', '1450657692', '3', null, null, '0', '2', '1', '0');
INSERT INTO `wd_booth` VALUES ('543', '7275', '5', null, '6*8=48', '0', '0.1', '2', '1450676544', '3', '164', '1450750097', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('225', '7253', '5', null, '12*16=192', '11', '0.1', '0', '1555639581', '1', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('229', '7a58', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '47', '1447642343', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('230', '7a59', '5', null, '160', '11', '0.1', '1', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('231', '7a60', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '112', '1447922204', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('248', '7a62', '5', null, '24', '11', '0.1', '0', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('250', '7a65', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '121', '1448957782', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('275', '7b33', '5', null, '36', '11', '0.1', '0', '1555639581', '1', '0', null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('278', '7b30', '5', null, '24', '11', '0.1', '0', '1555639581', '1', null, null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('228', '7250', '5', null, '6*16=96', '11', '0.1', '2', '1555639581', '1', '56', '1447383198', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('246', '7270', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '89', '1447658945', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('247', '7271', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '88', '1448424066', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('271', '7272', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '98', '1447743448', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('274', '7b28', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '106', '1447846127', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('227', '7251', '5', null, '9*10=90', '11', '0.1', '2', '1555639581', '1', '166', '1448957274', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('242', '7a70', '5', null, '24', '11', '0.1', '0', '1555639581', '1', '0', null, '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('244', '7a68', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '123', '1447998817', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('266', '7b26', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '108', '1447895130', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('268', '7b23', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '169', '1448611424', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('270', '7b21', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '54', '1447639977', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('262', '7276', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '101', '1447895676', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('240', '7269', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '70', '1447393353', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('241', '7268', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '80', '1447893612', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('234', '7266', '5', null, '6*8=48', '11', '0.1', '0', '1555639581', '1', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('235', '7267', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '44', '1447204931', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('253', '7277', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '45', '1447219899', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('254', '7278', '5', null, '6*8=48', '11', '0.1', '2', '1555639581', '1', '41', '1447229681', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('236', '7a71', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '50', '1447400959', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('238', '7a73', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '74', '1447722007', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('257', '7b11', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '93', '1447662086', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('259', '7b13', '5', null, '24', '11', '0.1', '2', '1555639581', '1', '168', '1448524310', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('261', '7b16', '5', null, '36', '11', '0.1', '2', '1555639581', '1', '53', '1447464628', '0', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('544', '7273', '5', null, '6*8=48', '0', '0.1', '1', '1450676598', '3', '0', null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('545', '7292', '5', null, '6*8=48', '0', '0.1', '1', '1451034810', '3', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('546', '7291', '5', null, '6*8=48', '0', '0.1', '2', '1451034951', '3', '321', '1453277983', '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('547', '7265', '5', null, '8*12=96(有柱子，减去4平米）', '0', '0.1', '0', '1453166595', '3', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('548', '7279', '5', null, '10*12=120', '0', '0.1', '0', '1453166694', '3', null, null, '1', '2', '5', '0');
INSERT INTO `wd_booth` VALUES ('549', '7290', '5', null, '8*12=96', '0', '0.1', '0', '1453166772', '3', null, null, '1', '2', '5', '0');

-- ----------------------------
-- Table structure for wd_company
-- ----------------------------
DROP TABLE IF EXISTS `wd_company`;
CREATE TABLE `wd_company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '企业 ID',
  `company_name` varchar(300) NOT NULL COMMENT '企业名称',
  `register_num` varchar(100) NOT NULL COMMENT '营业执照注册号',
  `scan_part` varchar(200) NOT NULL COMMENT '营业执照扫描件',
  `residence` varchar(300) NOT NULL COMMENT '证件住所',
  `address` varchar(300) NOT NULL COMMENT '通讯地址',
  `scope` varchar(1000) NOT NULL COMMENT '经营范围',
  `type` tinyint(4) NOT NULL COMMENT '参展类型',
  `c_name` varchar(200) DEFAULT NULL COMMENT '企业法人姓名',
  `c_tel` varchar(30) DEFAULT NULL COMMENT '企业法人电话',
  `c_email` varchar(150) DEFAULT NULL COMMENT '企业法人邮箱',
  `c_duties` varchar(200) DEFAULT NULL COMMENT '企业法人职务',
  `c_phone` varchar(30) DEFAULT NULL COMMENT '企业法人手机',
  `c_fax` varchar(30) DEFAULT NULL COMMENT '企业法人传真',
  `f_name` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `f_tel` varchar(30) DEFAULT NULL COMMENT '负责人电话',
  `f_email` varchar(150) DEFAULT NULL COMMENT '负责人邮箱',
  `f_duties` varchar(200) DEFAULT NULL COMMENT '负责人职务',
  `f_phone` varchar(30) DEFAULT NULL COMMENT '负责人手机号',
  `f_fax` varchar(30) DEFAULT NULL COMMENT '负责人传真',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rtime` varchar(20) DEFAULT NULL COMMENT '认证时间',
  `english` varchar(1000) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_company
-- ----------------------------
INSERT INTO `wd_company` VALUES ('1', '7.2展馆测试', 'widuuweb', '/upload/20151014/561e14680f21e.jpg', '111111', '111111111', '11111111111', '2', '11111', '1111111', 'admin@widuu.com', '111', '13532653256', '1111111', '111', '1111111', 'admin@widuu.com', '111', '13523655236', '1111111', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('28', '测试企业1', '111', '/upload/20151021/562758c44316c.png', '11', '111', '111', '2', '111', '0316677891', 'admin@widuu.com', '111', '13832199087', '0132567788', 'xiaowei', '03178890567', 'admin@widuu.com', 'xiaowei', '13831652310', '03178890567', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('43', '江门市蒙德电气股份有限公司', '440700000022073', '/upload/20151109/564002aa72fc6.jpg', '江门市江海区永康路51号', '江门市江海区永康路51号', '生产及销售异步电机控制器各类自控电气', '2', '吴斌', '07503328088', 'tech@modrolelectric.com', '董事长', '13902880227', '07503336628', '邝春梅', '07503336649', 'kcm@modrolelectric.com', '销售助理', '13432253159', '07503336628', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('44', '浙江普敦电梯有限公司', '331081100185782', '/upload/20151109/56405a4393742.jpg', '浙江省温岭市新河镇披云路51号', '浙江省温岭市新河镇披云路51号', '电梯制造制造 安装 维修 改造', '2', '颜小斌', '81622992', '263024412@qq.com', '总经理', '13906568293', '86553098', '颜秀倬', '86553098', '727861987@qq.com', '董事长助理', '13566499318', '86553098', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('48', '上海深邦电气有限公司', '310229001244172', '/upload/20151110/5641464d816b6.jpg', '上海市青浦区赵巷镇沪青平公路2933弄17幢', '上海市青浦区赵巷镇沪青平公路2933弄17幢', '生产加工电气设备 机电设备 通讯设备 仪器仪表 电子产品及集成电路 五金交电的生产及安装 计算机硬件开发及技术服务 机电设备 电气设备专业领域内的技术开发 技术服务 从事货物及技术的进出口业务', '2', '高宏勋', '02169755901', '1556596628@qq.com', '总经理', '13817782293', '02169755902', '马学楠', '02153081546', '13818312122@163.com', '经理', '13818312122', '02153081546', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('47', '南京朗得科技有限公司', '320100400011620', '/upload/20151110/5641420600a12.jpg', '南京市江宁区麒麟工业集中区', '南京市江宁区麒麟工业园天泉路15号', '红外光幕 数码液晶显示屏以及各种电梯零配件等相关产品及技术服务 销售自产产品', '2', '周新华', '02584195316', 'xinhua.zhou@land-s-t.com', '总经理', '13505181412', '02584195316', '赵晓萍', '02585339991', 'land_s_t@hotmail.com', '销售', '13951770592', '02584195316', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('49', '南通迅达橡塑制造有限公司', '138565418', '/upload/20151110/56414a28a70cc.jpg', '江苏省海安县三塘工业园铭豪路33号', '江苏省海安县三塘工业园铭豪路33号', '橡胶塑料制品电梯梯平衡补偿链各类电梯用橡胶塑料及高分子材料产品', '2', '王晓红', '88836619', '1228997940@QQ.com', '董事长', '13083575587', '88895948', '王天国', '88836619', '1228997940@QQ.COM', '经理', '13773740801', '88895948', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('50', '佛山市伟邦电子科技有限公司', '440682000159503', '/upload/20151110/56414cc8c9e89.jpg', '佛山市南海区桂城深海路17号寒天科技成A区四楼一区二区', '佛山市南海区桂平路瀚天科技城A7号楼4楼', '研发制造电子电器智能电子洁具楼宇液晶广播设备电梯显示设备', '2', '潘伟欣', '81019933', 'elevator@wabon.com.cn', '总经理', '18923138219', '81019909', '杨慧珍', '81019911', 'mswabon@163.com', '总经理助理', '18144914192', '81019911', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('51', '吴江市聚力机械有限公司', '320584000219629', '/upload/20151110/564163623dcfa.jpg', '吴江汾湖经济开发区新黎路300号', '江苏省苏州市吴江区汾湖经济开发区新黎路北侧', '机械配件 电扶梯配件 五金配件生产 销售 模具设计 自营和代理各类商品及技术的进出口业务 智能立体停车设备生产 销售 ', '2', '李开林', '82880000', 'fys@cn-wjjf.com', '董事长', '13801553821', '82855668', '沈海峰', '82880000', 'fys@cn-wjjf.com', '市场营销副总', '13801553821', '82855668', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('52', '上海国泰电梯有限公司', '310229000147205', '/upload/20151110/564173c957bba.jpg', '上海市青浦区赵巷镇沪青平公路3271号', '上海市青浦区赵巷镇沪青平公路3271号', '液压电梯 防爆电梯 载货电梯 汽车电梯 乘客电梯的设计 制造 安装等', '2', '徐景', '02162208674', 'gtlift@163.com', '董事长', '13816807840', '02162208673', '许培玮', '02162208674', 'sales_01@gtlift.com', '销售经理', '13816597323', '02162208673', '0', null, null, null);
INSERT INTO `wd_company` VALUES ('53', '英盛达广州光电科技术有限公司', '440108400015135', '/upload/20151110/564172f82f68a.jpg', '广州罗岗经济开发区明华一街', '广州萝岗经济开发区明华一街', '电梯配件与光幕与夹绳器与家用梯等', '2', '王伟平', '82210795', 'kvin@dtscn.com', '总经理', '13812345678', '82215001', '张文', '82210795', '544956322@qq.com', '市场', '13925030020', '82215001', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('54', ' 上海国泰电梯有限公司', '310229000147205', '/upload/20151110/5641765c2072f.jpg', '上海市青浦区赵巷镇沪青平公路3271号', '上海市青浦区赵巷镇沪青平公路3271号', '各类电梯整机及部件的设计及制造', '2', '徐景', '02162208674', 'gtlift@126.com', '董事长', '13816807840', '02162208673', '许培玮', '02162208674', 'sales@gtlift.com', '经理', '13816597323', '02162208673', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('55', '荣尧泰上海贸易有限公司', '310115400247295', '/upload/20151110/564193c2c0383.jpg', '上海市浦东东方路877号嘉兴大厦1203室', '上海市浦东东方路877号嘉兴大厦1203室', '电子电器产品', '2', '张荣达', '02151863833', 'igsl@interdutch.com', '总监', '13671747225', '02151010168', '曾波', '02151863833', 'zengbo@interdutch.com', '销售经理', '13671747225', '02151010168', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('56', '江苏亨通线缆科技有限公司', '320584000114760', '/upload/20151110/564189ac130aa.jpg', '吴江区七都镇心田湾', '江苏省吴江区七都镇心田湾工业工业区亨通大道88号', '通信电缆 特种电缆 铁路信号电缆 铁路特种线缆 电气装备用电线电缆 电力电缆 铜丝 PE塑料带 钢带 铝带 通信设备及相关配件生产 销售 以上相关产品研发 自营和代理各类商品及技术的进出口业务 ', '2', '陆春良', '63800357', 'lucl@htgd.com.cn', '总经理', '15862558896', '63801906', '宋志斌', '63802613', 'songzb@htgd.com.cn', '主任', '18601459566', '63801906', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('57', '湖州克尼姆电梯部件有限公司', '330504000007196', '/upload/20151111/56428f9bdd54c.jpg', '湖州市南浔区旧錧镇外环西路373号', '湖州市南浔区旧錧镇外环西路373号', '电梯部件', '2', '陈建清', '05723914200', 'knm@chinaknm.com', '总经理', '13505725582', '05723914900', '陈建清', '05723914200', 'knm@chinaknm.com', '总经理', '13505725582', '05723914900', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('58', '拉法特电机苏州有限公司', '320500400042511', '/upload/20151111/5642ab0ef0a72.jpg', '苏州市吴中经济开发区旺山工业园天鹅荡路南侧', '苏州市吴中区天鹅荡路201号3号厂', '伺服电机高性能电机电梯曳引轮', '2', 'LUCA TREVISILO', '66870618', 'daisy.shi@lafert.com', '企业法人', '18915554260', '66870718', '史守云', '66870618', 'daisy.shi@lafert.com', '销售客服', '18915554260', '66870718', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('59', '丹纳赫西特传感工业控制天津有限公司', '120000400080363', '/upload/20151111/5642b32c6f903.png', '天津市开发区微电子工业区微五路28号', '天津市西青区微电子工业园微五路28号', '生产销售各种压力称重液位流量温湿度传感器', '2', '', '', '', '', '', '', '王萌', '02220390959', 'meng.wang@danaher.com', '市场', '13702146206', '02223900710', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('60', '大连徕特光电精密仪器有限公司', '210241000042289', '/upload/20151111/5642b79d75530.jpg', '辽宁省大连经济技术开发区龙泉街8号', '辽宁省大连经济技术开发区龙泉街8号', '机电设备压力容器特检仪器设备工业测量仪器设备的研发生产销售检测技术咨询服务国内一般贸易', '2', '胡世章', '87509660', '492956879@qq.com', '法人', '13591746600', '87509806', '崔论华', '87509660', '492956879@qq.com', '销售', '15840820302', '87509806', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('61', '宁波世裕金属制品有限公司', '330200400002670', '/upload/20151111/5642d74b12c04.jpg', '浙江省宁海县长街镇新城村', '浙江省宁海县世贸中心1101', '不锈钢及其他材料的装饰板材', '2', '王洁巍', '57465333837', 'william@nbpolaris.com', '总经理', '13586753608', '57465333888', '王全洪', '57465333832', 'wqhhong@nbpolaris.com', '销售经理', '13685877745', '57465333888', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('62', '上海康驰机电设备有限公司', '310228000502482', '/upload/20151111/5642f25b5451d.jpg', '上海市奉贤区奉浦大道1599号', '上海市奉贤区奉浦大道1599号 上海交通大学国家大学科技园', '电梯制造与安装维修自动化控制设备集成', '2', '马健勇', '02167156358', 'mjy@kangchish.com', '总经理', '13817633206', '02167156652', '陈玲琴', '02167158909', 'clq@kangchish.com', '企业管理办公室', '13918200352', '02167156652', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('63', '苏州烨炜上品电气有限公司', '320583000547983', '/upload/20151112/5643e54335378.JPG', '江苏省昆山市陆家镇仕泰隆国际模具城', '江苏省昆山市陆家镇仕泰隆国际模具城', '电梯停电救援装置 电动松闸 能源回馈装置 抱闸电源 稳压器', '2', '孙金玲', '50356840', '375003713@qq.com', '销售', '13776337820', '57289418', '孙金玲', '50356840', '375003713@qq.com', '销售', '13776337820', '57289418', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('64', '江门市骏达光电科技有限公司', '440700000022985', '/upload/20151112/5643fe21b5ec6.jpg', '江门市高新东路19号', '江门市高新东路19号', '生产销售 电子产品及配件 普通机械及配件 模具 ', '2', '吴艳媚', '07503410918', 'bodaled@vip.163.com', '经理', '13725908918', '07503773899', '叶红萍', '07503410918', 'bodaled@vip.163.com', '经理', '13802604016', '07503773899', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('65', '北京捷安电梯部件有限公司', '110000410176034', '/upload/20151112/564406c061b6a.jpg', '北京市西城区阜外大街2号万通新世界广场B座1512', '北京市西城区阜外大街2号万通新世界广场B座1512', '液压电梯部件', '2', 'Marco Martini', '023390222', 'gmv@gmv.com.cn', '总经理', '13717632650', '023390379', 'Amanda', '01068578812', 'xiaolong.jia@163.com', '经理', '13717632650', '01068578709', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('66', '扬州欧柯机械有限公司', '321081000125107', '/upload/20151112/5644337526760.jpg', '仪征陈集镇汪云村', '仪征陈集镇汪云村组', '电梯部件 电梯尼龙轮 对重轮 轿顶轮 导向轮等 以及一些零部件', '2', '王君卿', '51483871306', '13952797620@163.com', '总经理', '13952797620', '51483870077', '唐培培', '51483871306', 'tangpei@yzokjx.com', '经理', '18952506561', '51483870077', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('67', '张家港市泓晟电梯配件制造有限公司', '320582000170427', '/upload/20151112/564457c32d604.jpg', '张家港市金港镇长江东路73号', '张家港市金港镇长江东路73号', '电梯零部件购销', '2', '陆婉琴', '51258728918', 'hongsheng@hongsheng-liftrail.com', '总经理', '13701563322', '51258728911', '周镔', '51258728919', 'andy@hongsheng-liftrail.com', '销售经理', '13915686000', '51258728911', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('68', '河北轻工进出口集团股份有限公司', '130000000018893', '/upload/20151112/564459f645721.jpg', '石家庄市友谊北大街钟久路26号', '石家庄市友谊北大街钟久路26号', '导靴 油壶 绳头组合 压导板 层门装置 电梯配重 电梯用各种轮子 铸件 冲压焊接件 锻造件等零配件', '2', '孙新强', '87732344', 'shangxg@china-heli.com', '总经理', '13073189777', '87727384', '尚晓刚', '87732344', 'shangxg@china-heli.com', '经理', '13073189777', '87727384', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('69', '广州佳海机电设备有限公司', '440106000591821', '/upload/20151112/56446478c87b6.jpg', '广州市天河区珠江新城星辰大厦东塔1006单元', '广州市天河区珠江新城星辰大厦东塔1006室', '批发业\r\n', '2', '徐桂成', '02037591212', 'sales@jhm-bearing.com', '总经理', '13825037723', '02037591210', '陈映华', '02037591211', 'sales@jhm-bearing.com', '销售助理', '13929588745', '02037591210', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('70', '宁津县宏远电梯配件厂', '371422600197805', '/upload/20151113/564530da8d921.jpg', '山东省宁津县光明开发区48号', '山东省宁津县光明开发区48号', '电梯配件制造加工销售', '2', '王玉垒', '05345817269', 'hongyuandt@126.com', '总经理', '13625343028', '5813421', '王玉垒', '05345817269', 'hongyuandt@126.com', '总经理', '13625343028', '5813421', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('80', '常州富士电梯有限公司', '320481000103350', '/upload/20151113/56454f5c319b6.png', '溧阳市经济开发区北山工业园广惠西路12号', '溧阳市经济开发区北山工业园广惠西路12号', '电梯 自动扶梯 自动人行道制造 销售 安装 改造 维修 保养 装修装饰 电梯配件加工 销售 电梯智能化设备安装 依法须经批准的项目 经相关部门批准后方可开展经营活动', '2', '杨志清', '87885666', 'changfudianti@163.com', '董事长', '18915056666', '87875655', '杨玲', '87877002', '121132591@qq.com', '办公室主任', '18118367288', '87875655', '0', null, null, null);
INSERT INTO `wd_company` VALUES ('72', '宣城市华菱精工科技有限公司', '342522000000745', '/upload/20151113/564532f5d5174.jpg', '安徽省郎溪县梅渚镇郎梅路', '安徽省郎溪县梅渚镇郎梅路', '电梯配件研发、制造和销售；钢结构件，新材料开发；电梯配件以及钢材、矿石等电梯配件生产所需原材料购销及储运服务，电梯的销售，安装及维护、项目投资管理；进出口贸易', '2', '黄业华', '', 'hyh@xchualing.com', '董事长', '13801491312', '', '黄蓉', '0519-80983318', 'hr@xchualing.com', '销售经理', '138610900022', '', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('73', '苏州中臻机电设备有限公司', '320507000129419', '/upload/20151113/56453d921ce77.jpg', '江苏省苏州市工业园区民胜路26号', '江苏省苏州市工业园区民胜路26号', '销售电梯及相关零配件', '2', '徐芳', '51269223528', 'fanny@ecs-parts.com', '企业法人', '18626272666', '51269223538', '朱蔓', '51269223528', 'mandy@ecs-parts.com', '经理', '13952488203', '51269223538', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('74', '上海倚云电子科技有限公司', '310116002222699', '/upload/20151113/5645478f52582.jpg', '上海市松江区中山街道梅家浜路209.309号9栋底层998室', '上海市松江区梅家板路209弄918号', '从事 通讯 机电 电子产品电梯零部件 电梯技术支持等等', '2', '王爽', '02167847321', '121332660@qq.com', '法人', '18101756228', '02167847321', '王震', '02154779270', '491318103@qq.com', '经理', '13166223030', '02154779270', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('76', '宁波经济技术开发区昊鸿电子有限公司', '330206000095633', '/upload/20151113/56454c6647282.jpg', '宁波市北仑区南海路45号1幢4层', '宁波市北仑区南海路45号1幢4层', '电梯停电自动应急平层装置\r\n电梯电动松闸装置\r\n电梯专用环形控制变压器\r\n波纹电阻及铝壳电阻\r\n交直流电抗器\r\n变频器制动单元及能量回馈单元', '2', '林春', '86996938', '1161481908@qq.com', '董事长', '13957439890', '86996932', '林春', '86996938', '1161481908@qq.com', '董事长', '13957439890', '86996932', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('77', '北京泽信沃尔国际贸易有限公司', '110105007404682', '/upload/20151113/56454bd94ca9b.jpg', '北京市朝阳区东风乡将台洼村甲188号', '北京市朝阳区青年路华纺易城14号楼5单元1201', '货物进出口 代理进出口 技术进出口 销售机械设备 五金交电', '2', '陈峻', '85850892', 'june@cnzztools.com', '总经理', '13701030665', '85820895', '谈晓楠', '85576815', 'txn@cnzxworld.com', '行政', '13718975611', '85820895', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('78', '苏州利莱博电梯部件有限公司', '320584000247961', '/upload/20151113/56454e1284ab3.jpg', '苏州市吴江市汾湖经济开发区汾湖大道887号', '苏州市吴江市汾湖经济开发区汾湖大道887号', '电梯配件 电子产品专业领域内的技术服务 技术开发 技术咨询 技术转让 ', '2', '季红', '63282602', '1049446192@qq.com', '总经理', '13311961698', '63282900', '季华', '63282610', '1049446192@qq.com', '部门经理', '13052053213', '63282900', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('79', '宁波华兴伟业电子科技开发有限公司', '330203000123716', '/upload/20151113/56454e0178425.jpg', '宁波市鄞州区机场路3388号A座3F', '宁波市鄞州区机场路3388号A座3F', '电梯门机系统双稳态开关限位开关接近开关及相关传感器', '2', '杨国胜', '87261974', 'hxwy@nbhxwy.com', '总经理', '13777126569', '87261504', '曹飞航', '87261974', 'cao_fh@nbhxwy.com', '项目经理', '18058577173', '87261504', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('81', '德州市德威利电梯有限公司', '371422228004270', '/upload/20151113/5645503a3294c.jpg', '山东省宁津县柴胡店镇光明安116号', '北京市丰台区宋庄路八号院一层', '电梯配件', '2', '王树财', '5811159', 'wsc@dwl888.com', '总经理', '13505446679', '5811159', '张瑞芳', '67619860', '2408152816@qq.com', '采购部经理', '13260107108', '67619860', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('82', '宁波高新区拓远进出口有限公司', '330215000054011', '/upload/20151113/564555b3d81fa.jpg', '宁波高新区江南路586号918室', '宁波高新区江南路586号918室', '自营或代理各种电梯零部件的进出口业务', '2', '奚丽琴', '27789758', 'alina@chinatuoyuan.com', '法人', '13906557307', '27789759', '奚丽玛', '27789758', 'alma@chinatuoyuan.com', '销售经理', '15968908863', '27789759', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('83', '杭州方星电子有限公司', '330100000108855', '/upload/20151113/564556e857ef7.jpg', '杭州市西湖区西斗门高新开发区工业园第六层', '057181957790', '电梯应急疏散装置', '2', '李淑仪', '81957790', 'bin.tian@funstar-tech.com', '法人代表', '13306536599', '81957768', '田滨', '81957790', 'bin.tian@funstar-tech.com', '销售经理', '18857169687', '81957768', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('84', '常州富士电梯有限公司.', '320481000103350', '/upload/20151113/56455716777f8.png', '江苏省溧阳市经济开发区北山工业园广惠西路12号', '江苏省溧阳市经济开发区北山工业园广惠西路12号', '电梯  自动扶梯 自动人行道制造 销售 安装 改造 维修 保养  装修装饰 电梯配件加工 销售 电梯智能化设备安装  依法须经批准的项目 经相关部门批准后方可开民经营活动 ', '2', '杨志清', '87885666', 'changfudianti@163.com', '董事长', '18915056666', '87875655', '杨玲', '87877002', '121132591@qq.com', '办公室主任', '18118367288', '87875655', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('85', '上海稳利达科技股份有限公司', '310000000107628', '/upload/20151113/5645592caa1e3.jpg', '上海市嘉定区高石公路2439号11幢', '上海市嘉定区高石公路2439号', '从事自动化设备技术，环保技术，新能源技术领域的技术服务。技术开发，技术咨询，技术转让。光伏逆变器，风电变流器，稳压器，平移自动门，输配电及控制设备的生产与销售。低压电源，电源设备，门控设备，通讯设备，节能设备的研发与销售。合同能源管理，从事货物和技术。', '2', '张滔慧', '31229566', 'tech@wenlida.com', '总经理', '13901782472', '31229566', '杜子君', '31116852', '2894211814@qq.com', '文员', '18321630810', '31116852', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('86', '江苏帝达贝轴承有限公司', '320200400031860', '/upload/20151113/5645633b0adec.jpg', '江苏省锡山经济开发区蓉洋一路8号', '江苏省锡山经济开发区蓉洋一路8号', '轴承', '2', 'SPROSON PETER MICHAEL', '61138000', 'peter.sproson@timken.com', 'President China', '18616978800', '61138001', '钱莉君', '85620688', 'qianlj@twb.com.cn', '市场专员', '15961866233', '85629206', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('87', '温州西诺克进出口有限公司', '330382000129635', '/upload/20151113/564561f1658c9.jpg', '浙江省乐清市柳市镇翔金苑大厦A1502', '浙江省乐清市柳市镇翔金苑大厦A1502', '电梯按钮，控制柜', '2', '王磊', '57761730881', 'pan@sinoamigo.net', '法人', '13968811424', '57761730882', '张雯亚', '57761730881', 'sales@sinoamigo.net', '出口销售', '15157770300', '57761730882', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('88', '溧阳宏达电梯培训有限公司', '320481000069128', '/upload/20151113/56457d844a1b8.jpg', '溧阳市别桥镇兴城西路167号', '溧阳市别桥镇兴城西路167号', '电梯作业培训、电梯安装技能培训、商务培训、企业管理培训，电梯及自动扶梯相关技术咨询、技术服务，管理咨询，其他人力资源服务，会议展览服务，标准化厂房的建设及租赁。', '2', '季爱民', '68691265', '624916696@qq.com', '董事长', '13801497755', '68691265', '姜振钢', '68691266', '624916696@qq.com', '总经理', '13814767650', '68691265', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('89', '湖州东塑电梯配件有限公司', '330504000021512', '/upload/20151113/564583fe06117.jpg', '浙江省湖州市南浔镇经济开发区人瑞路1858号', '浙江省湖州市南浔镇经济开发区人瑞路1858号', '全国', '2', '丁致雅', '05723789198', 'dzy@hzdongsu.com', '总经理', '18857278837', '05723789197', '张旦', '05723789198', 'zd@hzdongsu.com', '销售', '18857278823', '05723789197', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('90', '张家港市新精工轴承机电有限公司', '32058200049778', '/upload/20151113/564583132104b.jpg', '张家港市南二环梁丰五金机电城11幢', '张家港市南二环梁丰五金机电城11幢', '轴承、机电产品及通用零部件、电器、机械及器材、气动液压元件、低压电器、管道、阀门、标准件的批发及零售；自营和代理各类商品及技术的进出口业务（国家限定企业经营或禁止进出口的商品及技术除外）', '2', '刘家勤', '58223856', 'aj13606228861@163.com', '总经理', '13606228861', '56916999', '仲桂华', '58222225', 'xjg58150853@163.com', '经理', '13773284366', '58130853', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('91', '依合斯电梯扶手上海有限公司', '1113266', '/upload/20151113/564584f0385e1.jpg', '嘉定区马陆镇陈宝路58号215座', '嘉定区马陆镇陈宝路58号215座', '电梯扶手带、滚轮、安全刷及相关备品备件和服务。', '2', 'Ron Ball', '02169153031', 'ron.ball@ehc-global.com', '总经理', '15618390884', '02169153231', '单炜', '02169158236', 'wei.shan@ehc-global.com', '销售总监', '13901879257', '02169153231', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('92', '深圳市互联创科技有限公司', '440306105495919', '/upload/20151113/564584a6cf1e0.jpg', '深圳市宝安区福永街道怀德翠海工业园一区轻工厂房第10栋第五层', '深圳市宝安区福永镇塘尾翠海工业区10栋5楼', '楼宇对讲设备、调频设备、电梯远程监控设备的研发和销售；无线通讯产品、电子产品、电梯对讲机的研发、销售及系统集成；国内贸易，货物及技术进出口', '2', '邱利斯', '75523091836', '4008007679@qq.com', '法人', '13392801857', '75527389078', '刘姗姗', '75523091836', '2853817835@qq.com', '市场部经理', '13823135845', '75527389078', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('93', '江苏和亿机电科技有限公司', '320211000129748', '/upload/20151113/564587364536f.JPG', '无锡蠡园开发区滴翠路100号五号楼四楼东', '无锡蠡园开发区滴翠路100号五号楼四楼东', '自动化成套控制系统的研发、设计、制造、安装、调试及维修保养；工业自动控制系统工程、输送机械、立体仓库的安装、销售、技术服务、技术转让；通用设备、电气机械及器材、仪器仪表、电子产品的销售、维修；电梯的安装及维护保养；电力设备、电气机械及器材的技术开发、技术服务、技术转让；节能技术的技术推广、技术咨询、技术服务、技术转让；合同能源管理。', '2', '郭永贵', '85572000', 'guoyonggui@cngongkong.com', '董事长', '13218856888', '85572003', '姚慧', '85572000', 'yaohui@cngongkong.com', '企宣', '18601558700', '85572003', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('94', '江苏锐腾科技有限公司', '320211000172608', '/upload/20151113/564589ac3f551.jpg', '江苏省无锡市惠山区玉祁工业园北工二路', '江苏省无锡市惠山区玉祁工业园北工二路', '安装监视报警器材、电梯配件及电梯智能控制系统的研发、制作、销售及安装；弱电工程的施工：计算机系统集成；计算机软硬件的销售、技术服务和技术开发；电梯装潢服务与电梯销售；钣金件的制造加工与销售。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '张琪', '51068787001', '1768109644@qq.com', '董事长', '15895305858', '51068787001', '曹扣琴', '51068787001', '3229705684@qq.com', '总经理助理', '13961666984', '51068787001', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('95', '天津鹭凯六开电梯配套设备有限公司', '120110000228179', '/upload/20151113/56458fe7ddbb4.jpg', '天津市东丽区东丽开发区七经路8号', '天津市东丽区东丽开发区七经路8号', '电梯配套设备、电梯配件、电器开关控制设备 电气设备配件 通用机械设备（涉及特种设备的经特种设备安全监察部门许可后经营）制造；机械设备 电子产品批发兼零售；从事国家法律规定允许经营的进出口业务；劳务服务（涉外除外）。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '程兆芹', '24985340', 'tjlk1@sina.com', '董事长', '13820173212', '86320240', '陈亮', '86323817', 'tjlkjs@sina.com', '技术部副部长', '13920345266', '86322264', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('96', '浙江英洛华磁业有限公司', '330783000050546', '/upload/20151113/56459212015d1.jpg', '东阳市横店镇电子工业区', '东阳市横店镇电子工业区', '钕铁硼磁材，粉末冶金，烧结钕铁硼，粘结钕铁硼，', '2', '魏中华', '57986563999', 'eric.wei@magnet-innuovo.com', '董事长', '13957132009', '57986563956', '郭宇凌', '57986563919', 'gyl@innuovo.com', '科长', '13967999316', '57986563956', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('97', '北京晶科华盛科技有限公司', '110108015048121', '/upload/20151113/5645945f818bd.jpg', '北京市海淀区上地信息路12号二层A205室', '北京市海淀区上地信息路12号二层A205室', '技术开发、技术推广、技术转让、技术咨询、技术服务、销售自行开发后的产品、机械设备、五金交电、电子产品、通讯设备：维修办公设备；维修仪表仪器', '2', '李华', '02139522232', '2217335612@qq.com', '总经理', '18701016307', '02152358556', '陶伟国', '02139522232', '1142003540@qq.com', '副总经理', '13311820618', '02152358556', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('98', '苏州中远电梯有限公司', '320585000020398', '/upload/20151113/5645f02ed1d6e.jpg', '太仓市浮桥镇大宅村', '江苏省太仓市港口开发区浮桥镇南环西路6号', '生产、加工、销售电梯、电梯导轨及部件', '2', '夏高瑜', '51253788988', 'xgy@suzhouzoyo.com', '总经理', '13338665995', '51253788958', '张秀', '51253785607', 'zx@suzhouzoyo.com', '技术部经理', '15900955248', '51253788958', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('99', '天津开发区通德科贸有限公司', '120191000079181', '/upload/20151114/5646b7452f6ac.JPG', '天津开发区黄海路16号', '天津市南开区南开工业园罗平道7号鑫茂华创大厦4楼L单元', '机电设备', '2', '陈隆华', '02223615578', 'tong_de@263.net', '经理', '13803018802', '02227407960', '侯素娟', '02223615578', 'tong_de@263.net', '销售助理', '13821920016', '02227407960', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('100', '浙江台玖精密机械有限公司', '330400400025211', '/upload/20151114/5646ecfc3b904.jpg', '浙江省桐乡市梧桐街道凤翔东路349号', '浙江省桐乡市梧桐街道凤翔东路349号', '齿轮刀具,齿轮，传动和驱动部件，减速机，齿轮磨床，数控机床伺服装置的制造，自产产品的销售。（上述经营范围不含国家规定禁止，限制外商投资和许可经营的项目）', '2', '陈金山', '88081238639', 'sales08@essor-cn.com', '董事长', '15905719022', '88081993', '刘楠楠', '88081238638', 'sales06@essor-cn.com', '销售助理', '18868363355', '88080638', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('101', '宁波市北仑欣凌电梯配件厂', '330206000018476', '/upload/20151114/564711b7b4199.jpg', '宁波市北仑区春晓镇三山凤山工业区', '宁波市北仑区春晓镇三山凤山工业区', '电梯配件，塑料制品，五金件', '2', '邵召周', '86095018', 'nb-xinling@163.com', '董事长', '13606844775', '86095886', '邵枭鹏', '86095018', 'nb-xinling@163.com', '经理', '13606844775', '86095886', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('102', '秦皇岛华鑫科技有限公司', '130301000040038', '/upload/20151116/564921af12d1b.JPG', '秦皇岛经济技术开发区泰山路336号', '秦皇岛经济技术开发区区泰山路336号', '电子产品、传感技术产品、自动化控制设备的戌、装配、销售及技术咨询、技术服务；货物及技术的进出口（须国家专项审批的除外）', '2', '张伟', '03358511959', 'hxkj0335@vip.163.com', '总经理', '13833580045', '03357929321', '张松', '03358511959', 'hxkj0335@vip.163.com', '总经理', '13833580040', '03357929321', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('103', '浙江宝鸿不锈钢有限公司', '330500000024282', '/upload/20151116/56492ac714b24.jpg', '浙江省湖州市吴兴区中横港路', '浙江省湖州市吴兴区中横港路', '不锈钢装饰板', '2', '王骏', '05722568530', 'shenchengyi@chinabaosco.com', '总经理', '13567247697', '05722568282', '沈承逸', '05722568530', 'shenchengyi@chinabaosco.com', '职员', '13567247697', '05722568282', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('104', '博尔豪夫紧固件无锡有限公司', '320200400020460', '/upload/20151116/56492ed9dbadc.jpg', '无锡国家高新技术产业开发区宝德工业园', '江苏省无锡市新区新梅路55号宝德工业园', '设计生产汽车专用紧固件；从事上述产品及通用设备的批发、佣金代理；进出口业务；提供商务咨询和技术服务。', '2', 'Sven Ammer', '66003524', 'gji@bollhoff-china.com', '东亚地区最高执行长官 董事总经理', '18505707002', '88651615', '纪庆燕', '66003524', 'gji@bollhoff-china.com', 'CEO高级助理', '18505107002', '88651615', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('105', '天水二一三电器有限公司', '620500000001094', '/upload/20151116/564949ee2f29c.jpg', '天水市秦州区赤峪路35号', '天水市秦州区赤峪路35号', '交直流接触器、断路器，智能型民用仪表及低压开关柜的研发、制造、销售。', '2', '何建文', '09388364001', 'zjlbgs@ts213.com.cn', '总经理', '13993891320', '09388365496', '马永宁', '09388350610', 'xsyxglb@ts213.com.cn', '部长', '13993809110', '09388350610', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('106', '张家港美斐电梯导轨有限公司', '320582000266479', '/upload/20151116/564966041d8b0.jpg', '江苏省张家港市杨舍镇东莱庆东村', '江苏省张家港市杨舍镇东莱东七公路 美斐电梯', '电梯导轨加工；电梯、电梯配件、机械设备、电子产品、日用百货购销；自营和代理各类商品及技术的进出口业务', '2', '王健', '58159822', 'info@mofeelelevator.com', '总经理', '13962266225', '58159122', '王健', '58159822', '5265500@qq.com', '总经理', '13962266225', '58159122', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('107', '米纳斯达电梯张家港有限公司', '320582000358883', '/upload/20151116/56496df5deb34.jpg', '江苏省张家港市杨舍镇东莱村', '江苏省张家港市杨舍镇东莱东七公路', '电梯、机械设备、电子产品、日用百货购销；电梯设计、维修、保养；电梯部件的制造、加工、销售；自营和代理各类商品及技术的进出口业务', '2', '陈勇', '58202298', 'info@minastar-elevator.com', '副总经理', '13921972727', '58202296', '王健', '58159822', '5265500@qq.com', '总经理', '13962266225', '58159122', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('108', '天津市第二继电器厂', '120101000080360', '/upload/20151116/5649770833553.JPG', '天津市和平区绵阳道1号', '天津市和平区绵阳道1号', '接触器', '2', '刘清兰', '27811931', '983013173@qq.com', '董事长', '13920817055', '27812161', '柴国红', '27812161', '983013173@qq.com', '办公室副主任', '15522846267', '27812161', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('109', '柳州汉华驱动设备有限公司', '450207200000583', '/upload/20151116/5649889d1bf85.jpg', '柳州市阳和工业新区', '静兰路28号', '生产、销售电梯曳引机、扶梯驱动主机、电梯部件产品、驱动设备产品、电梯主机维修、减速箱零部件、货物进出口业务。', '2', '黄玲', '07723591531', 'zhongxw_hanhua@163.com', '懂事长', '13907726965', '0772391590', '林霞', '07723163511', 'linx_hanhua@163.com', '销售商务', '18977284981', '07723591590', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('110', '上海川阅电梯装潢有限公司', '310120002801853', '/upload/20151116/564998bddab49.jpg', '上海市奉贤区金钱公路818号', '上海市奉贤区金钱公路818号', '电梯装潢，机械设备及配件加工、批发、零售', '2', '朱从峰', '57480187', '2646371291@qq.com', '总经理', '13524196601', '57480197', '朱从峰', '57480187', '2646371291@qq.com', '总经理', '13524196601', '57480197', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('111', '深圳市盈昇机电有限公司', '440301105163633', '/upload/20151117/564a80a2b47d5.JPG', '深圳市龙岗区坂田街道日辉台花园7栋商铺D113', '深圳市龙岗区坂田街道日辉台花园7栋商铺D113', '机电设备，塑胶，五金，电子产品的技术开发与购销。', '2', '周亚丽', '89398352', '848687907@qq.com', '总经理', '18926421249', '89398352', '周亚玲', '89398352', '848687907@qq.com', '经理', '18926421249', '89398352', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('112', '北京市京南方装饰工程有限公司', '110105003766822', '/upload/20151117/564a907db13ff.jpg', '北京市朝阳区十八里店乡十八里店村101号', '北京市朝阳区十八里店乡十八里店村101号', '专业承包；加工制作不锈钢制品；销售金属材料、建筑材料；货物进出口；', '2', '林国栋', '87305088', 'jnfyxzx@126.com', '总经理', '13901036771', '87305088', '宋永兰', '87305088', 'jnfyxzx@126.com', '主管', '18201387824', '87303935', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('113', '张家港市通达电梯装璜有限公司', '320582000041672', '/upload/20151117/564aac87e8ddf.jpg', '张家港市凤凰镇港口新桥村', '江苏省张家港市凤凰镇凤恬路', '电梯装璜配件,电气材料,电梯零部件制造,销售,五金加工,', '2', '徐根元', '51258342830', 'xgy68358@163.com', '董事长', '13915686185', '51258480684', '吴卫标', '51258342830', 'wwb0670@163.com', '副总经理', '13506220670', '51258480684', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('114', '约翰内斯海德汉博士中国有限公司', '911100007481029048', '/upload/20151117/564aca9daf6d6.jpg', '北京市顺义区天竺空港工业区A区天纬三街6号', '北京市顺义区天竺空港工业区A区天纬三街6号', '生产光学电子产品。', '2', '贾江扬', '8420000', 'sales@heidenhain.com.cn', '总经理', '18611309120', '80420010', '韩炜', '80420079', 'hanwei@heidenhain.com.cn', '公共事务主管', '18611309120', '80420080', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('115', '深圳市大帝金茂实业有限公司', '44030113415445', '/upload/20151118/564bc7854084a.jpg', '深圳市南山区西丽镇牛成村第二工业区三栋2楼', '深圳市南山区西丽镇牛成村第二工业区三栋2楼', '塑胶模具 注塑 LED背光源  专业定制LCD LCM液晶显示模块\r\n以及TFT彩屏', '2', '王龙华', '86181392', 'wanglixin@ddjmlcm.com', '总经理', '13902988028', '86181393', '王利鑫', '86181392', 'wanglixin@ddjmlcm.com', '业务员', '15220185799', '86181393', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('116', '重庆威斯特电梯有限公司', '500000400026929', '/upload/20151118/564bf73b02466.jpg', '重庆市铜梁区金龙工业园区金山大道1号', '重庆市铜梁区金龙工业园区金山大道1号', '制造：乘客电梯、载货电梯、自动扶梯、自动人行道及相关零部件，销售公司自产产品：安装、改造、维修：乘客电梯、杂物电梯、载货电梯、自动扶梯。', '2', '吴优良', '02363876703', 'wuyouliang@cqwester.com', '董事长', '13908352890', '02363782452', '李特勒', '02363876672', 'litele@163.com', '董事长助理', '13640537137', '02363782452', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('117', '无锡欧先纳精密科技有限公司', '320206000226116', '/upload/20151118/564c1c1557dd1.jpg', '无锡市新区金城大厦', '无锡新区硕放', '精密仪器，通用设备及配件，合金新材料的研发，技术服务，技术咨询及技术转让等', '2', '耿晓美', '0510-83591980', 'yanqin.yu@blue-ocs.com', '法人', '13812188553', '0510-83591980', '王安', '0510-83591980', 'crystal-yyq@outlook.com', '总经理', '18151719188', '0510-83591980', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('118', '深圳来邦科技有限公司', '91440300761992788L', '/upload/20151118/564c3076e6b9d.jpg', '深圳市龙岗区坂田街道马安堂社区龙景工业园G座4楼', '深圳市深南大道7008号阳光高尔夫大厦24楼', '电子产品、通讯产品的研发生产与销售', '2', '潘晓亭', '82873294', 'sms@lonbon.com', '总经理', '13926567476', '82873300', '敖懿仙', '83005517', '958637616@qq.com', '展会负责人', '13418586750', '82873300', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('119', '湖州欧利亚机电科技有限公司', '330500400018184', '/upload/20151118/564c342d26a72.jpg', '湖州市织里镇晟舍新街东路558号', '湖州市织里镇晟舍新街东路558号', '电梯的研发。超静音导轨及安全门控系统的生产，销售自产产品。', '2', '施建峰', '3212789', 'oria@zjoria.com', '董事长', '18605727888', '3257952', '刘杰', '3212789', 'oria@zjoria.com', '行政主管', '18657236626', '3257952', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('120', 'AKE TECHNOLOGY COMPANY LIMITED', '6488766800006158', '/upload/20151118/564c396f8270f.jpg', '香港', '浙江杭州江干区城星路尊宝大厦银尊1812', '电梯配件', '2', 'Hasan Gonluhos', '86089501', 'hgonluhos@htaigrup.com', 'GM', '18802033377', '86089501', '章增卫', '86089501', 'adam@htaigrup.com', '总经理助理', '15075022040', '86089501', '0', null, null, null);
INSERT INTO `wd_company` VALUES ('127', '上海沃证机电技术服务有限公司', '310230000302165', '/upload/20151119/564d1cde58cce.jpg', '上海市崇明县堡镇镇堡港路109号8幢122室', '上海市长宁区天山路641号4号楼211室', '机电产品的开发、销售及技术服务，产品认证技术咨询服务，产品测试服务，质量体系认证咨询，企业管理咨询，商务信息咨询，投资咨询，从事货物及技术的进出口业务。', '2', '高波', '021-51088618', 'kelvin@via-cert.com', '总经理', '18521304433', '021-62289502', '施小姐', '021-51088618-829', 'jane@via-cert.com', '助理', '13564534227', '021-62289502', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('126', '无锡市滚动轴承有限公司', '32021300006166', '/upload/20151119/564d1ad5e358c.JPG', '无锡市新区长江东路219号', '无锡市新区长江东路219号', '轴承，电子器件的制造，加工，修理，销售，经营外贸部批准的进出口业务', '2', '韩俊锡', '51085310380', 'patrick@wgbbearings.com', '总经理', '13961862500', '51085311720', '梁盼', '51085310380', 'baolongzi101@163.com', '销售总经理', '13961819368', '51085311720', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('125', '温州申嘉电梯科技有限公司', '330382000321320', '/upload/20151119/564d15ffa5c7d.jpg', '浙江省乐清市乐成街道湖上岙村', '浙江省乐清市乐成街道湖上岙村', '电梯配件 五金电器 成套设备研发 制造 加工 销售 电梯维修服务', '2', '陈敬国', '57761521087', 'shngas@163.com', '董事长', '13600651777', '57762562878', '陈鹏武', '57761521087', 'shngas@163.com', '经理', '13353378882', '57762562878', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('124', '武汉市世纪菱达国际贸易有限公司', '420102000128347', '/upload/20151118/564c4bca1dd1b.JPG', '武汉市江岸区江大路39号14栋3单元1303室', '武汉市江岸区江大路39号14栋3单元1303室', '自营和代理各类商品及技术的进出口业务', '2', '胡毅刚', '02782629356', 'david@elevator-components.cn', '总经理', '13917178447', '02782629156', '彭冲', '02120981776', 'mason@elevator-components.cn', '销售经理', '13774204783', '02120981780', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('128', '宁波同创强磁材料有限公司', '330212000023299', '/upload/20151119/564d7615b4a01.jpg', '宁波市望春工业园区科欣路318号', '宁波是望春工业园区科欣路318号', '烧结钕铁硼及磁性器件', '2', '赖岳卫', '88192731', 'tc@ndmagnets.com', '董事长', '13967881507', '88089787', '张子霞', '88192731', 'jason@ndmagnets.com', '销售部副经理', '13967881507', '88089789', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('129', '欧姆尼机电科技昆山有限公司', '320583400038605', '/upload/20151119/564d80b661b5c.gif', '江苏省昆山市郁金香路369号', '江苏省昆山市郁金香路369号', '曳引机,油压缓冲器，电梯滚轮导靴等', '2', '陈韵如', '51282625988', 'km_chien@chuanyaogroup.com.cn', '董事长', '13776317969', '51282627779', '周彦伟', '51282625988', 'david.zhou@chuanyaogroup.com.cn', '销售经理', '13913229913', '51282627779', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('130', '宁波市科耐国际贸易有限公司', '913302125839840045', '/upload/20151119/564d83b210b09.jpg', '宁波市鄞州区城南商务大厦A幢2201 1室', '宁波市鄞州区城南商务大厦A幢2201 1室', '电梯、扶梯整机 ，及电扶梯配件', '2', '周巧圆', '57488243599', 'loiese@cnescalatorparts.com', '总经理', '13586848817', '57489028502', '娄芳芳', '57489028501', 'esther@conaiescalator.com', '业务员', '15867372127', '57489028501', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('131', '江阴长江电器有限公司', '320281000187117', '/upload/20151119/564d8c73e784b.jpg', '江苏省江阴市澄江东路99号', '江苏省江阴市澄江东路99号', '计量器具的制造（按《制造计量器具许可证》核定范围）半导体、信号灯、按钮、灯具、视频内部对讲装置（可视门铃）、电子点火器、电力电子器件、（含片式器件）、激光器、低压电器、电气成套装置的生产；销售自产产品。', '2', '王新潮', '86851406', 'ad11@cjel.com', '董事长', '13656150202', '86195116', '郭佩莉', '86851406', 'ad11@cjel.com', '办公室主任', '13656150202', '86195116', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('132', '上海三实电器有限公司', '310116001747503', '/upload/20151119/564d8cbe1b0ed.jpg', '上海', '上海', '低压电器，电子产品，五金交电，机电产品，电线电缆，金属材料，橡塑制品，仪器仪表销售', '2', '倪华芳', '53082745', 'suns-sh@suns-cn.com', '经理', '13917363722', '02153082746', '张凌峰', '53082745', 'sales2@suns-cn.com', '职员', '18964508978', '02153082746', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('133', '洛阳泰斯特探伤技术有限公司', '410392020005381', '/upload/20151119/564d94d98376a.jpg', '洛阳市高新开发区滨河路22号3号楼401至416', '洛阳市高新开发区滨河路22号3号楼401至416', '探伤设备技术的研究；探伤设备的制造、销售、调试安装；专用仪器、仪表、工程机械、电气设备及测控、电控系统、计算机软件开发、销售、服务；从事货物的进出口业务。', '2', '窦伯英', '60691002', 'tst@tst-ly.com', '执行董事', '18037905909', '60691016', '秦子瑞', '60610968', 'qinzirui@tst-ly.com', '企划部部长', '18037905909', '60691016', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('134', '南通奇萌电器有限公司', '320621000091309', '/upload/20151119/564d97a25593e.jpg', '江苏省南通市海安县人民西路148号', '江苏省南通市海安县人民西路148号', '电梯配件', '2', '顾文旗', '88893776', 'szcui321@163.com', '总经理', '13506298937', '88893719', '涂祥梅', '88893767', 'szcui321@163.com', '销售', '13511578237', '88893719', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('135', '深圳楚光金典科技有限公司', '440306103982875', '/upload/20151119/564d97f84adf5.jpg', '深圳市宝安区西乡街道鹤洲恒丰工业城B20栋8楼', '深圳市宝安区西乡街道鹤洲恒丰工业城B20栋8楼', '电梯无线对讲，电梯五方通话，电梯对讲系统，电梯三方通话，电梯五方对讲', '2', '颜忠军', '27794898', '101050520@qq.com', '总经理', '13148880920', '29955367', '余洋', '27798418', 'yuyang@trudin.com', '副总', '18938932750', '29955367', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('136', '佛山市钿汇不锈钢有限公司', '440681000329052', '/upload/20151119/564d9a8ada06a.jpg', '佛山市顺德区陈村镇潭洲工业区工业三路38号力源物流城B区66号之2', '佛山市顺德区陈村镇力源金属物流城B区66号', '制造、加工、销售：不锈钢、不锈钢制品、金属材料及其它建筑工程材料。（依法须经批准的项目，经相关部门批准后方可开展经营活动。）', '2', '谭大斌', '29397505', 'david.tan@topsonstainless.com', '总经理', '18028113958', '29397506', '冯韵嘉', '29397265', 'info@topsonstainless.com', '市场开发', '13925470731', '83879985', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('137', '上海扶联电梯配件有限公司', '310120002648607', '/upload/20151119/564dbd660b4e3.jpg', '上海市奉贤区奉柘公路825号6幢132室', '上海市奉贤区奉城镇航塘公路4908号', '电梯配件\\扶手带、橡塑制品、金属制品、五金交电、机电设备、机械设备、电动工具等配件的生产与销售', '2', '陈 桃林', '02157170289', 'ybfsddtipj@foxmail.com', '董事长', '13301896875', '02157170289', '谢玉波', '02157170289', 'ybfsddtpj@foxmail.com', '总经理', '13564151961', '02157170289', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('138', '昆山西威联电气系统有限公司', '320583000374182', '/upload/20151119/564dde9d2938a.jpg', '江苏省昆山市张浦镇俱进路568号C栋', '江苏省昆山市张浦镇俱进路568号C栋', '电器系统设备，电子元件加工，销售，电气系统开发设计，电气设备', '2', '汤进军', '36620470', 'sales@svles.com.cn', '总经理', '15062668070', '36621470', '洪艺聪', '36620470', 'hongyicong@126.com', '销售经理', '13913199072', '36621470', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('139', '上海大隆链条厂有限公司', '310000400116721', '/upload/20151119/564de158bb6b6.jpg', '上海市宝山区长江西路850号', '上海市宝山区长江西路850号', '自动扶梯梯级链，自动人行道链条等', '2', '朱鑫', '02156828458', 'zhuxin@dalongchains.com', '董事长', '13701633429', '02156820269', '李海东', '02166149459', 'lihaidong@dalongchains.com', '销售经理', '13816141180', '02156820269', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('140', '温州方圆仪器有限公司', '330304000057443', '/upload/20151120/564e6544955cc.jpg', '温州市瓯海区东方路187号', '温州市瓯海区郭溪工业区驰艺路5号', '制造、加工、维修：自动化设备及配件、电工仪器及配件、实验仪器及配件、试验机及配件、其他通用仪器及配件、其他专业仪器及配件、光学仪器及配件。', '2', '李文霖', '86728860', 'zkc@wzfyyq.com', '董事长', '13858885509', '86728865', '李学孚', '86728860', '951863153@qq.com', '经理', '13806801517', '86728865', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('141', '湖州南浔联创电气有限公司', '330504000085045', '/upload/20151120/564e66576acde.jpg', '浙江省湖州市南浔经济开发区浔北路', '湖州南浔区南浔镇南林大桥北逸', '变压器、电抗器', '2', '董顺祥', '05722722717', 'dongsp.001@163.com', '总经理', '18606823882', '05722722718', '董顺祥', '05723037889', 'dongsq.001@163.com', '总经理', '18606823882', '05722722718', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('142', '上海舒上电梯装潢有限公司', '310120001865473', '/upload/20151120/564e6f2436283.jpg', '上海市奉贤区南桥镇运河路1058号', '上海市奉贤区南桥镇运河路1058号', '电梯装潢（除安装、维修）机械零部件（除特种设备）制造，加工，电梯销售', '2', '陈光辉', '02157698533', 'guanghui.chen@sh-shushang.com', '法人代表', '18802000729', '02137829657', '张家逸', '02157698533', '3732771@qq.com', '互联事业部经理', '13304765352', '02137829657', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('143', '南通鸿图橡塑有限公司', '320621000101959', '/upload/20151120/564e6e902f28f.jpg', '海安县西场镇壮志村二十一组', '江苏省海安城东镇壮志村21组', '橡塑制品、电梯配件、五金（标准件）、电器（开关）、悬挂输送机生产、销售；针织服装、化工原料（化学危险品除外）批发、零售；润滑油销售；自营本公司自产产品的出口业务（国家限定公司经营和禁止出口的商品除外）。', '2', '范秀梅', '88343693', 'nthtxs@126.com', '董事长', '13382353363', '88377000', '冒沿宏', '88376000', 'nthtxs@126.com', '总经理', '13901478198', '88377000', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('144', '上海同信机电有限公司', '310115002027475', '/upload/20151120/564e6f95ee94b.jpg', '上海市浦东新区沪南路3736弄9号1号楼3楼', '上海市浦东新区沪南路3736弄9号1号楼3楼', '机电设备及零部件等', '2', '徐安', '68131780', 'tomson19@163.com', '法人', '18017762698', '68131779', '韩筱青', '68131780', 'tomson19@163.com', '行政', '13774276735', '68131779', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('145', '苏州市新奥电梯配件有限公司', '320503000028985', '/upload/20151120/564e719e7713d.jpg', '江苏省苏州市园区唯新路168号', '江苏省苏州市园区唯新路168号', '扶梯及人行道梯级链、梯级轮、梳齿板、边框、回转链、入口盖板、滚轮组件等', '2', '祁伟峰', '65515626', 'yfj0512@126.com', '董事长', '13906132588', '65325388', '王森', '65515626', 'yfj0512@126.com', '销售', '13913777922', '65325388', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('146', '爱科科技有限公司', '370300200018571', '/upload/20151120/564e7b03403fd.jpg', '山东省淄博市科技工业园南支路南规划支路东', '山东省淄博市科技工业园南支路南规划支路东', '钕铁硼毛坯和磁钢及组件', '2', '孙兆栋', '2270988', 'agz2xxx@163.com', '董事长', '18678197746', '2273999', '王绍薪', '2270988', 'agz2xxx@163.com', '销售经理', '18678197746', '2273999', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('147', '施乐百机电设备上海有限公司', '310000400517229', '/upload/20151120/564e7a7c9b030.jpg', '上海市松江区新浜镇红牡丹路65号', '上海市松江区新浜镇红牡丹路65号', '生产电动马达、风机、控制器及相关零配件', '2', 'Peter Fenkl', '02157893785', 'williamwang@ziehl-abegg.com.cn', 'CEO', '15921358323', '02157893932', '高海平', '02157893923', 'meccagao@ziehl-abegg.com.cn', '设施经理', '13818974249', '02157893932', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('166', '苏州市吴中区三星电讯器材厂', '320506000115653', '/upload/20151120/564ef95bbb4c7.jpg', '苏州市光福镇工业南区福锦路', '苏州市光福镇工业南区福锦路', '电阻器', '2', '张荣建', '66232266', 'panguoqiang2008@126.com', '经理', '13806136629', '66232266', '潘国强', '66959021', 'panguoqiang2008@126.com', '经理', '13806136629', '66232266', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('167', '海安县申菱电器制造有限公司', '320621000002651', '/upload/20151120/564f07e5d0ea0.jpg', '海安县海安镇海南路88号', '上海市杨浦区黄兴路2077号蓝天大厦706室', '电梯、自动扶梯配套件、模具制造、加工。销售：电梯、自动扶梯整机销售；经营各类商品的进出口业务', '2', '李春涛', '88690009', 'lilywu@relevator.cc', '总经理', '18851381958', '5138690001', '吴晓鹂', '02161670021', 'lilywu@relevator.cc', '市场部总监', '13816960369', '02161670020', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('149', ' 山东省宁津县广奥电梯配件厂', '371422600201024', '/upload/20151120/564e7e5a0c77a.jpg', '柴胡店东街', '山东省宁津县柴胡店东街80号', '电梯.扶梯配件', '2', '刘成 岗', '05345811090', 'CXDFT@126.COM', '经理', '13905440027', '05345811090', '刘成岗', '05345811090', 'CXDFT@126.COM', '经理', '13905440027', '05345811090', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('150', '宁波市鄞州荣利金属制品有限公司', '330212000129732', '/upload/20151120/564e8161d4ccd.jpg', '宁波市鄞州区横溪镇直街', '宁波市鄞州区瞻岐镇滨海工业区祥云路往西到底', '工业门，车库门和卷帘门的金属配件', '2', '吴志雄', '57487855222', 'sales@nbrongli.cn', '总经理', '13605745559', '57487855221', '陈姜思', '57487855222', 'joyce@nbrongli.cn', '销售员', '13732198740', '57487855221', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('151', '泰州斯隆达胶带有限公司', '321203000012673', '/upload/20151120/564e81c11e9d4.JPG', '泰州市高港区刁铺街道观五村', '江苏省泰州市高港区许河路工业园', '绳网带，带轮，吊索具，劳保用品制造/销售。（电梯曳引钢带/扶梯多楔带/门机同步带/门机同步带轮）', '2', '李友生', '82988988', 'silongda@163.com', '总裁', '13961089828', '82981616', '李玉', '82986688', 'silongda@foxmail.com', '总经理', '13852613168', '82981616', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('152', '广州瑞松科技有限公司', '914401010525516483', '/upload/20151120/564e8282bba18.jpg', '广州市萝岗区东区宏景路67号美穗工业园1号', '广州市萝岗区东区宏景路67号美穗工业园1号', '研究、生产、销售：智能机械设备、激光设备、自动化控制设备、环保产品、焊接机械设备；软件开发、销售及技术服务', '2', '孙志强', '66806288', 'sunzq@risongtc.com', '总裁兼董事长', '13682281485', '66806088', '侯昊', '66806288', 'houhao@risongtc.com', '企划专员', '18898690767', '66806088', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('153', '苏州飞格立工程塑料有限公司', '320500400016067', '/upload/20151120/564e82c7f0b02.jpg', '江苏省苏州高新区塔园路369.32号', '江苏省苏州高新区塔园路369.32号', '开发、制造用于电梯和自动扶梯的滚轮，以及用于多种工业的各类工程塑料部件产品，如：齿轮、板块、滑动板、套管、绝缘部件及其相关产品，销售自产产品。', '2', '乌尔夫干.飞格立', '66620597', 'stuart.buckingham@faigle.com.cn', '董事长', '15601839302', '66908022', '刘霞', '68260313', 'molly.liu@faigle.com.cn', '市场专员', '18915567759', '66908022', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('154', '宁波市奉海轴承有限公司', '91330283772343978F', '/upload/20151120/564e87880991a.jpg', '奉化市经济开发区汇泉路299号', '奉化市经济开发区汇泉路299号', '轴承、齿轮、驱动部件制造、加工。（依法须经批准的项目，经相关部分批准后方可开展经营活动）', '2', '韩秀明', '57428588999', 'fenghai@fhbearing.com.cn', '董事长', '13738818898', '57428519951', '韩慧峰', '57428588992', 'fenghai@fhbearing.com.cn', '副总', '13586651660', '5428519951', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('155', '上海兰宝传感科技股份有限公司', '310115000480621', '/upload/20151120/564e8a85950ea.jpg', '上海市奉贤区金汇镇金碧路228号', '上海奉贤区金汇镇金碧路228号', '传感器，工业自动控制系统装置，通用仪器仪表，环境保护专用设备，信息系统是被设备的开发，制造，批发，零售以及技术咨询，技术服务。软件开发，集成电路设计，信息系统集成服务。', '2', '许永童', '57486188', 'xuyongtong@shlanbao.cn', '董事长', '13611837786', '57486199', '李智红', '57486188', 'lizhihong@shlanbao.cn', '品牌推广专员', '13611837786', '57486199', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('160', '湖州南浔联创电器厂', '330504000085045', '/upload/20151120/564eaf008a69d.jpg', '浙江省湖州市南浔经济开发区浔北路', '湖州南浔区南浔镇南林大桥北', '变压器以及电抗器', '2', '董顺祥', '05723037889', 'dongsq.001@163.com', '总经理', '18606823882', '05722722718', '董顺祥', '05723037889', 'dongsq.001@163.com', '总经理', '18606823882', '05722722718', '0', null, null, null);
INSERT INTO `wd_company` VALUES ('157', '辽宁富士电梯有限公司', '210000400005146', '/upload/20151120/564e92788f631.jpg', '辽宁省沈阳市皇姑区银山路59号', '辽宁省沈阳市皇姑区银山路59号', '电梯整梯生产、安装、维保\r\n', '2', '吴光林', '02486910819', '929288080@qq.com', '董事长', '13555881881', '02486910819', '林勇', '02486910819', '929288080@qq.com', '市场部部长', '13555881881', '02486910819', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('158', '山东省宁津县广奥电梯配件厂', '371422600201024', '/upload/20151120/564e959557938.jpg', '山东省宁津县柴胡店东街', '山东省宁津县柴胡店东街80号', '电梯.扶梯配件', '2', '刘成钢', '05345811090', 'WWW.CXDFT@126.COM', '经理', '13905440027', '05345811090', '刘成岗', '05345811090', 'WWW.CXDFT@126.COM', '经理', '13905440027', '05345811090', '0', null, null, null);
INSERT INTO `wd_company` VALUES ('159', '佛山市坚利东成标件有限公司', '91440604666491678N', '/upload/20151120/564e97145a799.jpg', '广东省佛山市禅城区魁奇西路陶机城B座3B', '佛山市禅城区魁奇西路陶机城B座3B', '电梯专用紧固件，标准件，五金件等', '2', '何贞', '75782713777', 'dcyq@china-fsyongqiang.com', '董事长', '13702744341', '82265529', '招景镇', '75782713777', 'dcyq@china-fsyongqiang.com', '销售部主管', '13702744341', '82265529', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('161', '宁波晟洋电梯有限公司', '330204000144276', '/upload/20151120/564eb228db3a9.jpg', '宁波市中山东路1377号', '宁波市中山东路1377号', '电梯 机电设备（除汽车）及配件 日用品 家用电器 服饰 五金交电 汽车配件的批发 零售；电梯 机电设备（除汽车）及配件的维修；自营和代理商品及技术的进出口，但国家限定经营或禁止进出口的商品及技术除外。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '陆弘洋', '88186668', 'brian@sinyoelevator.com', '总经理', '13780090126', '87016169', '潘胜龙', '88186668', 'les@sinyoelevator.com', '销售经理', '13732118266', '87016169', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('162', '友士科技深圳有限公司', '91440300757629628G', '/upload/20151120/564ec79bec226.jpg', '深圳市罗湖区深南东路5002号信兴广场地王商业中心4705单元', '深圳市罗湖区深南东路5002号信兴广场地王商业中心4705单元', '日本东洋（TOYO）各系列地震感知器，台湾台达各系列变频器，伺服马达等', '2', '石田诚司', '83595887', 'gzglass@use.com.tw', '总经理', '13480156176', '83595885', '曾华', '83595887', 'winflower@163.com', '销售', '13480156176', '83595885', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('163', '天津市爱力维电器有限公司', '120111000053772', '/upload/20151120/564eca11b88c8.jpg', '天津市西青区李七庄街七号厂房', '天津市西青区中兴路中兴经济园23号', '操纵盘，外呼盒，壁挂式外呼盒及电梯配件', '2', '王炳瑜', '02258815501', '83922233@163.com', '总经理', '13752057532', '02258815503', '冯万萍', '02258815501', '83922233@163.com', '经理', '13516149677', '02258815503', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('164', '广州捷开电子有限公司', '440111000467525', '/upload/20151120/564eccbab1cf4.jpg', '广州市白云区岗贝路266号403A房', '广州市白云区岗贝路266号403A房', '机械工程设计服务，电工机械专用设备制造，机械零部件加工，五金产品生产销售，电子元器件批发，机械配件生产销售', '2', '黄琥霞', '02037155633', 'jiekai01@126.com', '总经理', '18613071695', '02037155663', '李孝飞', '02037155633', 'jet198@126.com', '业务经理', '18927565359', '02037155633', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('165', '长沙五力机电设备有限公司', '430111000038643', '/upload/20151120/564ed54c90601.jpg', '长沙市雨花区劳动东路208号华菱新城地标大厦704房', '长沙市雨花区劳动东路208号华菱新城地标大厦806房', '电梯应急平层装置 ', '2', '郝剑宏', '85952955', 'cswlhjh@163.com', '销售总监', '13908468115', '85952911', '郝剑宏', '85952911', 'cswlhjh@163.com', '销售总监', '13908468115', '85952911', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('168', '江苏大明金属制品有限公司', '320200400012339', '/upload/20151121/564fb843c2e06.jpg', '无锡市锡山区东北塘镇', '江苏省无锡市通江大道1518号', '生产有色金属复合材料、新型合金材料、建筑五金件、水暖器材；自由房屋的出租；仓储服务（不含危险化学品）、搬运装卸服务。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '周克明', '51083859388', 'luz@jsdmss.com', '总裁', '18505102598', '51083855852', '陆震', '51083859388', 'luz@jsdmss.com', '宣传策划部', '18505102598', '51083855852', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('170', '佛山伊思珀金属制品有限公司', '440602000424090', '/upload/20151121/565010f4d17ee.jpg', '佛山市禅城区绿景二楼11号二座二栋713号', '佛山市禅城区岭南大道121号7楼', '不锈钢材料', '2', '龙田慧', '83130328', '603331373@qq.com', '总经理', '18675722812', '83130328', '龙小姐', '83130328', '603331373@qq.com', '外贸经理', '18675722812', '83130328', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('171', '沈阳辽富电梯制造有限公司', '210100000089130', '/upload/20151121/56501406b4d42.jpg', '沈阳市皇姑区银山路59号', '沈阳市皇姑区银山路59号', '杂物电梯制造、销售、安装、维保、改造', '2', '周伟', '02486629138', 'zhouwei_168@sina.com', '总经理', '13501320210', '02486626138', '王振涛', '02486628138', '59203771@qq.com', '技术部部长', '15640230212', '02486626138', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('172', '上海拓沛实业有限公司', '310118003084573', '/upload/20151123/56528b4a07413.JPG', '上海市闵行区航东路685弄76支弄15号', '上海市闵行区航东路685弄76支弄15号402', '电梯生产、装配、装潢、保护应用中需要的各种双面胶带（永久或临时固定）、保护膜、隔音抗震胶带、各种自粘性胶粘产品。', '2', '胡海霞', '15000901092', '693635583@qq.com', '总经理', '18616999600', '50877258', '潘强', '15000901092', '693635583@qq.com', '经理', '18616999600', '50877258', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('173', '上海金侨龙金属工艺制品有限公司', ' 310229001474317', '/upload/20151123/56529791d4e65.jpg', '上海青浦区崧华路1001号', '上海青浦区崧华路1001号', '生产，加工金属制品，电梯金属配件的加工，电梯门、框、轿厢壁板，梯裙板，装甲板、踏脚板等等', '2', '冯添根', '02159867872', 'zsshunye@126.com', '总经理', '13701826268', '02159867873', ' 冯添根', '02159867872', 'zsshunye@126.com', '总经理', '13701826268', '02159867873', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('174', '上海新口实业有限公司', '310120001972940', '/upload/20151123/5652a5501c148.jpg', '上海市奉贤区奉浦大道99号绿地智尊大厦B座507室', '上海市奉贤区奉浦大道99号绿地智尊大厦B座507室', '电梯、扶梯、升降设备及配件，机电设备及配件，机械设备及配件，电子产品等', '2', '钟敏', '02137565265', 'amin@ishinko.com', '副总经理', '15001828198', '02137565259', '余光建', '02137565265', 'shinko@ishinko.com', '总经理', '13564168243', '02137565259', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('175', '江阴海美金属新材料有限公司', '320281000265154', '/upload/20151124/5653c190d7b31.jpg', '江阴市新桥镇新华路40号', '江阴市新桥镇新华路40号', '金属制品，覆膜钢板的加工，制造，销售。', '2', '赵华', '51068951018', 'sale@himei.com.cn', '总经理', '13906168297', '51068951019', '沈晓波', '51068951018', 'shenxiaobo@himei.com.cn', '销售', '13812580013', '51068951019', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('176', '邯郸市峰峰一零一电子有限责任公司', '91130406745410880G', '/upload/20151124/5653cdab581f3.jpg', '邯郸市峰峰矿区新坡工业园区', '邯郸市峰峰矿区新坡工业园区', 'RX20被釉电阻器、RXG20被漆电阻器、RXLG电阻器、电抗器、变压器、电阻箱等。', '2', '张建国', '5368868', '101@hd101dz.com', '总经理', '13503101151', '5129011', '梅廷荣', '5368918', 'yingxiao@hd101dz.com', '副总经理', '13903304921', '5129011', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('177', '靖江市金诚液压密封件有限公司', '321282000029810', '/upload/20151124/5653d3275c885.png', '江苏省靖江市西来镇土桥街', '江苏省靖江市西来镇土桥街', '电梯整机、门机配件', '2', '陈满根', '84262158', 'jcseal@sohu.com', '董事长', '13852856518', '84261931', '陈跃', '84262158', 'jcseal@sohu.com', '销售主管', '18805261468', '84261931', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('178', '常熟市飞达电子元器件有限公司', '320581000275937', '/upload/20151124/5653e67f945e0.jpg', '常熟市杨园沈浜马泾桥', '常熟市杨园沈浜马泾桥', '电梯配件', '2', '张伟卫', '52748321', 'csfddz@163.com', '总经理', '13812972033', '52348321', '包振', '52748321', 'csfddz@163.com', '市场部', '13771891883', '52348321', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('179', '广州市白云区固铂五金机械供应站', '440111000277537', '/upload/20151124/5654146f0818e.jpg', '广州市白云区机场路1718号8A21房', '广州市白云区机场路1718号8A21房', '批发业', '2', '李小姐', '36701102', 'gubowujin@163.com', '总经理', '13316108002', '36701102', '陈结华', '36701102', 'gubowujin@163.com', '行政部经理', '15920383523', '36701102', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('180', '江苏意迪驱动设备有限公司', '320621000372447', '/upload/20151125/56552044707fb.png', '海安县经济技术开发区和顺中路2号', '海安高新技术产业园立发大道169号11栋', '电梯曳引机部件的生产、设计、研发\r\n自营或代理各类商品进出口业务', '2', '叶序浪', '51388368889', 'yexulang@188.com', '总经理', '13761388898', '51388368887', '许林安', '51388368889', 'mousexu@top-gears.cn', '经理', '18012280301', '51388368887', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('181', '上海敖海实业有限公司', '310114000570068', '/upload/20151125/565526cb0cba1.jpg', '上海市闵行区合川路3089号B座5楼', '上海市闵行区合川路3089号B座5楼', '化工原料、电子产品、机电设备、通讯器材、五金交电、汽摩配件、计算机软硬件及辅助设备、办公用品、建筑装潢材料的销售，从事货物进出口及技术进出口业务，建筑工程。', '2', '向旭辉', '54580909', 'xuhui.xiang@hansi.biz', '总经理', '13818184600', '23025185', '孙闪闪', '54580909', 'chelsea.sun@hansi.biz', '行政', '15901676335', '23025185', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('182', '上海康达化工新材料股份有限公司', '310115000054354', '/upload/20151125/565527c91bdff.jpg', '上海市奉贤区雷州路169号', '浦东新区庆达路655号', '胶粘剂产品', '2', '姚其胜', '02168918898', '1183800663@qq.com', '董事长', '15901726413', '02158383632', '王亚伟', '02168918998', '1183800663@qq.com', '品牌设计主管', '15901726413', '02158383632', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('183', '上海魁固塑胶制品有限公司', '310228001084402', '/upload/20151125/5655541cb9dda.png', '上海市金山区枫泾镇曹黎路38弄25号', '上海市金山区枫泾镇曹黎路38弄25号', '橡塑制品生产加工，电梯配件，机械设备及配件，化工原料及产品（除危险化学品，监控化学品，烟花爆竹，民用爆炸物品，易制毒化学品），金属材料，通讯设备及相关产品，五金制品，五金工具销售，从事货物进出口及技术进出口业务。', '2', '綦大勇', '67360811', 'dayong.qi@skgtec.com', '总经理', '13901762103', '67360812', '姜安春', '67360811', 'sales3@skgtec.com', '销售', '18121378286', '67360812', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('184', '珠海市荣泰电子有限公司', '440400000140235', '/upload/20151125/565561da5908d.jpg', '珠海市前山鹅槽山市煤气库1号工业厂房', '珠海市香洲区前山南沙湾市煤气库1号工业厂房', '电子产品的研发、生产、加工、销售', '2', '刘海模', '07566279626', 'rt-market01@rongtel.com', '总经理', '13928033611', '07566279638', '黄曙显', '0756-6279627', 'market02@rongtel.com.cn', '销售经理', '13928035100', '07566279638', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('185', '福建快科城建增设电梯股份有限公司', '350100100420668', '/upload/20151125/565565eccc3a4.jpg', '福建省福州市闽侯县经济技术开发区一期延伸区长龙中路', '福建省福州市闽侯县经济技术开发区一期延伸区长龙中路', '电梯的制造、销售、安装、维修、改造；电梯配件、电子产品、机电产品、普通机械的批发、代购代销、自营和代理各类商品和技术进出口，但国家限定公司经营或禁止进出口的商品和技术除外；装饰装修工程、市政工程、钢结构工程、机电设备安装工程、土木工程的设计、施工；工程技术服务；工程检测；电梯租赁。', '2', '张凡', '22068882', 'scenery_zf@163.com', '董事长', '13705055747', '22061959', '王敏腾', '22068882', 'scenery_wmt@163.com', '综合管理部部长', '13706967308', '22061959', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('186', '淮安市华富特种铸型尼龙有限公司', '91320803796528715A', '/upload/20151126/5656613d4550d.jpg', '江苏省淮安市淮安区经济开发区山阳大道37号', '江苏省淮安市淮安区经济开发区山阳大道37号', '特种铸型尼龙生产、销售', '2', '宋永兰', '51785207055', 'jshaczhf@163.com', '董事长', '13852490723', '51785203558', '马仁贵', '51785207055', '1091642705@qq.com', '总经理', '13511529098', '51785203558', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('187', '朝闻电梯装备科技苏州有限公司', '320584000428766', '/upload/20151126/565662d43ed97.jpg', '苏州市吴江区长安路科技创业园1号楼508室', '苏州市吴江区长安路科技创业园1号楼508室', '覆膜钢板的研发、生产、销售；电梯部件研发、制造、组装、销售；自营和代理各类商品及技术的进出口业务。', '2', '陈莉', '63938255', 'info@zowee.co', '总经理', '18120098867', '63938277', '吴红花', '63938255', 'wu@zowee.co', '助理', '13382161653', '63938277', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('188', '北京盛和中泰不锈钢有限责任公司', '110106011570875', '/upload/20151126/56566737188fc.jpg', '北京市通州区台湖镇创业园区', '北京市通州区台湖镇创业园区', '不锈钢板材，不锈钢表面HL,NO.4,精磨8K，和纹，喷砂,镀钛，蚀刻，抗指纹以及不锈钢深加工', '2', '宋利东', '01080890618', 'bjshzt@126.com', '总经理', '13910401283', '01087600518', '贺业宾', '01087601038', '13910072708@139.com', '经理', '13910072708', '01087600518', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('189', '杭州东华链条集团有限公司', '330104000030514', '/upload/20151126/565681dd7faeb.jpg', '杭州市余杭经济开发区昌达路1号', '杭州市余杭经济开发区宏大路10号', '制造、加工和销售各种规格链条，链轮', '2', '鲁小林', '85146786', 'lu.xiaolin@dhchain.com', '法人代表', '13958036180', '85146786', '冯建忠', '89170306', 'dandyfjz@163.com', '销售经理', '13858065269', '89170303', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('190', '武汉长光电源有限公司', '420100400009536', '/upload/20151126/5656a07c60c43.jpg', '武汉经济技术开发区车城大道172号', '武汉经济技术开发区车城大道172号', '开发、生产、销售各种电池、电池零部件及电池设备', '2', '郑海东', '02784891322', 'sales@cgbbattery.com', '董事长', '13871005252', '02784891924', '陈勇健', '02784891322', 'sales@cgbbattery.com', '内销部部长', '13329717718', '02784891924', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('191', '长春盛昊电子有限公司', '220107000011370', '/upload/20151126/5656b1e9cf13f.jpg', '吉林省长春市高新开发区平新路325号201.203.216.219室', '吉林省长春市高新区平新路325号', '电子配件的生产（在该许可的有效期内从事经营）', '2', '李京京', '89543339', 'sh@ccsdz.com', '总经理', '18902008273', '89542228', '于兆武', '89543339', 'sh@ccsdz.com', '总经理', '13821562557', '89542228', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('192', '苏州久德机电科技有限公司', '320504000076111', '/upload/20151127/5657b545cdaa9.jpg', '苏州市彩香路6号', '苏州市吴中区横泾街道兴东路2号', '研发、销售：机电设备。销售：电梯、电梯部件、工业自动化设备、电子产品、电脑周边设备、安全劳保用品；自营和代理各类商品及技术的进出口业务。', '2', '朱志勇', '65580626', 'John.zhu@jd-elevator.com', '总经理', '13812710087', '68700016', '张明珠', '65580626', 'mingzhu.zhang@jd-elevator.com', '人事行政', '18362606130', '68700016', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('193', '欧米特苏州机械有限公司', '320584400009396', '/upload/20151127/5657be097671e.jpg', '吴江经济开发区泉德路255号', '吴江经济开发区泉德路255号', '生产轴承、电气接触开关、电梯零部件及塑料、纸加工机器，销售自产产品，并提供相关服务；从事与本公司生产产品同类商品的批发、佣金代理（拍卖除外）及进出口业务（不涉及国营贸易管理商品，涉及配额、许可证管理商品的，按国家有关规定办理申请）。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', 'ANTONIO BARTESAGHI', '63033668', 'elaine.wu@omet.cn', 'Managing Director', '15150275131', '63005373', '吴艳', '63033668', 'elaine.wu@omet.cn', '销售助理', '15150275131', '63005373', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('194', '宁波盛大风机有限公司', '330200400064988', '/upload/20151127/5657c9b7477c1.jpg', '宁波北仑普陀山路21号', '宁波北仑普陀山路21号', '电脑风机，电梯专用风机，仪表设备冷却风机及电机（除限制外商投资项目）的制造，加工。', '2', '梅智能', '57486813128', '320nickcat@sina.com', '总经理', '13958316178', '57486813125', '梅栋琦', '57486813126', '320nickcat@sina.com', '销售经理', '13958316178', '57486813125', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('195', '广州南洋电器有限公司', '440101000003162', '/upload/20151127/5657ffd3ee75c.jpg', '广州市广园中路276号', '广州市广园中路276号', '研发、生产电梯、扶梯配件，包括：导靴、门锁、门锁开关、按钮、限位开关、系合装置等', '2', '黄文胜', '83833266', 'nydtyjs@163.com', '董事长', '18925036898', '02036510562', '潘彦', '02036510562', 'nydtyjs@163.com', '市场部部长', '13924112310', '02036510562', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('196', '苏州劳灵精密机械有限公司', '320594400010954', '/upload/20151127/565813a6c898e.jpg', '苏州工业园区通园路75号', '苏州工业园区通园路75号', '生产、加工、组装电梯、扶梯及汽车相关压铸件产品及其附件，销售本公司所生产的产品并提供售后服务', '2', '金祖铭', '62888645', 'roaring@sjne.com', '董事长', '13906139010', '62809061', '金怡', '62809536', 'yi.jin@sjne.com', '外销经理', '13776030569', '62809061', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('197', '宁津县龙利达电梯配件有限公司', '371422200010823', '/upload/20151128/5658fbec7c885.jpg', '山东省德州市宁津县宁城办谢西村', '山东省德州市宁津县宁城办谢西村', '电梯配件生产、销售', '2', '谢龙', '05345218529', '455924808@qq.com', '经理', '15066621940', '05345211940', '董美伶', '05345218529', '1443686814@qq.com', '销售', '18753469593', '05345211940', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('198', '东莞市旭恒电子有限公司', '441900000230150', '/upload/20151128/565911664dc4d.jpg', '东莞市东城区桑园工业区2区2路5号', '东莞市东城区桑园工业区2区2路5号', '研发、产销：电子元器件、塑胶制品', '2', '冯春梅', '23068090', '2290241330@qq.com', '经理', '13631758421', '23068086', '邱雨文', '23068090', '2290241330@qq.com', '业务', '13902646826', '23068086', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('199', '许昌汉诺威自动化有限公司', '411093100001098', '/upload/20151130/565bc687b4399.JPG', '许昌市东城区学院路南段', '许昌市东城区学院路南段', '自动车库门、控制器、自动仪表、控制柜的生产、机械加工与销售', '2', '徐志强', '03745199555', 'xu13938919181@sina.com', '董事长', '13938919181', '03748326777', '申鹏', '03745191888', 'xuchanghannuowei@126.com', '销售部长', '13733651161', '03748326777', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('200', '杭州通用弹簧有限公司', '9133018377925672X1', '/upload/20151130/565bf82196067.jpg', '浙江省杭州市富阳区银湖街道杜墓村', '浙江省杭州市富阳区银湖街道杜墓村', '各种电梯配套：曳引机弹簧、绳头弹簧、缓冲器弹簧、轿厢门拉簧、滚轮导靴弹簧等等电梯配套弹簧。', '2', '邵乃祥', '0571-63426720', 'webmaster@tyth.cn', '总经理', '13806527608', '0571-63426677', '黄利华', '0571-63426803', 'webmaster@tyth.cn', '', '15068701720', '057163426677', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('201', '科瑞工业自动化系统苏州有限公司', '320500400043776', '/upload/20151130/565c0b7fd322c.jpg', '苏州市吴中区越溪街道苏旺路318号1幢', '苏州市吴中区郭巷街道吴淞路892号', '从事各类传感器的设计、研发、生产，销售公司自产产品并从事自产产品的同类商品、工业自动化产品、机械电子产品及相关自产产品原辅材料的进出口、批发、佣金代理（拍卖除外）业务（不涉及国营贸易管理商品，涉及配额、许可证管理商品的，按国家有关规定办理申请），提供相关技术咨询及售后服务。（依法须经批准的项目，经相关部门批准后方可展开经营活动）', '2', '吴杰', '88998586', 'marketing@controlway.cn', '总经理', '13913596346', '88998786', '邱文娴', '89998586', 'wenxian.qiu@controlway.cn', '宣传助理', '13913596346', '88998786', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('202', '泉州鲤城昀立防护设备有限公司', '350502100061863', '/upload/20151201/565cfd546d8ed.jpg', '福建省泉州市鲤城区新门街331号大院内旧机电办公楼一层原电工科办公室', '福建省泉州市鲤城区新门街331号', '人体安全防护设备设施、自动扶梯防护设备设施研发、组装、销售及安装；通过互联网及实体店销售：电梯、电梯配件、卫生用品、监控产品；不锈钢加工。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '郭纯玉', '22881285', '2042267808@qq.com', '董事', '13328966659', '22881285', '郭剑辉', '22881285', 'ylfhsb@163.com', '副总', '18965655737', '22881285', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('203', '石家庄爱驰自动化设备有限公司', '130100000321166', '/upload/20151201/565d0cba7d4f9.jpg', '河北省石家庄', '河北省石家庄市高新技术开发区泰山街南头', '工业自动化设备的研发销售；计算机系统集成及外围辅助设备的研发、销售及技术咨询服务，计算机软硬件的研发销售。', '2', '李集行', '80875661', 'aichitech@163.com', '副总经理', '18931978598', '85386650', '张晓亮', '80875661', 'zhxl12388@163.com', '经理', '13603110348', '85386650', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('204', '合肥市迅立达电梯有限公司', '91340100588891843L', '/upload/20151201/565d0deea8e66.jpg', '安徽省合肥市高新区望江西路800号创新产业园D2楼5层', '安徽省合肥市高新区望江西路800号创新产业园D2楼5层', '产品涵盖乘客电梯、载货电梯、观光电梯、病床电梯、液压电梯、汽车电梯、小机房电梯、无机房电梯、自动扶梯、自动人行道、杂物电梯等系列产品', '2', '吕桂兰', '68778885', '2417665018@qq.com', '董事长', '18855186985', '68778005', '段勤丽', '68778885', '1329203903@qq.com', '经理', '18855186961', '68778005', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('205', '嘉善长盛塑料轴承技术有限公司', '330421686655211', '/upload/20151201/565d111eae3af.png', '浙江省嘉善县惠民街道汾湖路6号', '浙江省嘉善县惠民街道汾湖路6号', '自润滑轴承', '2', '孙志华', '84156133', 'yzf@csb-ep.com', '董事长', '13615838398', '84185517', '于振飞', '84185500', 'yzf@csb-ep.com', '销售部部长', '13615838398', '84185517', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('206', '苏州市天隆链条有限公司', '320506000025137', '/upload/20151201/565d1f6f3def3.JPG', '苏州市吴中区越溪镇溪水路8号', '苏州市吴中区越溪镇溪水路8号', '扶梯梯级链系列、人行道踏板链系列、扶手链系列、驱动链系列、压带链系列。', '2', '张海木', '66558058', 'zhm@ltongsz.com', '总经理', '13906215109', '66558250', '周真', '66558250', 'zz@ltongsz.com', '市场部经理', '13862023770  15250037789', '66558250', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('207', '欧瑞传动电气股份有限公司', '370600400025543', '/upload/20151201/565d42ec372f8.jpg', '烟台开发区黄河路付11号', '烟台开发区黄河路付11号', '变频器、伺服系统', '2', '林海光', '05356939682', 'wyn@euradrives.com', '总经理', '13964541181', '05356386200', '王延妮', '05356939682', 'wyn@euradrives.com', '广告策划执行经理', '13964541181', '05356386200', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('208', '沈阳智健精工电梯装饰有限公司', '210105000059235', '/upload/20151201/565d4a35b8675.jpg', '沈阳市皇姑区陵东乡田义村', '沈阳市皇姑区观音开发区合合超市后院', '杂物电梯生产、电梯配件，机械加工；机械电子设备、计算机技术开发；机械电子设备、计算机、电梯及配件销售；电梯、自动扶梯及自动人行道装饰。', '2', '李树林', '02431361500', 'syzjjg@126.com', '总经理', '13840279987', '02486670350', '冯敏', '02431361500', 'syzjjg@126.com', '销售经理', '13889239767', '02486670350', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('209', '宁津县新未来电扶梯配件有限公司', '371422200001355', '/upload/20151202/565e5d1de59ee.jpg', '山东省德州市宁津县北环一汽大众后邻', '山东省德州市宁津县北环一汽大众后邻', '电扶梯配件、机电设备配件、铁路机车配件等等', '2', '刘俊林', '15725346622', 'xwldftpj@163.com', 'CEO', '15853474888', '05345236078', '刘俊林', '13853452117', 'xwldftpj@163.com', '总经理', '15853474888', '05345236078', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('210', '厦门奥德隆自动化设备有限公司', '350298200017990', '/upload/20151202/565e63b455850.jpg', '厦门火炬高新区翔安产业区翔安北路3699号高新大厦315室', '厦门火炬高新区翔安产业区翔安北路3699号高新大厦315室', '1、生产、加工、销售：自动化设备、电子专用设备；2、经营各类商品和技术的进出口，但国家限定公司经营或禁止进出口的商品及技术除外。', '2', '冷厚林', '05927075238', 'xmadl@xmaodelong.com', '总经理', '18650006043', '05927180665', '王真梅', '05927075238', '13859944914@163.com', '行政', '13859944914', '05927180665', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('211', '上海川翔电子有限公司', '15000000201511231177', '/upload/20151202/565e95275994b.jpg', '上海市浦东新区栏学路531号', '上海市浦东新区栏学路531号', '连接器，继电器，滤波器', '2', '徐新宇', '02158940096', 'forrestgong@chuanxiangsh.com', '总经理', '13564523667', '02158945051', '方昌勋', '02158940096', 'jason@chuanxiangsh.com', '营业经理', '13917582220', '02158945051', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('212', '广东台日电梯有限公司', '440600000020220', '/upload/20151202/565e9c9135940.jpg', '广东肇庆市高新区达利路21号', '广东肇庆市高新区达利路21号', '经销：机械设备、电子产品、钢材、有色金属（不含贵金属）；冷气设备安装；销售电梯：电梯制造及安装、电梯维修、保养、电梯售后服务（凭资质证经营）。', '2', '张珍', '07583999099', 'gdtairi@gdtairi.com', '商务部长', '18083999099', '07583999000', '王月', '07583999044', '2587877857@qq.com', '市场', '13450169258', '07583999054', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('213', '厦门汉京电梯控制系统有限公司', '350200200012499', '/upload/20151202/565ea8f3866e0.jpg', '厦门火炬高新区翔安产业区育成中心E501室', '厦门马巷巷北工业区五星路479号南侧', '自动化控制系统开发、生产、销售；批发、零售电梯、电梯配件、电子器材；自动化控制系统维修、维护；经营本企业自产产品的出口业务和本企业所需的机械设备、零配件、原辅材料的进口业务。', '2', '卢卫民', '05927622310', '2880092820@qq.com', '总经理', '13205928345', '05927622316', '刘淑云', '05927622310', '2880092823@qq.com', '营销副总', '15280221337', '05927622316', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('214', '桐乡市永大机械有限公司', '3304830000019846', '/upload/20151203/565fa37ad7728.JPG', '浙江省桐乡市龙翔街道和顺路1号', '浙江省桐乡市龙翔街道和顺275号', '自动扶梯加油装置', '2', '钱永伟', '88799158', 'ghy_005@163.com', '总经理', '15067395777', '88793168', '钱永伟', '88799158', 'ghy_005@163.com', '总经理', '15067395777', '88793168', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('215', '杭州霍普曼电梯有限公司', '330100400039806', '/upload/20151203/565fd6fa47c8c.jpg', '浙江省杭州市桐庐县瑶琳镇琴溪村', '浙江省杭州市桐庐县瑶琳镇琴溪工业园', '各类电梯及相关零部件制造、销售，安装、修理、改造', '0', '', '', '', '', '', '', '奚元良', '0571－64379009', '5531762342@qq.com', '副主任', '13456870989', '', '2', null, null, null);
INSERT INTO `wd_company` VALUES ('221', '大连菱佳电梯配件有限公司', '210200000052040', '/upload/20151204/56613817c44a2.jpg', '辽宁省大连市西岗区唐山街24号5层6号', '大连市西岗区茂田巷40号401室', '电梯配件的销售；货物、技术进出口、国内一般贸易（法律、法规禁止的项目除外；法律、法规限制的项目取得许可证后方可经营）；经济信息咨询', '2', '王洪震', '41139657930', '1172149549@qq.com', '总经理', '13998614842', '1172149549', '王洪震', '41139657930', '11721495492@qq.com', '总经理', '13998614842', '41139657930', '1', null, 'Dalian Lingjia Elevator Parts Co.Ltd', null);
INSERT INTO `wd_company` VALUES ('217', '深圳市杰瑞欧电子有限公司', '440306106213964', '/upload/20151203/565ff3fbbefbe.jpg', '深圳市龙华新区大浪德泰科技工业园9栋2楼202', '深圳市龙华新区大浪华荣路460号九栋202', '智能IC梯控系统产品，门禁一体机，读卡器，发卡器，对讲联动模块，扩展板等智能门禁梯控产品系列。', '2', '李宝翔', '23201667', '1922107997@qq.com', '老板', '13804076259', '21638730', '朱友彬', '23201667', '2106367535@qq.com', '销售经理', '13713877366', '21638730', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('218', '厦门嘉菱电气机械设备有限公司', '350212200059701', '/upload/20151204/566114174b267.jpg', '厦门市同安区西柯美溪道思明工业园86号三楼东侧', '厦门市同安区西柯思明工业园86号3楼', '电梯停电应急平层装置、LED轿顶、多媒体液晶显示板、松闸电源、电梯空调、电梯IC卡', '2', '卢雄杨', '05927157398', 'xmjl2013@sina.com', '总经理', '13806004221', '05927157627', '林土城', '05927157398', '413344823@qq.com', '销售总经理', '18939235807', '05927157627', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('219', '阳电科技厦门有限公司', '350298400004176', '/upload/20151204/5661203647b21.jpg', '厦门火炬翔安产业园同龙二路883号', '上海市闵行区七莘路2855弄135号101', '扶梯对射光电开关，电梯平层光电，接近开关等电气配件', '2', '杨凯帆', '02154822782', '742940339@qq.com', '销售经理', '18964775596', '02154478070', '杨霄', '02154823072', 'yangxiaoxh@sina.com', '工程师', '18964383978', '02154478070', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('220', ' 季龙上海电梯配件有限公司', '310117003247490', '/upload/20151204/5661242338996.jpg', '上海市松江区叶榭镇叶发路519号第8幢', '上海市松江区叶榭镇叶发路519号第8幢', '电梯配件（除特种）、橡塑制品、五金制品加工销售\r\n', '2', '杨季勇', '02157831899', 'yangjiyongjl@126.com', '总经理', '13818298812', '02157839050', '杨季勇', '02157831899', 'yangjiyongjl@126.com', '总经理', '13818298812', '02157839050', '1', null, null, null);
INSERT INTO `wd_company` VALUES ('222', '佛山市顺德区雅泓不锈钢有限公司', '440681000390830', '/upload/20151204/5661527f409e3.jpg', '佛山市顺德区陈村镇绀现工业区佛陈路南20号之五', '佛山市顺德区陈村镇绀现工业区佛陈路南20号之五', '金属制品', '2', '彭小平', '83937356', '2880399768@qq.com', '经理', '18929935901', '83937356', '梁蔼锋', '83937355', '2880399755@qq.com', '业务经理', '18029381052', '83937355', '1', null, 'foshanshishnudequyahongbuxiugangyouxiangongsi', null);
INSERT INTO `wd_company` VALUES ('223', '长春东河光电技术有限公司', '220102000108000', '/upload/20151205/566244c94d592.jpg', '长春市南湖大路1906号04D', '长春市南湖大路1906号04D', '光电编码器', '2', '朴钟明', '85313898', 'PWH1030@163.COM', '总裁', '13351501119', '85318698', '朴文河', '85318698', ' pwh1030@163.com', '总经理', '13351501119', '85318698', '1', null, 'Changchun donghe oetech ', null);
INSERT INTO `wd_company` VALUES ('224', '一浦莱斯精密技术深圳有限公司', '440301503456004', '/upload/20151205/56627e4fcc2bc.jpg', '深圳市龙华新区观澜街道观光路1303号鸿信工业园2栋1楼', '深圳市龙华新区观澜街道观光路1303号鸿信工业园2栋1楼', '锁铆、无铆铆接设备，拉铆设备及紧固件。', '2', '王冠平', '75529538886', 'lindawang@epress-cn.com', '经理', '13510836799', '75528140882', '朱玉平', '75529538608', 'sales@epress-cn.com', '商务助理', '18758698161', '75528140882', '1', null, 'EPRESS SYSTEMS SHENZHEN LTD', null);
INSERT INTO `wd_company` VALUES ('225', '瑞安市西湖电梯配件厂', '3303811008905', '/upload/20151205/566289cb6c2a7.jpg', '浙江省瑞安市林垟林郑路5至1号', '浙江省瑞安市林垟林郑路5至1号', '生产电梯门挂轮，门机配件以及钣金件', '2', '林顶州', '65595280', 'xhdt280@163.com', '总经理', '13806535780', '65592636', '李威', '65595280', 'xhdt280@163.com', '经理', '13758769874', '65592636', '1', null, 'ruian xihu elevatcr components factory', null);
INSERT INTO `wd_company` VALUES ('226', '北京宏盛发金属材料有限公司', '110105017795259', '/upload/20151206/56638ac5099e1.jpg', '北京市朝阳区常营中路1号院9号楼负1层010', '北京市朝阳区十里堡甲2号院9号楼', '主要经营不锈钢装饰材料，电梯门板，轿厢板，工程金属装饰材料等', '2', '付长涛', '85863731', '18901183202@189.cn', '总经理', '18901183202', '85863731', '申敬龙', '85863731', '1787974824@qq.com', '市场总监', '15652821398', '85863731', '1', null, 'Beijing Hongsun Metal Materials Co Ltd ', null);
INSERT INTO `wd_company` VALUES ('227', '苏州优而信家用电梯有限公司', '320584000445373', '/upload/20151206/5663b40f3f457.jpg', '苏州市吴江区黎里镇雄锋村', '苏州市吴江区黎里镇雄锋村', '电梯，电扶梯，金属部件电梯生产，销售（以上均不含橡塑制品生产）：钣金切割加工：五金，电器，机械设备，劳保用品，橡塑制品销售。', '2', '包向民', '63631380', 'bobo720821@163.com', '老板', '13584295880', '63230358', '包向民', '63631380', 'bobo720821@16.com', '老板', '13584295880', '63230358', '1', null, 'shuzhouyouerxinjiayongdiantiyouxianggongsi', null);
INSERT INTO `wd_company` VALUES ('228', '13063083239', '350206200175673', '/upload/20151207/5664fe50aaa6b.jpg', '湖里区高新技术园安岭二路89号6029', '厦门市火炬高新区翔安产业区同龙二路579号三楼', '电梯停电应急救援装置、电梯松闸电源装置、IC刷卡、五方通话等', '2', '宇贵 杨', '05925716185', 'xmzto@foxmail.com', '总经理', '13063083239', '05925716819', '杨宇贵', '05925716185', 'xmzto@foxmail.com', '总经理', '13063083239', '05925716819', '1', null, 'xiamen zhuotu electronics technology co ltd', null);
INSERT INTO `wd_company` VALUES ('229', '东莞市冉通电子有限公司', '441900002324194', '/upload/20151207/566524a0f26de.jpg', '广东省东莞市石碣镇新风西路271号', '广东省东莞市石碣镇新风西路271号', '全国', '2', '龙行华', '81371770', '2659320093@qq.com', '老板', '13723586496', '81371781', '龙行华', '81371770', '2659320093@qq.com', '老板', '13723586496', '81371781', '1', null, 'Dongguan city Ran tong Electronic Co LTD', null);
INSERT INTO `wd_company` VALUES ('230', '苏州舟鱼机电科技有限公司', '320584000393630', '/upload/20151207/5665280e48101.jpg', '吴江区松陵镇友谊工业区', '江苏省苏州市吴江区联华路58号', '机电设备、电梯部件研发、生产、销售等', '2', '张英', '63341828', '237562257@qq.com', '总经理', '13962596042', '63341838', '沈慧娟', '63341828', '237562257@qq.com', '助理', '18001551447', '63341838', '1', null, 'Suzhou Zhouyu Electrical zone. Songling District.Wujiang Area', null);
INSERT INTO `wd_company` VALUES ('231', '上海宝舟电器有限公司', '310227000523255', '/upload/20151207/56654170dd28c.jpg', '上海市西康路1068号A15A', '上海市西康路1068号A15A', '仪器仪表，机电设备 等', '2', '陈永安', '62661383', 'cya@bzdq-sh.com', '总经理', '13901928020', '62661382', '闵剑春', '62274842', 'mjc@bzdq-sh.com', '销售', '13391191809', '62661382', '1', null, 'Shanghai Baozhou ', null);
INSERT INTO `wd_company` VALUES ('232', '厦门汇科中升自动化科技有限公司', '350212200098438', '/upload/20151207/5665432978ddc.jpg', '厦门市同安区西柯思明工业园86号3楼', '厦门市同安区西柯思明工业园86号3楼', '电梯停电应急平层装置（ARD）、电梯松闸电源（EBP）及其他电梯配件。', '2', '黄宗威', '05927370690', 'huike690@163.com', '法人', '13860146465', '05927370279', '江茂财', '05927370690', 'jmaocai@163.com', '经理', '15980809566', '05927370279', '1', null, 'Xiamen Huike Zhongsheng Automation Technology  Co.Ltd', null);
INSERT INTO `wd_company` VALUES ('233', '江苏江扬特种电缆有限公司', '321011000029571', '/upload/20151208/5666255976e4b.png', '扬州市荷叶西路88号', '扬州市荷叶西路88号', '电线、电缆、光缆、电工圆铜线、涂锡丝的制造、加工、销售', '2', '丁文权', '87952666', 'jytl666@163.com', '董事长', '13665280988', '87638288', '李家年', '87952666', 'jytl666@163.com', '办事员', '13852712491', '87638288', '1', null, 'JIANGSU JIANGYANG SPECIAL CABLE CO LTD', null);
INSERT INTO `wd_company` VALUES ('234', '南通金塔电梯配件有限公司', '320621000095923', '/upload/20151208/56664345e5c54.jpg', '江苏海安城东镇葛家桥村七组', '江苏海安城东镇葛家桥村七组', '电梯配件制造、加工、销售，主要产品有各种规格电梯平衡补偿链，导向装置，绳头组合，减震垫，压导板等。', '2', '张光余', '88779833', 'ntjinta@163.com', '董事长', '13906278047', '88779833', '张光余', '88779833', 'ntjinta@163.com', '董事长', '13906278047', '88779833', '1', null, 'Nantong Jinta Elevator Fittings Co.Ltd', null);
INSERT INTO `wd_company` VALUES ('235', '北京航天新兴科技开发展有限责任公司', '110108003068653', '/upload/20151208/5666884222f8e.jpg', '北京市海淀区彩和坊路10号 1加1 大厦5层 506室', '北京市海淀区彩和坊路10号1加1大厦5层506室', '电子元器件 接插件 二三极管 电容电阻', '2', '杨保军', '62681232', 'yangbj@b1b.com', '经理', '13311088996', '62681950', '许经理', '62681169', 'xubo1602@163.com', '经理', '13601380352', '62681950', '1', null, 'Beijing Spacelight Rising Technology Exploitation Co Ltd', null);
INSERT INTO `wd_company` VALUES ('236', '广州市彦高机电科技有限公司', '440106000493555', '/upload/20151208/56669a3bab7e8.jpg', '广州市天河区珠村东环路121号B栋302房', '广州市天河区珠村东环路121号B栋三楼', '电磁制动器，电磁离合器，失电安全刹车器，电梯制动器。', '2', '陆佩玲', '22383510', '2507586953@qq.com', '经理', '18819446930', '22383512', '詹翠燕', '22383510', '3230453443@qq.com', '销售', '13725267651', '22383512', '1', null, 'Emco Drive Control Technolgy Ltd.', null);
INSERT INTO `wd_company` VALUES ('237', '北京拓普锐科技有限公司', '110107017565190', '/upload/20151208/5666a8fccfe77.JPG', '北京市石景山区广宁村新立街25号托儿所二层2206室', '北京市房山区怡和北路1号院3号楼1单元803', '为整梯厂、电梯配件厂提供定制开发的二维井道图设计软件及三维电梯安装和装潢软件等', '2', '张俊丽', '01089375465', 'tuopurui@126.com', '总经理', '13717915783', '01089375465', '管经理', '01089375465', 'tuopurui@126.com', '经理', '13717915783', '01089375465', '1', null, 'Beijing Tuo Pu Rui Technology Go Ltd', null);
INSERT INTO `wd_company` VALUES ('238', '张家港鑫菱机械有限公司', '320582000155464', '/upload/20151209/5667895c3474e.jpg', '张家港市南沙港西村', '南沙港西经济开发区港西中路2号', '电梯导轨、连接板、压导板及其它电梯配件制造、加工、销售以及进出口业务', '2', '卢庆', '58378981', '401901478@qq.com', '董事长', '13806223605', '58378982', '王春凤', '58378981', 'zjgxinlin@163.com ', '总经理', '13616246105', '58378982', '1', null, 'ZHANGJIAGANG XINLIN MACHINERY CO LTD', null);
INSERT INTO `wd_company` VALUES ('239', '佛山市安诚亿进出口有限公司', '440681000163746', '/upload/20151209/5667ad2b11853.jpg', '佛山市顺德区乐从镇乐从居委会新华东路9号地二巷9号', '广东省佛山市顺德区乐从镇顺联北区家私城御祥豪庭A402', '电梯配件，不锈钢', '2', '吴云月', '28838495', 'laowenxi@163.com', '经理', '13630152571', '28910728', '劳文熙', '28910728', 'laowenxi@163.com', '经理', '13450587105', '28910728', '1', null, 'FOSHAN AMM INTERNATIONAL CO LTD', null);
INSERT INTO `wd_company` VALUES ('240', '上海南龙橡胶扶手有限公司', '27000000201511190265', '/upload/20151209/5667c25760683.JPG', '上海市松江区九亭镇九泾路470号1 2幢', '上海市松江区九亭镇九泾路470号1  2幢', '橡胶自动扶梯、扶手生产加工，橡胶配件、批发零售', '2', '陆龙标', '02167627909', 'sales@shnanlong.com', '总经理', '15921980532', '02167627913', '周惠章', '02167627924', 'sales@shnanlong.com', '副总', '13651907655', '02167627913', '1', null, 'ShangHai Nanlong Rubber Handrail.CO LTD', null);
INSERT INTO `wd_company` VALUES ('241', '苏州隆裕电梯部件有限公司', '320584000370555', '/upload/20151210/5668d818e29ad.jpg', '苏州市吴江区同里镇屯南村', '吴江区同里镇屯南村邱舍南路2号', '电梯配件加工、销售，五金制品销售。', '2', '张君美', '63458885', 'longyu0528@163.com', '董事长', '18006250770', '63458885', '潘宏刚', '63458885', 'longyu0528@163.com', '总经理', '18928650115', '63458885', '1', null, 'SUZHOU LONGYU ELEVATOR PARTS CO.LTD', null);
INSERT INTO `wd_company` VALUES ('242', '上海欧方电气科技有限公司', '310112001286407', '/upload/20151210/5668e499376b2.jpg', '上海市闵行区平阳路258号一层E1068', '上海市闵行区春申路1985弄48号', '从事电气科技领域内的技术开发、技术转让、技术服务、技术咨询，电梯、电子产品、通讯器材、五金交电、计算机、软件及辅助设备（除计算机信息系统安全专用产品）、仪器仪表销售，通讯建设工程（凭许可资质经营），从事货物及进出口业务。【依法须经批准的项目，经相关部门批准后方可开展经营活动】', '2', '魏宏权', '34292755', 'weihq@ophon.cn', 'CEO', '13801742741', '34292755', '翁黑尾', '34292755', 'market@ophon.cn', '市场部经理', '18001719856', '34292755', '1', null, 'Shanghai Ophon Electrical Technology Co. Ltd.', null);
INSERT INTO `wd_company` VALUES ('243', '上海昌沪机电有限公司', '310114000847817', '/upload/20151210/566929e3cade6.jpg', '上海市闸北区光复路195号406', '上海市闸北区光复路195号406', '连接器，航空插', '2', '陈赞辉', '02153751711', '2355488060@qq.com', '总经理', '18930125585', '02163594235', '张建生', '02153751711', '2355488060@qq.com', '商务代表', '18930125585', '02163594235', '1', null, 'Shanghai Chang Shanghai Electric CoLtd', null);
INSERT INTO `wd_company` VALUES ('244', '江苏飞耐科技有限公司', '320925000011901', '/upload/20151211/566a1a464a46d.jpg', '建湖县九龙口镇蒋营东路29号', '建湖县九龙口镇蒋营东路29号', '电梯轿厢总成，电梯装潢，高速电梯用滚动导靴、滑动导靴，轿顶轮组件，聚氨酯缓冲器，电扶梯摩擦轮，铸铁绳轮、尼龙绳轮，电梯橡胶减震垫等电扶梯部件。', '2', '钟建', '51586553909', 'feinai@feinai.com', '总经理', '13912538555', '51586553999', '陈久波', '51586552505', 'cjb9985@126.com', '经理', '13962030909', '51586553999', '1', null, 'Jiangsu FeiNai Science and Technology Co. Ltd.', null);
INSERT INTO `wd_company` VALUES ('245', '泰州市口岸机带有限公司', '321203000011179', '/upload/20151211/566a377c32ebb.jpg', '泰州市高港区口岸街道振强路东侧', '泰州市高港区田河银杏路', '牵引带、传动带、橡塑制品制造，销售；自营和代理各类商品及技术的进出口业务。', '2', '蔡国圣', '86911553', 'admin@tz-qiyuan.com', '法定代表人', '13905262276', '86911841', '李泽锋', '86963902', '610996988@qq.com', '销售', '13961000095', '86911841', '1', null, 'Taizhou Kouan Mechanical Belt Co Ltd', null);
INSERT INTO `wd_company` VALUES ('246', '梅赛德斯电梯', '320584000470531', '/upload/20151211/566a73c20d7e8.jpg', '苏州市吴江区震泽镇大船港', '苏州市吴江区震泽镇大船港', '电梯生产销售', '2', '王文书', '63788315', '1158130450@qq.com', '董事长', '13375722969', '63396617', '孙小姐', '63397617', '3172522178@qq.com', '经理', '18012736705', '63396617', '1', null, 'MSDS ELEVATOR', null);
INSERT INTO `wd_company` VALUES ('247', '扬州家和电梯有限公司', '321088000357171', '/upload/20151211/566a8f7bc01fb.jpg', '扬州市江都区郭村镇', '扬州市江都区郭村镇', '家用电梯制造、安装、销售，电梯配件加工、销售，电梯升降设备销售，自营和代理各类商品及技术的进出口业务。', '2', '仇其富', '86304529', '392927676@qq.com', '法人代表', '13852590850', '86304539', '仇定祥', '86304529', '841860838@qq.com', '副总经理', '15152758118', '86304539', '1', null, 'JiaHe Elevator', null);
INSERT INTO `wd_company` VALUES ('248', '苏州巨人动力链条有限公司', '320506000025153', '/upload/20151212/566b7a57addcd.jpg', '江苏省苏州市吴中区甪直机场路6号', '江苏省苏州市吴中区甪直机场路6号 苏州巨人动力链条有限公司', '生产、销售：动力链条、五金机械配件；自营和代理各类商品及技术的进出口业务', '2', '潘振华', '65010908', 'wjq0768@163.com', '总经理', '13706202398', '65042205', '王金全', '65010908', 'wjq0768@163.com', '销售部经理', '13862100768', '65042205', '1', null, 'Suzhou Giant Power Chain Co Ltd', null);
INSERT INTO `wd_company` VALUES ('249', '宁波达通电子线缆有限公司', '330203000119295', '/upload/20151212/566bdca6a0ec8.jpg', '浙江省宁波市江北区洪塘东路8号', '浙江省宁波市江北区洪塘东路8号', '电子线缆、音响配件、天线、电梯配件的生产、加工。', '2', '崔国彪', '87168471', 'master@nbdt.cn', '总经理', '13805886814', '87162471', '崔淑蓉', '87754782', 'master@nbdt.cn', '业务经理', '15057409172', '87162471', '1', null, 'NINGBO DATONG ELECTRONIC CABLE CO LTD', null);
INSERT INTO `wd_company` VALUES ('250', '江苏赛福天钢索股份有限公司', '320200400023587', '/upload/20151214/566e25056188d.jpg', '无锡市锡山经济技术开发区芙蓉中三路151号', '江苏省无锡市经济技术开发区芙蓉中三路151号', '生产、加工钢丝、钢丝绳并提供对上述产品的维修、维护、使用指导、产品检测、定制服务', '2', '崔志强', '82401182', 'evan@jian-feng.com', '董事长', '13808845678', '82401479', '华正', '83809107', 'huazheng@jsrope.com', '市场部经理', '18921180777', '82401479', '1', null, ' Jiangsu Safety Wire Rope  ', null);
INSERT INTO `wd_company` VALUES ('251', '武汉德诺谊科技有限公司', '420106000305030', '/upload/20151214/566e2ac82058b.jpg', '湖北省武汉市洪山区友谊大道510号时尚欧洲3栋2单元1003', '湖北省武汉市洪山区友谊大道510号时尚欧洲3栋2单元1003', '电梯配件设计，研发。批发零售：机电设备，电子器材，建筑材料，电梯，电线电缆，照明设备，电源应急装置，电池批发零售。自营和代理货物及技术进出口（不含国家禁止或限制进出口的货物及技术）。软件开发（国家有专项规定的项目经审批后或凭有效许可证方可经营）', '2', '周澜', '02788044048', 'info@lakeparts.com', '总经理', '13720345281', '02788044048', '刘骢', '02788044048', 'luc@lakeparts.com', '销售经理', '13922148579', '02788044048', '1', null, 'Wuhan Lake Technology Co. ltd.', null);
INSERT INTO `wd_company` VALUES ('252', '堡盟电子上海有限公司', '310000400483271', '/upload/20151214/566e34554ffa2.jpg', '上海市松江区民强路1525号申田高科园11幢', '上海市松江区民强路1525号申田高科园11幢', '传感器，运动控制产品，视觉技术，过程仪表', '2', 'Oliver Vietze', '67687095', 'marketing.cn@baumer.com', '总裁', '18621139621', '67687096', '宋凌', '33738284', 'sales.cn@baumer.com', '市场传讯经理', '18621139621', '67687096', '1', null, 'Baumer China', null);
INSERT INTO `wd_company` VALUES ('253', '上海安奥电梯配件有限公司', '310114002289575', '/upload/20151214/566e35a9b3a27.jpg', '上海市嘉定区南翔镇翔江公路1222号403室', '上海市嘉定区南翔镇翔江公路1222号403室', '电梯设备及配件的销售', '2', '恽廷钟', '02159122222', 'KEVIN@ANAO.NET', '董事长', '15000700811', '0215912222', '何亮', '02159122222', '3126038620@qq.com', '销售总监', '18149704709', '0215912222', '1', null, 'SHANGHAI ANAO ELEVATOR COMPONENTS', null);
INSERT INTO `wd_company` VALUES ('254', '成都瑞迪机械实业有限公司', '510122000015218', '/upload/20151214/566e75ade53d8.jpg', '成都市双流县西航港大道四段909号', '成都市双流县西航港大道四段909号', '加工、销售普通电器机械及汽车零部件；生产、销售数控机床零部件、起重机械及配套产品销售金属材料、工量具、矿山机械、工程机械；从事货物进出口和技术进出口的对外贸易经营业务、精密机械、机电产品、新能源产品研发及服务农业项目开发及科技开发；项目投资；', '2', '卢晓蓉', '02885754056', 'sherr.lu@reachmachinery.com', '董事长', '13980050458', '02875754376', '孙博宇', '02885754027', 'sby@reachmachinery.com', '国内销售总监', '13981818612', '02885753938', '1', null, 'REACH MACHINERY ENTERPRISE', null);
INSERT INTO `wd_company` VALUES ('255', '苏州立达中远电梯有限公司', '320594000021560', '/upload/20151215/566f6c8a7c03f.JPG', '苏州市相城大道168号a座827', '苏州市相城大道168号a座827', '电梯', '2', '吴钢', '65233486', 'postmaster@lidalift.com.cn', '董事长', '13962119239', '65233312', '吴玥华', '65233486', 'wu.yuehua@lidalift.com.cn', '总经理', '15862421093', '65233312', '1', null, 'Suzhou Lead zoyo elevator coltd', null);
INSERT INTO `wd_company` VALUES ('256', '苏州德易斯机电有限公司', '320584000377122', '/upload/20151215/566f6eacc0cde.jpg', '江苏省苏州市吴江区汾湖镇莘塔社区龙江路777号', '江苏省苏州市吴江区汾湖镇莘塔社区龙江路777号', '家用电梯整机、电梯配件的研发、生产、销售、安装、维修；自营和代理各类商品及技术的进出口业务', '2', '李娟仙', '82065889', 'LJX@szdeyisi.com', '经理', '13913072382', '82065881', '柳新椰', '82065061', 'Doris@szdeyisi.com', '海外部兼国内销售主管', '18262197018', '82065881', '1', null, 'Suzhou Deyisi Electromechanical Co LTD', null);
INSERT INTO `wd_company` VALUES ('257', '驰美电机上海有限公司', '310118002684890', '/upload/20151215/566f8d2f10a94.jpg', '上海市青浦区白石公路3288号W座', '上海市青浦区南平路118号', '生产 设计电气设备 电机 机械设备', '2', '张丹丹', '02159218396', 'ccm_sale@126.com', '总经理', '13817926925', '02159218382', '黄希雯', '02133588902', 'ccm_sales@126.com', '销售部门', '13817926925', '02133588902', '1', null, 'SHANGHAI CCM MOTOR CO', null);
INSERT INTO `wd_company` VALUES ('258', '法尔福钢绳上海有限公司', '310000400402523', '/upload/20151215/566f8c846e0b9.JPG', '上海市闸北区灵石路709号64 2厂房', '上海市闸北区永和路159号', '钢丝绳及配件，钢缆结构，链接和固定设备，提升设备等', '2', 'Pfeifer', '02156778006', 'info@pfeifer.com.cn', '总裁', '13917520001', '02156779229', '朱迎春', '02156778006', 'alex.zhu@pfeifer.com.cn', '销售副总监', '13917521291', '02156779229', '1', null, 'Pfeifer steel wire rope shanghai Co.Ltd', null);
INSERT INTO `wd_company` VALUES ('259', '123123123', '3123123123123', '/upload/20151216/5670f38c92234.jpg', '1231232', '1312313', '123123123123123', '2', '123123', '123123', '123123@qq.com', '12312313', '13211231234', '2234234234', '23424234', '234234', '12312312312@qq.com', '23423423', '13211111111', '123123123', '0', null, '12312312312', null);
INSERT INTO `wd_company` VALUES ('260', '埃尔格无锡电子科技有限公司 ', '320213400000652', '/upload/20151216/5671058489773.jpg', '无锡市新区菱湖大道228号天安智慧城A1 406', '无锡市新区菱湖大道228号天安智慧城A1 406', '电梯配件', '2', 'GRIMM HELMUT', '51085383756', 'sam.zhu@elgo-electronic.cn', '总经理', '18012474300', '51085380725', '朱锡生', '51085383756', 'sam.zhu@elgo-electronic.cn', '产品经理', '18012474300', '51085380725', '1', null, 'ELGO WUXI ELECTRONIC TECHNOLOGY', null);
INSERT INTO `wd_company` VALUES ('261', '广州创美能源科技有限公司', '440111000299591', '/upload/20151216/5671238f50827.jpg', '广州市番禺区汕头路122号', '上海市中山西路998弄2号301室', '电梯用电线电缆', '2', '李宏冰', '87412256', 'leihao021@163.com', '经理', '13818297776', '87412258', '李浩', '31297682', '879747728@qq.com', '销售经理', '13818297776', '31297682', '1', null, 'guangzhou crvetice energy technology co ltd', null);
INSERT INTO `wd_company` VALUES ('262', '金纯机械上海有限公司', '310000400142230', '/upload/20151217/5672111ed3918.jpg', '上海市浦东新区新场镇坦仁路88号', '上海市浦东新区新场镇坦仁路88号', '生产曳引机，提升机及冶金配件，相关液压电器控制系统及电梯附件相关的塑料及五金零部件，销售自产产品。（涉及许可经营的凭许可证经营）', '2', '金子纯也', '02168151893', 'sales@kanekosh.com.cn', '董事长', '13801998197', '02168153067', '邹宏', '021-68151351', 'zh@kanekosh.com.cn', '销售部职员', '13636692525', '021-68151351', '1', null, 'JINCEN MACHINERYSHANGHAICOLTD', null);
INSERT INTO `wd_company` VALUES ('263', '河谷佛山汽车润滑系统制造有限公司', '440600400018075', '/upload/20151217/5672261ea2e5a.jpg', '佛山市禅城区高新技术开发区罗格围一期工业区', '佛山市禅城区高新技术开发区罗格园内禅秀路18号', '生产经营汽车电子设备系统（汽车底盘电子程控集中润滑系统及辅件等）以及其他机械集中润滑系统和上述产品的售后维修服务。（依法须经批准的项目，经相关部门批准后方可开展经营活动。）', '2', '姚燕业', '82011888', 'herg1@126.com', '总经理', '13302847988', '82817096', '易双英', '82011888', '1815075138@qq.com', '展务专员', '18029268689', '82817096', '1', null, 'Herg Foshan Automotive Lubrication System Manufacture Co.Ltd', null);
INSERT INTO `wd_company` VALUES ('264', '苏州市德风电梯工程有限公司', '320502000103949', '/upload/20151217/56722fcfcc190.jpg', '苏州市吴中区临湖镇湖桥工业园1区湖桥大道1号', '苏州市吴中区临湖镇木东路与湖桥大道交叉口', '承接电梯工程的安装、维修、保养服务；电梯轿厢装饰装潢设计与制作；销售：电梯、装饰装潢材料。', '2', '柏文元', '65234608', 'defengdt@126.com', '总经理', '13814802468', '65298990', '黄玉叶', '65234608', 'defengdt@126.com', '市场部', '15062412076', '65298990', '1', null, 'Defon Suzhou Elevator Engineering Co Ltd', null);
INSERT INTO `wd_company` VALUES ('265', '库伯勒北京自动化设备贸易有限公司', '110000450030938', '/upload/20151217/56723a99d3d33.jpg', '北京市朝阳区望京新兴产业园区利泽中园二区208号2号楼4404室', '北京市朝阳区阜安西路望京SOHO塔2B座1603室', '一般经营项目：从事精密仪器及设备、机械器具、电器设备及上述商品的零备件的批发进出口（设计配额许可证管理、专项管理规定的商品按照国家有关规定办理）', '2', '洛塔尔维尔讷库伯勒', '84710818', 'xiwei.xiao@kuebler.com', '执行董事', '18618415235', '84710819', '肖西维', '84710818', 'xiwei.xiao@kuebler.com', '执行董事助理以及市场交流与宣传', '13436580037', '84710819', '1', null, 'Kuebler Beijing Automation Trading Company Limited', null);
INSERT INTO `wd_company` VALUES ('266', '高丽制钢株式会社', '6178100049', '/upload/20151217/56723fe3f35ce.jpg', '20F Jangkyo Bldg Jangkyo dong 363 Samil daero Seoul Korea', '中国上海市世纪大道1168号A座1003室', '高碳钢铁线材产品：钢丝绳等', '2', 'Na', '02152080929', 'geoffrey@kiswire.com', 'Na', '13000000000', '02152082878', '周臻', '02152080929', 'geoffrey@kiswire.com', '经理', '13816003360', '02152082878', '1', null, 'KISWIRE LTD', null);
INSERT INTO `wd_company` VALUES ('267', '吉梯机电上海有限公司', '310000400350251', '/upload/20151217/56726db74fbdb.jpg', '上海市松江区车墩镇香车路262号', '上海市松江区车墩镇香车路262号', '生产、加工电梯零部件，销售公司自产产品，并提供售后技术支持。', '2', '任永一', '02157775775', 'gt@good3.net', '总经理', '13816680774', '02157775181', '阮建英', '02157775775', 'jyruan@good3.net', '销售经理', '13918647121', '02157775181', '1', null, 'GT Industrial Shanghai Ltd', null);
INSERT INTO `wd_company` VALUES ('268', '上海托菲机电科技有限公司', '310116002098360', '/upload/20151217/56726ec43e603.jpg', '上海市虹口区丰镇路806号1号楼6楼', '上海市虹口区丰镇路806号1号楼6楼', '传感器、编码器', '2', '蒋娜', '65311020', '1607522761@qq.com', '总经理', '13817626600', '65311031', '杨宋情', '65311020', '1607522761@qq.com', '设计', '13917354943', '65311031', '1', null, 'Shanghai TOFI Industry Technology Co Ltd', null);
INSERT INTO `wd_company` VALUES ('269', '浙江五洲新春集团股份有限公司', '330624000040168', '/upload/20151217/567270cb2e7c3.jpg', '浙江省新昌县泰坦大道199号', '浙江省新昌县泰坦大道199号', '轴承及轴承配件', '2', '张峰', '57586339600', 'xcc@xcc-zxz.com', '董事长', '13758562308', '57586339600', '陶然', '57586339600', 'taoran@xcc-zxz.com', '市场开发专员', '18858595703', '57586339600', '1', null, 'ZHEJIANG XCC GROUP CO LTD', null);
INSERT INTO `wd_company` VALUES ('270', '上海万戎电梯配件有限公司', '310112000870161', '/upload/20151218/567378b90b4c4.png', '上海市嘉定区海川路77弄44号102室', '上海市嘉定区海川路77弄44号102室', '电梯配件销售', '2', '马飞', '02158859306', '8485858@qq.com', '销售经理', '13818087726', '02158857187', '居鹤飞', '02162120318', '8495858@qq.com', '销售经理', '13564665229', '02158857187', '1', null, 'SHANGHAI WELLON ELEVAROE PARTS CO LTD', null);
INSERT INTO `wd_company` VALUES ('271', '广州晖能环保材料有限公司', 'S0612014108186', '/upload/20151218/5673a7c2a5182.jpg', '广州市天河区天河路490号2211', '广州市天河区天河路490号2211', '保温材料、真空机械设备、环保薄膜的研发、生产、销售。', '2', '袁江涛', '61007198', 'martin@nano-vip.com', '总经理', '18620002822', '61007194', '黄建兵', '61081321', 'hjb@nano-vip.com', '销售经理', '18520701838', '61007194', '1', null, 'Siltherm  International  Group  Limited', null);
INSERT INTO `wd_company` VALUES ('274', '海宁市红狮电梯装饰有限公司', '330400400012104', '/upload/20151219/5674a505c2d1d.png', '浙江省海宁市硖川路399号', '浙江省海宁市硖川路399号', '电梯装潢', '2', '沈建一', '5829584823', '234234@163.com', '总经理', '13563563356', '05738701812', '李胜江', '57387048112', 'shengjiang.li@163.com', '设计部部长', '13857337169', '57387010812', '1', null, 'haininghongshi', null);
INSERT INTO `wd_company` VALUES ('273', '佛山市昌宏电梯机械有限公司', '914406075863573721', '/upload/20151218/5673c7b7c6c73.jpg', '佛山市三水区', '佛山市三水区西南街创业路1号车间二首层', '生产、销售电梯配件', '2', '陈汉昌', '87713252', '1025071182@qq.com', '总经理', '13928550371', '87782413', '钟叶玲', '87713252', '1025071182@qq.com', '业务助理', '13318307903', '87782143', '1', null, 'foshan changhong elevatorcoltd', null);
INSERT INTO `wd_company` VALUES ('275', '上海 科达传动系统有限公司', '310000400405697', '/upload/20151219/5674bc2326e02.jpg', '上海市闵行区万源路2759弄', '上海市闵行区万源路2759弄', '生产加工传动带、输送带、传动件及相关工业器材配套产品', '2', '余维建', '64463303', 'wj.yu@fordatachina.com', '总经理', '13602290066', '64060250', '林世均', '64463303', 'linshijun6@126.com', '经理', '13901620445', '64060250', '1', null, 'Fordata  Shanghai Ltd.', null);
INSERT INTO `wd_company` VALUES ('276', '上海科达传动系统有限公司', '31000040045697', '/upload/20151219/5674c63d55f9c.jpg', '上海闵行区万源路2759弄', '上海闵行区万源路2759弄', '生产加工传动带,输送带,传动件及相关工业器材配套产品', '2', '余维建', '64463303', 'wj.yu@fordatachina.com', '总经理', '13602290066', '64060250', '林世均', '64463303', 'linshijun6@126.com', '经理', '13901620445', '64060250', '1', null, 'Fordata Shanghai Ltd.', null);
INSERT INTO `wd_company` VALUES ('277', '三实工业开关上海有限公司', '310116002308307', '/upload/20151221/567758051975c.jpg', '全国', '上海市黄浦区西藏中路728号美欣大厦15G', '电子产品，电梯配件等', '2', '倪华芳', '02153082735', 'jianbo.luo@suns-cn.com', '经理', '18964561908', '02153082746', '罗建波', '02153082735', 'jianbo.luo@suns-cn.com', '职员', '18964561908', '02153082746', '1', null, 'SUNS industrial switch Shanghai Co.LTD', null);
INSERT INTO `wd_company` VALUES ('278', '捷成工业中国有限公司', '310000400692353', '/upload/20151221/56776d490b04f.JPG', '上海市黄浦区延安东路618号东海商业中心19楼C室及D室', '上海市黄浦区延安东路618号东海商业中心19楼C室及D室', '机械设备、电子产品、转让自研成果和机械设备等', '2', 'Maximilian von Stillfried', '02123064758', 'mikelong@jebsen.com', 'Managing Director', '18602129456', '02123064999', 'Mike Long', '02123064758', 'mikelong@jebsen.com', 'Sr event marketing officer', '18602129456', '02123064999', '1', null, 'Jebsen Industrial China Company Limited', null);
INSERT INTO `wd_company` VALUES ('279', '深圳市天戈科技有限公司', '440301105348841', '/upload/20151221/567777e583fdc.jpg', '深圳市福田区冬瓜岭茂恒园二号楼504号', '深圳市龙岗区布吉布澜路上李朗巨银科技工业园F6栋4楼', '电梯液晶显示器', '2', '林俊庆', '89500200', '18603058583@163.com', '法人', '13823258583', '89501155', '刘博杰', '89500200', 'nickshoot@163.com', '销售', '18682126213', '89501155', '1', null, 'SHENZHEN TANGALE TECHNOLOGY CO LTD', null);
INSERT INTO `wd_company` VALUES ('280', '天津世林新型建材销售有限公司', '12110000246251', '/upload/20151221/5677b8d343391.png', '天津市 东丽开发区 三纬路 二号', '天津市 东丽开发区 三纬路 二号', '韩国进口装饰贴膜', '2', '李成柱', '02224967665', '1185094374@qq.com', '经理', '18630947718', '300300', '李成柱', '02224967665', '1185094374@qq.com', '经理', '18630947718', '02224967665', '1', null, 'tianjinshilinxinxingjiancaixiaoshouyouxiangongsi', null);
INSERT INTO `wd_company` VALUES ('281', '巍岬电梯配件上海有限公司', '310000400762836', '/upload/20151221/5677bf00d266f.jpeg', '上海市宝山区宝山工业园区枫叶路188号', '上海市宝山工业园区枫叶路188号', '从事电梯按钮、电梯操纵盘、钣金金属零件、电子电器模块的生产；以电脑设计方式从事电梯配件、钣金金属零件、电子电器模块的研发', '2', 'Paolo Vitturini', '02136510926', 'paolo.vitturini@vegalift.it', 'CEO', '15618129479', '02136510926', '黄逸', '02136510926', 'huang.yi@vegalift.it', '总经理助理', '18017668616', '02136510926', '1', null, 'Vega Elevator Components Shanghai Co Ltd', null);
INSERT INTO `wd_company` VALUES ('282', '无锡市泰坛电梯部件有限公司', '320213000178644', '/upload/20151222/5678b15cd4c95.jpg', '无锡市新区锡贤路78号', '无锡市并报区锡贤路78号', '电梯部件，配件，电器元器件等。', '2', '蔡勇进', '51081817899', '504627758@qq.com', '总经理', '13321997230', '51081817899', '蔡晨红', '51081817899', '32015341@qq.com', '行政', '13961707502', '51081817899', '1', null, 'wuxi titanx elevator components Co. LTD.', null);
INSERT INTO `wd_company` VALUES ('283', '江阴海丰电梯导轨有限公司', '320281000391258', '/upload/20151222/5678d993913a6.jpg', '江阴市祝塘镇金庄路', '江阴市祝塘镇金庄路9号', '电梯配件的制造，加工，销售', '2', '邱兴华', '86100669', 'info@sino-hifn.com', '总经理', '13806228368', '68832668', '花丹霞', '86100669', 'assistant@elevator.hk', '经理助理', '13915835023', '68930030', '1', null, 'HAIFENG', '48');
INSERT INTO `wd_company` VALUES ('284', '巨立电梯股份', '320583000064749', '/upload/20151222/5678e2723ae5b.jpg', '昆山正仪', '昆山正仪', '整梯生产销售', '2', 'a', '111111', 'clq-2608@163.com', 'a', '15862954562', '57899265', 'a', '111111', 'cl1-2608@163.com', 'a', '15565263212', '57895566', '1', null, 'joylive', '414');
INSERT INTO `wd_company` VALUES ('285', '广东皇冠电梯有限公司', '441900000039351', '/upload/20151223/5679fbdcc4b93.jpg', '广东省东莞市东城区桑园工业区狮龙路22号', '广东省东莞市东城区桑园工业区狮龙路22号', '产销、安装、维修：电梯（按特种设备行政许可证经营）', '2', '欧家坤', '23168366', '2014483459@qq.com', '董事长', '13553883202', '23168366', '欧晓婷', '23168388', '2014483459@qq.com', '助理', '13553883202', '23168366', '1', null, 'GUANGDONG CROWN ELEVATOR', '120平方米');
INSERT INTO `wd_company` VALUES ('286', '上海三斯电子有限公司', '310229000302679', '/upload/20151223/5679fe73b5c5f.jpg', '上海市普陀区怒江北路561弄5号楼2楼', '上海市普陀区怒江北路561弄5号楼2楼', '销售电梯配件、电子元器件、接插件、五金机电等', '2', '薛飞', '02151087655', 'gm_xue@shsansi.com', '总经理', '13636383204', '02152650623', '陈寅', '02151087655', 'chenyin@shsansi.com', '市场推广', '13636383204', '02152650623', '1', null, 'Shanghai Sansi Electronic Electrical Technology', '260');
INSERT INTO `wd_company` VALUES ('287', '宁波赛姆特电气有限公司', '3302030000313367', '/upload/20151223/567a469765824.jpg', '宁波市海曙区机场路桥弄36弄2号', '宁波市海曙区望童路658弄79号', '电梯超载装置，传感器，平层开关，电梯光幕，相序保护器', '2', '谭强生', '', '', 'CEO', '', '', '申晓青', '057487164091', 'sales01@summit3e.com', '', '13884406469', '', '1', null, 'Ningbo Summit Electric Co Ltd', '36');
INSERT INTO `wd_company` VALUES ('288', '慈溪市东龙塑料轴承厂', '330282600073537', '/upload/20151223/567a55390ebc7.jpg', '慈溪市横河镇东畈村', '慈溪市横河镇东畈村', '塑料制品、轴承、五金配件、橡胶制品、模具制造、加工......', '2', '孙建良', '63191623', '617720905@qq.com', '总经理', '13806642385', '63191881', '孙梦佳', '63191623', '617720905@qq.com', '销售经理', '13586603287', '63191881', '1', null, 'CiXi city east dragon plastic bearing factory', '12平米');
INSERT INTO `wd_company` VALUES ('289', '宁波通菱电梯有限公司', '1465667', '/upload/20151224/567b5818ce1d5.jpg', '香港', '宁波市江北区北海路68号正和电商园341室', '电梯配件', '2', '陈颖', '88129908', 'pingshui2000@hotmail.com', '经理', '13777199520', '8129918', '王德江', '88129908', 'pingshui2000@hotmail.com', '经理', '13586562786', '88129918', '1', null, 'Ningbo Tongling Elevator Limited', '30');
INSERT INTO `wd_company` VALUES ('290', '东方红', '3124682185851', '/upload/20151224/567ba664219b8.jpg', '上海市东安路255', '上海市东安路255', '电梯、电梯配件、电梯安全部件', '2', '东方', '11111111111', '1111111@qq.com', '东方', '13249844457', '11111111111', '东方', '11111111111', '111111111@qq.com', '东方', '13484588888', '11111111111', '0', null, 'dongfanghpong', '80');
INSERT INTO `wd_company` VALUES ('291', '四川快速电梯有限公司', '510100400020445', '/upload/20151224/567babfa5c275.jpg', '四川省成都市双流县华府大道二段1158号', '四川省成都市双流县华府大道二段号', '制造、安装、维修电梯、自动扶梯、自动人行道及零配件和附件、销售本公司产品，并提供相关售后服务（以上范围不含国家法律法规限制或禁止的项目，涉及许可的凭相关许可证开展经营活动）。', '2', '简晓琴', '02861906132', '825824022@qq.com', '董事长', '13908211201', '02861906100', '罗惠', '02861906132', '825824022@qq.com', '办公室主任', '13908211201', '02861906100', '1', null, 'DOPPLER', '36');
INSERT INTO `wd_company` VALUES ('292', '苏尔克姆洛阳电子有限公司', '410300400005272', '/upload/20151224/567bb358698d1.jpg', '河南省洛阳市高新技术开发区洛宜路60号', '河南省洛阳市高新技术开发区洛宜路60号', '变压器  电梯安全部件', '2', '艾拓', '64332329', 'aitor.suarcom.china@zarel.com', '总经理', '13948283411', '64332329', '王立峰', ' 64332329', 'luoyang_b@suarcom.com.cn', '商务经理', '18937996300', '64332329', '1', null, 'SUARCOM.ELECTRONICS.CO.LTD', '80--100平方');
INSERT INTO `wd_company` VALUES ('293', '山东冠县乾峰轴承有限公司', '371525200015100', '/upload/20151227/567f41e4b59e8.jpg', '山东省聊城市冠县', '山东省聊城市冠县', '电梯轴承\r\n电梯导向轮轴承 \r\n电梯对重轮轴承', '2', '李洪林', '4009986997', '1013519964@qq.com', '法人', '18263525666', '5719363', '李玉乾', '4009986997', '7626312@qq.com', '销售', '18365916888', '5719363', '1', null, 'Shandong guan dry peak bearing co. LTD', '12');
INSERT INTO `wd_company` VALUES ('294', '上海川亚石业有限公司', '310226001062443', '/upload/20151227/567f94cb634fb.jpg', '上海奉贤区庄行镇安东南路860弄19号', '上海奉贤区庄行镇安东南路860弄19号', '石材.刚才 金属材料  建筑装潢材料 等', '2', '唐怀波', '37583030', 'shanghaichuanya@126.com', '总经理', '15002131189', '37583200', '高锋云', '37583030', '565743380@qq.com', '经理', '15002131189', '37583200', '1', null, 'shanghaichuanyashiyeyouxiangongsi', '24㎡');
INSERT INTO `wd_company` VALUES ('295', '嘉兴市思尔德薄膜开关有限公司', '330402000054423', '/upload/20151228/5680a123998f2.jpg', '嘉兴市南湖区余新曹庄工业园区', '嘉兴市南湖区余新曹庄工业园区人民路1号', '薄膜开关，标识标牌，钣金件，非标机箱等', '2', '董国庆', '57383227788', '750194573@qq.com', '总经理', '13905737313', '57383227789', '王林', '57383227788', '750194573@qq.com', '业务员', '13732565580', '57383227789', '1', null, 'jiaxing sierde membrane switch co ltd', '12');
INSERT INTO `wd_company` VALUES ('296', '上海天逸电器股份有限公司', '310227000294217', '/upload/20151228/5680a4f206857.JPG', '上海市松江区车墩镇北闵路101号', '上海市松江区车墩镇北闵路101号', '按钮指示灯，警示灯，限位开关，LED灯，低压主令电器', '2', '陈晓', '57776240', '416136672@qq.com', '总经理', '13338472054', '57776240', '潘家骏', '57776240', '416136672@qq.com', '产品经理', '13661627804', '57776240', '1', null, 'Shanghai Tayee Electric Co Ltd', '36');
INSERT INTO `wd_company` VALUES ('297', '上海森尼电梯成套有限公司', '07000000201510190214', '/upload/20151228/5680af584c699.JPG', '上海市嘉定区金园五路225号', '上海市嘉定区金园五路225号', '电子产品及机械产品生产、加工、销售；销售电梯', '2', '陈贵荣', '02159146407', 'cgr17064d@126.com', '董事长', '13916201278', '02159118457', '蒋忠义', '02159146407', '1020741789@qq.com', '质量管理部', '13621601311', '02159118457', '1', null, 'Shanghai Sunny Elevator Assembly Co Ltd', '60');
INSERT INTO `wd_company` VALUES ('298', '展鹏科技股份有限公司', '320200000112662', '/upload/20151228/5680ccdc4c363.png', '无锡市南长区飞宏路8号', '无锡市南长区飞宏路8号', '工业自动控制系统装置、电梯自动扶梯及升降机专用配套件的技术开发、制造、销售；机电一体化工程、物联网软硬件的技术开发、技术转让；物联网软硬件的系统集成；自营和代理各类商品及技术的进出口业务（国家限定企业经营或禁止进出口的商品和技术除外）。（依法须经批准的项目，经相关部门批准后方可开展经营活动）', '2', '金培荣', '81003288', '306244366@qq.com', '总经理', '13906187992', '85403856', '王梦威', '81003266', 'wmwting@126.com', '大客户经理', '15852772009', '85403856', '1', null, 'Flying Technology Co Ltd', '308');
INSERT INTO `wd_company` VALUES ('299', '天津兴晟和橡胶制造有限公司', '120112000207794', '/upload/20151229/5681ec7703c0a.jpg', '天津市津南区辛庄镇环美路3过2号', '天津市津南区辛庄镇环美路3过2号', '橡胶制品制造，汽车配件，电梯配件，金属制品制造，加工，销售', '2', '邢杰', '02288825682', 'jsk@tjthxj.com', '董事长', '13752228952', '02288825660', '赵振忠', '02288825682', 'jsk@tjthxj.com', '总经理', '13752228952', '02288825660', '1', null, 'Tian Jin Xing Sheng He rubber manufacturing Co.Ltd.', '12平米');
INSERT INTO `wd_company` VALUES ('300', '佛山市顺德区汇佶电器有限公司', '440681000102234', '/upload/20151229/568249db3f31b.png', '佛山市顺德区均安镇爱得乐路12号', '佛山市顺德区均安镇爱得乐路12号', '控制变压器', '2', '易康荣', '75725511798', 'hw_chow@basicelectric-group.com', '总经理', '13923241010', '75725511798', '周洪伟', '75725511798', 'hw_chow@basicelectric-group.com', '销售经理', '13923241010', '75725511797', '1', null, 'Basic Electric ', '12');
INSERT INTO `wd_company` VALUES ('301', '上海库开机电科技有限公司', '310228001396335', '/upload/20151229/56824a6e7ade1.jpg', '上海市松江区民益路201号29栋6楼', '同上', '电梯钣金机器人自动化无人生产线', '2', '王宏忠', '02167692159', 'whz@go-king.com', '总经理', '13761559194', '02167692160', '王宏忠', '02167692160', 'whz@go-king.com', '总经理', '13761559194', '02167692160', '1', null, 'GOKING ', '72');
INSERT INTO `wd_company` VALUES ('302', '秦川机床工具集团股份公司', '610000100146943', '/upload/20151230/56833cf5f0592.jpg', '宝鸡市姜谭路22号', '宝鸡市姜谭路22号', '通用及专用设备制造，黑色及有色金属加工，航空航天和其它运输设备的配件制造，金属制品，塑料制品。\r\n齿轮箱、取力器、曳引机等功能部件。', '2', '刘昱', '09173670728', 'ly3670706@163.com', '厂长', '18691772842', '09173392020', '关骅', '09173670723', '13892437710@163.com', '销售', '13892437710', '09173393841', '1', null, 'Qinchuan Machine Tool Tool Group Corp', '72平方米');
INSERT INTO `wd_company` VALUES ('303', '苏州富美达电梯部件有限公司', '320584000350953', '/upload/20151230/56833fab46961.jpg', '苏州吴江区七都镇东环路西侧创立路98号', '苏州吴江区七都镇东环路西侧创立路98号', '电梯平衡补偿链、重锤导杆、绳头组件等；', '2', '孙红良', '63479778', 'fumd8778@126.com', '技术总监', '18626167188', '63808778', '濮建忠', '63479778', 'pujz9922@163.com', '执行副总', '18501559922', '63808778', '1', null, 'Suzhou Mida Elevator Parts   Limited Company', '23平方');
INSERT INTO `wd_company` VALUES ('304', '厦门钰翰工贸有限公司', '91350200MA344T9L6U', '/upload/20151231/56847fb46db58.jpg', '厦门市翔安区内厝镇霞美村', '厦门市翔安区内厝镇霞美村', '制造机械部件，批发和零售', '2', '王建军', '05927391333', 'xmst@163.com', '总经理', '18959236333', '05927391222', '陈明贵', '05927391333', 'xmst@163.com', '主管', '18959257956', '05927391222', '1', null, 'xIAMEN YUHAN CO LTD', '12');
INSERT INTO `wd_company` VALUES ('305', '广州市启泰模具工业有限公司', '440122000001586', '/upload/20151231/5684827fa2110.jpg', '广东省广州市从化明珠工业园丽峰路7号', '从化', '数控冲床模具 折弯模具', '2', '', '', '', '', '', '', '王舟', '', '', '', '13580531608', '', '1', null, 'KETEC Precison Tooling', '48');
INSERT INTO `wd_company` VALUES ('306', '北京拉特激光精密仪器有限公司', '91110112781706451J', '/upload/20151231/56848aec5221c.jpg', '北京通州区张家湾镇通州工业开发区光华路16号方和正圆内6号厂房', '北京通州区张家湾镇方和正圆工业园6号辅楼', '轨道平顺度激光检测仪，电梯检测仪器，工业测量仪器，特检类仪器，水库大坝变形检测系统，高铁检测设备。', '2', '刘洪云', '61507212', 'coreldraw2003@qq.com', '总经理', '13683122030', '57562150', '张乐旺', '61507212', '1217687240@qq.com', '市场部经理', '13683122030', '57562150', '1', null, 'beijing latlaser precision instruments co.ltd', '12');
INSERT INTO `wd_company` VALUES ('307', '厦门科携自动化科技有限公司', '350212200098825', '/upload/20151231/56849c63c428a.jpg', '厦门市同安区城南二里39号202室', '厦门市同安区城南二里39号202室', '电梯停电应急装置、松闸电源装置、电梯专用空调、电梯IC卡等电梯相关电梯配件。', '2', '余敏旺', '05923505015', '408708552@qq.com', '总经理', '15880234237', '05923788651', '余敏旺', '05923505015', '408708552@qq.com', '总经理', '15880234237', '05923788651', '1', null, 'Xiamen Kexie Automation Technology co Ltd', '12平');
INSERT INTO `wd_company` VALUES ('308', '苏州茂隆电梯配件有限公司', '320583000486447', '/upload/20151231/5684e27ad24c5.jpg', '江苏省昆山市张浦镇亲和路339号', '江苏省昆山市张浦镇亲和路339号', '螺丝、螺帽、螺栓、拉帽等紧固件的销售；货物以及技术的进出口业务', '2', '纪德龙', '51286162111', 'ZMWJ@ZMWJ.CN', '总经理', '13806266208', '51257307977', '钱忠义', '51281638831', 'andychieninternational@zmwj.cn', '销售经理', '15262605123', '51257307977', '1', null, 'SUZHOU MAOLONG ELEVATOR PARTS CO LTD', '36');
INSERT INTO `wd_company` VALUES ('309', '北京钢德工贸有限公司', '110115018259128', '/upload/20160104/5689c4dc3f933.jpg', '北京市大兴区长子营镇北泗上村五排一号', '北京市大兴区长子营镇北泗上村五排一号', '电梯装饰不锈钢板材，金属制品等', '2', '饶红新', '01080216850', '332697899@qq.com', '总经理', '18600939233', '01080216850', '王斐', '01080216810', 'fayewang@goldtrustss.com', '国际部经理', '18810025702', '01080216850', '1', null, 'Beijing Gold Trust Stainless Steel Company Limited', '12平米');
INSERT INTO `wd_company` VALUES ('310', '中达电通股份有限公司', '310000400013545', '/upload/20160104/568a0b5c023d5.jpg', '上海市浦东新区民夏路238号', '上海市浦东新区民夏路238号', '生产新能源产品的集成配套设备，显示设备，通信电源，不间断电源，变频器等工业自动化控制系统装置等仪器仪表，节能设备等，销售自产品产品，进出口业务等相关配套业务', '2', '郑平', '58635678', 'marking@deltaww.com', '执行董事长', '18616686681', '58630003', '苑申', '58635678', 'yuan.shen@deltaww.com', '公关活动专案经理', '18616686681', '58630003', '1', null, 'Delta GreenTech', '135');
INSERT INTO `wd_company` VALUES ('311', '无锡申菱电梯配套有限公司', '320206000009661', '/upload/20160104/568a0d64f1228.jpg', '无锡市惠山区玉祁街道堰玉路85号', '无锡市惠山区玉祁街道堰玉路85号', '电梯、自动扶梯配套件', '2', '魏泉林', '83880559', 'sales@wxshenling.com', '法人代表', '13812079396', '83880850', '宋聃', '83883030', 'sales@wxshenling.com', '销售科员', '15261570719', '83880850', '1', null, 'Wuxi Shenling Elevator Accessories Limited Company', '24');
INSERT INTO `wd_company` VALUES ('312', '广州中梯物联网科技有限公司', '440103000241489', '/upload/20160104/5689e1a20021c.jpg', '广州市荔湾区黄沙大道144号903A房', '广州市荔湾区黄沙大道144号903A房', '互联网和相关服务', '2', '辛建国', '81370599', 'xjg@liftnet.cn', '法人代表', '13903713426', '81967931', '陈楚瑕', '81370599', 'ccx@liftnet.cn', '市场部经理', '13751887967', '81967931', '1', null, 'GuangZhou China Liftnet Technology Limited Company', '12');
INSERT INTO `wd_company` VALUES ('313', '广州市索达电气设备有限公司', '440126000152516', '/upload/20160104/568a0f063afd4.jpg', '广州市南沙区东涌镇市南路太石工业区三楼', '广州市番禺区东涌镇太石工业区博盈工业园', '专业生产电梯应急平层装置，电梯空调，电梯IC卡和无线对讲机厂家', '2', '林浩生', '02034929580', '312606133@qq.com', '总经理', '18664860995', '02034904285', '林海丰', '02034929580', '312606133@qq.com', '经理', '18664860995', '02034904285', '1', null, 'GUANGZHOU SODA ELECTRICS CO LTD ', '标准展位12平方');
INSERT INTO `wd_company` VALUES ('314', '天津飒派传动有限公司', '120000400052214', '/upload/20160105/568b1b6c763d0.jpg', '天津市北辰区', '天津市北辰区天津高端装备制造产业园永信道10号', '开发生产伺服电机', '2', 'Zanichelli Giannino', '26938300', 'cathy.gao@evs-inmotion.com', 'CEO', '13114951188', '26938919', '高东凤', '26938300', 'cathy.gao@evs-inmotion.com', '客户服务', '13821840163', '26938919', '1', null, 'Tianjin Zapi motion co ltd', '12平米');
INSERT INTO `wd_company` VALUES ('315', '广州冠权一展展览策划有限公司', '440106000796567', '/upload/20160105/568b311ff04e7.jpg', '广州市番禺区番禺大道北万利商业园E栋503', '广州市番禺区万达广场B3栋3208', '广告，制作，展位', '2', '张园', '39281158', '408328691@qq.com', '总经理', '18320095896', '02039281158', '张园', '39281158', '408328691@qq.com', '张园', '18320095896', '39281158', '0', null, 'GQYZ', '100');
INSERT INTO `wd_company` VALUES ('316', '合肥华耀电子工业有限公司', '340106000013253', '/upload/20160105/568b52943799a.jpg', '安徽省合肥市高新区天智路41号华电大厦', '安徽省合肥市高新区天智路41号华电大厦', '变压器、开关电源等电子产品开发、生产、销售、技术服务、电子产品代加工服务；等等。', '2', '盛景泰', '55168165111', 'can@ecu.com.cn', '董事长', '15056056989', '55165324417', '陈安娜', '55168165006', 'can@ecu.com.cn', '专员', '15056056989', '55165324417', '1', null, 'ECU ELECTRONICS INDUSTRIAL CO LTD', '12以上');
INSERT INTO `wd_company` VALUES ('317', '张家港市盛通机械制造有限公司', '320582000201512290061', '/upload/20160105/568b629d72644.jpg', '凤凰镇恬庄村', '张家港市塘桥镇周巷路', '高档建筑五金件、电梯导轨及配件、电梯配件生产、销售:自营和代理各类商品及技术的进出口业务。（依法须经批准的项目，经相关部门批准后方可进行经营活动。）', '2', '蔡连生', '51256359161', 'st@zjgstjx.com', '总经理', '13401568363', '51256922906', '樊丽君', '51256922928', 'lijun.fan@stjx.js.cn', '销售经理', '13616242502', '51256922906', '1', null, 'Zhangjiagang Shengtong Mechanical Manufacture Co.Ltd', '12');
INSERT INTO `wd_company` VALUES ('318', '法适达上海机械设备有限公司', '310000400414946', '/upload/20160105/568b756ec80d1.jpg', '上海市闵行区沪闵路1871号', '上海市闵行区沪闵路1871号', '电梯安装配套设备，包括电梯安装作业平台，载物提升机等一系列产品。', '2', 'Bruno Patron', '02164909091', 'l.wu@fixator.cn', '董事长', '13816125071', '02164909092', '朱凤伟', '02164909091', 'w.zhu@fixator.cn', '经理', '13524125432', '02164909092', '1', null, 'Fixator Asia', '15平方米');
INSERT INTO `wd_company` VALUES ('319', 'asdqw', '123123', '/upload/20160105/568b7a7f9ace7.jpg', '123123', '213123', '123', '2', '21323', '3123213213', '1123123@qq.com', '12312', '13223232323', '123123123', '1231231', '12312323', '121@qq.com', '123123', '15312313122', '324234', '0', null, '123123', '123123');
INSERT INTO `wd_company` VALUES ('320', '凯斯博电梯有限公司', '91320900757999362Y', '/upload/20160106/568c65a517e1a.jpg', '江苏省盐城市亭湖区太湖路13号', '江苏省盐城市亭湖区太湖路13号', '各类型电梯、自动扶梯和自动人行道的销售、生产、安装及维保。', '2', '徐东', '86028888 ', 'xu.dong@kasper.net.cn', '董事长', '13331895568', '86028188', '张晶晶', '86028056', 'zjj_1110@sina.com', '工业设计主管', '13626229516', '86028008', '1', null, 'kasper elevator ', '176');
INSERT INTO `wd_company` VALUES ('321', '吴江市康龙橡塑制品有限公司', '91320509759678562M', '/upload/20160106/568cafc830ea1.jpg', '吴江市汾湖开发区申龙路北侧', '吴江市汾湖开发区申龙路北侧', '自动电梯橡塑扶手、电扶梯及人行道部件、五金制品的生产、加工、销售。', '2', '王勤华', '63297208', 'wjkanglong@163.com', '总经理', '13912703366', '63297020', '王勤华', '63297208', 'wjkanglong@163.com', '总经理', '13912703366', '63297020', '1', null, 'Wujiang Kanglong Rubber Handrail CoLtd', '12平方米');
INSERT INTO `wd_company` VALUES ('322', '上海瑞生电梯控制技术有限公司', '91310117753841402R', '/upload/20160106/568cb9dc7bd95.jpg', '上海市松江区九亭镇同利路699号4号楼', '同利路699号4号楼', '电梯控制系统及配件的生产，机电产品、电气配套的技术开发、技术转让、技术服务、技术咨询，低压电器、建筑材料、五金的销售。', '2', '姜志军', '02167691384', '1109945282@qq.com', '总经理', '13301622368', '02167691107', '姜华', '02167691384', '690674732@qq.com', '副总经理', '13331995032', '02167691107', '1', null, 'SHANGHAI R S LIFT CONTROL TECHNOLOGY CO.LTD', '3*4');
INSERT INTO `wd_company` VALUES ('327', '香港德章系統有的公司', '13438276', '/upload/20160107/568e1d2ae4e5a.JPG', '香港觀塘開源道64號源成中心2605至8室', '香港觀塘開源道64號源成中心2605至8室', '代理電子元器件及研發傳感器元器件或部件', '2', '何嘉良', '29509818', 'sandy@technokey.com', '董事長', '13600448500', '29500561', 'Sandy Ng', '29509818', 'sandy@technokey.com', '助理人事經理', '13600448500', '29500561', '0', null, 'Technokey Company Limited', '12平米');
INSERT INTO `wd_company` VALUES ('328', '德章系统有限公司', '13438276', '/upload/20160107/568e2630edcc3.JPG', '香港观塘开源道64号源成中心2605室', '香港观塘开源道64号源成中心2605室', '代理电子元器件及研发传感器元器件和部件', '2', '何嘉良', '29509818', 'sandy@technokey.com', '董事长', '13600448500', '29500561', 'Sandy', '29509818', 'sandy@technokey.com', '助理人事经理', '13600448500', '29500561', '0', null, 'TECHNOKEY', '12平方米');
INSERT INTO `wd_company` VALUES ('329', ' 德章系統有限公司', '13438276', '/upload/20160107/568e2d7403574.JPG', '香港觀塘開源道64號源成中心2605至8室', '香港觀塘開源道64號源成中心2605至8室', '代理電子元器件, 研發傳感器元器件及部件', '2', '何嘉良', '29509818', 'sandy@technokey.com', '董事長', '13600448500', '29500561', 'Sandy Ng ', '29509818', 'sandy@technokey.com', '助理人事經理', '13600448500', '29500561', '0', null, 'Technokey Company Limited', '12平米');
INSERT INTO `wd_company` VALUES ('330', '德章系統', '13438276', '/upload/20160107/568e2ff54556b.JPG', '香港觀塘開源道64號源成中心2605室', '香港觀塘開源道64號源成中心2605至8室', '研發傳感器元器件', '2', '何嘉良', '29509818', 'sandy@technokey.com', '董事長', '13600448500', '29500561', 'Sandy Ng ', '29509818', 'sandy@technokey.com', '助理人事經理', '13600448500', '29500561', '0', null, 'Technokey Company Limited ', '12平米');
INSERT INTO `wd_company` VALUES ('331', '天津市全友钢丝绳有限公司', '120111000016798', '/upload/20160108/568f1c559adb7.jpg', '天津市西青区辛口镇水高庄村', '天津市西青区辛口镇水高庄村天津市全友钢丝绳有限公司', '制造、销售：钢丝镀锌光面钢丝绳、镀锌钢丝、镀锌钢绞线；货物进出口', '2', '高宝桐', '27990026', 'sanhuanquanyou@163.com', '董事长', '13752508898', '27990196', '高若翔', '27990026', 'sanhuanquanyou@163.com', '经理', '13752508898', '27990196', '1', null, 'TIANJIN QUANYOU STEEL ROPE CO LTD ', '30平方米');
INSERT INTO `wd_company` VALUES ('332', '广东德凌电子科技有限公司', '4404000000626626', '/upload/20160110/56921662b6750.png', '珠海市香洲区梅华西路2372号北侧7号楼厂房第五层508号', '广东省中山市坦洲镇第三工业区悦华路71号', '五方对讲，应急照明电源系列，检修箱、盒系列，井道灯，线缆线束，钣金、塑胶件系列。', '2', '周流芳', '86788975', '13702329252@139.com', '董事长', '13702329252', '86788410', '高耀忠', '13703008252', '13703008252@139.com', '市场总监', '13703008252', '86788410', '1', null, 'GuangDong Derin Electronic Technology Co.LTD', '48㎡');
INSERT INTO `wd_company` VALUES ('333', '宁波鑫丰磁业有限公司', '330212000061807', '/upload/20160111/56932ee89e84f.JPG', '浙江省宁波市鄞州区李花桥工业区86号', '浙江省宁波市鄞州区南部商务区红巨大厦29F', '稀土磁性材料、电机及配件制品的制造、加工、销售。自营或代理货物和技术的进出口。', '2', '胡盈年', '57488160005', 'xf@xfmagnet.net.cn', '董事', '13901012110', '57488160007', '肖建华', '57488160005', '13586784311@163.com', '营销总监', '13586784311', '57489065059', '1', null, 'NingBo XinFeng Magnet Industry CO LTD', '24');
INSERT INTO `wd_company` VALUES ('334', '优必胜上海精密轴承制造有限公司', '310000400523006', '/upload/20160111/569358fe11f1c.jpg', '上海市浦东日樱南路179号', '上海市浦东日樱南路179号', '生产精密轴承及各种主机专用轴承，销售自产产品', '2', '卢天民', '50643425', 'dsp@ubc-bearing.com', '总经理', '13917350663', '50643425', '张艳梅', '50480117', 'merry@ubc-bearing.com', '经理', '13917350663', '50643425', '1', null, 'UBC Precision Bearing Manufacturing ', '12');
INSERT INTO `wd_company` VALUES ('335', '蒙塔纳锐法西驱动技术上海有限公司', '310227001570849', '/upload/20160112/56945a2cd8dc9.png', '上海市松江区玉秀路136号20幢', '上海市松江区玉秀路136号20幢', '驱动技术领域内技术开发及自研技术转让技术咨询及服务电梯配件的设计（除特种设备）永磁同步无齿轮曳引机生产及销售电梯配件通讯器材机电产品的批发上述相关技术的进出口', '2', 'MASSIMO MONTANARI', '02167290220', 'snow.liu@montanari.cn', '董事长', '15800356793', '02137697821', '刘雪', '02167290220', 'snow.liu@montanari.cn', '人事经理', '15800356793', '02137697821', '1', null, 'Montanari FAXI Drive Technology Co Ltd.', '264平方木');
INSERT INTO `wd_company` VALUES ('336', '上海意美清洁器材有限公司', '310113000369530', '/upload/20160112/569460caa9b69.jpg', '上海市青浦区赵重公路2011号4栋', '上海市青浦区赵重公路2011号4栋', '清洁设备及用品', '2', '张学胜', '59780066', 'info@emclean.cn', '总经理', '13818809625', '59780055', '廖伟伟', '59780066', 'liao.ww@emclean.cn', '市场部经理', '13816209249', '59780055', '1', null, 'EMC Cleaning Equipment Supplies Coltd', '12');
INSERT INTO `wd_company` VALUES ('337', '北京迅奥达机电设备有限公司', '110106010349497', '/upload/20160113/5695c685995c0.jpg', '北京市丰台区方庄南路2号A座610', '北京市朝阳区成寿寺路134号3号楼1617', '销售机械设备等', '2', '姚小丰', '01052664284', '1379924262@qq.com', '经理', '13910077558', '01067633852', '姚小丰', '01052664284', '1379924262@qq.com', '经理', '13910077558', '01067633582', '1', null, 'Beijing Xun Ao Da Mechanical and Electrial Equipment Co .Ltd', '标准展位');
INSERT INTO `wd_company` VALUES ('338', '上海五同同步带有限公司', '310225000190221', '/upload/20160113/5695ef4a626a6.jpg', '上海市浦东新区航头镇沪南公路5838号', '上海浦东新区航头镇沪南公路5838号', '传动带，传动带带轮，橡塑制品，烟机零配件，五金电器，电线电缆，电梯配件，制造，加工。附设分支机构；经营本企业自产产品的出口业务和本企业所需的机械设备 零配件 原辅材料的进口业务（不另附进出口商品目录），但国家限定公司经营或禁止进出口的商品及技术除外', '2', '许玉林', '02158228618', 'shwt@wttttt.com', '总经理', '13701807822', '02158221890', '严德良', '02158222601', 'shwt@wttttt.com', '销售经理', '13601776202', '02158228622', '1', null, 'Shanghai Wutong Synchronous Belt Co.Ltd', '9平方米');
INSERT INTO `wd_company` VALUES ('339', '上海中菱电梯有限公司', '310229000547203', '/upload/20160114/56970338eb734.jpg', '上海市青浦区金泽镇沪青平公路9565号', '上海市青浦区金泽镇沪青平公路9565号', '制造电梯，电梯安装、改造、维修，制造立体停车设备，立体停车设备安装、改造、维修，从事货物及技术的进出口业务，销售自产产品。', '2', '谈耿伦', '02139251010', 'tan-zong@163.com', '董事长', '13901911010', '02159261010', '孙晓园', '02159260724', 'shmdsxy@163.com', '市场部', '18918861212', '02159261010', '1', null, 'shanghai middiamond elevator co ltd', '150平方');
INSERT INTO `wd_company` VALUES ('340', '苏州蓝辉机电有限公司', '320506000077308', '/upload/20160114/5697123e6ac69.jpg', '苏州市吴中区郭巷街道东环南路999号2幢', '苏州市吴中区东环南路999号中博科技园B幢2530', '许可经营项目：无\r\n一般经营项目：销售：机电设备、机械设备及配件、五金、交电、家用电器、塑料制品、电子设备、胶粘剂、化工原料。', '2', '艾武', '66982556', 'aiwu@lanhui-jd.com', '总经理', '13584253423', '66876243', '何绍辉', '66982556', 'heshaohui@lanhui-jd.com', '助理', '15950076187', '66876243', '1', null, 'suzhou lanhui  mechanical and electrical compay', '12');
INSERT INTO `wd_company` VALUES ('341', '安平县卓雅网业有限公司上海分公司', '310107000589579', '/upload/20160114/5697465892ca4.jpg', '上海市普陀区中山北路2911号304室', '上海市中山北路2911号304室', '销售绳 丝 丝网 五金制品 丝网机械及进出口业务', '2', '田玉岭', '02161074068', 'dee@decorativemesh.com', '总经理', '13585679764', '02162607677', '汪燕', '02161074088', 'joya002@163.com', '业务经理', '13764915967', '02161074088', '1', null, 'Shanghai JOYA WIRE MESH', '9');
INSERT INTO `wd_company` VALUES ('342', '广东华金合金材料实业有限公司', '440000400013603', '/upload/20160114/56974d601aa7a.jpg', '广州市萝岗区广州开发区永和经济区禾丰路67号', '广州市萝岗区广州开发区永和经济区禾丰路67号', '高性能有色金属和黑色合金铸件及零配件；高性能粉末冶金零配件；高性能金属基复合材料零配件；金属压力加工制品；五金冲压件；相关产品的新材料、新设备、新工艺的技术研发、技术咨询和技术服务。', '2', '刘国斌', '02062324600', 'liugb5555@163.com', '董事长', '13825228018', '02032225809', '周志诚', '02062324608', 'Chou@hua-jin.com.cn', '经理', '13509294686', '02032225809', '1', null, 'Guangdong Huajin Alloy Advanced Material Industry Co Ltd', '12');
INSERT INTO `wd_company` VALUES ('343', '浙江凯文磁业有限公司', '330783000089713', '/upload/20160114/569756fc4c63e.jpg', '浙江省东阳市城东街道寀卢工业区', '浙江省东阳市城东街道寀卢工业区', '高性能强磁', '2', '卢阳春', '86725555', 'manager@kaiven.com', '总经理', '13806773688', '86720900', '王国华', '86721311', 'wanggh@kaiven.com', '业务开发部部长', '13735736266', '86720900', '1', null, 'ZHEJIANG KAIVEN MAGNET CO LTD', '标展12平米');
INSERT INTO `wd_company` VALUES ('344', '沈阳中新科技有限公司', '10102000094443', '/upload/20160115/56985dd6ccc23.jpg', '沈阳和平区三好街84  8易购大厦318室', '沈阳和平区三好街84  8 易购大厦318室', '软件开发，电梯行业信息化解决方案。', '2', '高远松', '02488301567', 'bruce@5000m.com', '总经理', '13840341912', '02488301567', '陈广军', '02488301568', 'bruce@5000m.com', '经理', '13840341912', '02488301568', '1', null, 'ZXTECH', '100');
INSERT INTO `wd_company` VALUES ('345', '深圳市萨瓦瑞亚电梯有限公司', '440301105151129', '/upload/20160115/569870eca31f1.JPG', '深圳市', '深圳市龙华新区青龙路港之龙商务中心', '老年人家居楼道座椅电梯及其相关零配件', '2', '武丽生', '82518854', 'concavewu@126.com', '法人', '13302905533', '82518854', '侯先生', '82518854', '4671917@qq.com', '经理', '15112587932', '82518854', '1', null, 'SHenzhen Group solidworks', '8平方');
INSERT INTO `wd_company` VALUES ('346', '桂盟链条太仓有限公司', '320585400005332', '/upload/20160115/56986c479bcb8.png', '太仓市陆渡镇', '051253457988', '链条、链轮、工业传动件、皮带、销售公司自产产品', '2', '吴厚德', '53457988', 'kmcmc@kmcgroup.cn', '董事長', '13902460096', '53453112', '王仰吉', '82783064', 'kmcmc@kmcgroup.cn', '营业部', '13808801287', '53451737', '1', null, 'KMC CHAIN', '36');
INSERT INTO `wd_company` VALUES ('347', '111', '111', '/upload/20160116/56998c6c83e57.jpg', '111', '2323', '2323', '2', '3232', '232323', '2323@qq.com', '2323', '15133679235', '18156652', '1232', '12121212', 'werwer@qq.com', '2323', '13212121212', '12121212', '0', null, '111', '23232');
INSERT INTO `wd_company` VALUES ('348', '111111', '111111', '/upload/20160118/569c34f2a016d.jpg', '111111', '111111', '111111', '2', '111111', '1111111', '5942959@qq.com', '111111', '13120896235', '111111', '111111', '111111', '1156465@qw.com', '111111', '13123654785', '123123', '1', null, '111111', '111111');
INSERT INTO `wd_company` VALUES ('349', '宁波晟实电梯配件有限公司', '330200400032464', '/upload/20160118/569c50372c2fc.jpg', '宁波市鄞州区泰荟巷99号1302室', '宁波市鄞州区泰荟巷99号健宸大厦1502室', '电梯零部件批发零售及进出口。', '2', 'Richard John Fitzgerald', '57487930220', 'spider.hu@seesinc.com', '总裁', '13566013939', '57487930221', '胡时滨', '57487930220', 'spider.hu@seesinc.com', '总经理', '13566013939', '57487930221', '1', null, 'NINGBO SEES ELEVATOR SPARE PARTS CO. LTD.', '12');
INSERT INTO `wd_company` VALUES ('350', '杭州沃尔夫链条有限公司 ', '330100400042512', '/upload/20160118/569c93b22a7ed.jpg', '杭州临平', '杭州临平运河镇塘宁路40号', '研发、生产各类链条，环保型免润滑扶梯链条、链轮；提供相应的技术服务', '2', '古特 艾里克 沃尔夫', '86189901', 'service@kettenwulf.com', '董事长', '15990126420', '86189901', '沈嫔', '86189911', 'pin.shen@kettenwulf.com', '市场', '13567116835', '86189914', '1', null, 'Hangzhou Wulf Chain Co Ltd', '72');
INSERT INTO `wd_company` VALUES ('351', '新疆天山电梯制造有限公司', '650000059006356', '/upload/20160118/569ca28d712ed.png', '新疆乌鲁木齐市头屯河工业区银河街62号', '新疆乌鲁木齐市头屯河工业区银河街62号', '电梯的制造、安装、维修；货物与技术的进出口业务；建筑机械配件及修理、维护、保养；电梯的各品备件生产安装维修、销售。', '2', '钟建国', '09913965301', 'xjtsdt@126.com', '董事长', '13909910219', '09913965301', '杨洋', '09913964652', '354713464@qq.com', '总经理助理', '18690966968', '09913964652', '1', null, 'Xinjiang Tianshan Elerator Manufacturing CoLtd', '12');
INSERT INTO `wd_company` VALUES ('352', '无锡通用钢绳有限公司', '320205000006505', '/upload/20160119/569d96a7c72e0.jpg', '无锡市锡山区东港镇华东村潘墅', '无锡市锡山区东港镇东廊路1号', '钢丝绳的制造和销售', '2', '陈玉栋', '88602288', 'universalrope@urope.com.cn', '董事长', '18951519118', '88791859', '孙文洁', '88202450', 'sunwenjie@cnsc.com.cn', '销售部副经理', '13921315183', '88202433', '1', null, 'Wuxi Universal Steel Rope Co. Ltd.', '161');
INSERT INTO `wd_company` VALUES ('353', '埃尔格电子科技有限公司', '320213400000652', '/upload/20160119/569dca08b1480.jpg', '无锡市新区菱湖大道228号天安智慧城', '无锡市新区菱湖大道228号天安智慧城', '电子技术和软件研发', '2', 'GRIMM HELMUT', '85383756', 'sam.zhu@elgo-electronic.cn', '总经理', '18012474300', '85380725', '朱锡生', '85383756', 'sam.zhu@elgo-electronic.cn', '产品经理', '18012474300', '85380725', '0', null, 'ELGO WUXI ELECTRONIC TECHNOLOGY CO LTD', '72');
INSERT INTO `wd_company` VALUES ('354', '江苏奥林特梯缆有限责任公司', '321027000011751', '/upload/20160119/569df30c4d8f6.png', '江苏省扬州市仪征经济开发区科研2路2号', '江苏省扬州市仪征经理开发区科研2路2号', '机器人电缆、充电桩电缆、航天器电缆、电梯电缆、电力电缆、风电电缆、光伏电缆、机车电缆，拖链电缆、线束产品等', '2', '吴霖刚', '89388970', '594978714@qq.com', '董事长', '18036279720', '89388938', '岑燕', '89388970', '594978714@qq.com', '客户经理', '18036279720', '89388938', '1', null, 'Jiangsu Onitl Elevator Cable Co Ltd', '72平方');
INSERT INTO `wd_company` VALUES ('355', '广州睿联电气科技有限公司', '440108000034660', '/upload/20160120/569eda6eaebb4.jpg', '广州市萝岗区永和街禾丰三街8号A102房', '广州市天河区中山大道89号A栋13楼南3至6室', '研究和试验发展', '2', '候险峰', '38200654', 'hxf@realinkage.com', '经理', '13829775559', '80671341', '何润明', '38200654', 'hrm@realinkage.com', '市场部', '13826260145', '80671341', '1', null, 'Realinkage', '12');
INSERT INTO `wd_company` VALUES ('356', '杭州康特尔电梯部件有限公司', '330198000048509', '/upload/20160120/569edec5b47af.jpg', '杭州经济开发区18号大街20号', '杭州经济开发区18号大街20号', '电梯零部件（轿厢、轿顶轮、对重轮、导向轮、对重架），扶梯零部件（主驱动、扶手驱动）', '2', '沈富康', '86737555', 'fu.kang@fukang-china.com', '董事长', '15268809988', '86737705', '胡春', '88132570', 'chun.hu@fukang-china.com', '营销部长', '15967114998', '86737705', '1', null, 'Hangzhou kangter Elevator Parts Co Ltd.', '24平方（长6米*宽4米）');
INSERT INTO `wd_company` VALUES ('357', '上海森佩理特塑胶制品有限公司', '310000400113477', '/upload/20160120/569ef87e9dee2.JPG', '上海化学工业区苍工路1155号', '上海化学工业区苍工路1155号', '生产自动扶梯和自动人行道传送装置的扶手带及配套橡塑制品，零配件，销售自产产品及售后服务。【已发须经批准的项目，经相关部门批准后方可开展经营活动】', '2', 'Richard Ehrenfeldner', '37111788', 'srp.sales@semperit.com.cn', '法人', '13764228163', '37111780', '潘晓燕', '37585160', 'penny.pan@semperit.com.cn', '市场主管', '13764228163', '37111780', '1', null, 'Shanghai Semperit Rubber and Plastic Products Co. Ltd.', '96');
INSERT INTO `wd_company` VALUES ('358', '佛山市罗友电机有限公司', '440604321701879', '/upload/20160120/569f2d0660b11.jpg', '佛山市禅城区塱宝西路60号三座802房自编1室', '佛山市禅城区塱宝西路60号欧洲工业园三座8楼', '从事电机、曳引机的设计、制造，并提供售后服务。', '2', '邱小文', '82586577', 'fsluoyou@163.com', '总经理', '13690530948', '82586567', '靳建军', '82586577', 'sky-bow@163.com', '总经理', '18909218566', '82586567', '1', null, 'Foshan City LuoYou Motor Limited Company', '12平方米');
INSERT INTO `wd_company` VALUES ('359', '上海联智会展服务有限公司', '310228000483687', '/upload/20160120/569f42da336de.jpg', '上海市卢湾区合肥路315号5楼', '上海市卢湾区合肥路315号5楼', '会展服务，礼仪服务，市场营销策划，图文设计（除广告），室内装饰装潢，视厅设备安装，工艺礼品（除金饰品），现代化办公用品，仪器仪表，建筑装饰材料，日用百货，五金交电，机械设备，汽摩配件，化工原料及产品（除危险化学品，监控化学品，烟花爆竹，民用爆炸物品，易制毒化学品）销售，室内设计。', '2', '陈鸣', '53963737', 'CHENMING@LANDZ.COM', '总经理', '13916162387', '53511860', '王晓雯', '53963737', 'sharron_wen@163.com', '客户经理', '13916162387', '53511860', '0', null, 'LANDZ GROUP EXHIBITION SERVICES', '483平方米');
INSERT INTO `wd_company` VALUES ('360', '意程机电上海有限公司', '310141400009939', '/upload/20160121/56a029e990447.jpg', '上海市青浦区北青公路5333号', '上海市青浦区北青公路5333号', '机电设备、机械设备、电子产品的批发、进出口、佣金代理（除拍卖外）、并提供相关的配套服务、机电科技、液压科技、电子科技技术领域内的技术咨询、技术服务、技术开发、技术转让，以上述商品为主的仓储（除危险品）及分拨业务', '2', '陈蓓文', '02159779673', 'luzm@weilongengineering.com', '法人代表', '15800657536', '02159779337', '陆珍敏', '02159779673', 'luzm@weilongengineering.com', '销售助理', '15800657536', '02159779337', '1', null, 'Hydronic Lift Engineering Shanghai Co.Ltd', '24㎡');
INSERT INTO `wd_company` VALUES ('361', '深圳富士通电梯', '91440300770312780A', '/upload/20160121/56a048fa38d51.jpg', '广东省深圳市宝安区沙井街道蚝二西海岸花园综合楼18楼', '广东省肇庆市高新开发区临江工业园兴隆三街1号', '电梯的生产、制造、安装、改造、维修保养（乘客电梯、载货电梯、汽车电梯、自动扶梯、自动人行道、杂物电梯等）', '2', '陈松福', '13808808815', 'chensongfu@szfjt.com', '董事长', '13808808815', '13808808815', '吕彬', '13688814119', 'lvbin@szfjt.com', '技术总监', '13688814119', '13688814119', '1', null, 'ShenzhenFujitsu Elevator', '12平方');
INSERT INTO `wd_company` VALUES ('362', '123123', '123123', '/upload/20160121/56a0968e2680b.jpg', '231312', '123123', '12312312', '2', '123123', '123123', '123123@QQ.COM', '123123', '15245856523', '123123', '234234', '234234234', '32434@qq.com', '234234', '15234234234', '234234234', '0', null, '123123', '1231231');
INSERT INTO `wd_company` VALUES ('363', '12', '123', '/upload/20170216/58a53d285447d.jpg', '123', '1', '231', '2', '乔总', '12313456', '1038607463@qq.com', '123', '13718188679', '13213213', '乔永刚', '134564654', '1038607463@qq.com', '程序员', '13718188679', '14564564', '1', null, '123', '23');

-- ----------------------------
-- Table structure for wd_config
-- ----------------------------
DROP TABLE IF EXISTS `wd_config`;
CREATE TABLE `wd_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL COMMENT '配置字段名称',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_config
-- ----------------------------
INSERT INTO `wd_config` VALUES ('1', 'SITE_NAME', '2016中国国际电梯展览会展位预订平台');
INSERT INTO `wd_config` VALUES ('2', 'SITE_DESCRIPTION', '2016中国国际电梯展览会展位预订平台');
INSERT INTO `wd_config` VALUES ('3', 'SITE_KEYWORDS', '展位预定，中国国际电梯展览会，中国国际电梯展览会展位预定');
INSERT INTO `wd_config` VALUES ('4', 'SITE_ICP', '测试的');
INSERT INTO `wd_config` VALUES ('5', 'FINANCE_EMAIL', 'pay@elevator-expo.com');
INSERT INTO `wd_config` VALUES ('6', 'PRODUCT_EMAIL', 'system@elevator-expo.com');

-- ----------------------------
-- Table structure for wd_hall
-- ----------------------------
DROP TABLE IF EXISTS `wd_hall`;
CREATE TABLE `wd_hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'hall id',
  `hall_num` varchar(255) NOT NULL COMMENT 'hall number',
  `hall_type` tinyint(4) NOT NULL COMMENT '1 整机 2部件 3其它',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'hall authority',
  `update_time` varchar(255) NOT NULL COMMENT '更新时间 ',
  `pic` varchar(255) NOT NULL COMMENT 'exhibition plan',
  `area` varchar(255) DEFAULT NULL COMMENT '展馆分区',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_hall
-- ----------------------------
INSERT INTO `wd_hall` VALUES ('1', '5.1', '1', '0', '1443148224', '/upload/20150812/55cb0818c9476.png', null);
INSERT INTO `wd_hall` VALUES ('2', '5.2', '1', '1', '1439520316', '/', null);
INSERT INTO `wd_hall` VALUES ('3', '6.1', '0', '0', '1439520316', '/', null);
INSERT INTO `wd_hall` VALUES ('4', '6.2', '0', '0', '1439520316', '/', null);
INSERT INTO `wd_hall` VALUES ('5', '7.2', '2', '1', '1445306928', '/', '1,2,3,4,5,6');

-- ----------------------------
-- Table structure for wd_invoice
-- ----------------------------
DROP TABLE IF EXISTS `wd_invoice`;
CREATE TABLE `wd_invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'user id',
  `type` tinyint(4) NOT NULL COMMENT 'invoice type ',
  `company_name` varchar(500) NOT NULL COMMENT 'company name',
  `invoice` varchar(100) NOT NULL COMMENT 'invoice number',
  `total` varchar(20) NOT NULL COMMENT '总价',
  `address` varchar(500) DEFAULT NULL COMMENT 'address',
  `blank` varchar(250) DEFAULT NULL COMMENT 'blank',
  `blank_num` varchar(100) DEFAULT NULL COMMENT 'blank number',
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'add time',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'invoice status',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for wd_member
-- ----------------------------
DROP TABLE IF EXISTS `wd_member`;
CREATE TABLE `wd_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户的 ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `salt` varchar(16) DEFAULT NULL COMMENT '用户附加混淆码',
  `last_login` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后登录 IP',
  `group_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户组',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁止用户',
  `is_first_login` int(1) NOT NULL DEFAULT '1' COMMENT '首次登录标记',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是后台用户',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `cid` int(11) NOT NULL COMMENT '企业ID',
  `bid` int(10) unsigned DEFAULT NULL COMMENT '银行id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `group_id` (`group_id`),
  KEY `forbidden` (`forbidden`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_member
-- ----------------------------
INSERT INTO `wd_member` VALUES ('1', 'admin', 'fdc5a4ac8a4b4cbc6da642daaa2600e9', 'srln', '1487312884', '127.0.0.1', '1', '0', '224', '1', '0', '0', null);
INSERT INTO `wd_member` VALUES ('2', 'caiwu', '61a4b64fd5cb34bba7dcaa976bd85647', 'srln', '1453424102', '121.23.219.55', '5', '0', '117', '1', '0', '0', null);
INSERT INTO `wd_member` VALUES ('3', 'dianti', '61a4b64fd5cb34bba7dcaa976bd85647', 'srln', '1453422498', '121.23.218.64', '4', '0', '345', '1', '0', '0', null);
INSERT INTO `wd_member` VALUES ('4', 'nihaoma', 'f80e23e8944e2f415e07ec801d4e1c7f', 'voxv', '1487312871', '127.0.0.1', '3', '0', '244', '0', '0', '1', '3');
INSERT INTO `wd_member` VALUES ('21', 'widuu', '1046f4a2c121ba9e640003f2cfd5d257', 'stei', '1447395489', '121.23.225.214', '3', '0', '5', '0', '0', '28', '2');
INSERT INTO `wd_member` VALUES ('32', '331081100185782', '4004c9adcc3b138c2526c1d5c75f0356', 'rhyn', '1447378893', '60.162.39.156', '3', '0', '5', '0', '0', '44', '1');
INSERT INTO `wd_member` VALUES ('31', '440700000022073', 'fba82f8eafcb3c6be47af0e05cda5408', 'cubu', '1447126434', '119.133.108.72', '3', '0', '3', '0', '0', '43', '1');
INSERT INTO `wd_member` VALUES ('36', '310229001244172', 'fdddb77b4655d36099a4ea6a863c1320', 'tdox', '1447215026', '114.95.164.45', '3', '0', '11', '0', '0', '48', '1');
INSERT INTO `wd_member` VALUES ('35', '320100400011620', '2d88787b5006c1eece3eacbefd9fdce6', 'uqxj', '1447120463', '180.110.192.220', '3', '0', '3', '0', '0', '47', '1');
INSERT INTO `wd_member` VALUES ('37', '138565418', '4420418a87ec06a7c740907625cdbcb1', 'xlum', '1447126465', '223.104.145.27', '3', '0', '2', '0', '0', '49', '1');
INSERT INTO `wd_member` VALUES ('38', '440682000159503', '2c5ebd21c54aecd2b6a3d09ed623ccca', 'hnmz', '1447641819', '113.69.86.156', '3', '0', '7', '0', '0', '50', '1');
INSERT INTO `wd_member` VALUES ('39', '320584000219629', 'b4487ee952d67c9fdfb09121b31097f9', 'tvyi', '1447201345', '112.2.20.42', '3', '0', '5', '0', '0', '51', '1');
INSERT INTO `wd_member` VALUES ('40', '440108400015135', '1d9c234073f27f5e7634bebab6f0694f', 'juud', '1452569760', '218.19.165.234', '3', '0', '5', '0', '0', '53', '1');
INSERT INTO `wd_member` VALUES ('41', '310229000147205', '5987fe66d5a99944b1e2247fccabdca0', 'bzke', '1451276131', '114.95.161.212', '3', '0', '8', '0', '0', '54', '1');
INSERT INTO `wd_member` VALUES ('42', '310115400247295', '383fdf91df8feb4ccc8d04cb2b591090', 'cvym', '1447163060', '27.10.169.149', '3', '0', '9', '0', '0', '55', '1');
INSERT INTO `wd_member` VALUES ('43', '320584000114760', '62980bac4296ea4c01e3f95d8aacb9a1', 'mlpr', '1448255677', '58.210.249.98', '3', '0', '20', '0', '0', '56', '1');
INSERT INTO `wd_member` VALUES ('44', '330504000007196', 'd8aea46b19fda525bcbc789d77d4d19c', 'xqeu', '1447219094', '183.143.14.107', '3', '0', '4', '0', '0', '57', '1');
INSERT INTO `wd_member` VALUES ('45', '320500400042511', 'e5e258ea9fe66d672ca43e882caa3543', 'bfek', '1447219178', '221.224.201.106', '3', '0', '5', '0', '0', '58', '1');
INSERT INTO `wd_member` VALUES ('46', '120000400080363', '8635883416d2af188821a4d0e3de131f', 'xbqs', '1453173625', '111.162.16.233', '3', '0', '9', '0', '0', '59', '1');
INSERT INTO `wd_member` VALUES ('47', '210241000042289', 'cac2be889a015a353364b04ce5ab4676', 'udsu', '1449729817', '119.112.159.217', '3', '0', '9', '0', '0', '60', '1');
INSERT INTO `wd_member` VALUES ('48', '330200400002670', '7469fe0276fc2af3e6f06a7cfc81a71c', 'vodq', '1447221565', '122.247.69.141', '3', '0', '1', '0', '0', '61', '1');
INSERT INTO `wd_member` VALUES ('49', '310228000502482', '23e39298b0b477d00f077069e04c3878', 'fckw', '1451027383', '180.175.74.126', '3', '0', '9', '0', '0', '62', '1');
INSERT INTO `wd_member` VALUES ('50', '320583000547983', '6b5f93179a8e22d613057c827e23715d', 'wmhw', '1449036245', '112.81.121.225', '3', '0', '6', '0', '0', '63', '1');
INSERT INTO `wd_member` VALUES ('51', '440700000022985', '0f198f64e817ef3e1fe7621434ee9dcd', 'lcpx', '1447392604', '122.13.143.152', '3', '0', '4', '0', '0', '64', '1');
INSERT INTO `wd_member` VALUES ('52', '110000410176034', '47a36460e19503b8156f108b9fc1e185', 'dteo', '1447313074', '221.216.88.180', '3', '0', '2', '0', '0', '65', '1');
INSERT INTO `wd_member` VALUES ('53', '321081000125107', 'c7c9279fffe99d0b4b5f00c45520a002', 'wtxw', '1447489720', '121.233.241.232', '3', '0', '7', '0', '0', '66', '1');
INSERT INTO `wd_member` VALUES ('54', '320582000170427', '5595cd6c267165b529af2f5307865db8', 'idun', '1450845820', '121.228.142.127', '3', '0', '4', '0', '0', '67', '1');
INSERT INTO `wd_member` VALUES ('55', '130000000018893', 'f03bd495ab044fe535100b9a739892a9', 'xhiq', '1447383864', '222.222.24.253', '3', '0', '3', '0', '0', '68', '1');
INSERT INTO `wd_member` VALUES ('56', '440106000591821', 'ccf1ef843ffa448477ae94db8d81282a', 'sgaz', '1453373638', '183.48.36.173', '3', '0', '6', '0', '0', '69', '1');
INSERT INTO `wd_member` VALUES ('57', '371422600197805', '7d4369e5b3f5cd6e36d29c2a4c5b300b', 'cvhv', '1447379187', '123.132.131.59', '3', '0', '3', '0', '0', '70', '1');
INSERT INTO `wd_member` VALUES ('58', '342522000000745', '7be8e4b8f607b13cf6e36324bb2a3119', 'kjto', '1447391766', '117.63.232.174', '3', '0', '2', '0', '0', '72', '1');
INSERT INTO `wd_member` VALUES ('59', '320507000129419', 'db5b9fbb526dce6985f9f82f9e52bc2c', 'hjxi', '1447897691', '114.217.2.83', '3', '0', '4', '0', '0', '73', '1');
INSERT INTO `wd_member` VALUES ('89', '620500000001094', 'c42bd642f33b4a1139a410ae27da2d77', 'hxto', '1447655443', '125.74.117.229', '3', '0', '2', '0', '0', '105', '1');
INSERT INTO `wd_member` VALUES ('60', '310116002222699', '9375c828e1b2bff38218526bc6484194', 'tprb', '1447463114', '61.172.40.179', '3', '0', '3', '0', '0', '74', '1');
INSERT INTO `wd_member` VALUES ('61', '330206000095633', '8e9d13d61dd695abb06157a9bd948649', 'ugsw', '1447900233', '175.43.121.5', '3', '0', '4', '0', '0', '76', '1');
INSERT INTO `wd_member` VALUES ('62', '110105007404682', 'd93a929e07911d6db03daec5a4d88a98', 'vplo', '1447395980', '123.120.246.207', '3', '0', '3', '0', '0', '77', '1');
INSERT INTO `wd_member` VALUES ('63', '320584000247961', '8e1b9e55a02cf8418e1d386710672b7d', 'blpy', '1451378957', '49.75.102.142', '3', '0', '4', '0', '0', '78', '1');
INSERT INTO `wd_member` VALUES ('64', '330203000123716', 'ae426d20b34242aa2e8f18b2ed0bf569', 'vyuh', '1450403499', '122.227.244.10', '3', '0', '9', '0', '0', '79', '1');
INSERT INTO `wd_member` VALUES ('65', '371422228004270', '167a70372e8293449d4e8792d820e669', 'nfmi', '1447384485', '111.194.223.1', '3', '0', '1', '0', '0', '81', '1');
INSERT INTO `wd_member` VALUES ('66', '330215000054011', 'a19777e6a66f3b6210139390e4991dcf', 'czsn', '1447402069', '36.250.66.184', '3', '0', '8', '0', '0', '82', '1');
INSERT INTO `wd_member` VALUES ('67', '330100000108855', '9940ede8a320666ecd744eff86345fd7', 'mlkh', '1447393288', '122.224.221.70', '3', '0', '5', '0', '0', '83', '1');
INSERT INTO `wd_member` VALUES ('68', '320481000103350', 'dca70d5adce49b8521b4a4e03c5c3d9f', 'wqee', '1447403503', '58.216.241.74', '3', '0', '5', '0', '0', '84', '1');
INSERT INTO `wd_member` VALUES ('69', '310000000107628', '086c77014361d463cda0ff51f5f7d5d2', 'wycl', '1452300550', '27.115.33.242', '3', '0', '9', '0', '0', '85', '1');
INSERT INTO `wd_member` VALUES ('70', '320200400031860', 'b281e68d25ada6aaffc6d0dfa29815dc', 'vndg', '1447403181', '202.111.6.204', '3', '0', '3', '0', '0', '86', '1');
INSERT INTO `wd_member` VALUES ('71', '330382000129635', '00a5ba212fb441fe43f955fbd4b6c622', 'kjdm', '1447468754', '60.180.142.82', '3', '0', '5', '0', '0', '87', '1');
INSERT INTO `wd_member` VALUES ('72', '320481000069128', 'e9d0f7f3325e2227ad5501b797773e64', 'xogy', '1447400815', '223.68.167.254', '3', '0', '7', '0', '0', '88', '1');
INSERT INTO `wd_member` VALUES ('73', '330504000021512', 'ad12c5cf2e70308f21254fdfc5b3332f', 'bvdu', '1449043530', '58.23.131.224', '3', '0', '5', '0', '0', '89', '1');
INSERT INTO `wd_member` VALUES ('74', '32058200049778', '8ee059bd4043d6a902122bdca811bc49', 'bfjp', '1447721986', '121.23.238.12', '3', '0', '6', '0', '0', '90', '1');
INSERT INTO `wd_member` VALUES ('75', '1113266', '9a838f5076e7c11bc7f3d86b0ce1accb', 'ipvh', '1449016178', '116.236.122.54', '3', '0', '9', '0', '0', '91', '1');
INSERT INTO `wd_member` VALUES ('76', '440306105495919', '26cc53d2ccfde2019197741bc5596400', 'uzry', '1451551615', '113.97.195.248', '3', '0', '6', '0', '0', '92', '1');
INSERT INTO `wd_member` VALUES ('77', '320211000129748', '2724e35d4de6db091d5f33635c12c16b', 'yrqn', '1452651135', '117.84.155.82', '3', '0', '2', '0', '0', '93', '1');
INSERT INTO `wd_member` VALUES ('78', '320211000172608', 'df4b81594ac28ee22199f49bc6767a4d', 'vadm', '1448434855', '120.195.108.82', '3', '0', '15', '0', '0', '94', '1');
INSERT INTO `wd_member` VALUES ('79', '120110000228179', 'b0d0740ce8e12bd26a7dbbb8beec54e0', 'cwdx', '1447634819', '61.181.89.242', '3', '0', '2', '0', '0', '95', '1');
INSERT INTO `wd_member` VALUES ('80', '330783000050546', 'd62ec42601f01989ec508f40982956f8', 'ycvq', '1447893569', '211.140.151.19', '3', '0', '11', '0', '0', '96', '1');
INSERT INTO `wd_member` VALUES ('81', '110108015048121', 'cc0db1d82f61ef41d816ba3b85cba6f3', 'qpao', '1447401069', '114.95.214.120', '3', '0', '1', '0', '0', '97', '1');
INSERT INTO `wd_member` VALUES ('82', '320585000020398', '7592b90f404897f34501c734da7a7720', 'omod', '1450152111', '121.228.170.205', '3', '0', '4', '0', '0', '98', '1');
INSERT INTO `wd_member` VALUES ('83', '120191000079181', 'd2f8dece0d17d7a472317311fa265c63', 'nivw', '1447499028', '42.80.209.208', '3', '0', '6', '0', '0', '99', '1');
INSERT INTO `wd_member` VALUES ('84', '330400400025211', 'cc04c26b6c43067452a384aa730b2b19', 'ndfj', '1447489873', '122.225.82.102', '3', '0', '1', '0', '0', '100', '1');
INSERT INTO `wd_member` VALUES ('85', '330206000018476', 'c84f500c5d0715d6523c7279e10fd87a', 'qsai', '1453086646', '36.22.2.250', '3', '0', '4', '0', '0', '101', '1');
INSERT INTO `wd_member` VALUES ('86', '130301000040038', '9fef50132fb45c5c1ba0d190a82fadf9', 'tbqf', '1447662486', '111.227.162.170', '3', '0', '6', '0', '0', '102', '1');
INSERT INTO `wd_member` VALUES ('87', '330500000024282', 'f8d8648c1a10369c0ae8a49e0056dcfb', 'urhv', '1447816197', '220.189.238.42', '3', '0', '6', '0', '0', '103', '1');
INSERT INTO `wd_member` VALUES ('88', '320200400020460', 'fe4dd4f06a947db01d88006e8607cfa7', 'oqes', '1448424266', '121.23.239.218', '3', '0', '8', '0', '0', '104', '1');
INSERT INTO `wd_member` VALUES ('90', '320582000266479', 'e4122e1b9ba04090346695dc2beada66', 'zzxo', '1447653810', '180.107.27.72', '3', '0', '7', '0', '0', '106', '1');
INSERT INTO `wd_member` VALUES ('91', '320582000358883', 'c5bf2a53b4e615e922c3ad55e473d8d5', 'gblb', '1447655154', '180.107.27.72', '3', '0', '5', '0', '0', '107', '1');
INSERT INTO `wd_member` VALUES ('92', '120101000080360', '58b2258dd8b8f81bd1a5babb5a37de65', 'ryod', '1447655556', '221.196.163.11', '3', '0', '1', '0', '0', '108', '1');
INSERT INTO `wd_member` VALUES ('93', '450207200000583', '63470c52859c635ec09ef66edf521f91', 'vicb', '1447750852', '124.227.55.213', '3', '0', '4', '0', '0', '109', '1');
INSERT INTO `wd_member` VALUES ('94', '310120002801853', '1c27524131d06f3e41beedf256e25f5b', 'joli', '1450330294', '180.175.31.170', '3', '0', '8', '0', '0', '110', '1');
INSERT INTO `wd_member` VALUES ('95', '440301105163633', '1ff355c140b1fd63fde7f068a442d713', 'xmli', '1447735642', '218.18.181.203', '3', '0', '3', '0', '0', '111', '1');
INSERT INTO `wd_member` VALUES ('96', '110105003766822', '09ba3153c9dcc4cc26d2d645ea5354f5', 'eygc', '1449800302', '123.119.18.169', '3', '0', '8', '0', '0', '112', '1');
INSERT INTO `wd_member` VALUES ('97', '320582000041672', 'e278a6f027ba5f2a432484bfc97e22ab', 'oxoc', '1447812489', '58.211.64.138', '3', '0', '6', '0', '0', '113', '1');
INSERT INTO `wd_member` VALUES ('98', '911100007481029048', 'ca01c231b279f96c767dbd1986c1e819', 'ryar', '1447743155', '124.65.79.142', '3', '0', '2', '0', '0', '114', '1');
INSERT INTO `wd_member` VALUES ('99', '44030113415445', 'bb5af1db9c74814d347e3c296314ffff', 'dljz', '1447817132', '113.91.87.170', '3', '0', '4', '0', '0', '115', '1');
INSERT INTO `wd_member` VALUES ('100', '500000400026929', 'fceb8f5e389f5c85f4c55fbd19256e25', 'gnki', '1448331190', '125.81.226.195', '3', '0', '6', '0', '0', '116', '1');
INSERT INTO `wd_member` VALUES ('101', '320206000226116', '440fc20aba90504fd166f0279523da3d', 'metj', '1447894559', '218.90.104.240', '3', '0', '2', '0', '0', '117', '1');
INSERT INTO `wd_member` VALUES ('102', '91440300761992788L', '89a9a527774908a77a58a5a92b16efee', 'ihwn', '1452841448', '121.15.27.238', '3', '0', '3', '0', '0', '118', '1');
INSERT INTO `wd_member` VALUES ('103', '330500400018184', '2ab72818b1b12f3b0dfe5b47cb1e5bf3', 'gfsk', '1447996690', '115.207.187.229', '3', '0', '2', '0', '0', '119', '1');
INSERT INTO `wd_member` VALUES ('104', '6488766800006158', '4674ed31ab15d3718744f5d11cf1eaab', 'iunx', '1447915282', '115.194.223.54', '2', '0', '2', '0', '0', '120', null);
INSERT INTO `wd_member` VALUES ('107', '330382000321320', '928bb8b19528300e7b09e8067c1d42e9', 'kzsq', '1447892677', '123.154.82.84', '3', '0', '1', '0', '0', '125', '1');
INSERT INTO `wd_member` VALUES ('106', '420102000128347', 'a663ba9711bfd260a6c6f1c2209f17f9', 'zsrg', '1447846017', '180.170.162.231', '3', '0', '3', '0', '0', '124', '1');
INSERT INTO `wd_member` VALUES ('108', '32021300006166', '53b1e67396f8782bd2eebde938a146c6', 'oqri', '1448252043', '61.177.140.194', '3', '0', '2', '0', '0', '126', '1');
INSERT INTO `wd_member` VALUES ('109', '310230000302165', 'd75783c1178f2a66e4978dc385fe7dea', 'kbfw', '1447924355', '180.173.80.237', '3', '0', '4', '0', '0', '127', '1');
INSERT INTO `wd_member` VALUES ('110', '330212000023299', 'c2b686c45fa94444d285b9a030f42206', 'zshz', '1449218395', '122.227.219.122', '3', '0', '6', '0', '0', '128', '1');
INSERT INTO `wd_member` VALUES ('111', '320583400038605', '0294f92f0856bdb6e058039e152dc4fa', 'gckw', '1448010012', '112.25.148.122', '3', '0', '9', '0', '0', '129', '1');
INSERT INTO `wd_member` VALUES ('112', '913302125839840045', 'd8234dab6f3b8b292e719572c7bb38e3', 'flex', '1447993980', '115.231.49.234', '3', '0', '4', '0', '0', '130', '1');
INSERT INTO `wd_member` VALUES ('113', '320281000187117', 'ffdf95f58b286e9390661ab470c5930b', 'rwhs', '1448242012', '222.191.243.99', '3', '0', '6', '0', '0', '131', '1');
INSERT INTO `wd_member` VALUES ('114', '310116001747503', '6d7ca1d4b61cd860fd675d6ab20055f1', 'pmnw', '1453338684', '58.246.145.78', '3', '0', '65', '0', '0', '132', '1');
INSERT INTO `wd_member` VALUES ('115', '410392020005381', '974a644e2073dd44711138eb50945fc2', 'juak', '1452565624', '222.88.72.210', '3', '0', '15', '0', '0', '133', '1');
INSERT INTO `wd_member` VALUES ('116', '320621000091309', '80deb39b64488c30c402dec774cf389c', 'djyr', '1450751155', '61.155.81.146', '3', '0', '6', '0', '0', '134', '1');
INSERT INTO `wd_member` VALUES ('117', '440306103982875', '942084a4bfb2b82f64ce9f2f7a8c27df', 'jhkt', '1453107025', '113.88.76.249', '3', '0', '8', '0', '0', '135', '1');
INSERT INTO `wd_member` VALUES ('118', '440681000329052', '6387d2ceb51a13ba01448959bc752b51', 'cbtj', '1448245205', '125.95.250.164', '3', '0', '6', '0', '0', '136', '1');
INSERT INTO `wd_member` VALUES ('119', '310120002648607', '0d7b577daa89d95da0101e087983a268', 'ptfq', '1450330898', '180.175.203.63', '3', '0', '4', '0', '0', '137', '1');
INSERT INTO `wd_member` VALUES ('120', '320583000374182', '7163a0bbfb085caf4b286183a40efd13', 'qtww', '1448022662', '114.219.16.100', '3', '0', '5', '0', '0', '138', '1');
INSERT INTO `wd_member` VALUES ('121', '310000400116721', '7ec77a166f894b77bfdff640977e7f4f', 'vcld', '1448957731', '116.226.207.129', '3', '0', '3', '0', '0', '139', '1');
INSERT INTO `wd_member` VALUES ('122', '330304000057443', '98afc98c6a06cd03ff4e5c2e2d6f11a9', 'rybl', '1448237253', '122.228.133.58', '3', '0', '3', '0', '0', '140', '1');
INSERT INTO `wd_member` VALUES ('123', '330504000085045', 'b9cbe352fc5082720e86c2fb9170df76', 'wghx', '1447998796', '123.155.43.31', '3', '0', '5', '0', '0', '141', '1');
INSERT INTO `wd_member` VALUES ('124', '310120001865473', '275120593c1abf0782d403111a1cca7f', 'abux', '1451280823', '114.95.235.147', '3', '0', '7', '0', '0', '142', '1');
INSERT INTO `wd_member` VALUES ('125', '310115002027475', '6b96d45df9dd7aa632eabc437eeb2c4e', 'isph', '1450168716', '101.81.192.4', '3', '0', '11', '0', '0', '144', '1');
INSERT INTO `wd_member` VALUES ('126', '320503000028985', 'ebb1aa5d30b169b1355b61a2d07ef507', 'ypsp', '1452045582', '218.4.127.154', '3', '0', '5', '0', '0', '145', '1');
INSERT INTO `wd_member` VALUES ('127', '320621000101959', '72c6222603ea18c0e046382218e7e204', 'pxxv', '1447996068', '42.157.11.69', '3', '0', '2', '0', '0', '143', '1');
INSERT INTO `wd_member` VALUES ('128', '370300200018571', 'f9acafc4c6d72980464fc4ceebf0ac0d', 'lqfx', '1449709369', '221.204.170.192', '3', '0', '13', '0', '0', '146', '1');
INSERT INTO `wd_member` VALUES ('129', '310000400517229', 'ffa8b9e534a9b0ee190adf89ae6d7e29', 'jbdq', '1452677541', '87.145.198.33', '3', '0', '10', '0', '0', '147', '1');
INSERT INTO `wd_member` VALUES ('130', '371422600201024', '233a9f6b6887fbc979fc45f2a4230891', 'ajxu', '1448004065', '39.74.29.51', '3', '0', '10', '0', '0', '149', '1');
INSERT INTO `wd_member` VALUES ('131', '330212000129732', '5ed03e9724b1c695388bf6e278324fe6', 'bxxk', '1447985731', '112.53.80.242', '3', '0', '1', '0', '0', '150', '1');
INSERT INTO `wd_member` VALUES ('132', '321203000012673', 'e79ae13d1f9e00b6c6444725abcd3537', 'zpxv', '1447990427', '121.230.55.23', '3', '0', '2', '0', '0', '151', '1');
INSERT INTO `wd_member` VALUES ('133', '914401010525516483', 'f80e23e8944e2f415e07ec801d4e1c7f', 'voxv', '1453432930', '122.13.245.161', '3', '0', '4', '0', '0', '152', '1');
INSERT INTO `wd_member` VALUES ('134', '320500400016067', 'b156e604103afac1a941c2712b8e39b6', 'zbzc', '1448008095', '222.92.65.58', '3', '0', '3', '0', '0', '153', '1');
INSERT INTO `wd_member` VALUES ('135', '91330283772343978F', 'b801961cbaaf8589f33b2f4ab9e42384', 'qbrx', '1451544978', '221.12.60.158', '3', '0', '6', '0', '0', '154', '1');
INSERT INTO `wd_member` VALUES ('136', '310115000480621', '7221b51fd674115ab63299b4ea23ec53', 'cbfy', '1452052149', '114.82.175.56', '3', '0', '14', '0', '0', '155', '1');
INSERT INTO `wd_member` VALUES ('137', '210000400005146', 'f0ee5c3dd90b9709b5da5a46ae458936', 'hwnn', '1447989904', '221.200.40.144', '3', '0', '1', '0', '0', '157', '1');
INSERT INTO `wd_member` VALUES ('138', '91440604666491678N', '0eafb9c8334322d7ebb644e9316c119d', 'qtbz', '1452666806', '14.212.179.125', '3', '0', '4', '0', '0', '159', '1');
INSERT INTO `wd_member` VALUES ('139', '330204000144276', 'aa44420151c947b5056e64b378c3de32', 'qcam', '1448008835', '125.116.209.16', '3', '0', '8', '0', '0', '161', '1');
INSERT INTO `wd_member` VALUES ('140', '91440300757629628G', 'cdbf935b3e3864548e5614f9cce9625b', 'lwet', '1452562931', '210.165.199.73', '3', '0', '11', '0', '0', '162', '1');
INSERT INTO `wd_member` VALUES ('141', '120111000053772', '83d37cad8adb1ceff396a5ce9fa492c6', 'vuii', '1450859795', '42.122.119.71', '3', '0', '6', '0', '0', '163', '1');
INSERT INTO `wd_member` VALUES ('142', '440111000467525', 'a96d778f86fb38068810a38895fe7a3d', 'pkon', '1448527923', '113.109.28.142', '3', '0', '6', '0', '0', '164', '1');
INSERT INTO `wd_member` VALUES ('143', '430111000038643', '5b9ef9feff16ad005fa4e9ab01966aaa', 'jgqi', '1448329120', '175.10.208.165', '3', '0', '4', '0', '0', '165', '1');
INSERT INTO `wd_member` VALUES ('144', '320506000115653', 'b7eeb8b9e04f3dabdb6f8db8598d3c9f', 'pycy', '1448266481', '121.236.239.110', '3', '0', '5', '0', '0', '166', '1');
INSERT INTO `wd_member` VALUES ('145', '320621000002651', '37bace5019c5c2cc378f89165e021ac8', 'lzqz', '1448252639', '101.81.3.3', '3', '0', '4', '0', '0', '167', '1');
INSERT INTO `wd_member` VALUES ('146', '320200400012339', '68d2b31c91e734be71e18e6d26851a25', 'opbf', '1450162045', '218.90.162.2', '3', '0', '8', '0', '0', '168', '1');
INSERT INTO `wd_member` VALUES ('147', '440602000424090', '1abefb17eda4af79adb63f7db0d8e6cf', 'bzac', '1448340279', '113.70.57.14', '3', '0', '3', '0', '0', '170', '1');
INSERT INTO `wd_member` VALUES ('148', '210100000089130', '12cb2bede97ec608ef0fdc5e36c7a8a4', 'krti', '1450834774', '175.168.210.40', '3', '0', '8', '0', '0', '171', '1');
INSERT INTO `wd_member` VALUES ('149', '310118003084573', 'ee3194f685b7ed677863146c2d4bf390', 'wgja', '1448764517', '112.64.94.181', '3', '0', '10', '0', '0', '172', '1');
INSERT INTO `wd_member` VALUES ('150', '310229001474317', 'b374f8f5d4ccced8566ef86e5cb1575d', 'ccej', '1450934856', '222.69.128.247', '3', '0', '10', '0', '0', '173', '1');
INSERT INTO `wd_member` VALUES ('151', '310120001972940', 'b2d593547329024213a1f9c95d2f1334', 'vnyp', '1448267583', '114.95.176.25', '3', '0', '4', '0', '0', '174', '1');
INSERT INTO `wd_member` VALUES ('152', '320281000265154', 'efe585cec113838d3acf0b2649ac23f5', 'myyy', '1452044102', '114.225.115.125', '3', '0', '30', '0', '0', '175', '1');
INSERT INTO `wd_member` VALUES ('153', '91130406745410880G', 'adb7b4bb8eb6da86a3c26a4365808e5a', 'yqnc', '1450234823', '221.193.249.20', '3', '0', '2', '0', '0', '176', '1');
INSERT INTO `wd_member` VALUES ('154', '321282000029810', '0543f701d888d5ca3a9bded2be2254f3', 'vvev', '1449371016', '180.122.90.154', '3', '0', '5', '0', '0', '177', '1');
INSERT INTO `wd_member` VALUES ('155', '320581000275937', '10cf813af7c457cab43d20d93569e052', 'mnvx', '1450844896', '121.228.194.177', '3', '0', '7', '0', '0', '178', '1');
INSERT INTO `wd_member` VALUES ('156', '440111000277537', '2515e4111d256ba82faeb2fe1de706b7', 'exeh', '1448516319', '121.33.21.85', '3', '0', '5', '0', '0', '179', '1');
INSERT INTO `wd_member` VALUES ('157', '320621000372447', '9fe769f3c31e4ae406cdeb935847dd62', 'cjuq', '1453342584', '180.120.168.107', '3', '0', '49', '0', '0', '180', '1');
INSERT INTO `wd_member` VALUES ('295', '91320509759678562M', '581c90030571a803b5931fbded3fbc27', 'zteb', '1452063558', '222.93.163.20', '3', '0', '3', '0', '0', '321', '1');
INSERT INTO `wd_member` VALUES ('158', '310114000570068', '1ae5422f4bbfedd5aa714487e96329e6', 'monu', '1448426281', '180.168.178.194', '3', '0', '3', '0', '0', '181', '1');
INSERT INTO `wd_member` VALUES ('159', '310115000054354', 'f977785039084d01974f44d9722cd07a', 'gzyy', '1450922198', '180.173.204.150', '3', '0', '10', '0', '0', '182', '1');
INSERT INTO `wd_member` VALUES ('160', '310228001084402', 'ded80849ab34756b241f46ae84bd64fb', 'zyzu', '1448936077', '180.175.127.86', '3', '0', '8', '0', '0', '183', '1');
INSERT INTO `wd_member` VALUES ('161', '440400000140235', 'e77b66619d04265d018e59e081876c56', 'akzl', '1453084559', '120.236.238.36', '3', '0', '23', '0', '0', '184', '1');
INSERT INTO `wd_member` VALUES ('162', '350100100420668', 'db516f5d9b25bc14c88431891651f02d', 'hmua', '1450318575', '120.35.0.81', '3', '0', '5', '0', '0', '185', '1');
INSERT INTO `wd_member` VALUES ('163', '91320803796528715A', '8554e211f99f2a915b17a0d9f1095f75', 'ooho', '1451290855', '49.82.155.240', '3', '0', '7', '0', '0', '186', '1');
INSERT INTO `wd_member` VALUES ('164', '320584000428766', '164b27244497ab96242939113db36122', 'uavj', '1452761206', '49.72.54.35', '3', '0', '14', '0', '0', '187', '1');
INSERT INTO `wd_member` VALUES ('165', '110106011570875', '57465dd06f8994dcb10a8b3db64b52a4', 'oxuh', '1448948568', '114.240.239.1', '3', '0', '5', '0', '0', '188', '1');
INSERT INTO `wd_member` VALUES ('166', '330104000030514', '510f5b3f479d9028bace23bcb2c82f8b', 'mvpu', '1451888491', '101.69.247.234', '3', '0', '7', '0', '0', '189', '1');
INSERT INTO `wd_member` VALUES ('167', '420100400009536', 'aafb336188c65b54dea8c46617f4c812', 'vkhw', '1453339841', '113.57.190.30', '3', '0', '6', '0', '0', '190', '1');
INSERT INTO `wd_member` VALUES ('168', '220107000011370', '4f22a36c4785a25f388c25434c9ae944', 'zvjw', '1448523207', '175.17.208.73', '3', '0', '1', '0', '0', '191', '1');
INSERT INTO `wd_member` VALUES ('169', '320504000076111', '8970dea3ea49feb36df4c8e3579427a3', 'kngr', '1450065124', '180.108.17.174', '3', '0', '8', '0', '0', '192', '1');
INSERT INTO `wd_member` VALUES ('176', '411093100001098', 'ede2f22fcf9288f1d6ca15a694d09fa4', 'afri', '1452221058', '222.89.167.14', '3', '0', '12', '0', '0', '199', '1');
INSERT INTO `wd_member` VALUES ('170', '320584400009396', 'ea1f9625c3ac5ba0a40f939e62fdb5ba', 'zfiw', '1453179751', '202.111.31.246', '3', '0', '14', '0', '0', '193', '1');
INSERT INTO `wd_member` VALUES ('171', '330200400064988', '5722dd06a037a6e3193afd2ec553b6b8', 'qhla', '1450925005', '60.178.124.16', '3', '0', '8', '0', '0', '194', '1');
INSERT INTO `wd_member` VALUES ('174', '371422200010823', 'b3e16c3da6996fd4b157179943293e02', 'cufd', '1450056447', '222.133.21.10', '3', '0', '9', '0', '0', '197', '1');
INSERT INTO `wd_member` VALUES ('172', '440101000003162', '63ed99ccd15e41f22404a00c6987dcf2', 'lgut', '1451353461', '112.90.239.229', '3', '0', '6', '0', '0', '195', '1');
INSERT INTO `wd_member` VALUES ('173', '320594400010954', '38df3391b277bce855e0fb670a9c7806', 'fbxz', '1448958255', '221.224.9.219', '3', '0', '5', '0', '0', '196', '1');
INSERT INTO `wd_member` VALUES ('175', '441900000230150', '82b179bc5065f8941373fd355bff0152', 'ehau', '1453367229', '219.130.112.94', '3', '0', '25', '0', '0', '198', '1');
INSERT INTO `wd_member` VALUES ('177', '9133018377925672X1', 'd87fb68a57f38f1fad4f8fcd29f372b4', 'xqqm', '1449018442', '183.128.59.224', '3', '0', '2', '0', '0', '200', '1');
INSERT INTO `wd_member` VALUES ('178', '320500400043776', '62fd6dd355fbfcb3b83cc8f4bb91e6cb', 'vyde', '1449477348', '58.211.104.126', '3', '0', '3', '0', '0', '201', '1');
INSERT INTO `wd_member` VALUES ('179', '350502100061863', '63fc80dea9ca295924cafdabb7ad0ba2', 'sect', '1448940976', '125.78.11.18', '3', '0', '2', '0', '0', '202', '1');
INSERT INTO `wd_member` VALUES ('180', '130100000321166', '7c097739dcb3b81f10a39c42e06a91ae', 'lkqn', '1449453703', '101.29.164.254', '3', '0', '4', '0', '0', '203', '1');
INSERT INTO `wd_member` VALUES ('181', '91340100588891843L', '32b9225e81a8e1346e254710b47469d0', 'pcip', '1449112285', '114.98.93.15', '3', '0', '12', '0', '0', '204', '1');
INSERT INTO `wd_member` VALUES ('182', '330421686655211', '35e8ccbcabc8206187e6b4f3a5424029', 'juvy', '1449127324', '218.75.59.54', '3', '0', '3', '0', '0', '205', '1');
INSERT INTO `wd_member` VALUES ('183', '320506000025137', '53d140510525887695abe9d2bc9ad210', 'fltc', '1450501311', '218.4.168.30', '3', '0', '8', '0', '0', '206', '1');
INSERT INTO `wd_member` VALUES ('184', '370600400025543', '921ba2665276825a39cb433ffe91663b', 'nriv', '1449021320', '221.214.176.83', '3', '0', '2', '0', '0', '207', '1');
INSERT INTO `wd_member` VALUES ('185', '210105000059235', 'cff4026342672bc18b35078a05dbd4fa', 'nrbp', '1449541115', '113.233.253.171', '3', '0', '7', '0', '0', '208', '1');
INSERT INTO `wd_member` VALUES ('186', '371422200001355', '0fef6b39426faff7c09c4ba9d5eafa89', 'udpl', '1449043280', '112.242.147.89', '3', '0', '3', '0', '0', '209', '1');
INSERT INTO `wd_member` VALUES ('187', '350298200017990', 'c1571b727b034ee2dc01c124faba856c', 'kbqu', '1451465480', '110.86.76.229', '3', '0', '10', '0', '0', '210', '1');
INSERT INTO `wd_member` VALUES ('188', '15000000201511231177', '3824464c747e57dca60ad6001c5140a9', 'whcv', '1452749314', '222.65.250.51', '3', '0', '14', '0', '0', '211', '1');
INSERT INTO `wd_member` VALUES ('192', '330100400039806', '75275fa26b0936fed654b51ca3406fd7', 'elrz', '1449122175', '60.177.101.5', '3', '0', '2', '0', '0', '215', '1');
INSERT INTO `wd_member` VALUES ('189', '440600000020220', '043855283bd78398f1c03ee68466e023', 'sgqd', '1449043026', '61.143.227.20', '3', '0', '2', '0', '0', '212', '1');
INSERT INTO `wd_member` VALUES ('190', '350200200012499', '68187fae88cb4ef420bfbfe302788f3c', 'gwpo', '1453355992', '220.160.126.178', '3', '0', '13', '0', '0', '213', '1');
INSERT INTO `wd_member` VALUES ('191', '3304830000019846', '8b05beb7b43b3afc63e3551557632095', 'tiuk', '1449108508', '115.227.222.107', '3', '0', '1', '0', '0', '214', '1');
INSERT INTO `wd_member` VALUES ('194', '350212200059701', '6f5f41af0ae94d645b81cbeacf0c09f7', 'fchb', '1453433012', '121.204.231.204', '3', '0', '14', '0', '0', '218', '1');
INSERT INTO `wd_member` VALUES ('193', '440306106213964', '311df900c3eee2d1dc0637ab55b3b1b2', 'zexv', '1452490525', '183.13.183.253', '3', '0', '15', '0', '0', '217', '1');
INSERT INTO `wd_member` VALUES ('217', '320584000370555', '330ab576ac3eccad1bfed770c527679e', 'rpuo', '1451102777', '49.72.151.158', '3', '0', '4', '0', '0', '241', '1');
INSERT INTO `wd_member` VALUES ('195', '350298400004176', '6e837aeb8f294213cd951595469b7bea', 'drcu', '1450336074', '114.93.16.83', '3', '0', '9', '0', '0', '219', '1');
INSERT INTO `wd_member` VALUES ('196', '310117003247490', '345a31bc62bc3d1a471acd122f3ffd91', 'xnpm', '1449721166', '114.95.152.88', '3', '0', '23', '0', '0', '220', '1');
INSERT INTO `wd_member` VALUES ('197', '210200000052040', '359d52f4c40d7d96434d2ce2ba35675f', 'dqpu', '1450163339', '123.185.63.109', '3', '0', '13', '0', '0', '221', '1');
INSERT INTO `wd_member` VALUES ('198', '440681000390830', 'f8d1f37b51987eb9609131618e424643', 'mwgc', '1449540574', '125.95.250.242', '3', '0', '5', '0', '0', '222', '1');
INSERT INTO `wd_member` VALUES ('199', '220102000108000', '0ccee2ee61789385871cc6ba7f3c4834', 'hqpy', '1449281146', '36.48.112.6', '3', '0', '1', '0', '0', '223', '1');
INSERT INTO `wd_member` VALUES ('200', '440301503456004', 'f8f1b9a0be62364adcc1c15115283825', 'ckvg', '1450085305', '119.122.17.41', '3', '0', '4', '0', '0', '224', '1');
INSERT INTO `wd_member` VALUES ('201', '3303811008905', 'feea200be6fe2c677d32be971092861f', 'zjee', '1451888961', '60.180.39.47', '3', '0', '4', '0', '0', '225', '1');
INSERT INTO `wd_member` VALUES ('202', '110105017795259', '76d29bba33b401047d1cc8c4dd1cf786', 'fpbq', '1449451987', '182.18.37.26', '3', '0', '2', '0', '0', '226', '1');
INSERT INTO `wd_member` VALUES ('203', '320584000445373', '70d6bbb935f22113cbf026e855a17214', 'nzyu', '1449375387', '58.208.148.61', '3', '0', '4', '0', '0', '227', '1');
INSERT INTO `wd_member` VALUES ('204', '350206200175673', 'fb12834771b7f2c9072f73a2683e72a6', 'hrrl', '1449459545', '125.77.222.213', '3', '0', '1', '0', '0', '228', '1');
INSERT INTO `wd_member` VALUES ('205', '441900002324194', 'a56f219a3a2017ecb0133f0e6c0a5f6e', 'syff', '1453100732', '14.221.52.133', '3', '0', '6', '0', '0', '229', '1');
INSERT INTO `wd_member` VALUES ('206', '320584000393630', 'a818ae7e3127726c208f0dbeb463646d', 'wfhh', '1453257468', '117.62.80.26', '3', '0', '13', '0', '0', '230', '1');
INSERT INTO `wd_member` VALUES ('226', '320200400023587', '7ae1bd8efb07151d4b7dfa96fe916e50', 'qqni', '1450061680', '58.214.12.166', '3', '0', '2', '0', '0', '250', '1');
INSERT INTO `wd_member` VALUES ('207', '310227000523255', '22c4b631bb943719b46d5a51e0b5427a', 'tfvv', '1450323149', '114.86.169.238', '3', '0', '3', '0', '0', '231', '1');
INSERT INTO `wd_member` VALUES ('208', '350212200098438', '4bae2cf0875a386ffdaa99d1623c304f', 'gejh', '1453094678', '120.32.244.36', '3', '0', '36', '0', '0', '232', '1');
INSERT INTO `wd_member` VALUES ('209', '321011000029571', 'dbdbfe1692cecb1c0a51d8521a5565f9', 'tyui', '1451885386', '61.155.61.205', '3', '0', '9', '0', '0', '233', '1');
INSERT INTO `wd_member` VALUES ('210', '320621000095923', '6fc24d4e77fac56d21decbfa4cc3fe3f', 'izpr', '1450661239', '49.67.208.36', '3', '0', '14', '0', '0', '234', '1');
INSERT INTO `wd_member` VALUES ('238', '310000400142230', 'db0302021e114e6c1a29563902d61345', 'yyib', '1453433148', '116.228.43.229', '3', '0', '12', '0', '0', '262', '1');
INSERT INTO `wd_member` VALUES ('211', '110108003068653', 'd0a7879df3cdb30c71707df1002e07d6', 'ebzx', '1449562499', '60.10.59.225', '3', '0', '2', '0', '0', '235', '1');
INSERT INTO `wd_member` VALUES ('212', '440106000493555', '90cef74adcbc5e11ec435e28e006225d', 'tceb', '1452851976', '61.140.53.210', '3', '0', '14', '0', '0', '236', '1');
INSERT INTO `wd_member` VALUES ('219', '310114000847817', '7d22244970e6c43d9e7774d23b93f1b2', 'tcbq', '1449733019', '112.64.138.110', '3', '0', '1', '0', '0', '243', '1');
INSERT INTO `wd_member` VALUES ('213', '110107017565190', '8c94897bc82cb2b89d757dbff0eeb643', 'zgbg', '1450748545', '125.34.112.102', '3', '0', '20', '0', '0', '237', '1');
INSERT INTO `wd_member` VALUES ('214', '320582000155464', 'd7b72dbd32f79f34ef389e46be3d19ee', 'xxit', '1452842636', '58.209.150.254', '3', '0', '6', '0', '0', '238', '1');
INSERT INTO `wd_member` VALUES ('215', '440681000163746', '73a2e0eabe9a41e24fc776bd882fce25', 'okcf', '1450668138', '183.26.214.161', '3', '0', '13', '0', '0', '239', '1');
INSERT INTO `wd_member` VALUES ('216', '27000000201511190265', '681d54bf6dffd2fca013e99c61bc7ae2', 'hmkr', '1450756740', '218.83.227.117', '3', '0', '8', '0', '0', '240', '1');
INSERT INTO `wd_member` VALUES ('218', '310112001286407', '5a879b5cad3a52f99c63f6d78ccf9ab0', 'luxl', '1451026122', '116.226.69.116', '3', '0', '11', '0', '0', '242', '1');
INSERT INTO `wd_member` VALUES ('220', '320925000011901', '39ccdf78c142d0d537fa5cd5589dcada', 'wsac', '1449879220', '36.250.229.197', '3', '0', '2', '0', '0', '244', '1');
INSERT INTO `wd_member` VALUES ('221', '321203000011179', '71a8b71be8c6606a87d23b86253f4397', 'pjkx', '1452131362', '117.94.154.149', '3', '0', '13', '0', '0', '245', '1');
INSERT INTO `wd_member` VALUES ('222', '320584000470531', 'd0d51e2e7213d71a78949f7cc6653aef', 'qrjg', '1449817424', '114.217.210.107', '3', '0', '1', '0', '0', '246', '1');
INSERT INTO `wd_member` VALUES ('223', '321088000357171', '0e911411c241b804045af029b742cd80', 'ezdj', '1451886153', '121.233.160.159', '3', '0', '10', '0', '0', '247', '1');
INSERT INTO `wd_member` VALUES ('224', '320506000025153', 'd2e86023e91466a81c4513c24121abe1', 'kyqs', '1452492340', '49.64.101.145', '3', '0', '30', '0', '0', '248', '1');
INSERT INTO `wd_member` VALUES ('225', '330203000119295', 'fffbbb1a1dea1e7d5fb5f51795c13bd1', 'ttni', '1450752230', '61.164.94.46', '3', '0', '7', '0', '0', '249', '1');
INSERT INTO `wd_member` VALUES ('227', '420106000305030', 'b832d530444bde6f56597827f743695c', 'bgip', '1451876878', '113.57.190.28', '3', '0', '9', '0', '0', '251', '1');
INSERT INTO `wd_member` VALUES ('228', '310000400483271', '50d59c6e620504c6fe100497848745c5', 'xzfl', '1453095081', '218.213.225.139', '3', '0', '11', '0', '0', '252', '1');
INSERT INTO `wd_member` VALUES ('229', '310114002289575', '3d4e4f0506004920ca58f3ebf798dfbe', 'aziy', '1452675904', '139.226.72.102', '3', '0', '2', '0', '0', '253', '1');
INSERT INTO `wd_member` VALUES ('230', '510122000015218', '1b6ae1b6947d5c62f84b0705f9d59e9f', 'rntg', '1450081230', '125.69.149.26', '3', '0', '2', '0', '0', '254', '1');
INSERT INTO `wd_member` VALUES ('231', '320594000021560', 'c39711dc7d651d15b98c589af293ddc8', 'yrhg', '1451352010', '49.72.70.114', '3', '0', '8', '0', '0', '255', '1');
INSERT INTO `wd_member` VALUES ('232', '320584000377122', '55a242938fd7a6265b39c9a999c31567', 'ctnj', '1450425776', '211.143.237.142', '3', '0', '4', '0', '0', '256', '1');
INSERT INTO `wd_member` VALUES ('233', '310118002684890', 'c768702342c77e9279159b23f6f2fb31', 'dgbc', '1452563882', '180.173.138.21', '3', '0', '20', '0', '0', '257', '1');
INSERT INTO `wd_member` VALUES ('234', '310000400402523', '30490000b3bdc56dd8d126ae2bba809f', 'qrvw', '1452070543', '218.242.59.94', '3', '0', '6', '0', '0', '258', '1');
INSERT INTO `wd_member` VALUES ('235', '3123123123123', '4d5b919fa5018f35cd694fd73198356b', 'dprm', '1450243010', '121.23.217.4', '2', '0', '1', '0', '0', '259', null);
INSERT INTO `wd_member` VALUES ('236', '320213400000652', '95e0a56e0163d8e1448fc90fddbab4e0', 'vwzp', '1453182358', '117.84.29.123', '3', '0', '2', '0', '0', '260', '1');
INSERT INTO `wd_member` VALUES ('237', '440111000299591', '64f1620508c5b69b67bb9582b89402f8', 'zpbk', '1450324399', '182.117.6.36', '3', '0', '6', '0', '0', '261', '1');
INSERT INTO `wd_member` VALUES ('239', '440600400018075', '71becf04e9efad81dea294110617394e', 'upba', '1451024269', '113.72.103.167', '3', '0', '12', '0', '0', '263', '1');
INSERT INTO `wd_member` VALUES ('255', '12110000246251', 'd0173d9d23d1d5a7c9f536b64d07acca', 'wdoo', '1450686698', '221.197.124.221', '3', '0', '1', '0', '0', '280', '1');
INSERT INTO `wd_member` VALUES ('240', '320502000103949', 'd76f0f9df5e1d5a7aed7c4ba61360923', 'qbfb', '1450666642', '114.217.123.168', '3', '0', '2', '0', '0', '264', '1');
INSERT INTO `wd_member` VALUES ('241', '110000450030938', 'a88e0a1236ce0ac68494554ef983b579', 'dxgg', '1451896920', '123.127.68.114', '3', '0', '8', '0', '0', '265', '1');
INSERT INTO `wd_member` VALUES ('242', '6178100049', '3062580f1b3ea10743590c646c7dd84d', 'kiac', '1450690673', '58.246.84.150', '3', '0', '2', '0', '0', '266', '1');
INSERT INTO `wd_member` VALUES ('243', '310000400350251', '8a5197a9bccf18403a1f93781baacbb1', 'vgob', '1450340544', '114.95.97.206', '3', '0', '1', '0', '0', '267', '1');
INSERT INTO `wd_member` VALUES ('244', '310116002098360', 'ed0ca082f1d0dbfcc4789a0de5334d2a', 'kldw', '1450409425', '116.231.166.160', '3', '0', '3', '0', '0', '268', '1');
INSERT INTO `wd_member` VALUES ('245', '330624000040168', '7de53e8cb97cd911aeabc94549764fa0', 'llst', '1452668786', '60.190.197.26', '3', '0', '9', '0', '0', '269', '1');
INSERT INTO `wd_member` VALUES ('246', '310112000870161', '19dda4ff20787c06dc50c41416418ae4', 'ngth', '1450665691', '58.39.153.147', '3', '0', '2', '0', '0', '270', '1');
INSERT INTO `wd_member` VALUES ('247', 'S0612014108186', '802d5d04f851e01e1ab619d0048a1a73', 'nsmm', '1450941369', '124.163.207.62', '3', '0', '9', '0', '0', '271', '1');
INSERT INTO `wd_member` VALUES ('248', '914406075863573721', 'cf12abc8313c8fd31be2761e30ec0adf', 'jkcz', '1450672357', '14.214.44.117', '3', '0', '3', '0', '0', '273', '1');
INSERT INTO `wd_member` VALUES ('250', '310000400405697', 'd13bfcda47d837e223b4ff63b5a6e45a', 'puoh', '1450768189', '180.173.60.193', '3', '0', '5', '0', '0', '275', '1');
INSERT INTO `wd_member` VALUES ('249', '330400400012104', '936f7b3cc6523d3d02358579b507127d', 'rmqt', '1450485074', '122.225.4.66', '3', '0', '1', '0', '0', '274', '1');
INSERT INTO `wd_member` VALUES ('251', '31000040045697', 'a016ce1bdd5b303b21e546f038f58d01', 'khpz', '1450495403', '180.173.60.193', '3', '0', '2', '0', '0', '276', '1');
INSERT INTO `wd_member` VALUES ('252', '310116002308307', '2538d76d6e4bcc3998ef11a9b290966b', 'sumf', '1451877282', '58.246.145.78', '3', '0', '13', '0', '0', '277', '1');
INSERT INTO `wd_member` VALUES ('253', '310000400692353', '026e0ca81e66e3bf94d38d272c643c9d', 'pwzf', '1450689803', '180.167.3.210', '3', '0', '5', '0', '0', '278', '1');
INSERT INTO `wd_member` VALUES ('254', '440301105348841', '3dc2d2f7de4e9d55d0d7bd237c10a3d5', 'hvuv', '1450670247', '58.60.131.111', '3', '0', '1', '0', '0', '279', '1');
INSERT INTO `wd_member` VALUES ('256', '310000400762836', '46ad0c6324f8da05c828f4d5445e7a04', 'tltp', '1452477749', '101.81.37.154', '3', '0', '10', '0', '0', '281', '1');
INSERT INTO `wd_member` VALUES ('260', '441900000039351', '62e1cfc7a950487403a4b0d96594e83d', 'usfi', '1450835464', '120.86.157.15', '3', '0', '1', '0', '0', '285', '1');
INSERT INTO `wd_member` VALUES ('257', '320213000178644', '9fc0e672d37724ea071fa2feb2e11638', 'kzqv', '1451266031', '49.76.66.28', '3', '0', '9', '0', '0', '282', '1');
INSERT INTO `wd_member` VALUES ('258', '320281000391258', '373b5606d7221590bb7b9f8f47c892c4', 'rhzr', '1450761569', '218.90.7.21', '3', '0', '1', '0', '0', '283', '1');
INSERT INTO `wd_member` VALUES ('259', '320583000064749', '9f15d8171662bd50322b4f4f3b2a5851', 'nrzw', '1450763181', '114.216.51.155', '3', '0', '1', '0', '0', '284', '1');
INSERT INTO `wd_member` VALUES ('261', '310229000302679', '0ce612111f7d60b8832540b57535be48', 'tpyw', '1450851106', '116.226.108.138', '3', '0', '3', '0', '0', '286', '1');
INSERT INTO `wd_member` VALUES ('270', '330402000054423', '16eea6b0ad388bc54a3d068eb1c0cf9e', 'arra', '1452128024', '122.232.18.226', '3', '0', '5', '0', '0', '295', '1');
INSERT INTO `wd_member` VALUES ('262', '3302030000313367', '8415fff7e2d483c41836792becde8658', 'wmue', '1450856886', '115.215.6.161', '3', '0', '2', '0', '0', '287', '1');
INSERT INTO `wd_member` VALUES ('263', '330282600073537', 'd98221ecfd5a85c11364e49c1a8781b5', 'cntn', '1451281136', '60.178.180.170', '3', '0', '3', '0', '0', '288', '1');
INSERT INTO `wd_member` VALUES ('264', '1465667', '963d121d9933de4338ae301882163424', 'ysut', '1451441225', '115.215.112.182', '3', '0', '6', '0', '0', '289', '1');
INSERT INTO `wd_member` VALUES ('265', '3124682185851', 'df22487c7c2150c59ff093c1f233fde2', 'kisg', '1450944256', '180.174.9.208', '2', '0', '1', '0', '0', '290', null);
INSERT INTO `wd_member` VALUES ('266', '510100400020445', '72c1595d3fbc6be429b5cf33b9f476ca', 'mqzg', '1452665417', '222.210.108.122', '3', '0', '8', '0', '0', '291', '1');
INSERT INTO `wd_member` VALUES ('267', '410300400005272', 'af2062c4670dd67703c185b53945d5f7', 'dshk', '1452238326', '77.73.163.97', '3', '0', '9', '0', '0', '292', '1');
INSERT INTO `wd_member` VALUES ('268', '371525200015100', 'c975b4528d98b4c263f3513b00634b99', 'ushj', '1453336914', '39.70.105.225', '3', '0', '7', '0', '0', '293', '1');
INSERT INTO `wd_member` VALUES ('269', '310226001062443', '77c858925addb9da2dd4e668c9cd8b79', 'jbdv', '1451208449', '180.175.75.163', '3', '0', '2', '0', '0', '294', '1');
INSERT INTO `wd_member` VALUES ('271', '310227000294217', '393ea4db84483613ff3571202ef7fd99', 'xtvi', '1452827302', '180.175.136.179', '3', '0', '13', '0', '0', '296', '1');
INSERT INTO `wd_member` VALUES ('272', '07000000201510190214', 'b473bc77951acf18babb6c8ee9e28bab', 'virl', '1451274182', '180.162.250.70', '3', '0', '1', '0', '0', '297', '1');
INSERT INTO `wd_member` VALUES ('273', '320200000112662', 'f8a77f748336f4abfd1f92276622fb14', 'qsdn', '1451281656', '218.90.148.230', '3', '0', '1', '0', '0', '298', '1');
INSERT INTO `wd_member` VALUES ('274', '120112000207794', '2d0f406e0865588b83f32fcc0d5fdd37', 'lqih', '1452046664', '117.9.198.101', '3', '0', '9', '0', '0', '299', '1');
INSERT INTO `wd_member` VALUES ('275', '440681000102234', '13afc0f67bc5edb6d63c2630cc08210a', 'clsh', '1451441202', '219.130.245.138', '3', '0', '2', '0', '0', '300', '1');
INSERT INTO `wd_member` VALUES ('276', '310228001396335', 'ff6c760d64fd5b07bca4f2682d0ff8d8', 'gwlx', '1451558654', '114.95.96.121', '3', '0', '2', '0', '0', '301', '1');
INSERT INTO `wd_member` VALUES ('277', '610000100146943', '6e430f348c15abd94564e4d9cdef110d', 'gmfn', '1451441780', '1.82.130.81', '3', '0', '1', '0', '0', '302', '1');
INSERT INTO `wd_member` VALUES ('278', '320584000350953', '9a63c8747edc41b255785f1d128813a0', 'skvf', '1451462358', '117.82.108.63', '3', '0', '4', '0', '0', '303', '1');
INSERT INTO `wd_member` VALUES ('279', '91350200MA344T9L6U', 'fd909c45fd1c7b76a035cf0667eb65fd', 'cavv', '1453365726', '117.30.109.143', '3', '0', '6', '0', '0', '304', '1');
INSERT INTO `wd_member` VALUES ('280', '440122000001586', 'f1154b9eef237b3d5324f9ae237970d6', 'soxm', '1453426071', '218.19.93.162', '3', '0', '21', '0', '0', '305', '1');
INSERT INTO `wd_member` VALUES ('281', '91110112781706451J', '659a001744d3e05e9c630d9b50dc2a25', 'onoi', '1453354242', '175.170.15.110', '3', '0', '7', '0', '0', '306', '1');
INSERT INTO `wd_member` VALUES ('282', '350212200098825', 'b93221f4869729fa0ad6b8b3450c239a', 'dvaj', '1452051070', '120.36.215.72', '3', '0', '5', '0', '0', '307', '1');
INSERT INTO `wd_member` VALUES ('283', '320583000486447', '0ba80f182094640aeeb1c6fd0ea9a807', 'kvhx', '1453094594', '58.210.146.46', '3', '0', '6', '0', '0', '308', '1');
INSERT INTO `wd_member` VALUES ('284', '110115018259128', 'a89afb298492d0c2d81fbb69aebd16a1', 'xbaw', '1452929955', '111.194.172.97', '3', '0', '8', '0', '0', '309', '1');
INSERT INTO `wd_member` VALUES ('285', '310000400013545', '62b3a7e8122f33724ec6c79455fede49', 'yfbf', '1451891806', '101.95.16.238', '3', '0', '3', '0', '0', '310', '1');
INSERT INTO `wd_member` VALUES ('286', '320206000009661', '4aaf0c0e887abac304dc7907443010ec', 'opjb', '1452822020', '120.195.108.94', '3', '0', '10', '0', '0', '311', '1');
INSERT INTO `wd_member` VALUES ('287', '440103000241489', '45db62e7ba9594415812ef99e4373d42', 'xkjp', '1453274153', '14.146.30.4', '3', '0', '12', '0', '0', '312', '1');
INSERT INTO `wd_member` VALUES ('288', '440126000152516', '89230d99df9f7cf5f412bff2a8b0fcf0', 'mzun', '1452051200', '14.19.195.227', '3', '0', '8', '0', '0', '313', '1');
INSERT INTO `wd_member` VALUES ('289', '120000400052214', '09dfe6e24efee67382b56f805080efd1', 'dyho', '1453273771', '60.28.142.242', '3', '0', '7', '0', '0', '314', '1');
INSERT INTO `wd_member` VALUES ('290', '440106000796567', '71e986adec2a3b7a08b6c1d2c9a139cd', 'ntxq', '1451974072', '119.131.199.104', '2', '0', '2', '0', '0', '315', null);
INSERT INTO `wd_member` VALUES ('291', '340106000013253', '751f0e985985e36017458f5a7ad9ca8a', 'jnoz', '1452740844', '218.22.26.39', '3', '0', '7', '0', '0', '316', '1');
INSERT INTO `wd_member` VALUES ('292', '320582000201512290061', 'c87e25508cde3fcdd78f96d43583fd86', 'grnq', '1453170920', '221.224.155.58', '3', '0', '18', '0', '0', '317', '1');
INSERT INTO `wd_member` VALUES ('293', '310000400414946', 'c42ca3c10288bbb05cef706e92e4f10f', 'wgkc', '1451980639', '116.228.14.170', '3', '0', '1', '0', '0', '318', '1');
INSERT INTO `wd_member` VALUES ('294', '91320900757999362Y', 'b10970626ae7bb84014b8146f034656d', 'tuha', '1452043735', '222.45.52.141', '3', '0', '3', '0', '0', '320', '1');
INSERT INTO `wd_member` VALUES ('296', '91310117753841402R', '8a03b2a33bbc796878d75512ccbd7437', 'pomz', '1452135634', '114.95.159.247', '3', '0', '4', '0', '0', '322', '1');
INSERT INTO `wd_member` VALUES ('297', '13438276', '9565f237bf0064056f55fa97af3e7943', 'qypy', '1452068890', '61.239.248.148', '3', '0', '1', '0', '0', '323', '1');
INSERT INTO `wd_member` VALUES ('298', '120111000016798', '527b1e3ea096602334757d18879b4fce', 'xmfa', '1452838247', '125.38.71.8', '3', '0', '8', '0', '0', '331', '1');
INSERT INTO `wd_member` VALUES ('314', '111111', '470a1456abd35e3e8a9398c3f45ffacf', 'lkrw', '1453077763', '121.23.219.50', '3', '0', '1', '0', '0', '348', '1');
INSERT INTO `wd_member` VALUES ('299', '4404000000626626', '178478903e4fa8bf6360d3a323667944', 'uych', '1452414951', '117.83.167.37', '3', '0', '1', '0', '0', '332', '1');
INSERT INTO `wd_member` VALUES ('300', '330212000061807', 'a7d5eda71d397716b9b3f6cba3c03a78', 'rmhy', '1452667962', '183.133.35.116', '3', '0', '3', '0', '0', '333', '1');
INSERT INTO `wd_member` VALUES ('301', '310000400523006', 'd0018a9394dff4b6ae38d848827c9745', 'hftj', '1453344319', '101.95.96.194', '3', '0', '3', '0', '0', '334', '1');
INSERT INTO `wd_member` VALUES ('302', '310227001570849', '3761a542678c2b5201011a9d34caec44', 'bnqq', '1453265933', '116.228.0.254', '3', '0', '3', '0', '0', '335', '1');
INSERT INTO `wd_member` VALUES ('303', '310113000369530', 'c7165f174f192e949a94350f91564005', 'ujrq', '1453342615', '114.95.123.35', '3', '0', '6', '0', '0', '336', '1');
INSERT INTO `wd_member` VALUES ('304', '110106010349497', '75bcede2afdc3b513bce0fd925d9225f', 'wrno', '1453258264', '111.194.226.227', '3', '0', '7', '0', '0', '337', '1');
INSERT INTO `wd_member` VALUES ('305', '310225000190221', 'ac71ad8210ad6ae631588d91366ad92c', 'cbuh', '1453169281', '101.81.184.200', '3', '0', '6', '0', '0', '338', '1');
INSERT INTO `wd_member` VALUES ('306', '310229000547203', '5cb14daea52f3f9610a28cba61ed9320', 'tvqy', '1453182811', '116.228.76.54', '3', '0', '4', '0', '0', '339', '1');
INSERT INTO `wd_member` VALUES ('307', '320506000077308', 'e5cd991e52d81b4332c2c54fcf0cfe46', 'oxji', '1452842954', '121.238.149.16', '3', '0', '5', '0', '0', '340', '1');
INSERT INTO `wd_member` VALUES ('308', '310107000589579', 'f6626d50c183ba5912887da10c42dea2', 'qqpu', '1453167318', '116.231.27.55', '3', '0', '5', '0', '0', '341', '1');
INSERT INTO `wd_member` VALUES ('309', '440000400013603', 'fe1b97936ecaa9f6002253eea109f6a7', 'uddb', '1452843507', '58.62.159.210', '3', '0', '2', '0', '0', '342', '1');
INSERT INTO `wd_member` VALUES ('310', '330783000089713', '4482612c97b1fa2f1ae35ee47161615f', 'wtrn', '1452847158', '101.224.116.222', '3', '0', '6', '0', '0', '343', '1');
INSERT INTO `wd_member` VALUES ('311', '10102000094443', 'cda17bb2f79795e6902be27c7c0da5a7', 'rrsv', '1452826584', '60.28.181.135', '3', '0', '1', '0', '0', '344', '1');
INSERT INTO `wd_member` VALUES ('312', '440301105151129', '97fce51e4f958b485d5de3a4279cae9e', 'dktv', '1452831075', '61.144.179.20', '3', '0', '1', '0', '0', '345', '1');
INSERT INTO `wd_member` VALUES ('313', '320585400005332', '7e23aae675387a3e4c2bc5bb7f3b0cf6', 'wyic', '1453105991', '221.224.41.219', '3', '0', '7', '0', '0', '346', '1');
INSERT INTO `wd_member` VALUES ('315', '330200400032464', '13a2431063300909a7d7029f9d47944e', 'rkvc', '1453262197', '222.161.203.165', '3', '0', '7', '0', '0', '349', '1');
INSERT INTO `wd_member` VALUES ('316', '330100400042512', '7a76fbc673e9ecdb6bdbd4283312e6a7', 'fvuc', '1453102030', '212.185.41.70', '3', '0', '1', '0', '0', '350', '1');
INSERT INTO `wd_member` VALUES ('317', '650000059006356', '93640176e51b0a879e9a85d6a1c233c1', 'gixk', '1453188210', '220.171.46.218', '3', '0', '2', '0', '0', '351', '1');
INSERT INTO `wd_member` VALUES ('318', '320205000006505', '7694594a959e8d2ce5c53a93e9309073', 'pgtv', '1453174121', '218.246.113.66', '3', '0', '2', '0', '0', '352', '1');
INSERT INTO `wd_member` VALUES ('319', '321027000011751', '72fa525bff7cb301068ea1b99f22ab3c', 'sooq', '1453192513', '58.220.224.246', '3', '0', '1', '0', '0', '354', '1');
INSERT INTO `wd_member` VALUES ('320', '440108000034660', 'c55a5fc24a46a7abd3508c36e444f53c', 'jxcc', '1453357929', '113.64.233.60', '3', '0', '4', '0', '0', '355', '1');
INSERT INTO `wd_member` VALUES ('321', '330198000048509', '07fe0893d5afc4ec2afeb54199903d9d', 'oaly', '1453277971', '183.129.155.18', '3', '0', '7', '0', '0', '356', '1');
INSERT INTO `wd_member` VALUES ('322', '310000400113477', 'f1f8fe7ab316c2dabf06d2af982f471d', 'biuu', '1453264813', '222.72.134.12', '3', '0', '2', '0', '0', '357', '1');
INSERT INTO `wd_member` VALUES ('323', '440604321701879', '3dae074204bea98b5110d089bdf9941e', 'eoce', '1453361767', '113.104.128.176', '3', '0', '3', '0', '0', '358', '1');
INSERT INTO `wd_member` VALUES ('324', '310228000483687', '701c6f749c94bed0e54fa06bcb4ccd52', 'uvjv', '1453277958', '116.236.185.158', '2', '0', '1', '0', '0', '359', null);
INSERT INTO `wd_member` VALUES ('325', '310141400009939', 'cb8c672c0fa72486b84765963c685d69', 'mtra', '1453430389', '222.69.128.109', '3', '0', '2', '0', '0', '360', '1');
INSERT INTO `wd_member` VALUES ('326', '91440300770312780A', 'f80e23e8944e2f415e07ec801d4e1c7f', 'voxv', '1453365314', '121.23.235.213', '3', '0', '2', '0', '0', '361', '1');
INSERT INTO `wd_member` VALUES ('327', '123', '601d822db9cad2841287a152343f5e1b', 'fugv', '1487311890', '127.0.0.1', '3', '0', '3', '0', '0', '363', '1');

-- ----------------------------
-- Table structure for wd_news
-- ----------------------------
DROP TABLE IF EXISTS `wd_news`;
CREATE TABLE `wd_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目分组，方便以后用',
  `pic` varchar(500) DEFAULT NULL COMMENT '缩略图',
  `author` varchar(250) DEFAULT NULL COMMENT '作者',
  `title` varchar(255) NOT NULL COMMENT 'utf8',
  `keywords` varchar(500) DEFAULT NULL COMMENT '关键词',
  `description` varchar(500) DEFAULT NULL COMMENT '新闻描述',
  `content` mediumtext NOT NULL COMMENT '新闻内容',
  `click` int(10) unsigned DEFAULT '0' COMMENT '点击次数',
  `position` tinyint(3) unsigned DEFAULT '0' COMMENT '是否推荐',
  `atime` int(14) unsigned DEFAULT NULL COMMENT '创建时间',
  `ctime` int(14) unsigned zerofill DEFAULT NULL COMMENT '修改时间',
  `origin` varchar(500) DEFAULT NULL COMMENT '来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_news
-- ----------------------------
INSERT INTO `wd_news` VALUES ('11', '0', '/upload/20150603/556e6a90a07c1.jpg', '国际电梯网', '女孩电梯内被劫劝退歹徒 监控被物业人员外泄上网', '国际电梯网', '国际电梯网', '&lt;p&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 20px 0px 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; white-space: normal; font-size: 18px;&quot;&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://www.elevator-expo.com/cn/admin/eWebEditor/UploadFile/201562183937667.jpg&quot; style=&quot;border-style: none;&quot;/&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　监控室内部&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　滁州女孩程晨(化名)在电梯遭遇持刀劫匪，经过一番智斗，不仅劝退了劫匪，而且还协助警方将其抓获(本报昨天报道)。然而，一波未平一波又起，电梯里自己被歹徒劫持的视频竟然外泄，被人发到网上转载无数，这令程晨十分担心。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　视频已经外泄&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　昨日，程晨告诉记者，事发当晚，她配合警方接受调查结束后，很晚回到家中，自己的心情还处于恐惧之中，突然微信上收到朋友发来的一个小视频，打开一看：天啦，这不是自己在电梯里被劫持的一幕吗?怎么网上传得这么快?&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　说着，程晨打开手机，记者在视频里看到，电梯里有一男一女，当电梯门打开的一刹那，电梯里那名年轻男子突然快速靠近年轻女子，并从后面勒住她的脖子，迅速地将其拖出电梯，随后电梯门关上。记者注意到，小视频虽然只有短短数秒，但被劫持女孩面部和衣着都十分清晰，只是歹徒背对着摄像头，看不清楚面部。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“视频里那女孩就是我，这就是被劫持的一瞬间。”程晨说，她感到十分不安，想第二天找物业公司讨说法，但由于案子还没有破，嫌疑人也没有落网，她也就没有心思去追究这事。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　害怕被人报复&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“幸亏警察破案神速，第二天犯罪嫌疑人就落网了。”程晨说，即使现在嫌疑人落网了，但是监控视频的外泄还是成了她的心病。现在，她一个人不敢上街，陌生电话也不敢接，走在大街上总是不由自主地回头张望，总害怕有坏人跟在后面要报复她。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“假如事发时那坏人有同伙躲在暗处，知道这一切，但现在还没有落网咋办?”程晨说，抛开个人隐私不谈，现在担心的是自己人身安全是否会受到影响。这并不是自己凭空怀疑，毕竟在与劫匪攀谈的过程中答应不报警的，后来是自己报警后凶手才落网的。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“我一定要找出监控视频外泄的原因。”巨大的心理负担让程晨决心找出视频外泄的原因，而办案民警明确地告诉她，警方是决不会泄露拷贝的视频。程晨说，她相信民警的话。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　物业人员所为&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“难道是物业工作人员泄露的?”程晨说，这个念头曾在脑海中一闪而过，但一度被自己给否定了，她不相信物业公司会做出这样的事情。昨日下午，程晨在记者的陪同下，来到了物业公司。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　“这不可能，没有经过批准，工作人员是不准随意拷贝监控视频的。”听完程晨的陈述，物业公司杨经理当即否认。然而，当程晨追问，有没有可能是监控室的工作人员个人行为呢?&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　杨经理说，这就属于个人道德范畴的事情了，该报警就报警。记者在监控室“监控员岗位职责”中看到，“未经批准，任何人不得将摄录资料外泄”，但并未注明违规后如何处罚。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　随后，杨经理当即对此事进行调查。一个小时过后，一位工作人员带着一位年轻女孩过来告诉程晨，此人是监控室工作人员，当晚她出于好奇和好心，用手机从监控视频上录下数秒小视频，发给朋友提醒以后乘电梯要小心，只是这位朋友又将该视频发给了多位朋友，从而在社会上扩散开。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　视情况做决定&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　杨经理表示，虽然小视频是他们公司工作人员所发，但并无恶意，况且也没有造成严重后果，希望俩人相互协商解决，不要将此事扩大。物业公司将对员工加强教育，对违反规定的工作人员给予相应处罚。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 25px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, &amp;#39;lucida grande&amp;#39;, tahoma, verdana, arial, sans-serif, 宋体; font-size: 13px; white-space: normal;&quot;&gt;　　安徽皖江律师事务所吴际律师表示，监控视频是由物业公司工作人员无意中外泄，物业公司当然要承担相应责任，至于公司内部如何追责，是物业公司内部的事情。程晨则告诉记者，虽然这段小视频对她造成部分影响，但毕竟还没有带来严重后果，她将视情况的发展维护自己的权益。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '0', '1', '1433213307', '00001433299707', '国际电梯网');
INSERT INTO `wd_news` VALUES ('12', '0', '', '', '贵州运用大数据技术开展电梯救援处置工作', '', '', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; color: rgb(0, 0, 0); font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;新华社贵阳２月２４日电（李黔渝、施钱贵）新开发的“贵州省特种设备监管平台”将大数据技术运用到电梯维保和救援上。记者从贵州省质监局了解到，该平台是监管电梯、锅炉等特种设备的网络信息系统，能够精准确定困人电梯的位置和责任维保单位，提升监管的有效性和科学性。&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; line-height: 2em; color: rgb(0, 0, 0); font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　记者在该平台控制现场看到，从平台监控能够随时查看在用电梯维保管理、各市（县）电梯检验率、各公司生产的电梯困人率、各电梯困人次数等数据信息，实现了“用数据说话”，明确了需要重点监管的区域、维保单位和需要检修、更换的电梯，以便能够及时发现问题和隐患。&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; line-height: 2em; color: rgb(0, 0, 0); font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　据了解，贵州省电梯数量年均增长３０％以上，使用总量已突破６．１万台，电梯日运量达５００万人次以上。与此同时，电梯发生的故障也与日俱增，全省每年发生电梯困人故障６５００余起，故障率达１０．７％。&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; line-height: 2em; color: rgb(0, 0, 0); font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　截至目前，全省纳入该平台的电梯已占在用电梯总数的９７％，累计救援１１６２０次，解救受困群众近３万人，该平台正在贵州扩大覆盖范围，今后将在全国进一步推广和应用&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '0', '1487987029', null, '');
INSERT INTO `wd_news` VALUES ('13', '0', '', '', '老房加装电梯 可有成功秘诀？', '', '', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;随着上海进入深度老龄化社会，多层住房加装电梯已成为一大“刚需”，也是众多市民热切盼望的“民生工程”。去年下半年，市有关部门对加装电梯的流程及审批程序作了简化和规范，促进了这项工作的推进。进入2017年，又有不少多层居民楼成功装上了电梯。连日来，记者探访了几处刚刚装上电梯的多层住宅楼，见到不少“悬空老人”轻松上下楼，脸上露出了开心的笑容。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;居委早动员 低层给支持&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;普陀区爱建新村&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;新年春节刚过，位于普陀区杨柳青路的爱建新村5号楼的居民们喜笑颜开地聚在了一起，因为楼道里的新电梯试运行了！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;在试乘电梯的人群中，有好几位平时难得出门的“悬空老人”。80多岁的吴阿婆住在6楼，6层高的楼梯一直是她出门的拦路虎，平时家里烧的菜全靠女儿送来，或是邻居帮忙带回。如今有了电梯，上上下下就没烦恼了。80多岁的崔师傅住在502室，原来爬不动楼梯，只能在走廊里走走，现在每天都能下楼到花园里锻炼身体了。住在四楼的罗老伯86岁，患有癌症，原来不怎么出门，现在有了电梯，几天前自己去了趟超市。他说，万一身体不舒服要去医院，也方便多了。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;爱建新村虽说建于上世纪80年代，但建设标准很高，清一色六层楼，房型从60平方米的一室一厅到120平方米的三室一厅都有，小区开阔，绿化漂亮。因为爱建新村是上海第一批“侨汇房”，当时是一些外贸、航运单位用外汇买下来分给职工的。不过，30年过去了，最早的住户从当年四五十岁的中年人，变成了如今的耄耋老人。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;2015年，看到同样属于长征镇的怒江苑成功加装了电梯，爱建新村的居民都动心了。这时，居民区党总支看到居民的需求，马上组织一些居民前往怒江苑学习成功经验，并联系相关公司实地勘察加梯条件。党总支书记胡祖明说：“小区很多居民对加装电梯很有兴趣，但是对相关政策知之甚少。所以我们要把事情做在前头。他们年纪都大了，不能让大家一番折腾后，才发现并不符合加装电梯的条件。”&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;5号楼居民意愿最强烈，而且条件好，有一个原先的垃圾通道位置可以加装电梯。2015年7月，5号楼最先启动了加梯工程。501室的范维珍牵头成立了居民加梯自治小组、资金管理小组。在征询意见时，一楼居民很支持，二楼居民也很爽快：“好，要出多少钱你们说！”不少居民表示：“老人的今天就是我们的明天！”就这样，楼内意愿征询100%通过，第二次全小区业主征询，在居委会和业委会的帮助下，同意率也达到90%。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;之后，加梯自治小组“货比三家”，选择了电梯供应商和建造企业。范维珍清楚地记得，2015年最后一天，他们与筑福集团签订了电梯代建的合同。之后，一些申请、审批手续都由代建企业来办理，居民省了不少力气。半年后，手续办完，又经过几个月的建设，电梯终于竣工，总共花费62万元。电梯可载7人，载重550公斤，轮椅也可以放入，而且电梯平层入户，住户不需走半层。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;电梯工程也不是一帆风顺的。在施工过程中，为了减少对小区居民的影响，党总支、自治小组、施工方经反复协商，决定将电梯框架在工厂做好，再整体安装。但是，电梯框架无法从小区大门运入。为了解决这个难题，居民区党总支与正在小区周边施工的地铁15号线现场指挥部及交警部门联系。在两个部门的大力支持下，经多方共同配合，整装电梯从地铁15号线施工工地里，由吊车顺利从外墙吊入小区。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;5号楼电梯装好了，让其他居民羡慕不已。最近，爱建新村4号、12号、16号楼的居民也纷纷行动起来，筹建加梯自治小组。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;1号样板楼 拷贝不走样&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;杨浦区东银茗苑&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;去年7月，本报刊登了《多层居民楼装“观光电梯”》的新闻：位于周家嘴路2001弄的东银茗苑小区1号楼业主自主协商筹资，为所住的7层住宅楼装上电梯，花费不到30万元。半年过去了，小区内另一栋多层住宅楼——18号楼，外墙也多出了一部一模一样的“观光电梯”！住在5楼的孙慈忠和胡成英老夫妇激动地说：“这下，阿拉房子可以不要‘动’了！”&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;东银茗苑是2002年落成的商品房小区，共21幢楼，其中19幢是高层、小高层，只有1号和18号是多层住宅楼。孙慈忠和妻子都已70多岁。他们说，十多年前搬进来的时候，走5层楼还没问题，但是这两年，实在爬不动了。年纪一天天大上去，今后怎么办？他们无数次地想过这个问题：“搬家？除了没电梯，对小区、房型、朝向都很满意；而且这么大年纪，搬家实在是力不从心！”&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;在1号楼启动加装电梯工程，让老夫妇看到了希望。1号楼加装电梯的牵头人高毅给了他们很多帮助，把1号楼的方案、图纸统统“拷贝”给18号楼，还帮他们办手续。胡成英是楼组长，人头熟，挨家挨户征询意见，邻居们大部分是四十多岁的中年人，不过他们都一致赞同，费用分摊方案也顺利通过。去年下半年，在杨浦区有关部门及江浦街道的支持下，全部手续顺利办完，经过几个月的建造，电梯于春节前竣工并通过了验收。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;记者在现场看到，因为房屋结构原因，电梯是半层入户，需要走8级楼梯，因为多开了一扇门，所以费用比1号楼多出了几万元，总费用32万元。这部电梯有一个优点，由于面板是玻璃的，所以光线一点也没有遮挡。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;“今年春节，阿拉过得最开心了。亲戚朋友来玩，看到电梯都赞不绝口。301室有个小宝宝，婴儿车直接放在电梯里就上来了！”孙慈忠笑着说。而电梯的维修和电费，第一年由电梯公司包了，今后就全部交给物业，物业管理费从1.05元增加到1.5元，和小区里其他电梯房一样。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;4年“持久战” 4栋齐“变身”&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;长宁区虹桥紫云苑&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;前几天，记者来到位于紫云西路50弄的虹桥紫云苑，只见1-4号楼外墙各有一排凸起，那是刚刚竣工的电梯和走廊，米黄色和浅灰色，和原有的外墙十分协调。居民们感慨道：一场打了4年的“持久战”终于胜利了！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;虹桥紫云苑小区属于空军上海仙霞路干休所，2005年10月竣工，均为6层的楼房，一二层为商业用房。由于小区里的中老年人居多，十多年过去了，不少住户步入了耄耋之年，上下楼梯越来越不方便。据统计，1-4号共有住户32户，其中60岁以上老人有46人。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;4年前，业主们就萌发了给住房加装电梯的念头，空军上海仙霞路干休所也十分支持，并开展了前期征询工作。可是，由于电梯加装工程各环节头绪多，涉及面广，干休所和业主奔波了3年，还走了不少弯路，方案也几经修改。第一个方案是半层入户，但不少居民认为不方便，如果坐轮椅还是没法直接进屋，于是再修改方案，在外墙增加连接电梯的走廊，工程量增加。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;4栋住宅楼要一起装电梯，这在上海还是第一例。长宁区房管局、市房修协会对此十分关心，多次去实地察看情况。当办理施工手续过程中碰到困难时，市房修协会还与建设行政管理部门沟通，为项目顺利开工打下基础，此外，还为业主推荐了信誉比较好的电梯供应商。去年6月，1-4号楼获得了施工许可证。业主们4年的“持久战”终于见到了曙光。又经过半年的施工，终于在春节前竣工了。电梯选用的是三菱品牌，可乘11人，载重825公斤。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;68岁的章宗新阿姨家住6楼。她高兴地说，小区居民对电梯工程很满意，每家都出了费用。装了电梯以后生活出行都方便多了。“老伴有心脏病，没装电梯之前犯病了，120急救医生从六楼把病人抬下去，非常不方便，现在就放心多了。”她说。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;相关链接&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;目前，市房屋修建行业协会承担上海的多层住房加装电梯咨询、指导的任务，一本详细的《多层住宅加装电梯指南》正在编写中。咨询电话：52821660；52897155转817、815。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;快速跟进是关键&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;这一个个加装电梯成功的案例，有售后公房，也有商品房小区，这与业主、居民们的坚持不懈、齐心协力以及邻里互谅是分不开的。如今，审批手续经过简化，老房加装电梯已经不像“造金茂大厦”那么复杂了。不过对缺乏专业知识的普通市民来说，难度还是不小。那么，怎么才能给老房子顺利装上电梯呢？全力支持爱建新村5号楼加装电梯工程的长征镇梅北居民区党总支书记胡祖明给出了四条“秘笈”：&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;1. 楼内的大部分居民要有意愿。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal;&quot;&gt;2. 楼道里要有热心的人，这样能够开展前期的意愿征询，以及后面的资金分摊方案等征询。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '0', '1487987087', null, '');

-- ----------------------------
-- Table structure for wd_order
-- ----------------------------
DROP TABLE IF EXISTS `wd_order`;
CREATE TABLE `wd_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT 'user id',
  `bid` int(10) unsigned DEFAULT NULL COMMENT '展位ID|广告ID',
  `trade_no` varchar(100) DEFAULT NULL COMMENT 'trade num',
  `area` varchar(255) DEFAULT NULL COMMENT 'booth area',
  `price` varchar(255) NOT NULL COMMENT 'booth price',
  `buyer_email` varchar(255) DEFAULT NULL COMMENT 'buyer email',
  `out_trade_no` varchar(100) DEFAULT NULL COMMENT 'company trade',
  `status` tinyint(4) unsigned NOT NULL COMMENT '1 order 2 pay 3 invoice',
  `atime` varchar(20) NOT NULL COMMENT '添加时间',
  `ptime` varchar(20) DEFAULT NULL COMMENT '付款时间',
  `remark` text COMMENT 'remark',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '付款类型',
  `contract` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否申请合同0未申请,1已申请,2申请成功',
  `ad_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1是展位 2是广告',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_order
-- ----------------------------
INSERT INTO `wd_order` VALUES ('115', '44', '235', null, '6*8=48', '5000', null, 'TT2015111109221144', '2', '1447204931', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('112', '37', '288', null, '91.5', '5000', null, 'TT2015111011145337', '2', '1447125293', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('117', '46', '99', null, '6*8=48', '5000', null, 'TT2015111101370546', '2', '1447220225', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('116', '45', '253', null, '6*8=48', '5000', null, 'TT2015111101313945', '2', '1447219899', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('119', '48', '121', null, '6*8=48', '5000', null, 'TT2015111102521648', '2', '1447224736', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('126', '57', '155', null, '12', '5000', null, 'TT2015111309330957', '2', '1447378389', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('121', '41', '254', null, '6*8=48', '5000', null, 'TT2015111104144141', '2', '1447229681', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('124', '52', '296', null, '7*9=63', '5000', null, 'TT2015111212540952', '2', '1447304049', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('128', '55', '176', null, '12', '5000', null, 'TT2015111309294755', '2', '1447378187', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('129', '60', '95', null, '24', '5000', null, 'TT2015111310260960', '2', '1447381569', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('130', '56', '228', null, '6*16=96', '5000', null, 'TT2015111310531856', '2', '1447383198', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('131', '61', '183', null, '12', '5000', null, 'TT2015111310550961', '2', '1447383309', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('134', '67', '122', null, '6*8=48', '5000', null, 'TT2015111312304467', '2', '1447389044', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('133', '65', '49', null, '24', '5000', null, 'TT2015111311274565', '2', '1447385265', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('135', '58', '69', null, '6*8=48', '5000', null, 'TT2015111301174558', '2', '1447391865', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('136', '70', '240', null, '6*8=48', '5000', null, 'TT2015111301423370', '2', '1447393353', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('137', '64', '71', null, '24', '5000', null, 'TT2015111301453664', '2', '1447393536', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('140', '51', '46', null, '24', '5000', null, 'TT2015111302005651', '2', '1447394456', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('166', '63', '115', null, '36', '5000', null, 'TT2015111412245763', '2', '1447475097', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('143', '62', '189', null, '12', '5000', null, 'TT2015111302301962', '2', '1447396219', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('144', '68', '66', null, '6*8=48', '5000', null, 'TT2015111302284068', '2', '1447396120', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('146', '72', '161', null, '12', '5000', null, 'TT2015111303012672', '2', '1447398086', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('152', '73', '147', null, '12', '5000', null, 'TT2015111303313173', '2', '1447399891', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('153', '50', '236', null, '24', '5000', null, 'TT2015111303491950', '2', '1447400959', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('150', '76', '124', null, '36', '5000', null, 'TT2015111303283676', '2', '1447399716', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('151', '43', '100', null, '6*8=48', '5000', null, 'TT2015111303154843', '2', '1447398948', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('154', '77', '93', null, '6*8=48', '5000', null, 'TT2015111303423377', '2', '1447400553', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('155', '66', '195', null, '12', '5000', null, 'TT2015111303525666', '2', '1447401176', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('156', '79', '320', null, '24', '5000', null, 'TT2015111303531879', '2', '1447401198', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('157', '81', '211', null, '12', '5000', null, 'TT2015111304014081', '2', '1447401700', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('165', '71', '322', null, '24', '5000', null, 'TT2015111410420771', '2', '1447468927', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('164', '74', '238', null, '24', '5000', null, 'TT2015111709000774', '1', '1447722007', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('162', '53', '261', null, '36', '5000', null, 'TT2015111409302853', '2', '1447464628', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('167', '84', '164', null, '12', '5000', null, 'TT2015111404452084', '2', '1447490720', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('169', '83', '145', null, '12', '5000', null, 'TT2015111407181983', '2', '1447499899', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('170', '82', '44', null, '6*8=48', '5000', null, 'TT2015111608220682', '2', '1447633326', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('179', '90', '286', null, '24', '5000', null, 'TT2015111601433790', '2', '1447652617', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('172', '54', '270', null, '36', '5000', null, 'TT2015111610125754', '2', '1447639977', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('182', '92', '179', null, '12', '5000', null, 'TT2015111602512492', '2', '1447656684', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('175', '38', '292', null, '6*12=72', '5000', null, 'TT2015111610475538', '2', '1447642075', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('176', '47', '229', null, '24', '5000', null, 'TT2015111610522347', '2', '1447642343', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('214', '122', '198', null, '12', '5000', null, 'TT20151120091140122', '2', '1447981900', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('183', '89', '246', null, '6*8=48', '5000', null, 'TT2015111603290589', '2', '1447658945', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('184', '86', '202', null, '12', '5000', null, 'TT2015111603241686', '2', '1447658656', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('185', '93', '257', null, '24', '5000', null, 'TT2015111604212693', '2', '1447662086', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('186', '78', '112', null, '6*8=48', '5000', null, 'TT2015111709452878', '2', '1447724728', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('187', '69', '138', null, '12', '5000', null, 'TT2015111709424969', '2', '1447724569', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('188', '95', '186', null, '12', '5000', null, 'TT2015111710043395', '2', '1447725873', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('191', '98', '271', null, '6*8=48', '5000', null, 'TT2015111702572898', '2', '1447743448', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('192', '87', '193', null, '6*8=48', '5000', null, 'TT2015111703024387', '2', '1447743763', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('195', '97', '118', null, '24', '5000', null, 'TT2015111810171597', '2', '1447813035', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('194', '99', '154', null, '12', '5000', null, 'TT2015111810092599', '2', '1447812565', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('197', '102', '343', null, '6*8=48', '5000', null, 'TT20151118050039102', '2', '1447837239', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('201', '107', '205', null, '12', '5000', null, 'TT20151119083643107', '2', '1447893403', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('199', '85', '178', null, '12', '5000', null, 'TT2015111806481185', '2', '1447843691', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('200', '106', '274', null, '24', '5000', null, 'TT20151118072847106', '2', '1447846127', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('202', '80', '241', null, '6*8=48', '5000', null, 'TT2015111908401280', '2', '1447893612', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('207', '94', '350', null, '6*9=54', '5000', null, 'TT2015111903514194', '2', '1447919501', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('204', '108', '266', null, '24', '5000', null, 'TT20151119090530108', '2', '1447895130', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('205', '101', '262', null, '6*8=48', '5000', null, 'TT20151119091436101', '2', '1447895676', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('206', '109', '151', null, '12', '5000', null, 'TT20151119094737109', '2', '1447897657', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('209', '112', '231', null, '24', '5000', null, 'TT20151119043644112', '2', '1447922204', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('210', '111', '68', null, '24', '5000', null, 'TT20151119050402111', '2', '1447923842', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('212', '116', '50', '2.015112021e+027', '36', '5000', '549795170@qq.com', 'TT20151120080435116', '2', '1447977875', '1447977952', '南通奇萌电器有限公司', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('254', '96', '97', '2.015112121e+027', '24', '5000', '276728237@qq.com', 'TT2015112109453396', '2', '1448070333', '1448070396', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('238', '123', '244', null, '24', '5000', null, 'TT20151120015337123', '1', '1447998817', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('218', '125', '312', null, '24', '5000', null, 'TT20151120093523125', '2', '1447983323', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('253', '120', '293', '2.015112021e+027', '36', '5000', 'chenkai@svles.com.cn', 'TT20151120084041120', '2', '1448023241', '1448023330', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('221', '127', '57', null, '24', '5000', null, 'TT20151120100609127', '2', '1447985169', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('229', '119', '137', null, '12', '5000', null, 'TT20151120114056119', '2', '1447990856', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('226', '110', '192', null, '12', '5000', null, 'TT20151120022833110', '2', '1448000913', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('227', '132', '134', '2.015112021e+027', '12', '5000', '50028029@qq.com', 'TT20151120104934132', '2', '1447987774', '1447988121', '泰州斯隆达胶带有限公司', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('228', '100', '58', null, '6*8=48', '5000', null, 'TT20151120105338100', '2', '1447988018', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('239', '117', '77', '2.015112021e+027', '6*15=90', '5000', 'yuyang243@163.com', 'TT20151120022704117', '2', '1448000824', '1448000866', '深圳楚光金典定金', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('234', '138', '89', null, '24', '5000', null, 'TT20151120122723138', '2', '1447993643', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('237', '103', '60', null, '24', '5000', null, 'TT20151120012720103', '2', '1447997240', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('242', '113', '185', null, '12', '5000', null, 'TT20151120031554113', '2', '1448003754', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('243', '139', '116', '2.015112021e+027', '24', '5000', '13780090126', 'TT20151120032605139', '2', '1448004365', '1448004404', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('246', '141', '85', '2.015112021e+027', '24', '5000', '13752057532', 'TT20151120034654141', '2', '1448005614', '1448006920', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('248', '118', '146', null, '12', '5000', null, 'TT20151120050643118', '2', '1448010403', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('251', '142', '163', '2.015112021e+027', '12', '5000', '18613071695', 'TT20151120050615142', '2', '1448010375', '1448010970', '广州捷开电子有限公司   支付宝账号18613071695\n请附发票', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('258', '147', '217', '2.015112221e+027', '12', '5000', 'vividragon84@126.com', 'TT20151122043855147', '2', '1448181535', '1448181809', '开发票', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('260', '143', '177', '2.015112321e+027', '12', '5000', '13908468115', 'TT20151123085849143', '2', '1448240329', '1448240385', '长沙五力机电设备有限公司', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('261', '140', '91', null, '24', '5000', null, 'TT20151123095758140', '2', '1448243878', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('263', '144', '190', null, '12', '5000', null, 'TT20151123041454144', '2', '1448266494', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('264', '145', '358', null, ' 6*12=72', '5000', null, 'TT20151123111658145', '2', '1448248618', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('277', '88', '247', null, '6*8=48', '5000', null, 'TT2015112512010688', '2', '1448424066', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('268', '126', '351', null, '6*9=54', '5000', null, 'TT20151123032433126', '2', '1448263473', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('269', '149', '203', null, '12', '5000', null, 'TT20151123043252149', '2', '1448267572', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('273', '115', '191', null, '12', '5000', null, 'TT20151124012053115', '2', '1448342453', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('276', '156', '222', null, '12', '5000', null, 'TT20151124051544156', '2', '1448356544', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('279', '158', '209', null, '12', '5000', null, 'TT20151125123815158', '2', '1448426295', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('282', '49', '158', null, '12', '5000', null, 'TT2015122503112849', '1', '1451027488', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('281', '75', '61', null, '36', '5000', null, 'TT2015112607503575', '2', '1448495435', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('285', '155', '215', null, '12', '5000', null, 'TT20151126024038155', '2', '1448520038', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('286', '168', '259', '2.015112621e+027', '24', '5000', '18902008273', 'TT20151126035150168', '2', '1448524310', '1448524415', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('287', '161', '162', null, '12', '5000', null, 'TT20151126043214161', '2', '1448526734', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('288', '160', '204', null, '12', '5000', null, 'TT20151126045250160', '2', '1448527970', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('289', '167', '197', null, '12', '5000', null, 'TT20151127115834167', '2', '1448596714', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('290', '128', '141', null, '12', '5000', null, 'TT20151127010911128', '2', '1448600951', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('292', '169', '268', null, '24', '5000', null, 'TT20151127040344169', '2', '1448611424', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('294', '174', '210', '2.015113021e+027', '12', '5000', '1443686814@qq.com', 'TT20151130104754174', '2', '1448851674', '1448851747', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('295', '177', '135', null, '12', '5000', null, 'TT20151130035341177', '2', '1448870021', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('298', '165', '173', null, '9*8=72', '5000', null, 'TT20151201014336165', '2', '1448948616', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('299', '173', '136', null, '12', '5000', null, 'TT20151201042425173', '2', '1448958265', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('309', '190', '87', null, '24', '5000', null, 'TT20151203111920190', '2', '1449112760', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('301', '166', '227', null, '9*10=90', '5000', null, 'TT20151201040754166', '2', '1448957274', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('302', '121', '250', null, '24', '5000', null, 'TT20151201041622121', '2', '1448957782', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('304', '187', '392', null, '24', '5000', null, 'TT20151202030521187', '2', '1449039921', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('306', '186', '216', '2.015120221e+027', '12', '5000', '15725346622', 'TT20151202040220186', '2', '1449043340', '1449043468', '宁津县新未来电扶梯配件有限公司 15853474888', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('308', '188', '224', null, '12', '5000', null, 'TT20151203105231188', '2', '1449111151', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('310', '182', '140', null, '12', '5000', null, 'TT20151203032452182', '2', '1449127492', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('312', '154', '223', null, '12', '5000', null, 'TT20151204035851154', '2', '1449215931', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('319', '198', '157', '2.015120521e+027', '12', '5000', '18029381051', 'TT20151205125254198', '2', '1449291174', '1449291314', '佛山市顺德区雅泓不锈钢有限公司7B86', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('318', '194', '105', null, '24', '5000', null, 'TT20151205103449194', '2', '1449282889', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('320', '201', '152', '2.015120521e+027', '12', '5000', '395613035@qq.com', 'TT20151205042945201', '2', '1449304185', '1449304224', '瑞安市西湖电梯配件厂', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('339', '196', '156', null, '12', '5000', null, 'TT20151208104155196', '2', '1449542515', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('330', '202', '72', null, '36', '5000', null, 'TT20151207102113202', '2', '1449454873', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('341', '176', '94', null, '6*8=48', '5000', null, 'TT20151214024556176', '2', '1450075556', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('336', '152', '109', null, '24', '5000', null, 'TT20151207012016152', '2', '1449465616', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('342', '197', '139', null, '12', '5000', null, 'TT20151215031024197', '2', '1450163424', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('343', '146', '317', null, '9*6=54', '5000', null, 'TT20151215031600146', '2', '1450163760', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('347', '228', '329', null, '6*9=54', '5000', null, 'TT20151216033619228', '2', '1450251379', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('353', '195', '303', null, '36', '5000', null, 'TT20151217041042195', '2', '1450339842', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('350', '234', '328', null, '9*13=117', '5000', null, 'TT20151216043130234', '2', '1450254690', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('358', '208', '483', '2.015122021e+027', '12', '5000', 'jmaocai@163.com', 'TT20151220120037208', '2', '1450584037', '1450584132', '12平方标展7E38。', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('356', '183', '313', null, '36', '5000', null, 'TT20151219115517183', '2', '1450497317', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('370', '157', '133', '2.015122121e+027', '6*8=48', '5000', 'zhumingyan@188.com', 'TT20151221093120157', '2', '1450661480', '1450661537', '7299展位押金', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('362', '227', '452', '2.015122121e+027', '12', '5000', 'jzhouweco@googlemail.com', 'TT20151221090244227', '2', '1450659764', '1450659829', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('382', '231', '533', null, '12', '5000', null, 'TT20151221024144231', '2', '1450680104', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('409', '136', '307', null, '36', '5000', null, 'TT20151224013409136', '2', '1450935249', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('368', '215', '500', null, '24', '5000', null, 'TT20151221092208215', '2', '1450660928', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('400', '257', '435', null, '12', '5000', null, 'TT20151223112654257', '2', '1450841214', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('371', '213', '515', null, '12', '5000', null, 'TT20151221011058213', '2', '1450674658', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('372', '210', '393', '2.015122121e+027', '24', '5000', 'lxlfztaobao@sina.cn', 'TT20151221094321210', '2', '1450662201', '1450662329', '展位预订，展位号7D12，面积24平米', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('373', '241', '113', null, '6*8=48', '5000', null, 'TT20151221115224241', '2', '1450669944', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('395', '206', '450', null, '12', '5000', null, 'TT20151222110727206', '2', '1450753647', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('375', '221', '441', null, '12', '5000', null, 'TT20151221111340221', '2', '1450667620', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('377', '246', '394', '2.015122121e+027', '24', '5000', '13564665229@163.com', 'TT20151221115001246', '2', '1450669801', '1450670279', '上海万戎电梯配件有限公司 13564665229 居鹤飞', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('380', '212', '535', null, '12', '5000', null, 'TT20151221015957212', '2', '1450677597', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('381', '225', '525', null, '12', '5000', null, 'TT20151221012907225', '2', '1450675747', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('394', '164', '543', null, '6*8=48', '5000', null, 'TT20151222100817164', '2', '1450750097', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('397', '250', '438', null, '12', '5000', null, 'TT20151222032438250', '1', '1450769078', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('389', '205', '372', '2.015122121e+027', '24', '5000', '13723586496', 'TT20151221033340205', '2', '1450683220', '1450683260', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('396', '216', '523', null, '12', '5000', '13917108919', 'TT20151222120608216', '2', '1450757168', null, null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('480', '224', '439', null, '12', '5000', null, 'TT20160111020711224', '1', '1452492431', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('408', '171', '82', '2.015122421e+027', '6*8=48', '5000', 'ilikeymy@163.com', 'TT20151224104548171', '2', '1450925148', '1450925217', '宁波盛大风机有限公司', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('403', '159', '368', null, '24', '5000', null, 'TT20151223014238159', '2', '1450849358', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('410', '247', '519', null, '12', '5000', null, 'TT20151224031816247', '2', '1450941496', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('434', '135', '517', null, '12', '5000', null, 'TT20151231030637135', '2', '1451545597', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('412', '163', '440', null, '12', '5000', null, 'TT20151225121237163', '2', '1451016757', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('413', '218', '107', null, '24', '5000', null, 'TT20151225024705218', '2', '1451026025', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('422', '223', '55', '2.015122821e+027', '6*8=48', '5000', '18951433033', 'TT20151228093949223', '2', '1451266789', '1451267064', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('419', '268', '521', '2.015122721e+027', '12', '5000', '7626312@qq.com', 'TT20151227072632268', '2', '1451215592', '1451215658', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('427', '264', '451', '2.015123021e+027', '12', '5000', '18476090@qq.com', 'TT20151230102432264', '2', '1451442272', '1451442426', '宁波通菱电梯有限公司展位定金', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('428', '278', '499', null, '24', '5000', null, 'TT20151230110508278', '2', '1451444708', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('433', '282', '522', null, '12', '5000', null, 'TT20151231010622282', '2', '1451538382', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('441', '209', '518', null, '12', '5000', null, 'TT20160104013105209', '2', '1451885465', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('450', '193', '526', null, '12', '5000', null, 'TT20160104041149193', '2', '1451895109', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('442', '175', '520', null, '12', '5000', null, 'TT20160104024236175', '2', '1451889756', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('456', '286', '382', null, '24', '5000', null, 'TT20160105011311286', '2', '1451970791', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('447', '274', '524', null, '12', '5000', null, 'TT20160104031818274', '2', '1451891898', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('451', '270', '453', null, '12', '5000', null, 'TT20160104044949270', '2', '1451897389', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('468', '233', '373', null, '24', '5000', null, 'TT20160106120054233', '2', '1452052854', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('461', '266', '318', null, '9*6=54', '5000', null, 'TT20160105040606266', '2', '1451981166', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('469', '295', '442', '2.016010621e+027', '12', '5000', '1796130960@qq.com', 'TT20160106031448295', '2', '1452064488', '1452065494', '展位费用', '1', '0', '1');
INSERT INTO `wd_order` VALUES ('462', '271', '355', null, '6*8=48', '5000', null, 'TT20160105044622271', '2', '1451983582', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('466', '288', '443', null, '12', '5000', null, 'TT20160106093754288', '2', '1452044274', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('481', '292', '388', null, '24', '5000', null, 'TT20160111040028292', '2', '1452499228', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('472', '296', '432', null, '12', '5000', null, 'TT20160107102842296', '2', '1452133722', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('474', '280', '457', null, '6*8=48', '5000', null, 'TT20160108092038280', '2', '1452216038', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('479', '256', '391', null, '24', '5000', null, 'TT20160108061357256', '2', '1452248037', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('482', '291', '371', null, '24', '5000', null, 'TT20160114110750291', '2', '1452740870', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('485', '298', '374', null, '24', '5000', null, 'TT20160115110930298', '2', '1452827370', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('490', '310', '458', null, '24', '5000', null, 'TT20160115044406310', '1', '1452847446', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('487', '307', '445', null, '12', '5000', null, 'TT20160115032945307', '2', '1452842985', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('488', '214', '534', null, '12', '5000', null, 'TT20160115034526214', '2', '1452843926', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('491', '284', '389', null, '24', '5000', null, 'TT20160116034512284', '2', '1452930312', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('492', '313', '377', null, '24', '5000', null, 'TT20160118122727313', '2', '1453091247', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('493', '305', '436', null, '12', '5000', null, 'TT20160118023238305', '2', '1453098758', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('494', '308', '516', null, '12', '5000', null, 'TT20160118044523308', '2', '1453106723', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('495', '289', '383', null, '24', '5000', null, 'TT20160118034245289', '2', '1453102965', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('501', '304', '390', null, '24', '5000', null, 'TT20160120104858304', '2', '1453258138', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('499', '315', '448', null, '12', '5000', null, 'TT20160119045953315', '2', '1453193993', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('502', '287', '378', null, '24', '5000', null, 'TT20160120111406287', '2', '1453259646', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('504', '303', '532', '2.016012021e+027', '12', '5000', '757513666@qq.com', 'TT20160120013622303', '2', '1453268182', '1453268479', null, '1', '0', '1');
INSERT INTO `wd_order` VALUES ('506', '321', '546', null, '6*8=48', '5000', null, 'TT20160120041943321', '2', '1453277983', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('508', '323', '527', null, '12', '5000', null, 'TT20160121023604323', '2', '1453358164', null, null, '2', '0', '1');
INSERT INTO `wd_order` VALUES ('509', '279', '444', null, '12', '5000', null, 'TT20160121045423279', '2', '1453366463', null, null, '2', '0', '1');

-- ----------------------------
-- Table structure for wd_pay
-- ----------------------------
DROP TABLE IF EXISTS `wd_pay`;
CREATE TABLE `wd_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL COMMENT '公司名称',
  `fukuan` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '付款类型 1广告 0是展位',
  `product_id` int(10) DEFAULT NULL COMMENT '展位id|广告id',
  `pid` int(10) unsigned DEFAULT NULL COMMENT '产品ID',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_pay
-- ----------------------------
INSERT INTO `wd_pay` VALUES ('49', '37', '5000', '南通迅达橡塑制造有限公司', '/upload/20151110/564161d66db03.jpg', '1', '0', null, '288');
INSERT INTO `wd_pay` VALUES ('50', '44', '5000', '湖州克尼姆电梯部件有限公司', '/upload/20151111/56429bf3c771a.jpg', '1', '0', null, '235');
INSERT INTO `wd_pay` VALUES ('51', '46', '5000', '丹纳赫西特传感工业控制天津有限公司', '/upload/20151111/5642d41ca55fd.png', '1', '0', null, '99');
INSERT INTO `wd_pay` VALUES ('52', '45', '5000', '拉法特电机苏州有限公司', '/upload/20151111/5642d53bc24e6.png', '1', '0', null, '253');
INSERT INTO `wd_pay` VALUES ('53', '48', '5000', '宁波世裕金属制品有限公司', '/upload/20151111/5642ed847df9d.jpg', '1', '0', null, '121');
INSERT INTO `wd_pay` VALUES ('54', '41', '5000', ' 上海国泰电梯有限公司', '/upload/20151111/5642fc8c34b93.jpg', '1', '0', null, '254');
INSERT INTO `wd_pay` VALUES ('55', '52', '5000', '北京捷安电梯部件有限公司', '/upload/20151112/56441ba8da5e3.png', '1', '0', null, '296');
INSERT INTO `wd_pay` VALUES ('56', '55', '5000', '河北轻工进出口集团股份有限公司', '/upload/20151113/56453d119b695.jpg', '1', '0', null, '176');
INSERT INTO `wd_pay` VALUES ('57', '57', '5000', '宁津县宏远电梯配件厂', '/upload/20151113/56453de03b680.png', '1', '0', null, '155');
INSERT INTO `wd_pay` VALUES ('58', '60', '5000', '上海倚云电子科技有限公司', '/upload/20151113/56454a5c9527e.png', '1', '0', null, '95');
INSERT INTO `wd_pay` VALUES ('59', '56', '5000', '广州佳海机电设备有限公司', '/upload/20151113/564550c1ea09a.jpg', '1', '0', null, '228');
INSERT INTO `wd_pay` VALUES ('60', '61', '5000', '宁波经济技术开发区昊鸿电子有限公司', '/upload/20151113/564552134b7db.jpg', '1', '0', null, '183');
INSERT INTO `wd_pay` VALUES ('61', '65', '5000', '德州市德威利电梯有限公司', '/upload/20151113/5645591531999.jpg', '1', '0', null, '49');
INSERT INTO `wd_pay` VALUES ('62', '67', '5000', '杭州方星电子有限公司', '/upload/20151113/564569ee82101.jpg', '1', '0', null, '122');
INSERT INTO `wd_pay` VALUES ('63', '58', '5000', '宣城市华菱精工科技有限公司', '/upload/20151113/56457289e639f.png', '1', '0', null, '69');
INSERT INTO `wd_pay` VALUES ('64', '70', '5000', '江苏帝达贝轴承有限公司', '/upload/20151113/5645785451efb.jpg', '1', '0', null, '240');
INSERT INTO `wd_pay` VALUES ('65', '64', '5000', '宁波华兴伟业电子科技开发有限公司', '/upload/20151113/564579134827b.jpg', '1', '0', null, '71');
INSERT INTO `wd_pay` VALUES ('66', '51', '5000', '江门市骏达光电科技有限公司', '/upload/20151113/56457e0c8b1b7.png', '1', '0', null, '46');
INSERT INTO `wd_pay` VALUES ('67', '68', '5000', '常州富士电梯有限公司.', '/upload/20151113/56458328c4361.png', '1', '0', null, '66');
INSERT INTO `wd_pay` VALUES ('68', '62', '5000', '北京泽信沃尔国际贸易有限公司', '/upload/20151113/5645843992d10.png', '1', '0', null, '189');
INSERT INTO `wd_pay` VALUES ('69', '66', '5000', '宁波高新区拓远进出口有限公司', '/upload/20151113/5645889c205b3.jpg', '1', '0', null, '195');
INSERT INTO `wd_pay` VALUES ('70', '72', '5000', '溧阳宏达电梯培训有限公司', '/upload/20151113/56458aca64458.png', '1', '0', null, '161');
INSERT INTO `wd_pay` VALUES ('71', '43', '5000', '江苏亨通线缆科技有限公司', '/upload/20151113/56458e2f7ed0f.jpg', '1', '0', null, '100');
INSERT INTO `wd_pay` VALUES ('72', '73', '5000', '湖州东塑电梯配件有限公司', '/upload/20151113/564592736c3dc.jpg', '1', '0', null, '147');
INSERT INTO `wd_pay` VALUES ('73', '76', '5000', '深圳市互联创科技有限公司', '/upload/20151113/5645935744c9d.png', '1', '0', null, '124');
INSERT INTO `wd_pay` VALUES ('74', '77', '5000', '江苏和亿机电科技有限公司', '/upload/20151113/564594bc9a320.png', '1', '0', null, '93');
INSERT INTO `wd_pay` VALUES ('75', '50', '5000', '苏州烨炜上品电气有限公司', '/upload/20151113/5645961450e7c.jpg', '1', '0', null, '236');
INSERT INTO `wd_pay` VALUES ('76', '79', '5000', '天津鹭凯六开电梯配套设备有限公司', '/upload/20151113/564598bfc711c.jpg', '1', '0', null, '320');
INSERT INTO `wd_pay` VALUES ('77', '81', '5000', '北京晶科华盛科技有限公司', '/upload/20151113/56459926b1ec1.png', '1', '0', null, '211');
INSERT INTO `wd_pay` VALUES ('84', '71', '5000', '温州西诺克进出口有限公司', '/upload/20151114/56469f92d92dd.png', '1', '0', null, '322');
INSERT INTO `wd_pay` VALUES ('83', '74', '5000', '张家港市新精工轴承机电有限公司', '/upload/20151114/564691cc1040a.jpg', '1', '0', null, '238');
INSERT INTO `wd_pay` VALUES ('82', '53', '5000', '扬州欧柯机械有限公司', '/upload/20151114/56468edf1e7b7.png', '1', '0', null, '261');
INSERT INTO `wd_pay` VALUES ('85', '63', '5000', '苏州利莱博电梯部件有限公司', '/upload/20151114/5646bf08b28af.jpg', '1', '0', null, '115');
INSERT INTO `wd_pay` VALUES ('86', '84', '5000', '浙江台玖精密机械有限公司', '/upload/20151114/5646f63552d77.jpg', '1', '0', null, '164');
INSERT INTO `wd_pay` VALUES ('87', '83', '5000', '天津开发区通德科贸有限公司', '/upload/20151114/5647188091fb3.jpg', '1', '0', null, '145');
INSERT INTO `wd_pay` VALUES ('88', '82', '5000', '苏州中远电梯有限公司', '/upload/20151116/564921bcd79a4.jpg', '1', '0', null, '44');
INSERT INTO `wd_pay` VALUES ('89', '54', '5000', '张家港市泓晟电梯配件制造有限公司', '/upload/20151116/56493bae85c85.jpg', '1', '0', null, '270');
INSERT INTO `wd_pay` VALUES ('90', '38', '5000', '佛山市伟邦电子科技有限公司', '/upload/20151116/564943e99d25a.jpg', '1', '0', null, '292');
INSERT INTO `wd_pay` VALUES ('91', '47', '5000', '大连徕特光电精密仪器有限公司', '/upload/20151116/564944f4a369f.png', '1', '0', null, '229');
INSERT INTO `wd_pay` VALUES ('92', '90', '5000', '张家港美斐电梯导轨有限公司', '/upload/20151116/56496d278f1ea.jpg', '1', '0', null, '286');
INSERT INTO `wd_pay` VALUES ('115', '112', '5000', '宁波市科耐国际贸易有限公司', '/upload/20151119/564d8caf3f613.png', '1', '0', null, '231');
INSERT INTO `wd_pay` VALUES ('116', '111', '5000', '欧姆尼机电科技昆山有限公司', '/upload/20151119/564d90f3383b1.jpg', '1', '0', null, '68');
INSERT INTO `wd_pay` VALUES ('95', '92', '5000', '天津市第二继电器厂', '/upload/20151116/56497d1868a2a.JPG', '1', '0', null, '179');
INSERT INTO `wd_pay` VALUES ('96', '86', '5000', '秦皇岛华鑫科技有限公司', '/upload/20151116/564984c0adeed.jpg', '1', '0', null, '202');
INSERT INTO `wd_pay` VALUES ('97', '89', '5000', '天水二一三电器有限公司', '/upload/20151116/564985cc824c3.jpg', '1', '0', null, '246');
INSERT INTO `wd_pay` VALUES ('98', '93', '5000', '柳州汉华驱动设备有限公司', '/upload/20151116/5649924a783e4.jpg', '1', '0', null, '257');
INSERT INTO `wd_pay` VALUES ('99', '69', '5000', '上海稳利达科技股份有限公司', '/upload/20151117/564a8620bbedb.jpg', '1', '0', null, '138');
INSERT INTO `wd_pay` VALUES ('100', '78', '5000', '江苏锐腾科技有限公司', '/upload/20151117/564a8774967a0.png', '1', '0', null, '112');
INSERT INTO `wd_pay` VALUES ('101', '95', '5000', '深圳市盈昇机电有限公司', '/upload/20151117/564a8bab31606.png', '1', '0', null, '186');
INSERT INTO `wd_pay` VALUES ('102', '98', '5000', '约翰内斯海德汉博士中国有限公司', '/upload/20151117/564ad020decf5.jpg', '1', '0', null, '271');
INSERT INTO `wd_pay` VALUES ('103', '87', '5000', '浙江宝鸿不锈钢有限公司', '/upload/20151117/564ad123cd89b.png', '1', '0', null, '193');
INSERT INTO `wd_pay` VALUES ('104', '99', '5000', '深圳市大帝金茂实业有限公司', '/upload/20151118/564bde565d63d.jpg', '1', '0', null, '154');
INSERT INTO `wd_pay` VALUES ('105', '97', '5000', '张家港市通达电梯装璜有限公司', '/upload/20151118/564bdfb7e5dea.jpg', '1', '0', null, '118');
INSERT INTO `wd_pay` VALUES ('106', '102', '5000', '深圳来邦科技有限公司', '/upload/20151118/564c3e574e57d.png', '1', '0', null, '343');
INSERT INTO `wd_pay` VALUES ('107', '85', '5000', '宁波市北仑欣凌电梯配件厂', '/upload/20151118/564c5a02e7f76.jpg', '1', '0', null, '178');
INSERT INTO `wd_pay` VALUES ('108', '106', '5000', '武汉市世纪菱达国际贸易有限公司', '/upload/20151118/564c610b10b90.png', '1', '0', null, '274');
INSERT INTO `wd_pay` VALUES ('109', '107', '5000', '温州申嘉电梯科技有限公司', '/upload/20151119/564d198dc72dc.jpg', '1', '0', null, '205');
INSERT INTO `wd_pay` VALUES ('110', '80', '5000', '浙江英洛华磁业有限公司', '/upload/20151119/564d1ae4d9af6.jpg', '1', '0', null, '241');
INSERT INTO `wd_pay` VALUES ('111', '101', '5000', '无锡欧先纳精密科技有限公司', '/upload/20151119/564d231eb4809.png', '1', '0', null, '262');
INSERT INTO `wd_pay` VALUES ('112', '108', '5000', '无锡市滚动轴承有限公司', '/upload/20151119/564d23baa186b.JPG', '1', '0', null, '266');
INSERT INTO `wd_pay` VALUES ('113', '109', '5000', '上海沃证机电技术服务有限公司', '/upload/20151119/564d2a774af60.png', '1', '0', null, '151');
INSERT INTO `wd_pay` VALUES ('114', '94', '5000', '上海川阅电梯装潢有限公司', '/upload/20151119/564d7fbc67da5.JPG', '1', '0', null, '350');
INSERT INTO `wd_pay` VALUES ('117', '122', '5000', '温州方圆仪器有限公司', '/upload/20151120/564e736a638c5.jpg', '1', '0', null, '198');
INSERT INTO `wd_pay` VALUES ('118', '125', '5000', '上海同信机电有限公司', '/upload/20151120/564e78fbbb2bc.png', '1', '0', null, '312');
INSERT INTO `wd_pay` VALUES ('119', '123', '5000', '湖州南浔联创电气有限公司', '/upload/20151120/564e7b8f55cb3.jpg', '1', '0', null, '244');
INSERT INTO `wd_pay` VALUES ('120', '127', '5000', '南通鸿图橡塑有限公司', '/upload/20151120/564e815d604b5.png', '1', '0', null, '57');
INSERT INTO `wd_pay` VALUES ('121', '100', '5000', '重庆威斯特电梯有限公司', '/upload/20151120/564e8dc5d4e40.jpg', '1', '0', null, '58');
INSERT INTO `wd_pay` VALUES ('122', '119', '5000', '上海扶联电梯配件有限公司', '/upload/20151120/564e96e8c70cc.jpg', '1', '0', null, '137');
INSERT INTO `wd_pay` VALUES ('126', '110', '5000', '宁波同创强磁材料有限公司', '/upload/20151120/564ec36206aa9.png', '1', '0', null, '192');
INSERT INTO `wd_pay` VALUES ('124', '138', '5000', '佛山市坚利东成标件有限公司', '/upload/20151120/564ea22225643.png', '1', '0', null, '89');
INSERT INTO `wd_pay` VALUES ('125', '103', '5000', '湖州欧利亚机电科技有限公司', '/upload/20151120/564eb10c83ff6.png', '1', '0', null, '60');
INSERT INTO `wd_pay` VALUES ('130', '140', '5000', '友士科技深圳有限公司', '/upload/20151123/565272ad60ef9.png', '1', '0', null, '91');
INSERT INTO `wd_pay` VALUES ('128', '113', '5000', '江阴长江电器有限公司', '/upload/20151120/564ed03c710ed.jpg', '1', '0', null, '185');
INSERT INTO `wd_pay` VALUES ('129', '118', '5000', '佛山市钿汇不锈钢有限公司', '/upload/20151120/564ee46dbedc4.jpg', '1', '0', null, '146');
INSERT INTO `wd_pay` VALUES ('131', '145', '5000', '海安县申菱电器制造有限公司', '/upload/20151123/56528537231a8.jpg', '1', '0', null, '358');
INSERT INTO `wd_pay` VALUES ('132', '126', '5000', '苏州市新奥电梯配件有限公司', '/upload/20151123/5652bf36137f5.png', '1', '0', null, '351');
INSERT INTO `wd_pay` VALUES ('133', '144', '5000', '苏州市吴中区三星电讯器材厂', '/upload/20151123/5652cc07d1619.jpg', '1', '0', null, '190');
INSERT INTO `wd_pay` VALUES ('134', '149', '5000', '上海拓沛实业有限公司', '/upload/20151123/5652cf3e970ae.png', '1', '0', null, '203');
INSERT INTO `wd_pay` VALUES ('135', '115', '5000', '洛阳泰斯特探伤技术有限公司', '/upload/20151124/5653f4f78aeb9.jpg', '1', '0', null, '191');
INSERT INTO `wd_pay` VALUES ('136', '156', '5000', '广州市白云区固铂五金机械供应站', '/upload/20151124/56542ad53bad6.jpg', '1', '0', null, '222');
INSERT INTO `wd_pay` VALUES ('137', '88', '5000', '博尔豪夫紧固件无锡有限公司', '/upload/20151125/5655329c6c433.jpeg', '1', '0', null, '247');
INSERT INTO `wd_pay` VALUES ('138', '158', '5000', '上海敖海实业有限公司', '/upload/20151125/56553b4fc70fb.jpg', '1', '0', null, '209');
INSERT INTO `wd_pay` VALUES ('139', '75', '5000', '依合斯电梯扶手上海有限公司', '/upload/20151126/565649725c4a3.png', '1', '0', null, '61');
INSERT INTO `wd_pay` VALUES ('140', '49', '5000', '上海康驰机电设备有限公司', '/upload/20151126/565668598fbaa.png', '1', '0', null, '158');
INSERT INTO `wd_pay` VALUES ('141', '155', '5000', '常熟市飞达电子元器件有限公司', '/upload/20151126/5656a98e1c9f1.png', '1', '0', null, '215');
INSERT INTO `wd_pay` VALUES ('142', '161', '5000', '珠海市荣泰电子有限公司', '/upload/20151126/5656c3ceb328d.png', '1', '0', null, '162');
INSERT INTO `wd_pay` VALUES ('143', '160', '5000', '上海魁固塑胶制品有限公司', '/upload/20151126/5656c8778868c.png', '1', '0', null, '204');
INSERT INTO `wd_pay` VALUES ('144', '167', '5000', '武汉长光电源有限公司', '/upload/20151127/5657d4f75a4c4.JPG', '1', '0', null, '197');
INSERT INTO `wd_pay` VALUES ('145', '128', '5000', '爱科科技有限公司', '/upload/20151127/5657e59c63a50.png', '1', '0', null, '141');
INSERT INTO `wd_pay` VALUES ('146', '169', '5000', '苏州久德机电科技有限公司', '/upload/20151127/56580e70b07d7.png', '1', '0', null, '268');
INSERT INTO `wd_pay` VALUES ('147', '177', '5000', '杭州通用弹簧有限公司', '/upload/20151130/565c0414af2a4.png', '1', '0', null, '135');
INSERT INTO `wd_pay` VALUES ('148', '165', '5000', '北京盛和中泰不锈钢有限责任公司', '/upload/20151201/565d33bb943ea.png', '1', '0', null, '173');
INSERT INTO `wd_pay` VALUES ('149', '166', '5000', '杭州东华链条集团有限公司', '/upload/20151201/565d560ca3571.png', '1', '0', null, '227');
INSERT INTO `wd_pay` VALUES ('150', '121', '5000', '上海大隆链条厂有限公司', '/upload/20151201/565d57aa834a7.png', '1', '0', null, '250');
INSERT INTO `wd_pay` VALUES ('151', '173', '5000', '苏州劳灵精密机械有限公司', '/upload/20151201/565d5977b01e1.jpg', '1', '0', null, '136');
INSERT INTO `wd_pay` VALUES ('152', '187', '5000', '厦门奥德隆自动化设备有限公司', '/upload/20151202/565e9839c2370.png', '1', '0', null, '392');
INSERT INTO `wd_pay` VALUES ('153', '188', '5000', '上海川翔电子有限公司', '/upload/20151203/565faec717860.jpg', '1', '0', null, '224');
INSERT INTO `wd_pay` VALUES ('154', '190', '5000', '厦门汉京电梯控制系统有限公司', '/upload/20151203/565fb4c313e23.jpg', '1', '0', null, '87');
INSERT INTO `wd_pay` VALUES ('155', '182', '5000', '嘉善长盛塑料轴承技术有限公司', '/upload/20151203/565ff56b057f3.jpg', '1', '0', null, '140');
INSERT INTO `wd_pay` VALUES ('156', '154', '5000', '靖江市金诚液压密封件有限公司', '/upload/20151204/566147d2c5eb4.jpg', '1', '0', null, '223');
INSERT INTO `wd_pay` VALUES ('157', '194', '5000', '厦门嘉菱电气机械设备有限公司', '/upload/20151205/56624db691840.png', '1', '0', null, '105');
INSERT INTO `wd_pay` VALUES ('158', '202', '5000', '北京宏盛发金属材料有限公司', '/upload/20151207/5664ef3c0130a.png', '1', '0', null, '72');
INSERT INTO `wd_pay` VALUES ('159', '152', '5000', '江阴海美金属新材料有限公司', '/upload/20151207/566517d10ebe4.png', '1', '0', null, '109');
INSERT INTO `wd_pay` VALUES ('160', '196', '5000', ' 季龙上海电梯配件有限公司', '/upload/20151208/56664388ad547.PNG', '1', '0', null, '156');
INSERT INTO `wd_pay` VALUES ('161', '176', '5000', '许昌汉诺威自动化有限公司', '/upload/20151214/566e65a858e84.png', '1', '0', null, '94');
INSERT INTO `wd_pay` VALUES ('162', '197', '5000', '大连菱佳电梯配件有限公司', '/upload/20151215/566fbceb4624c.jpg', '1', '0', null, '139');
INSERT INTO `wd_pay` VALUES ('163', '146', '5000', '江苏大明金属制品有限公司', '/upload/20151215/566fbecc89a29.png', '1', '0', null, '317');
INSERT INTO `wd_pay` VALUES ('164', '228', '5000', '堡盟电子上海有限公司', '/upload/20151216/567114b9994b9.jpg', '1', '0', null, '329');
INSERT INTO `wd_pay` VALUES ('165', '234', '5000', '法尔福钢绳上海有限公司', '/upload/20151216/5671235db0310.JPG', '1', '0', null, '328');
INSERT INTO `wd_pay` VALUES ('166', '195', '5000', '阳电科技厦门有限公司', '/upload/20151217/56726e128b72b.png', '1', '0', null, '303');
INSERT INTO `wd_pay` VALUES ('167', '183', '5000', '苏州市天隆链条有限公司', '/upload/20151219/5674d754a36e2.jpg', '1', '0', null, '313');
INSERT INTO `wd_pay` VALUES ('168', '215', '5000', '佛山市安诚亿进出口有限公司', '/upload/20151221/567754c8f24ad.png', '1', '0', null, '500');
INSERT INTO `wd_pay` VALUES ('169', '221', '5000', '泰州市口岸机带有限公司', '/upload/20151221/56776e6d4fe50.jpg', '1', '0', null, '441');
INSERT INTO `wd_pay` VALUES ('170', '241', '5000', '库伯勒北京自动化设备贸易有限公司', '/upload/20151221/56777789eaf5f.jpg', '1', '0', null, '113');
INSERT INTO `wd_pay` VALUES ('171', '213', '5000', '北京拓普锐科技有限公司', '/upload/20151221/56778a3d64e29.JPG', '1', '0', null, '515');
INSERT INTO `wd_pay` VALUES ('172', '225', '5000', '宁波达通电子线缆有限公司', '/upload/20151221/56779035e0092.jpg', '1', '0', null, '525');
INSERT INTO `wd_pay` VALUES ('173', '212', '5000', '广州市彦高机电科技有限公司', '/upload/20151221/56779563c4a6f.png', '1', '0', null, '535');
INSERT INTO `wd_pay` VALUES ('174', '231', '5000', '苏州立达中远电梯有限公司', '/upload/20151221/56779f2f22662.png', '1', '0', null, '533');
INSERT INTO `wd_pay` VALUES ('177', '206', '5000', '苏州舟鱼机电科技有限公司', '/upload/20151222/5678be91b4d67.png', '1', '0', null, '450');
INSERT INTO `wd_pay` VALUES ('176', '164', '5000', '朝闻电梯装备科技苏州有限公司', '/upload/20151222/5678b099bdd9e.png', '1', '0', null, '543');
INSERT INTO `wd_pay` VALUES ('178', '250', '5000', '上海 科达传动系统有限公司', '/upload/20151222/5678fa863cc25.jpg', '1', '0', null, '438');
INSERT INTO `wd_pay` VALUES ('179', '257', '5000', '无锡市泰坛电梯部件有限公司', '/upload/20151223/567a17bf3277d.JPG', '1', '0', null, '435');
INSERT INTO `wd_pay` VALUES ('180', '224', '5000', '苏州巨人动力链条有限公司', '/upload/20151223/567a1af8c1347.jpg', '1', '0', null, '439');
INSERT INTO `wd_pay` VALUES ('181', '159', '5000', '上海康达化工新材料股份有限公司', '/upload/20151223/567a34b35af37.jpg', '1', '0', null, '368');
INSERT INTO `wd_pay` VALUES ('182', '136', '5000', '上海兰宝传感科技股份有限公司', '/upload/20151224/567b887bcb8cc.jpg', '1', '0', null, '307');
INSERT INTO `wd_pay` VALUES ('183', '247', '5000', '广州晖能环保材料有限公司', '/upload/20151224/567b9c9365ca9.jpg', '1', '0', null, '519');
INSERT INTO `wd_pay` VALUES ('184', '209', '5000', '江苏江扬特种电缆有限公司', '/upload/20151224/567ba6649fd5e.png', '1', '0', null, '517');
INSERT INTO `wd_pay` VALUES ('185', '163', '5000', '淮安市华富特种铸型尼龙有限公司', '/upload/20151225/567cc23a31ba8.jpg', '1', '0', null, '440');
INSERT INTO `wd_pay` VALUES ('186', '218', '5000', '上海欧方电气科技有限公司', '/upload/20151225/567ce674c06c4.jpg', '1', '0', null, '107');
INSERT INTO `wd_pay` VALUES ('187', '278', '5000', '苏州富美达电梯部件有限公司', '/upload/20151230/56834ff6f0d1a.jpg', '1', '0', null, '499');
INSERT INTO `wd_pay` VALUES ('188', '282', '5000', '厦门科携自动化科技有限公司', '/upload/20151231/5684b7d99d2e5.png', '1', '0', null, '522');
INSERT INTO `wd_pay` VALUES ('189', '135', '5000', '宁波市奉海轴承有限公司', '/upload/20151231/5684d61c116fb.png', '1', '0', null, '517');
INSERT INTO `wd_pay` VALUES ('190', '209', '5000', '江苏江扬特种电缆有限公司', '/upload/20160104/568a03d51ab4c.png', '1', '0', null, '518');
INSERT INTO `wd_pay` VALUES ('191', '175', '5000', '东莞市旭恒电子有限公司', '/upload/20160104/568a146f878f6.png', '1', '0', null, '520');
INSERT INTO `wd_pay` VALUES ('192', '274', '5000', '天津兴晟和橡胶制造有限公司', '/upload/20160104/568a1d9dae8e6.jpg', '1', '0', null, '524');
INSERT INTO `wd_pay` VALUES ('193', '193', '5000', '深圳市杰瑞欧电子有限公司', '/upload/20160104/568a2d5945278.png', '1', '0', null, '526');
INSERT INTO `wd_pay` VALUES ('194', '270', '5000', '嘉兴市思尔德薄膜开关有限公司', '/upload/20160104/568a3230d24f9.jpg', '1', '0', null, '453');
INSERT INTO `wd_pay` VALUES ('203', '296', '5000', '上海瑞生电梯控制技术有限公司', '/upload/20160107/568dcd8780a69.jpg', '1', '0', null, '432');
INSERT INTO `wd_pay` VALUES ('196', '286', '5000', '无锡申菱电梯配套有限公司', '/upload/20160105/568b511fbdb7b.jpg', '1', '0', null, '382');
INSERT INTO `wd_pay` VALUES ('202', '233', '5000', '驰美电机上海有限公司', '/upload/20160106/568c917c8ea8b.png', '1', '0', null, '373');
INSERT INTO `wd_pay` VALUES ('198', '266', '5000', '四川快速电梯有限公司', '/upload/20160105/568b79a5ab508.jpg', '1', '0', null, '318');
INSERT INTO `wd_pay` VALUES ('199', '271', '5000', '上海天逸电器股份有限公司', '/upload/20160105/568b8358e6c72.JPG', '1', '0', null, '355');
INSERT INTO `wd_pay` VALUES ('200', '288', '5000', '广州市索达电气设备有限公司', '/upload/20160106/568c7277f3d80.jpg', '1', '0', null, '443');
INSERT INTO `wd_pay` VALUES ('204', '292', '5000', '张家港市盛通机械制造有限公司', '/upload/20160108/568f0715448a4.jpg', '1', '0', null, '534');
INSERT INTO `wd_pay` VALUES ('205', '280', '5000', '广州市启泰模具工业有限公司', '/upload/20160108/568f0f14104ae.png', '1', '0', null, '457');
INSERT INTO `wd_pay` VALUES ('206', '256', '5000', '巍岬电梯配件上海有限公司', '/upload/20160108/568f8c131697a.png', '1', '0', null, '391');
INSERT INTO `wd_pay` VALUES ('207', '292', '5000', '张家港市盛通机械制造有限公司', '/upload/20160111/56936125e384e.PNG', '1', '0', null, '388');
INSERT INTO `wd_pay` VALUES ('208', '291', '5000', '合肥华耀电子工业有限公司', '/upload/20160114/5697110aa6afe.jpg', '1', '0', null, '371');
INSERT INTO `wd_pay` VALUES ('209', '298', '5000', '天津市全友钢丝绳有限公司', '/upload/20160115/569862f4011db.jpg', '1', '0', null, '374');
INSERT INTO `wd_pay` VALUES ('210', '310', '5000', '浙江凯文磁业有限公司', '/upload/20160115/569888b07016e.png', '1', '0', null, '458');
INSERT INTO `wd_pay` VALUES ('211', '307', '5000', '苏州蓝辉机电有限公司', '/upload/20160115/56989ff64936f.png', '1', '0', null, '445');
INSERT INTO `wd_pay` VALUES ('212', '214', '5000', '张家港鑫菱机械有限公司', '/upload/20160115/5698a85061f1b.png', '1', '0', null, '534');
INSERT INTO `wd_pay` VALUES ('213', '284', '5000', '北京钢德工贸有限公司', '/upload/20160115/5698af10b661b.png', '1', '0', null, '463');
INSERT INTO `wd_pay` VALUES ('214', '284', '5000', '北京钢德工贸有限公司', '/upload/20160116/5699f540cba94.png', '1', '0', null, '389');
INSERT INTO `wd_pay` VALUES ('215', '313', '5000', '桂盟链条太仓有限公司', '/upload/20160118/569c6ad3e4eb7.jpg', '1', '0', null, '377');
INSERT INTO `wd_pay` VALUES ('216', '305', '5000', '上海五同同步带有限公司', '/upload/20160118/569c87bc66c4b.jpg', '1', '0', null, '436');
INSERT INTO `wd_pay` VALUES ('217', '289', '5000', '天津飒派传动有限公司', '/upload/20160118/569c99de94cb1.png', '1', '0', null, '383');
INSERT INTO `wd_pay` VALUES ('218', '308', '5000', '安平县卓雅网业有限公司上海分公司', '/upload/20160118/569ca628d7ad5.png', '1', '0', null, '516');
INSERT INTO `wd_pay` VALUES ('219', '315', '5000', '宁波晟实电梯配件有限公司', '/upload/20160119/569dfb58052a3.jpg', '1', '0', null, '448');
INSERT INTO `wd_pay` VALUES ('220', '304', '5000', '北京迅奥达机电设备有限公司', '/upload/20160120/569ef5a894c4b.jpg', '1', '0', null, '390');
INSERT INTO `wd_pay` VALUES ('221', '287', '5000', '广州中梯物联网科技有限公司', '/upload/20160120/569efbb3955ff.png', '1', '0', null, '378');
INSERT INTO `wd_pay` VALUES ('222', '321', '5000', '杭州康特尔电梯部件有限公司', '/upload/20160120/569f432514010.png', '1', '0', null, '546');
INSERT INTO `wd_pay` VALUES ('223', '323', '5000', '佛山市罗友电机有限公司', '/upload/20160121/56a07c605aabb.png', '1', '0', null, '527');
INSERT INTO `wd_pay` VALUES ('224', '279', '5000', '厦门钰翰工贸有限公司', '/upload/20160121/56a09e032459f.jpg', '1', '0', null, '444');

-- ----------------------------
-- Table structure for wd_reserve
-- ----------------------------
DROP TABLE IF EXISTS `wd_reserve`;
CREATE TABLE `wd_reserve` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `bid` int(10) unsigned NOT NULL COMMENT '展位id',
  `cid` int(10) unsigned DEFAULT NULL COMMENT '操作者id',
  `atime` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `ctime` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_reserve
-- ----------------------------
