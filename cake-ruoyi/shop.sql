/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2024-10-18 19:49:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_admin
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin`;
CREATE TABLE `cs_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) DEFAULT NULL COMMENT '佐料',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '手机',
  `avatar` varchar(128) DEFAULT '/img/avatar/user_default.png' COMMENT '头像',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '昵称',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of cs_admin
-- ----------------------------

-- ----------------------------
-- Table structure for cs_index_carousel
-- ----------------------------
DROP TABLE IF EXISTS `cs_index_carousel`;
CREATE TABLE `cs_index_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `img` varchar(128) DEFAULT NULL COMMENT '图片',
  `product_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `seq` tinyint(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='首页轮播';

-- ----------------------------
-- Records of cs_index_carousel
-- ----------------------------
INSERT INTO `cs_index_carousel` VALUES ('5', '/profile/upload/2024/09/25/banner01_20240925085040A006.jpg', '0', '1');
INSERT INTO `cs_index_carousel` VALUES ('6', '/profile/upload/2024/09/25/banner02_20240925085046A007.jpg', '0', '2');
INSERT INTO `cs_index_carousel` VALUES ('7', '/profile/upload/2024/09/25/banner03_20240925085051A008.jpg', '0', '3');
INSERT INTO `cs_index_carousel` VALUES ('8', '/profile/upload/2024/09/25/banner04_20240925085056A009.jpg', '0', '4');

-- ----------------------------
-- Table structure for cs_index_product
-- ----------------------------
DROP TABLE IF EXISTS `cs_index_product`;
CREATE TABLE `cs_index_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `recommended_id` int(11) DEFAULT NULL COMMENT '推荐id',
  `seq_top_sale` tinyint(4) DEFAULT NULL COMMENT '畅销排序',
  `recommended_sale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='首页商品';

-- ----------------------------
-- Records of cs_index_product
-- ----------------------------
INSERT INTO `cs_index_product` VALUES ('14', '69', '2', '1', '3');
INSERT INTO `cs_index_product` VALUES ('15', '72', '1', '2', '1');
INSERT INTO `cs_index_product` VALUES ('16', '70', '0', '3', '0');
INSERT INTO `cs_index_product` VALUES ('17', '68', '1', '4', '3');
INSERT INTO `cs_index_product` VALUES ('18', '64', '0', '5', '0');
INSERT INTO `cs_index_product` VALUES ('19', '74', '1', '6', '2');
INSERT INTO `cs_index_product` VALUES ('20', '67', '2', '7', '1');
INSERT INTO `cs_index_product` VALUES ('21', '75', '2', '8', '2');
INSERT INTO `cs_index_product` VALUES ('22', '76', '3', '9', '1');
INSERT INTO `cs_index_product` VALUES ('23', '77', '3', '10', '2');
INSERT INTO `cs_index_product` VALUES ('24', '78', '3', '11', '3');
INSERT INTO `cs_index_product` VALUES ('25', '79', '4', '12', '1');
INSERT INTO `cs_index_product` VALUES ('26', '80', '4', '13', '2');
INSERT INTO `cs_index_product` VALUES ('27', '81', '4', '14', '3');
INSERT INTO `cs_index_product` VALUES ('28', '82', '5', '15', '1');
INSERT INTO `cs_index_product` VALUES ('29', '83', '5', '16', '2');

-- ----------------------------
-- Table structure for cs_index_recommended
-- ----------------------------
DROP TABLE IF EXISTS `cs_index_recommended`;
CREATE TABLE `cs_index_recommended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(128) DEFAULT NULL COMMENT '图片',
  `title` varchar(12) DEFAULT NULL COMMENT '推荐标题',
  `text` varchar(24) DEFAULT NULL COMMENT '文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='首页推荐类别\r\n';

-- ----------------------------
-- Records of cs_index_recommended
-- ----------------------------
INSERT INTO `cs_index_recommended` VALUES ('1', '/profile/upload/2024/09/25/recb01_20240925082854A001.jpg', '当季推荐', '芬芳又深邃，正如生活本身');
INSERT INTO `cs_index_recommended` VALUES ('2', '/profile/upload/2024/09/25/recb02_20240925082905A002.jpg', '生日聚会', '可以许愿，可以照亮眼前');
INSERT INTO `cs_index_recommended` VALUES ('3', '/profile/upload/2024/09/25/recb03_20240925082912A003.jpg', '早餐', '早餐的品质，就是生活的品质');
INSERT INTO `cs_index_recommended` VALUES ('4', '/profile/upload/2024/09/25/recb04_20240925082920A004.jpg', '下午茶', '工作与生活的平衡，努力唤醒与能力补给');
INSERT INTO `cs_index_recommended` VALUES ('5', '/profile/upload/2024/09/25/recb05_20240925082931A005.jpg', '假期出游', '常温、便携，可以带往更远的地方');

-- ----------------------------
-- Table structure for cs_news
-- ----------------------------
DROP TABLE IF EXISTS `cs_news`;
CREATE TABLE `cs_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COMMENT '内容',
  `img` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '图片URL',
  `count` int(11) DEFAULT '0' COMMENT '点击数',
  `dt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻';

-- ----------------------------
-- Records of cs_news
-- ----------------------------

-- ----------------------------
-- Table structure for cs_new_type
-- ----------------------------
DROP TABLE IF EXISTS `cs_new_type`;
CREATE TABLE `cs_new_type` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `typename` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cs_new_type
-- ----------------------------

-- ----------------------------
-- Table structure for cs_order
-- ----------------------------
DROP TABLE IF EXISTS `cs_order`;
CREATE TABLE `cs_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `address_id` int(11) DEFAULT NULL COMMENT '地址Id',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `order_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '订单时间',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `deliver_time` datetime DEFAULT NULL COMMENT '派送时间',
  `received_time` datetime DEFAULT NULL COMMENT '收获时间',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of cs_order
-- ----------------------------

-- ----------------------------
-- Table structure for cs_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `cs_order_detail`;
CREATE TABLE `cs_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单Id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品Id',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单明细';

-- ----------------------------
-- Records of cs_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for cs_product
-- ----------------------------
DROP TABLE IF EXISTS `cs_product`;
CREATE TABLE `cs_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `family_id` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `subtitle` varchar(128) DEFAULT NULL COMMENT '子标题',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `spec` varchar(64) DEFAULT NULL COMMENT '规格',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `category` varchar(32) DEFAULT NULL COMMENT '分类',
  `details` varchar(1024) DEFAULT NULL COMMENT '详情',
  `shelf_time` bigint(20) DEFAULT NULL COMMENT '上架时间',
  `sold_count` int(11) DEFAULT NULL COMMENT '销售数量',
  `is_onsale` tinyint(1) DEFAULT NULL COMMENT '是否在售',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of cs_product
-- ----------------------------
INSERT INTO `cs_product` VALUES ('63', '12', 'Mango in Season', null, '268.00', null, 'Mango in Season', '蛋糕', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('64', '12', '白夜', null, '268.00', null, '白夜', '蛋糕', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('65', '12', '黑越橘（蓝莓轻…', null, '268.00', null, '黑越橘（蓝莓轻…', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('66', '13', '阳光香葱卷', null, '16.80', null, '阳光香葱卷', 'bread', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('67', '12', '黑白巧克力慕斯', null, '398.00', null, '黑白巧克力慕斯', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('68', '12', '猫山王', null, '298.00', null, '猫山王', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('69', '12', '深爱', null, '268.00', null, '深爱', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('70', '12', '芒果奶油蛋糕', null, '268.00', null, '芒果奶油蛋糕', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('71', '12', '兰姆芝士', null, '198.00', null, '兰姆芝士', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('72', '12', '茉莉花', null, '268.00', null, '茉莉花', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('73', '13', '冰菠萝包-陈皮红豆', null, '59.00', null, '冰菠萝包-陈皮红豆', 'bread', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('74', '12', '浅草', null, '398.00', null, '浅草', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('75', '12', '杰瑞', null, '398.00', null, '杰瑞', 'cake', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('76', '13', '北海道吐司', null, '18.00', null, '北海道吐司', 'bread', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('77', '13', '巧克力吐司', null, '21.00', null, '巧克力吐司', 'bread', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('78', '13', '巧克力可颂', null, '18.00', null, '巧克力可颂', 'bread', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('79', '14', '轻蛋糕（提拉…', null, '26.00', null, '轻蛋糕（提拉…', 'teatime', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('80', '14', '冻与焗（抹茶…', null, '25.00', null, '冻与焗（抹茶…', 'teatime', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('81', '14', '轻蛋糕（龙井…', null, '26.00', null, '轻蛋糕（龙井…', 'teatime', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('82', '14', '云南血雀挂耳…', null, '180.00', null, '云南血雀挂耳…', 'teatime', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('83', '14', '苏门答腊曼特', null, '180.00', null, '苏门答腊曼特', 'teatime', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('84', '13', '重瓣玫瑰吐司', null, '21.00', null, '重瓣玫瑰吐司', '面包', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('85', '13', '红藜麦轻吐司', null, '21.00', null, '红藜麦轻吐司', '面包', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('86', '13', '冰菠萝包-宇宙', null, '59.00', null, '冰菠萝包-宇宙', '面包', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('87', '14', '闺蜜轻享套餐', null, '49.00', null, '闺蜜轻享套餐', '下午茶', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('88', '14', '户外乐享套餐', null, '89.00', null, '户外乐享套餐', '下午茶', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('89', '14', '办公室巨享套餐', null, '198.00', null, '办公室巨享套餐', '下午茶', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('90', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('91', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('92', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('93', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('94', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('95', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('96', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');
INSERT INTO `cs_product` VALUES ('97', '15', '阳光香葱卷', null, '19.80', null, '阳光香葱卷', '冰淇淋', null, null, '100', '1');

-- ----------------------------
-- Table structure for cs_product_family
-- ----------------------------
DROP TABLE IF EXISTS `cs_product_family`;
CREATE TABLE `cs_product_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(32) DEFAULT NULL COMMENT '名称',
  `img` varchar(128) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of cs_product_family
-- ----------------------------
INSERT INTO `cs_product_family` VALUES ('12', '蛋糕', '/profile/upload/2024/09/25/select01_20240925093627A001.png');
INSERT INTO `cs_product_family` VALUES ('13', '面包', '/profile/upload/2024/09/25/select02_20240925093638A002.png');
INSERT INTO `cs_product_family` VALUES ('14', '下午茶', '/profile/upload/2024/09/25/select03_20240925093644A003.png');
INSERT INTO `cs_product_family` VALUES ('15', '冰淇淋', '/profile/upload/2024/09/25/select04_20240925093649A004.png');

-- ----------------------------
-- Table structure for cs_product_pic
-- ----------------------------
DROP TABLE IF EXISTS `cs_product_pic`;
CREATE TABLE `cs_product_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品编号',
  `sm` varchar(128) DEFAULT NULL COMMENT '小图片',
  `md` varchar(128) DEFAULT NULL COMMENT '中图片',
  `lg` varchar(128) DEFAULT NULL COMMENT '大图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 COMMENT='商品图片';

-- ----------------------------
-- Records of cs_product_pic
-- ----------------------------
INSERT INTO `cs_product_pic` VALUES ('297', '63', null, '/profile/upload/2024/09/25/cake01_20240925093816A007.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('298', '64', null, '/profile/upload/2024/09/25/cake02_20240925093826A008.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('299', '65', null, '/profile/upload/2024/09/25/cake03_20240925093833A009.png', null);
INSERT INTO `cs_product_pic` VALUES ('300', '66', null, '/profile/upload/2024/09/25/bread01_20240925101137A023.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('301', '67', null, '/profile/upload/2024/09/25/cake04_20240925095639A020.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('302', '68', null, '/profile/upload/2024/09/25/cake05_20240925095630A019.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('303', '69', null, '/profile/upload/2024/09/25/cake06_20240925095002A015.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('304', '70', null, '/profile/upload/2024/09/25/cake07_20240925102052A034.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('305', '71', null, '/profile/upload/2024/09/25/cake08_20240925102039A033.png', null);
INSERT INTO `cs_product_pic` VALUES ('306', '72', null, '/profile/upload/2024/09/25/s1_20240925101948A032.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('307', '73', null, '/profile/upload/2024/09/25/bread02_20240925101156A024.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('308', '74', null, '/profile/upload/2024/09/25/s2_20240925101927A031.png', null);
INSERT INTO `cs_product_pic` VALUES ('309', '75', null, '/profile/upload/2024/09/25/bread04_20240925101213A026.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('310', '76', null, '/profile/upload/2024/10/16/s1_20241016100419A014.png', null);
INSERT INTO `cs_product_pic` VALUES ('311', '77', null, '/profile/upload/2024/10/16/s3_20241016100426A015.png', null);
INSERT INTO `cs_product_pic` VALUES ('312', '78', null, '/profile/upload/2024/10/16/s2_20241016100325A013.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('313', '79', null, '/profile/upload/2024/10/16/s1_20241016095223A003.png', null);
INSERT INTO `cs_product_pic` VALUES ('314', '80', null, '/profile/upload/2024/10/16/s2_20241016095209A002.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('315', '81', null, '/profile/upload/2024/10/16/s3_20241016095233A004.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('316', '82', null, '/profile/upload/2024/10/16/s1_20241016095503A005.png', null);
INSERT INTO `cs_product_pic` VALUES ('317', '83', null, '/profile/upload/2024/10/16/s2_20241016095514A006.png', null);
INSERT INTO `cs_product_pic` VALUES ('318', '84', null, '/profile/upload/2024/10/16/bread03_20241016095743A010.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('319', '85', null, '/profile/upload/2024/10/16/bread04_20241016095751A011.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('320', '86', null, '/profile/upload/2024/10/16/bread05_20241016095759A012.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('321', '87', null, '/profile/upload/2024/10/16/tea01_20241016100555A016.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('322', '88', null, '/profile/upload/2024/10/16/tea02_20241016100603A017.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('323', '89', null, '/profile/upload/2024/10/16/tea03_20241016100610A018.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('324', '90', null, '/profile/upload/2024/10/16/bread01_20241016100647A019.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('325', '91', null, '/profile/upload/2024/10/16/bread01_20241016100654A020.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('326', '92', null, '/profile/upload/2024/10/16/bread01_20241016100701A021.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('327', '93', null, '/profile/upload/2024/10/16/bread01_20241016100711A022.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('328', '95', null, '/profile/upload/2024/10/16/bread01_20241016100717A023.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('329', '94', null, '/profile/upload/2024/10/16/bread01_20241016100723A024.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('330', '96', null, '/profile/upload/2024/10/16/bread01_20241016100730A025.jpg', null);
INSERT INTO `cs_product_pic` VALUES ('331', '97', null, '/profile/upload/2024/10/16/bread01_20241016100736A026.jpg', null);

-- ----------------------------
-- Table structure for cs_receiver_address
-- ----------------------------
DROP TABLE IF EXISTS `cs_receiver_address`;
CREATE TABLE `cs_receiver_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `receiver` varchar(16) DEFAULT NULL COMMENT '收货人',
  `province` varchar(16) DEFAULT NULL COMMENT '省',
  `city` varchar(16) DEFAULT NULL COMMENT '市',
  `county` varchar(16) DEFAULT NULL COMMENT '县区',
  `address` varchar(128) DEFAULT NULL COMMENT '街道地址',
  `areacode` char(6) DEFAULT NULL COMMENT '地区编号',
  `cellphone` varchar(16) DEFAULT NULL COMMENT '手机',
  `fixedphone` varchar(16) DEFAULT NULL COMMENT '固定电话',
  `postcode` char(6) DEFAULT NULL COMMENT '邮政编码',
  `tag` varchar(16) DEFAULT NULL COMMENT '标签',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of cs_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for cs_shoppingcart_item
-- ----------------------------
DROP TABLE IF EXISTS `cs_shoppingcart_item`;
CREATE TABLE `cs_shoppingcart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品Id',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `is_checked` tinyint(1) DEFAULT NULL COMMENT '是否选中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of cs_shoppingcart_item
-- ----------------------------
INSERT INTO `cs_shoppingcart_item` VALUES ('30', '1', '89', '1', '1');
INSERT INTO `cs_shoppingcart_item` VALUES ('33', '1', '65', '5', '0');

-- ----------------------------
-- Table structure for cs_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) DEFAULT NULL COMMENT '佐料',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '手机',
  `avatar` varchar(128) DEFAULT '/img/avatar/user_default.png' COMMENT '头像',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '昵称',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES ('1', 'wjh', 'e10adc3949ba59abbe56e057f20f883e', null, '18072825466', '18072825466', '/profile/upload/2024/07/01/20200315224548_tLBjw_20240701080808A001.jpeg', 'wjh', '0', '第一个用户');
INSERT INTO `cs_user` VALUES ('15', 'wjh123', 'wjh123456', null, '18072825466@163.com', '18072825466', '/profile/upload/2024/06/19/cake01_20240619094000A002.png', 'wjh', '0', 'wjh');
INSERT INTO `cs_user` VALUES ('17', 'wjh2', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '/img/avatar/user_default.png', null, null, null);
INSERT INTO `cs_user` VALUES ('18', 'wjh1', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '/img/avatar/user_default.png', null, null, null);
INSERT INTO `cs_user` VALUES ('19', '111', '698d51a19d8a121ce581499d7b701668', null, 'w442234@163.com', '', '', null, '1', null);
INSERT INTO `cs_user` VALUES ('20', '1111', 'b59c67bf196a4758191e42f76670ceba', null, 'w442234@163.com', '', '', null, '1', null);
INSERT INTO `cs_user` VALUES ('21', '222', '698d51a19d8a121ce581499d7b701668', null, 'w442234@163.com', '', '', null, '1', null);
INSERT INTO `cs_user` VALUES ('22', '333', '310dcbbf4cce62f762a2aaa148d556bd', null, 'w442234@163.com', '', '', null, '1', null);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'cs_index_carousel', '首页轮播', null, null, 'IndexCarousel', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'indexCarousel', '首页轮播', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 09:32:35', null);
INSERT INTO `gen_table` VALUES ('2', 'cs_index_product', '首页商品', null, null, 'IndexProduct', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'indexProduct', '首页商品', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:00:27', null);
INSERT INTO `gen_table` VALUES ('3', 'cs_news', '新闻', null, null, 'News', 'crud', '', 'com.ruoyi.cs', 'cs', 'news', '新闻', 'dwb', '0', '/', null, 'admin', '2024-06-17 14:08:56', '', null, null);
INSERT INTO `gen_table` VALUES ('4', 'cs_order_detail', '订单明细', null, null, 'OrderDetail', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'orderdetail', '订单明细', 'dwb', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16', null);
INSERT INTO `gen_table` VALUES ('5', 'cs_product', '商品', null, null, 'Goods', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'goods', '商品', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18', null);
INSERT INTO `gen_table` VALUES ('6', 'cs_product_family', '商品分类', null, null, 'ProductFamily', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'productfamily', '商品分类', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-20 11:03:08', null);
INSERT INTO `gen_table` VALUES ('7', 'cs_product_pic', '商品图片', null, null, 'ProductPic', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'pic', '商品图片', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47', null);
INSERT INTO `gen_table` VALUES ('8', 'cs_shoppingcart_item', '购物车', null, null, 'ShoppingcartItem', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'shoppingcart', '购物车', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28', null);
INSERT INTO `gen_table` VALUES ('9', 'cs_user', '用户', null, null, 'User', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'user', '用户', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56', null);
INSERT INTO `gen_table` VALUES ('10', 'cs_admin', '管理员', null, null, 'Admin', 'crud', '', 'com.ruoyi.cs', 'cs', 'admin', '管理员', 'dwb', '0', '/', null, 'admin', '2024-06-17 14:09:10', '', null, null);
INSERT INTO `gen_table` VALUES ('11', 'cs_order', '订单', null, null, 'Order', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'order', '订单', 'dwb', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15', null);
INSERT INTO `gen_table` VALUES ('12', 'cs_receiver_address', '收货地址', null, null, 'ReceiverAddress', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'address', '收货地址', 'dwb', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36', null);
INSERT INTO `gen_table` VALUES ('13', 'cs_index_recommended', '首页推荐类别\r\n', null, null, 'IndexRecommended', 'crud', 'element-ui', 'com.ruoyi.cs', 'cs', 'recommended', '首页推荐类别\r\n', 'dwb', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2024-06-25 20:09:42', '', '2024-06-26 09:11:24', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 09:32:35');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'img', '图片', 'varchar(128)', 'String', 'img', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 09:32:35');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'product_id', '商品编号', 'int(11)', 'Long', 'productId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 09:32:35');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'seq', '排序', 'tinyint(4)', 'Integer', 'seq', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 09:32:35');
INSERT INTO `gen_table_column` VALUES ('5', '2', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:00:27');
INSERT INTO `gen_table_column` VALUES ('6', '2', 'product_id', '商品编号', 'int(11)', 'Long', 'productId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:00:27');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'seq_top_sale', '畅销排序', 'tinyint(4)', 'Integer', 'seqTopSale', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:00:27');
INSERT INTO `gen_table_column` VALUES ('10', '3', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('11', '3', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('12', '3', 'content', '内容', 'text', 'String', 'content', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'editor', '', '3', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('13', '3', 'img', '图片URL', 'varchar(1024)', 'String', 'img', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('14', '3', 'count', '点击数', 'int(11)', 'Long', 'count', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('15', '3', 'dt_create', '创建时间', 'datetime', 'Date', 'dtCreate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2024-06-17 14:08:56', '', null);
INSERT INTO `gen_table_column` VALUES ('16', '4', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16');
INSERT INTO `gen_table_column` VALUES ('17', '4', 'order_id', '订单Id', 'int(11)', 'Long', 'orderId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16');
INSERT INTO `gen_table_column` VALUES ('18', '4', 'product_id', '商品Id', 'int(11)', 'Long', 'productId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16');
INSERT INTO `gen_table_column` VALUES ('19', '4', 'price', '价格', 'decimal(10,0)', 'Long', 'price', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16');
INSERT INTO `gen_table_column` VALUES ('20', '4', 'count', '数量', 'int(11)', 'Long', 'count', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 20:37:16');
INSERT INTO `gen_table_column` VALUES ('21', '5', 'id', '商品id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('22', '5', 'family_id', '分类id', 'int(11)', 'Long', 'familyId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('23', '5', 'title', '标题', 'varchar(128)', 'String', 'title', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('24', '5', 'subtitle', '子标题', 'varchar(128)', 'String', 'subtitle', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('25', '5', 'price', '单价', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('26', '5', 'spec', '规格', 'varchar(64)', 'String', 'spec', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '6', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('27', '5', 'name', '名称', 'varchar(32)', 'String', 'name', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'input', '', '7', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('28', '5', 'category', '分类', 'varchar(32)', 'String', 'category', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '8', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('29', '5', 'details', '详情', 'varchar(1024)', 'String', 'details', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', '9', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('30', '5', 'shelf_time', '上架时间', 'bigint(20)', 'Long', 'shelfTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '10', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('31', '5', 'sold_count', '销售数量', 'int(11)', 'Long', 'soldCount', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '11', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('32', '5', 'is_onsale', '是否在售', 'tinyint(1)', 'Integer', 'isOnsale', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '12', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 08:38:18');
INSERT INTO `gen_table_column` VALUES ('33', '6', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-20 11:03:08');
INSERT INTO `gen_table_column` VALUES ('34', '6', 'name', '名称', 'varchar(32)', 'String', 'name', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-20 11:03:08');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'img', '图片', 'varchar(128)', 'String', 'img', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-20 11:03:08');
INSERT INTO `gen_table_column` VALUES ('36', '7', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47');
INSERT INTO `gen_table_column` VALUES ('37', '7', 'product_id', '商品编号', 'int(11)', 'Long', 'productId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47');
INSERT INTO `gen_table_column` VALUES ('38', '7', 'sm', '小图片', 'varchar(128)', 'String', 'sm', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47');
INSERT INTO `gen_table_column` VALUES ('39', '7', 'md', '中图片', 'varchar(128)', 'String', 'md', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47');
INSERT INTO `gen_table_column` VALUES ('40', '7', 'lg', '大图片', 'varchar(128)', 'String', 'lg', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '5', 'admin', '2024-06-17 14:08:56', '', '2024-06-26 09:45:47');
INSERT INTO `gen_table_column` VALUES ('41', '8', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28');
INSERT INTO `gen_table_column` VALUES ('42', '8', 'user_id', '用户Id', 'int(11)', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28');
INSERT INTO `gen_table_column` VALUES ('43', '8', 'product_id', '商品Id', 'int(11)', 'Long', 'productId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28');
INSERT INTO `gen_table_column` VALUES ('44', '8', 'count', '数量', 'int(11)', 'Long', 'count', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28');
INSERT INTO `gen_table_column` VALUES ('45', '8', 'is_checked', '是否选中', 'tinyint(1)', 'Integer', 'isChecked', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', 'is_checked', '5', 'admin', '2024-06-17 14:08:56', '', '2024-06-25 09:57:28');
INSERT INTO `gen_table_column` VALUES ('46', '9', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('47', '9', 'name', '姓名', 'varchar(32)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('48', '9', 'password', '密码', 'varchar(32)', 'String', 'password', '0', '0', '0', '1', '0', '0', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('49', '9', 'salt', '佐料', 'varchar(32)', 'String', 'salt', '0', '0', '0', '1', '0', '0', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('50', '9', 'email', '邮箱', 'varchar(64)', 'String', 'email', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('51', '9', 'phone', '手机', 'varchar(16)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('52', '9', 'avatar', '头像', 'varchar(128)', 'String', 'avatar', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '7', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('53', '9', 'nick_name', '昵称', 'varchar(32)', 'String', 'nickName', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'input', '', '8', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('54', '9', 'gender', '性别', 'int(11)', 'Long', 'gender', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', 'sys_user_sex', '9', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('55', '9', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2024-06-17 14:08:56', '', '2024-06-19 10:23:56');
INSERT INTO `gen_table_column` VALUES ('56', '10', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('57', '10', 'name', '姓名', 'varchar(32)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('58', '10', 'password', '密码', 'varchar(32)', 'String', 'password', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('59', '10', 'salt', '佐料', 'varchar(32)', 'String', 'salt', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('60', '10', 'email', '邮箱', 'varchar(64)', 'String', 'email', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('61', '10', 'phone', '手机', 'varchar(16)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('62', '10', 'avatar', '头像', 'varchar(128)', 'String', 'avatar', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('63', '10', 'nick_name', '昵称', 'varchar(32)', 'String', 'nickName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '8', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('64', '10', 'gender', '性别', 'int(11)', 'Long', 'gender', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('65', '10', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2024-06-17 14:09:10', '', null);
INSERT INTO `gen_table_column` VALUES ('66', '11', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('67', '11', 'user_id', '用户Id', 'int(11)', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('68', '11', 'address_id', '地址Id', 'int(11)', 'Long', 'addressId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('69', '11', 'status', '状态', 'int(11)', 'Long', 'status', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'radio', 'order_status', '4', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('70', '11', 'order_time', '订单时间', 'datetime', 'Date', 'orderTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', '5', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('71', '11', 'pay_time', '付款时间', 'datetime', 'Date', 'payTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', '6', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('72', '11', 'deliver_time', '派送时间', 'datetime', 'Date', 'deliverTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', '7', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('73', '11', 'received_time', '收获时间', 'datetime', 'Date', 'receivedTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', '8', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('74', '11', 'remark', '备注', 'varchar(256)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 20:36:15');
INSERT INTO `gen_table_column` VALUES ('75', '12', 'id', 'Id', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('76', '12', 'user_id', '用户Id', 'int(11)', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('77', '12', 'receiver', '收货人', 'varchar(16)', 'String', 'receiver', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('78', '12', 'province', '省', 'varchar(16)', 'String', 'province', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('79', '12', 'city', '市', 'varchar(16)', 'String', 'city', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('80', '12', 'county', '县区', 'varchar(16)', 'String', 'county', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '6', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('81', '12', 'address', '街道地址', 'varchar(128)', 'String', 'address', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '7', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('82', '12', 'areacode', '地区编号', 'char(6)', 'String', 'areacode', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '8', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('83', '12', 'cellphone', '手机', 'varchar(16)', 'String', 'cellphone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('84', '12', 'fixedphone', '固定电话', 'varchar(16)', 'String', 'fixedphone', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '10', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('85', '12', 'postcode', '邮政编码', 'char(6)', 'String', 'postcode', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '11', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('86', '12', 'tag', '标签', 'varchar(16)', 'String', 'tag', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '12', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('87', '12', 'is_default', '是否默认', 'tinyint(1)', 'Integer', 'isDefault', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', 'is_checked', '13', 'admin', '2024-06-17 14:09:10', '', '2024-06-25 10:58:36');
INSERT INTO `gen_table_column` VALUES ('88', '13', 'id', '', 'int(11)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-25 20:09:42', '', '2024-06-26 09:11:24');
INSERT INTO `gen_table_column` VALUES ('89', '13', 'pic', '图片', 'varchar(128)', 'String', 'pic', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', '2', 'admin', '2024-06-25 20:09:42', '', '2024-06-26 09:11:24');
INSERT INTO `gen_table_column` VALUES ('90', '13', 'title', '推荐标题', 'varchar(12)', 'String', 'title', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-25 20:09:42', '', '2024-06-26 09:11:24');
INSERT INTO `gen_table_column` VALUES ('92', '13', 'text', '文字', 'varchar(24)', 'String', 'text', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '4', '', '2024-06-26 08:47:44', '', '2024-06-26 09:11:24');
INSERT INTO `gen_table_column` VALUES ('93', '2', 'recommended_id', '推荐id', 'int(11)', 'Long', 'recommendedId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', '', '2024-06-26 08:59:46', '', '2024-06-26 09:00:27');
INSERT INTO `gen_table_column` VALUES ('94', '2', 'recommended_sale', '推荐排序', 'tinyint(4)', 'Integer', 'recommendedSale', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '5', '', '2024-06-26 08:59:46', '', '2024-06-26 09:00:27');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-06-05 14:09:57', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-05 14:09:57', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-06-05 14:09:57', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-06-05 14:09:57', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '初始', '0', 'order_status', null, 'default', 'N', '0', 'admin', '2024-06-17 14:02:01', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '0', '取消', '1', 'order_status', null, 'default', 'N', '0', 'admin', '2024-06-17 14:02:29', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '0', '完成订单', '2', 'order_status', null, 'default', 'N', '0', 'admin', '2024-06-17 14:02:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '0', '是', '1', 'is_checked', null, 'default', 'N', '0', 'admin', '2024-06-25 09:56:34', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '0', '否', '0', 'is_checked', null, 'default', 'N', '0', 'admin', '2024-06-25 09:56:43', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-06-05 14:09:57', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-06-05 14:09:57', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-06-05 14:09:57', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-06-05 14:09:57', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-06-05 14:09:57', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-06-05 14:09:57', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-06-05 14:09:57', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-06-05 14:09:57', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-06-05 14:09:57', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-06-05 14:09:57', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '订单状态', 'order_status', '0', 'admin', '2024-06-17 14:00:59', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '是否选中', 'is_checked', '0', 'admin', '2024-06-25 09:55:01', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-06-05 14:09:57', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 10:07:28');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-17 13:47:18');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-17 14:58:01');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-17 14:58:05');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-17 15:59:48');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-19 08:40:04');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-19 08:59:31');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-19 08:59:37');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-19 09:03:35');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-19 09:03:38');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-19 09:13:55');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-19 09:13:59');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-20 10:44:40');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-20 10:44:43');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-24 13:49:35');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-24 15:00:34');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-24 16:12:08');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-24 20:07:34');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 08:23:54');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 09:29:15');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 10:54:27');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 19:28:32');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 08:43:41');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 10:43:10');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 12:39:39');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 13:11:21');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 14:00:42');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-26 18:45:12');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-27 08:25:11');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-27 09:13:10');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-28 20:38:25');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-29 21:04:15');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 10:32:48');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 15:24:31');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 20:07:35');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 20:37:57');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-07-01 08:07:30');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-01 08:07:37');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 13:40:15');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 15:11:01');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 08:08:55');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 08:26:44');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-25 09:33:56');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-16 09:36:13');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-17 13:59:41');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2145 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-06-05 14:09:57', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2024-06-05 14:09:57', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2024-06-05 14:09:57', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2024-06-05 14:09:57', '', null, '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-06-05 14:09:57', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-06-05 14:09:57', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-06-05 14:09:57', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-06-05 14:09:57', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-06-05 14:09:57', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-06-05 14:09:57', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-06-05 14:09:57', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-06-05 14:09:57', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2024-06-05 14:09:57', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-06-05 14:09:57', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-06-05 14:09:57', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-06-05 14:09:57', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-06-05 14:09:57', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-06-05 14:09:57', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-05 14:09:57', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-06-05 14:09:57', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-06-05 14:09:57', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-06-05 14:09:57', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-06-05 14:09:57', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-05 14:09:57', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '蛋糕店', '0', '4', 'cs', null, null, '1', '0', 'M', '0', '0', null, 'chart', 'admin', '2024-06-17 13:54:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '用户', '2000', '1', 'user', 'cs/user/index', null, '1', '0', 'C', '0', '0', 'cs:user:list', 'user', 'admin', '2024-06-19 09:35:49', 'admin', '2024-06-19 09:37:54', '用户菜单');
INSERT INTO `sys_menu` VALUES ('2026', '用户查询', '2025', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:user:query', '#', 'admin', '2024-06-19 09:35:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '用户新增', '2025', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:user:add', '#', 'admin', '2024-06-19 09:35:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '用户修改', '2025', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:user:edit', '#', 'admin', '2024-06-19 09:35:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '用户删除', '2025', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:user:remove', '#', 'admin', '2024-06-19 09:35:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '用户导出', '2025', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:user:export', '#', 'admin', '2024-06-19 09:35:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '首页轮播', '2000', '1', 'indexCarousel', 'cs/indexCarousel/index', null, '1', '0', 'C', '0', '0', 'cs:indexCarousel:list', '#', 'admin', '2024-06-19 09:42:59', '', null, '首页轮播菜单');
INSERT INTO `sys_menu` VALUES ('2038', '首页轮播查询', '2037', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexCarousel:query', '#', 'admin', '2024-06-19 09:42:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '首页轮播新增', '2037', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexCarousel:add', '#', 'admin', '2024-06-19 09:42:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '首页轮播修改', '2037', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexCarousel:edit', '#', 'admin', '2024-06-19 09:42:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '首页轮播删除', '2037', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexCarousel:remove', '#', 'admin', '2024-06-19 09:42:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '首页轮播导出', '2037', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexCarousel:export', '#', 'admin', '2024-06-19 09:42:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '商品分类', '2000', '1', 'productfamily', 'cs/productfamily/index', null, '1', '0', 'C', '0', '0', 'cs:productfamily:list', '#', 'admin', '2024-06-20 11:04:31', '', null, '商品分类菜单');
INSERT INTO `sys_menu` VALUES ('2044', '商品分类查询', '2043', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:productfamily:query', '#', 'admin', '2024-06-20 11:04:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2045', '商品分类新增', '2043', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:productfamily:add', '#', 'admin', '2024-06-20 11:04:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '商品分类修改', '2043', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:productfamily:edit', '#', 'admin', '2024-06-20 11:04:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '商品分类删除', '2043', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:productfamily:remove', '#', 'admin', '2024-06-20 11:04:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '商品分类导出', '2043', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:productfamily:export', '#', 'admin', '2024-06-20 11:04:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '商品', '2000', '1', 'goods', 'cs/goods/index', null, '1', '0', 'C', '0', '0', 'cs:goods:list', '#', 'admin', '2024-06-25 08:39:58', '', null, '商品菜单');
INSERT INTO `sys_menu` VALUES ('2056', '商品查询', '2055', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:goods:query', '#', 'admin', '2024-06-25 08:39:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2057', '商品新增', '2055', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:goods:add', '#', 'admin', '2024-06-25 08:39:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '商品修改', '2055', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:goods:edit', '#', 'admin', '2024-06-25 08:39:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '商品删除', '2055', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:goods:remove', '#', 'admin', '2024-06-25 08:39:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2060', '商品导出', '2055', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:goods:export', '#', 'admin', '2024-06-25 08:39:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '购物车', '2000', '1', 'shoppingcart', 'cs/shoppingcart/index', null, '1', '0', 'C', '0', '0', 'cs:shoppingcart:list', '#', 'admin', '2024-06-25 10:02:58', '', null, '购物车菜单');
INSERT INTO `sys_menu` VALUES ('2062', '购物车查询', '2061', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:shoppingcart:query', '#', 'admin', '2024-06-25 10:02:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2063', '购物车新增', '2061', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:shoppingcart:add', '#', 'admin', '2024-06-25 10:02:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '购物车修改', '2061', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:shoppingcart:edit', '#', 'admin', '2024-06-25 10:02:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '购物车删除', '2061', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:shoppingcart:remove', '#', 'admin', '2024-06-25 10:02:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '购物车导出', '2061', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:shoppingcart:export', '#', 'admin', '2024-06-25 10:02:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '收货地址', '2000', '1', 'address', 'cs/address/index', null, '1', '0', 'C', '0', '0', 'cs:address:list', '#', 'admin', '2024-06-25 10:59:08', '', null, '收货地址菜单');
INSERT INTO `sys_menu` VALUES ('2068', '收货地址查询', '2067', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:address:query', '#', 'admin', '2024-06-25 10:59:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2069', '收货地址新增', '2067', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:address:add', '#', 'admin', '2024-06-25 10:59:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '收货地址修改', '2067', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:address:edit', '#', 'admin', '2024-06-25 10:59:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '收货地址删除', '2067', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:address:remove', '#', 'admin', '2024-06-25 10:59:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '收货地址导出', '2067', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:address:export', '#', 'admin', '2024-06-25 10:59:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '订单明细', '2000', '1', 'orderdetail', 'cs/orderdetail/index', null, '1', '0', 'C', '0', '0', 'cs:orderdetail:list', '#', 'admin', '2024-06-25 20:38:32', '', null, '订单明细菜单');
INSERT INTO `sys_menu` VALUES ('2080', '订单明细查询', '2079', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:orderdetail:query', '#', 'admin', '2024-06-25 20:38:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', '订单明细新增', '2079', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:orderdetail:add', '#', 'admin', '2024-06-25 20:38:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '订单明细修改', '2079', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:orderdetail:edit', '#', 'admin', '2024-06-25 20:38:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '订单明细删除', '2079', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:orderdetail:remove', '#', 'admin', '2024-06-25 20:38:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '订单明细导出', '2079', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:orderdetail:export', '#', 'admin', '2024-06-25 20:38:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '订单', '2000', '1', 'order', 'cs/order/index', null, '1', '0', 'C', '0', '0', 'cs:order:list', '#', 'admin', '2024-06-25 20:39:53', '', null, '订单菜单');
INSERT INTO `sys_menu` VALUES ('2086', '订单查询', '2085', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:order:query', '#', 'admin', '2024-06-25 20:39:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '订单新增', '2085', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:order:add', '#', 'admin', '2024-06-25 20:39:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2088', '订单修改', '2085', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:order:edit', '#', 'admin', '2024-06-25 20:39:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '订单删除', '2085', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:order:remove', '#', 'admin', '2024-06-25 20:39:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '订单导出', '2085', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:order:export', '#', 'admin', '2024-06-25 20:39:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2127', '首页商品', '2000', '1', 'indexProduct', 'cs/indexProduct/index', null, '1', '0', 'C', '0', '0', 'cs:indexProduct:list', '#', 'admin', '2024-06-26 09:06:05', '', null, '首页商品菜单');
INSERT INTO `sys_menu` VALUES ('2128', '首页商品查询', '2127', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexProduct:query', '#', 'admin', '2024-06-26 09:06:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2129', '首页商品新增', '2127', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexProduct:add', '#', 'admin', '2024-06-26 09:06:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2130', '首页商品修改', '2127', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexProduct:edit', '#', 'admin', '2024-06-26 09:06:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2131', '首页商品删除', '2127', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexProduct:remove', '#', 'admin', '2024-06-26 09:06:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2132', '首页商品导出', '2127', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:indexProduct:export', '#', 'admin', '2024-06-26 09:06:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2133', '首页推荐类别\r\n', '2000', '1', 'recommended', 'cs/recommended/index', null, '1', '0', 'C', '0', '0', 'cs:recommended:list', '#', 'admin', '2024-06-26 09:14:14', '', null, '首页推荐类别\r\n菜单');
INSERT INTO `sys_menu` VALUES ('2134', '首页推荐类别查询', '2133', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:recommended:query', '#', 'admin', '2024-06-26 09:14:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2135', '首页推荐类别新增', '2133', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:recommended:add', '#', 'admin', '2024-06-26 09:14:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2136', '首页推荐类别修改', '2133', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:recommended:edit', '#', 'admin', '2024-06-26 09:14:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2137', '首页推荐类别删除', '2133', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:recommended:remove', '#', 'admin', '2024-06-26 09:14:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2138', '首页推荐类别导出', '2133', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:recommended:export', '#', 'admin', '2024-06-26 09:14:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2139', '商品图片', '2000', '1', 'pic', 'cs/pic/index', null, '1', '0', 'C', '0', '0', 'cs:pic:list', '#', 'admin', '2024-06-26 09:30:53', '', null, '商品图片菜单');
INSERT INTO `sys_menu` VALUES ('2140', '商品图片查询', '2139', '1', '#', '', null, '1', '0', 'F', '0', '0', 'cs:pic:query', '#', 'admin', '2024-06-26 09:30:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2141', '商品图片新增', '2139', '2', '#', '', null, '1', '0', 'F', '0', '0', 'cs:pic:add', '#', 'admin', '2024-06-26 09:30:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2142', '商品图片修改', '2139', '3', '#', '', null, '1', '0', 'F', '0', '0', 'cs:pic:edit', '#', 'admin', '2024-06-26 09:30:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2143', '商品图片删除', '2139', '4', '#', '', null, '1', '0', 'F', '0', '0', 'cs:pic:remove', '#', 'admin', '2024-06-26 09:30:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2144', '商品图片导出', '2139', '5', '#', '', null, '1', '0', 'F', '0', '0', 'cs:pic:export', '#', 'admin', '2024-06-26 09:30:53', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-06-05 14:09:57', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-06-05 14:09:57', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"蛋糕店\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"cs\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 13:54:19', '154');
INSERT INTO `sys_oper_log` VALUES ('101', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单状态\",\"dictType\":\"order_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:00:59', '35');
INSERT INTO `sys_oper_log` VALUES ('102', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"初始\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:02:01', '28');
INSERT INTO `sys_oper_log` VALUES ('103', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"取消订单\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:02:14', '27');
INSERT INTO `sys_oper_log` VALUES ('104', '字典类型', '3', 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/dict/data/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:02:23', '51');
INSERT INTO `sys_oper_log` VALUES ('105', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"取消\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:02:29', '23');
INSERT INTO `sys_oper_log` VALUES ('106', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"完成订单\",\"dictSort\":0,\"dictType\":\"order_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:02:37', '16');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"cs_user,cs_product,cs_index_product,cs_product_pic,cs_shoppingcart_item,cs_order_detail,cs_index_carousel,cs_product_family,cs_news\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:08:56', '516');
INSERT INTO `sys_oper_log` VALUES ('108', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"cs_receiver_address,cs_order,cs_admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:09:10', '172');
INSERT INTO `sys_oper_log` VALUES ('109', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"user\",\"className\":\"User\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":47,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":48,\"columnName\":\"password\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Salt\",\"columnComment\":\"佐料\",\"columnId\":49,\"columnName\":\"salt\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"salt\",\"javaType\":\"String\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-17 14:25:33', '63');
INSERT INTO `sys_oper_log` VALUES ('110', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexProduct\",\"className\":\"IndexProduct\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":5,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":6,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SeqRecommended\",\"columnComment\":\"推荐排序\",\"columnId\":7,\"columnName\":\"seq_recommended\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"seqRecommended\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SeqNewArrival\",\"columnComment\":\"新品排序\",\"columnId\":8,\"columnName\":\"seq_new_arrival\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 08:43:42', '95');
INSERT INTO `sys_oper_log` VALUES ('111', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexProduct\",\"className\":\"IndexProduct\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":5,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:43:42\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":6,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:43:42\",\"usableColumn\":false},{\"capJavaField\":\"SeqRecommended\",\"columnComment\":\"推荐排序\",\"columnId\":7,\"columnName\":\"seq_recommended\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"seqRecommended\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:43:42\",\"usableColumn\":false},{\"capJavaField\":\"SeqNewArrival\",\"columnComment\":\"新品排序\",\"columnId\":8,\"columnName\":\"seq_new_arrival\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 08:44:04', '40');
INSERT INTO `sys_oper_log` VALUES ('112', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexCarousel\",\"className\":\"IndexCarousel\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Img\",\"columnComment\":\"图片\",\"columnId\":2,\"columnName\":\"img\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"img\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":3,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Seq\",\"columnComment\":\"排序\",\"columnId\":4,\"columnName\":\"seq\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"seq\",\"javaType', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 08:46:53', '33');
INSERT INTO `sys_oper_log` VALUES ('113', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexProduct\",\"className\":\"IndexProduct\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":5,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:44:04\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":6,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:44:04\",\"usableColumn\":false},{\"capJavaField\":\"SeqRecommended\",\"columnComment\":\"推荐排序\",\"columnId\":7,\"columnName\":\"seq_recommended\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"seqRecommended\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:44:04\",\"usableColumn\":false},{\"capJavaField\":\"SeqNewArrival\",\"columnComment\":\"新品排序\",\"columnId\":8,\"columnName\":\"seq_new_arrival\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 08:47:04', '22');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_carousel,cs_index_product\"}', null, '0', null, '2024-06-19 08:47:21', '534');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"user\",\"className\":\"User\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:25:33\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":47,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:25:33\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":48,\"columnName\":\"password\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-17 14:25:33\",\"usableColumn\":false},{\"capJavaField\":\"Salt\",\"columnComment\":\"佐料\",\"columnId\":49,\"columnName\":\"salt\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 08:54:20', '42');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_user\"}', null, '0', null, '2024-06-19 08:54:27', '162');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"cs/user/index\",\"createTime\":\"2024-06-19 08:55:18\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"用户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"user\",\"perms\":\"cs:user:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:11:16', '48');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_product\"}', null, '0', null, '2024-06-19 09:29:13', '527');
INSERT INTO `sys_oper_log` VALUES ('119', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexCarousel\",\"className\":\"IndexCarousel\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:46:53\",\"usableColumn\":false},{\"capJavaField\":\"Img\",\"columnComment\":\"图片\",\"columnId\":2,\"columnName\":\"img\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"img\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:46:53\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":3,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:46:53\",\"usableColumn\":false},{\"capJavaField\":\"Seq\",\"columnComment\":\"排序\",\"columnId\":4,\"columnName\":\"seq\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncreme', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:32:35', '80');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexProduct\",\"className\":\"IndexProduct\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":5,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:47:04\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":6,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:47:04\",\"usableColumn\":false},{\"capJavaField\":\"SeqRecommended\",\"columnComment\":\"推荐排序\",\"columnId\":7,\"columnName\":\"seq_recommended\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"seqRecommended\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:47:04\",\"usableColumn\":false},{\"capJavaField\":\"SeqNewArrival\",\"columnComment\":\"新品排序\",\"columnId\":8,\"columnName\":\"seq_new_arrival\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:32:42', '26');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"user\",\"className\":\"User\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:54:20\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":47,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:54:20\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":48,\"columnName\":\"password\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 08:54:20\",\"usableColumn\":false},{\"capJavaField\":\"Salt\",\"columnComment\":\"佐料\",\"columnId\":49,\"columnName\":\"salt\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:32:51', '38');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_user\"}', null, '0', null, '2024-06-19 09:34:05', '181');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"cs/user/index\",\"createTime\":\"2024-06-19 09:35:49\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"用户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"user\",\"perms\":\"cs:user:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:37:54', '45');
INSERT INTO `sys_oper_log` VALUES ('124', '用户', '1', 'com.ruoyi.cs.controller.UserController.add()', 'POST', '1', 'admin', '研发部门', '/cs/user', '127.0.0.1', '内网IP', '{\"avatar\":\"/profile/upload/2024/06/19/cake01_20240619094000A002.png\",\"email\":\"18072825466@163.com\",\"gender\":0,\"id\":15,\"name\":\"wjh123\",\"nickName\":\"wjh\",\"params\":{},\"phone\":\"18072825466\",\"remark\":\"wjh\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 09:40:12', '64');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_carousel,cs_index_product\"}', null, '0', null, '2024-06-19 09:41:56', '407');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"user\",\"className\":\"User\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 09:32:51\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":47,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 09:32:51\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":48,\"columnName\":\"password\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-06-19 09:32:51\",\"usableColumn\":false},{\"capJavaField\":\"Salt\",\"columnComment\":\"佐料\",\"columnId\":49,\"columnName\":\"salt\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 10:23:56', '139');
INSERT INTO `sys_oper_log` VALUES ('127', '首页轮播', '1', 'com.ruoyi.cs.controller.IndexCarouselController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":5,\"img\":\"/profile/upload/2024/06/19/banner01_20240619103302A001.jpg\",\"params\":{},\"productId\":1,\"seq\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 10:33:17', '32');
INSERT INTO `sys_oper_log` VALUES ('128', '用户', '2', 'com.ruoyi.cs.controller.UserController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/user', '127.0.0.1', '内网IP', '{\"avatar\":\"/profile/upload/2024/06/19/cake08_20240619104635A003.jpg\",\"email\":\"18072825466\",\"gender\":0,\"id\":1,\"name\":\"wjh\",\"nickName\":\"wjh\",\"params\":{},\"phone\":\"18072825466\",\"remark\":\"第一个用户\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-19 10:46:41', '22');
INSERT INTO `sys_oper_log` VALUES ('129', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"family\",\"className\":\"ProductFamily\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":34,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Img\",\"columnComment\":\"图片\",\"columnId\":35,\"columnName\":\"img\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"img\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"dwb\",\"functionName\":\"商品分类\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"cs\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.cs\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"商品分类\",\"tableId\":6,\"tableName\":\"cs_product_family\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-20 11:02:38', '67');
INSERT INTO `sys_oper_log` VALUES ('130', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"productfamily\",\"className\":\"ProductFamily\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-20 11:02:38\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":34,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-20 11:02:38\",\"usableColumn\":false},{\"capJavaField\":\"Img\",\"columnComment\":\"图片\",\"columnId\":35,\"columnName\":\"img\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"img\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-20 11:02:38\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"dwb\",\"functionName\":\"商品分类\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"cs\",\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"packageName\":\"com.ruoyi.cs\",\"params\":{\"parentMenuId\":\"2000\"},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"商品分类\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-20 11:03:08', '15');
INSERT INTO `sys_oper_log` VALUES ('131', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_news\"}', null, '0', null, '2024-06-20 11:03:34', '455');
INSERT INTO `sys_oper_log` VALUES ('132', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product_family\"}', null, '0', null, '2024-06-20 11:03:46', '67');
INSERT INTO `sys_oper_log` VALUES ('133', '用户', '3', 'com.ruoyi.cs.controller.UserController.remove()', 'DELETE', '1', 'admin', '研发部门', '/cs/user/16', '127.0.0.1', '内网IP', '{}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\r\n### The error may exist in file [D:\\allwork\\xmsx\\ruoyi-admin\\target\\classes\\mapper\\cs\\UserMapper.xml]\r\n### The error may involve com.ruoyi.cs.mapper.UserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from cs_user where id in           (               ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\n; Lock wait timeout exceeded; try restarting transaction; nested exception is com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction', '2024-06-24 20:08:33', '50416');
INSERT INTO `sys_oper_log` VALUES ('134', '用户', '3', 'com.ruoyi.cs.controller.UserController.remove()', 'DELETE', '1', 'admin', '研发部门', '/cs/user/16', '127.0.0.1', '内网IP', '{}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\r\n### The error may exist in file [D:\\allwork\\xmsx\\ruoyi-admin\\target\\classes\\mapper\\cs\\UserMapper.xml]\r\n### The error may involve com.ruoyi.cs.mapper.UserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from cs_user where id in           (               ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\n; Lock wait timeout exceeded; try restarting transaction; nested exception is com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction', '2024-06-24 20:08:47', '50239');
INSERT INTO `sys_oper_log` VALUES ('135', '用户', '3', 'com.ruoyi.cs.controller.UserController.remove()', 'DELETE', '1', 'admin', '研发部门', '/cs/user/16', '127.0.0.1', '内网IP', '{}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\r\n### The error may exist in file [D:\\allwork\\xmsx\\ruoyi-admin\\target\\classes\\mapper\\cs\\UserMapper.xml]\r\n### The error may involve com.ruoyi.cs.mapper.UserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from cs_user where id in           (               ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\n; Lock wait timeout exceeded; try restarting transaction; nested exception is com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction', '2024-06-24 20:10:30', '51339');
INSERT INTO `sys_oper_log` VALUES ('136', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Product\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商品id\",\"columnId\":21,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FamilyId\",\"columnComment\":\"分类id\",\"columnId\":22,\"columnName\":\"family_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"familyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":23,\"columnName\":\"title\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subtitle\",\"columnComment\":\"子标题\",\"columnId\":24,\"columnName\":\"subtitle\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"subtitle\",\"jav', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 08:28:21', '93');
INSERT INTO `sys_oper_log` VALUES ('137', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product\"}', null, '0', null, '2024-06-25 08:28:27', '293');
INSERT INTO `sys_oper_log` VALUES ('138', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商品id\",\"columnId\":21,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 08:28:21\",\"usableColumn\":false},{\"capJavaField\":\"FamilyId\",\"columnComment\":\"分类id\",\"columnId\":22,\"columnName\":\"family_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"familyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 08:28:21\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":23,\"columnName\":\"title\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 08:28:21\",\"usableColumn\":false},{\"capJavaField\":\"Subtitle\",\"columnComment\":\"子标题\",\"columnId\":24,\"columnName\":\"subtitle\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 08:38:18', '95');
INSERT INTO `sys_oper_log` VALUES ('139', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product\"}', null, '0', null, '2024-06-25 08:38:24', '165');
INSERT INTO `sys_oper_log` VALUES ('140', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"shoppingcart\",\"className\":\"ShoppingcartItem\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":41,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":42,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品Id\",\"columnId\":43,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Count\",\"columnComment\":\"数量\",\"columnId\":44,\"columnName\":\"count\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"count\",\"ja', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 09:53:56', '56');
INSERT INTO `sys_oper_log` VALUES ('141', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否选中\",\"dictType\":\"is_checked\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 09:55:01', '21');
INSERT INTO `sys_oper_log` VALUES ('142', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"是\",\"dictSort\":0,\"dictType\":\"is_checked\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 09:56:34', '16');
INSERT INTO `sys_oper_log` VALUES ('143', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"否\",\"dictSort\":0,\"dictType\":\"is_checked\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 09:56:44', '21');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"shoppingcart\",\"className\":\"ShoppingcartItem\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":41,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 09:53:56\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":42,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 09:53:56\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品Id\",\"columnId\":43,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 09:53:56\",\"usableColumn\":false},{\"capJavaField\":\"Count\",\"columnComment\":\"数量\",\"columnId\":44,\"columnName\":\"count\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 09:57:28', '32');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_shoppingcart_item\"}', null, '0', null, '2024-06-25 10:02:33', '233');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"address\",\"className\":\"ReceiverAddress\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":75,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":76,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Receiver\",\"columnComment\":\"收货人\",\"columnId\":77,\"columnName\":\"receiver\",\"columnType\":\"varchar(16)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"receiver\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Province\",\"columnComment\":\"省\",\"columnId\":78,\"columnName\":\"province\",\"columnType\":\"varchar(16)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 10:58:36', '139');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_receiver_address\"}', null, '0', null, '2024-06-25 10:58:42', '255');
INSERT INTO `sys_oper_log` VALUES ('148', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":5,\"img\":\"/profile/upload/2024/06/19/banner01_20240619103302A001.jpg\",\"params\":{},\"productId\":0,\"seq\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:46:38', '15');
INSERT INTO `sys_oper_log` VALUES ('149', '首页轮播', '1', 'com.ruoyi.cs.controller.IndexCarouselController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":6,\"img\":\"/profile/upload/2024/06/25/banner02_20240625194719A001.jpg\",\"params\":{},\"productId\":0,\"seq\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:47:26', '37');
INSERT INTO `sys_oper_log` VALUES ('150', '首页轮播', '1', 'com.ruoyi.cs.controller.IndexCarouselController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":7,\"img\":\"/profile/upload/2024/06/25/banner03_20240625194733A002.jpg\",\"params\":{},\"productId\":0,\"seq\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:47:37', '47');
INSERT INTO `sys_oper_log` VALUES ('151', '首页轮播', '1', 'com.ruoyi.cs.controller.IndexCarouselController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":8,\"img\":\"/profile/upload/2024/06/25/banner04_20240625194743A003.jpg\",\"params\":{},\"productId\":0,\"seq\":4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:47:52', '8');
INSERT INTO `sys_oper_log` VALUES ('152', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":7,\"img\":\"/profile/upload/2024/06/25/banner03_20240625194733A002.jpg\",\"params\":{},\"productId\":0,\"seq\":3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:48:00', '14');
INSERT INTO `sys_oper_log` VALUES ('153', '商品分类', '1', 'com.ruoyi.cs.controller.ProductFamilyController.add()', 'POST', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":12,\"img\":\"/profile/upload/2024/06/25/select01_20240625195005A004.png\",\"name\":\"cake\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:50:20', '12');
INSERT INTO `sys_oper_log` VALUES ('154', '商品分类', '1', 'com.ruoyi.cs.controller.ProductFamilyController.add()', 'POST', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":13,\"img\":\"/profile/upload/2024/06/25/select02_20240625195029A005.png\",\"name\":\"bread\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:50:35', '40');
INSERT INTO `sys_oper_log` VALUES ('155', '商品分类', '1', 'com.ruoyi.cs.controller.ProductFamilyController.add()', 'POST', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":14,\"img\":\"/profile/upload/2024/06/25/select03_20240625195051A006.png\",\"name\":\"teatime\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:51:01', '15');
INSERT INTO `sys_oper_log` VALUES ('156', '商品分类', '1', 'com.ruoyi.cs.controller.ProductFamilyController.add()', 'POST', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":15,\"img\":\"/profile/upload/2024/06/25/select04_20240625195107A007.png\",\"name\":\"ice\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 19:51:50', '48');
INSERT INTO `sys_oper_log` VALUES ('157', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:09:42', '158');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subtitle\",\"columnComment\":\"子标题\",\"columnId\":91,\"columnName\":\"subtitle\",\"columnType\":\"varchar(24)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"subtitle\",\"javaType\":\"String', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:10:16', '328');
INSERT INTO `sys_oper_log` VALUES ('159', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-25 20:10:24', '616');
INSERT INTO `sys_oper_log` VALUES ('160', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:10:16\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:10:16\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:10:16\",\"usableColumn\":false},{\"capJavaField\":\"Subtitle\",\"columnComment\":\"子标题\",\"columnId\":91,\"columnName\":\"subtitle\",\"columnType\":\"varchar(24)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIns', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:19:05', '128');
INSERT INTO `sys_oper_log` VALUES ('161', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":66,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":67,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AddressId\",\"columnComment\":\"地址Id\",\"columnId\":68,\"columnName\":\"address_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"addressId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":69,\"columnName\":\"status\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"order_status\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"status\",\"ja', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:21:38', '157');
INSERT INTO `sys_oper_log` VALUES ('162', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:19:05\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:19:05\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:19:05\",\"usableColumn\":false},{\"capJavaField\":\"Subtitle\",\"columnComment\":\"子标题\",\"columnId\":91,\"columnName\":\"subtitle\",\"columnType\":\"varchar(24)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIns', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:22:07', '74');
INSERT INTO `sys_oper_log` VALUES ('163', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-25 20:22:11', '125');
INSERT INTO `sys_oper_log` VALUES ('164', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":66,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:21:38\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":67,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:21:38\",\"usableColumn\":false},{\"capJavaField\":\"AddressId\",\"columnComment\":\"地址Id\",\"columnId\":68,\"columnName\":\"address_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"addressId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:21:38\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":69,\"columnName\":\"status\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"order_status\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:35:20', '113');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"order\",\"className\":\"Order\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":66,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:35:20\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户Id\",\"columnId\":67,\"columnName\":\"user_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:35:20\",\"usableColumn\":false},{\"capJavaField\":\"AddressId\",\"columnComment\":\"地址Id\",\"columnId\":68,\"columnName\":\"address_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"addressId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:35:20\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":69,\"columnName\":\"status\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:09:10\",\"dictType\":\"order_status\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:36:15', '45');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"detail\",\"className\":\"OrderDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单Id\",\"columnId\":17,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品Id\",\"columnId\":18,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":19,\"columnName\":\"price\",\"columnType\":\"decimal(10,0)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"price\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:36:49', '22');
INSERT INTO `sys_oper_log` VALUES ('167', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"orderdetail\",\"className\":\"OrderDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:36:49\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单Id\",\"columnId\":17,\"columnName\":\"order_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:36:49\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品Id\",\"columnId\":18,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:36:49\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":19,\"columnName\":\"price\",\"columnType\":\"decimal(10,0)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:37:16', '23');
INSERT INTO `sys_oper_log` VALUES ('168', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_order_detail\"}', null, '0', null, '2024-06-25 20:37:47', '232');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_order\"}', null, '0', null, '2024-06-25 20:38:03', '63');
INSERT INTO `sys_oper_log` VALUES ('170', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product_pic\"}', null, '0', null, '2024-06-25 20:46:45', '177');
INSERT INTO `sys_oper_log` VALUES ('171', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pic\",\"className\":\"ProductPic\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":36,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":37,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sm\",\"columnComment\":\"小图片\",\"columnId\":38,\"columnName\":\"sm\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sm\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Md\",\"columnComment\":\"中图片\",\"columnId\":39,\"columnName\":\"md\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"md\",\"javaType\":\"String\",\"list\":t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-25 20:54:39', '79');
INSERT INTO `sys_oper_log` VALUES ('172', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product_pic\"}', null, '0', null, '2024-06-25 20:54:45', '254');
INSERT INTO `sys_oper_log` VALUES ('173', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/cs_index_recommended', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:47:44', '191');
INSERT INTO `sys_oper_log` VALUES ('174', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:47:44\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:47:44\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:47:44\",\"usableColumn\":false},{\"capJavaField\":\"Text\",\"columnComment\":\"文字\",\"columnId\":92,\"columnName\":\"text\",\"columnType\":\"varchar(24)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:47:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:48:03', '132');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 08:48:06', '714');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:48:03\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:48:03\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:48:03\",\"usableColumn\":false},{\"capJavaField\":\"Text\",\"columnComment\":\"文字\",\"columnId\":92,\"columnName\":\"text\",\"columnType\":\"varchar(24)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:47:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:50:40', '51');
INSERT INTO `sys_oper_log` VALUES ('177', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 08:50:43', '458');
INSERT INTO `sys_oper_log` VALUES ('178', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 08:51:42', '77');
INSERT INTO `sys_oper_log` VALUES ('179', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:50:40\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:50:40\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:50:40\",\"usableColumn\":false},{\"capJavaField\":\"Text\",\"columnComment\":\"文字\",\"columnId\":92,\"columnName\":\"text\",\"columnType\":\"varchar(24)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:47:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:52:58', '57');
INSERT INTO `sys_oper_log` VALUES ('180', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 08:53:01', '66');
INSERT INTO `sys_oper_log` VALUES ('181', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:52:58\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:52:58\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:52:58\",\"usableColumn\":false},{\"capJavaField\":\"Text\",\"columnComment\":\"文字\",\"columnId\":92,\"columnName\":\"text\",\"columnType\":\"varchar(24)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:47:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:54:26', '37');
INSERT INTO `sys_oper_log` VALUES ('182', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 08:55:33', '59');
INSERT INTO `sys_oper_log` VALUES ('183', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/cs_index_product', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 08:59:46', '130');
INSERT INTO `sys_oper_log` VALUES ('184', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"indexProduct\",\"className\":\"IndexProduct\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":5,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:59:46\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":6,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:59:46\",\"usableColumn\":false},{\"capJavaField\":\"RecommendedId\",\"columnComment\":\"推荐id\",\"columnId\":93,\"columnName\":\"recommended_id\",\"columnType\":\"int(11)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:59:46\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"recommendedId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SeqTopSale\",\"columnComment\":\"畅销排序\",\"columnId\":9,\"columnName\":\"seq_top_sale\",\"columnType\":\"tinyint(4)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:00:27', '78');
INSERT INTO `sys_oper_log` VALUES ('185', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_product\"}', null, '0', null, '2024-06-26 09:05:45', '77');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"recommended\",\"className\":\"IndexRecommended\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:54:26\",\"usableColumn\":false},{\"capJavaField\":\"Pic\",\"columnComment\":\"图片\",\"columnId\":89,\"columnName\":\"pic\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pic\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:54:26\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"推荐标题\",\"columnId\":90,\"columnName\":\"title\",\"columnType\":\"varchar(12)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-25 20:09:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 08:54:26\",\"usableColumn\":false},{\"capJavaField\":\"Text\",\"columnComment\":\"文字\",\"columnId\":92,\"columnName\":\"text\",\"columnType\":\"varchar(24)\",\"createBy\":\"\",\"createTime\":\"2024-06-26 08:47:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:11:24', '93');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_index_recommended\"}', null, '0', null, '2024-06-26 09:11:33', '243');
INSERT INTO `sys_oper_log` VALUES ('188', '首页推荐类别 ', '1', 'com.ruoyi.cs.controller.IndexRecommendedController.add()', 'POST', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2024/06/26/recb01_20240626091832A001.jpg\",\"text\":\"芬芳又深邃，正如生活本身\",\"title\":\"当季推荐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:18:57', '38');
INSERT INTO `sys_oper_log` VALUES ('189', '首页推荐类别 ', '1', 'com.ruoyi.cs.controller.IndexRecommendedController.add()', 'POST', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"pic\":\"/profile/upload/2024/06/26/recb02_20240626092541A002.jpg\",\"text\":\"可以许愿，可以照亮眼前\",\"title\":\"生日聚会\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:26:09', '5');
INSERT INTO `sys_oper_log` VALUES ('190', '首页推荐类别 ', '1', 'com.ruoyi.cs.controller.IndexRecommendedController.add()', 'POST', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"pic\":\"/profile/upload/2024/06/26/recb03_20240626092616A003.jpg\",\"text\":\"早餐的品质，就是生活的品质\",\"title\":\"早餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:26:33', '6');
INSERT INTO `sys_oper_log` VALUES ('191', '首页推荐类别 ', '1', 'com.ruoyi.cs.controller.IndexRecommendedController.add()', 'POST', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":4,\"params\":{},\"pic\":\"/profile/upload/2024/06/26/recb04_20240626092652A004.jpg\",\"text\":\"工作与生活的平衡，努力唤醒与能力补给\",\"title\":\"下午茶\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:27:01', '5');
INSERT INTO `sys_oper_log` VALUES ('192', '首页推荐类别 ', '1', 'com.ruoyi.cs.controller.IndexRecommendedController.add()', 'POST', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":5,\"params\":{},\"pic\":\"/profile/upload/2024/06/26/recb05_20240626092707A005.jpg\",\"text\":\"常温、便携，可以带往更远的地方\",\"title\":\"假期出游\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:27:29', '5');
INSERT INTO `sys_oper_log` VALUES ('193', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pic\",\"className\":\"ProductPic\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":36,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:54:39\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":37,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:54:39\",\"usableColumn\":false},{\"capJavaField\":\"Sm\",\"columnComment\":\"小图片\",\"columnId\":38,\"columnName\":\"sm\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"sm\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-25 20:54:39\",\"usableColumn\":false},{\"capJavaField\":\"Md\",\"columnComment\":\"中图片\",\"columnId\":39,\"columnName\":\"md\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:29:12', '95');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"cs_product_pic\"}', null, '0', null, '2024-06-26 09:29:48', '255');
INSERT INTO `sys_oper_log` VALUES ('195', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":63,\"isOnsale\":1,\"name\":\"Mango in Season\",\"params\":{},\"price\":268.00,\"soldCount\":100,\"title\":\"Mango in Season\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:42:41', '61');
INSERT INTO `sys_oper_log` VALUES ('196', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":64,\"isOnsale\":1,\"name\":\"白夜\",\"params\":{},\"price\":268,\"soldCount\":100,\"title\":\"白夜\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:43:57', '26');
INSERT INTO `sys_oper_log` VALUES ('197', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":65,\"isOnsale\":1,\"name\":\"黑越橘（蓝莓轻…\",\"params\":{},\"price\":268,\"soldCount\":100,\"title\":\"黑越橘（蓝莓轻…\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:45:27', '24');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pic\",\"className\":\"ProductPic\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"Id\",\"columnId\":36,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 09:29:12\",\"usableColumn\":false},{\"capJavaField\":\"ProductId\",\"columnComment\":\"商品编号\",\"columnId\":37,\"columnName\":\"product_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"productId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 09:29:12\",\"usableColumn\":false},{\"capJavaField\":\"Sm\",\"columnComment\":\"小图片\",\"columnId\":38,\"columnName\":\"sm\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"sm\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-06-26 09:29:12\",\"usableColumn\":false},{\"capJavaField\":\"Md\",\"columnComment\":\"中图片\",\"columnId\":39,\"columnName\":\"md\",\"columnType\":\"varchar(128)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-17 14:08:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:45:47', '65');
INSERT INTO `sys_oper_log` VALUES ('199', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":297,\"md\":\"/profile/upload/2024/06/26/cake01_20240626094712A001.jpg\",\"params\":{},\"productId\":63}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:47:17', '13');
INSERT INTO `sys_oper_log` VALUES ('200', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":298,\"md\":\"/profile/upload/2024/06/26/cake02_20240626094741A003.jpg\",\"params\":{},\"productId\":64}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:47:44', '13');
INSERT INTO `sys_oper_log` VALUES ('201', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":299,\"md\":\"/profile/upload/2024/06/26/cake03_20240626094753A004.png\",\"params\":{},\"productId\":65}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:47:58', '5');
INSERT INTO `sys_oper_log` VALUES ('202', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"bread\",\"familyId\":13,\"id\":66,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":16.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:49:16', '34');
INSERT INTO `sys_oper_log` VALUES ('203', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/06/26/bread01_20240626094941A005.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 09:49:43', '16');
INSERT INTO `sys_oper_log` VALUES ('204', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":67,\"isOnsale\":1,\"name\":\"黑白巧克力慕斯\",\"params\":{},\"price\":398.00,\"soldCount\":100,\"title\":\"黑白巧克力慕斯\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:44:12', '18');
INSERT INTO `sys_oper_log` VALUES ('205', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":68,\"isOnsale\":1,\"name\":\"猫山王\",\"params\":{},\"price\":298.00,\"soldCount\":100,\"title\":\"猫山王\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:45:12', '18');
INSERT INTO `sys_oper_log` VALUES ('206', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":69,\"isOnsale\":1,\"name\":\"深爱\",\"params\":{},\"price\":268,\"soldCount\":100,\"title\":\"深爱\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:45:43', '6');
INSERT INTO `sys_oper_log` VALUES ('207', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":70,\"isOnsale\":1,\"name\":\"芒果奶油蛋糕\",\"params\":{},\"price\":268.00,\"soldCount\":100,\"title\":\"芒果奶油蛋糕\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:48:19', '0');
INSERT INTO `sys_oper_log` VALUES ('208', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":71,\"isOnsale\":1,\"name\":\"兰姆芝士\",\"params\":{},\"price\":198,\"soldCount\":100,\"title\":\"兰姆芝士\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:48:45', '13');
INSERT INTO `sys_oper_log` VALUES ('209', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":72,\"isOnsale\":1,\"name\":\"茉莉花\",\"params\":{},\"price\":268.00,\"soldCount\":100,\"title\":\"茉莉花\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:49:18', '16');
INSERT INTO `sys_oper_log` VALUES ('210', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":14,\"params\":{},\"productId\":69,\"recommendedId\":2,\"recommendedSale\":3,\"seqTopSale\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:51:34', '17');
INSERT INTO `sys_oper_log` VALUES ('211', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":15,\"params\":{},\"productId\":72,\"recommendedId\":1,\"recommendedSale\":1,\"seqTopSale\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:52:28', '21');
INSERT INTO `sys_oper_log` VALUES ('212', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":16,\"params\":{},\"productId\":70,\"recommendedId\":0,\"recommendedSale\":0,\"seqTopSale\":3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:54:12', '12');
INSERT INTO `sys_oper_log` VALUES ('213', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":17,\"params\":{},\"productId\":68,\"recommendedId\":1,\"recommendedSale\":3,\"seqTopSale\":4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:55:01', '5');
INSERT INTO `sys_oper_log` VALUES ('214', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"productId\":64,\"recommendedId\":0,\"recommendedSale\":0,\"seqTopSale\":5}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:55:57', '15');
INSERT INTO `sys_oper_log` VALUES ('215', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":301,\"md\":\"/profile/upload/2024/06/26/cake04_20240626105649A001.jpg\",\"params\":{},\"productId\":67}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:56:52', '16');
INSERT INTO `sys_oper_log` VALUES ('216', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/06/26/cake05_20240626105702A002.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:57:05', '6');
INSERT INTO `sys_oper_log` VALUES ('217', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":303,\"md\":\"/profile/upload/2024/06/26/cake06_20240626105715A003.jpg\",\"params\":{},\"productId\":69}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:57:16', '12');
INSERT INTO `sys_oper_log` VALUES ('218', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":304,\"md\":\"/profile/upload/2024/06/26/cake07_20240626105728A004.jpg\",\"params\":{},\"productId\":70}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:57:29', '18');
INSERT INTO `sys_oper_log` VALUES ('219', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":305,\"md\":\"/profile/upload/2024/06/26/cake08_20240626105738A005.png\",\"params\":{},\"productId\":71}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:57:40', '10');
INSERT INTO `sys_oper_log` VALUES ('220', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":306,\"md\":\"/profile/upload/2024/06/26/hot02_20240626105844A006.jpg\",\"params\":{},\"productId\":72}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 10:58:46', '16');
INSERT INTO `sys_oper_log` VALUES ('221', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"bread\",\"familyId\":13,\"id\":73,\"isOnsale\":1,\"name\":\"冰菠萝包-陈皮红豆\",\"params\":{},\"price\":59.00,\"soldCount\":100,\"title\":\"冰菠萝包-陈皮红豆\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 13:11:50', '75');
INSERT INTO `sys_oper_log` VALUES ('222', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":74,\"isOnsale\":1,\"name\":\"浅草\",\"params\":{},\"price\":398.00,\"soldCount\":100,\"title\":\"浅草\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:01:06', '49');
INSERT INTO `sys_oper_log` VALUES ('223', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"cake\",\"familyId\":12,\"id\":75,\"isOnsale\":1,\"name\":\"杰瑞\",\"params\":{},\"price\":398.00,\"soldCount\":100,\"title\":\"杰瑞\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:02:15', '50');
INSERT INTO `sys_oper_log` VALUES ('224', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"bread\",\"familyId\":13,\"id\":76,\"isOnsale\":1,\"name\":\"北海道吐司\",\"params\":{},\"price\":18.00,\"soldCount\":100,\"title\":\"北海道吐司\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:03:06', '42');
INSERT INTO `sys_oper_log` VALUES ('225', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"bread\",\"familyId\":13,\"id\":77,\"isOnsale\":1,\"name\":\"巧克力吐司\",\"params\":{},\"price\":21.00,\"soldCount\":100,\"title\":\"巧克力吐司\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:08:37', '47');
INSERT INTO `sys_oper_log` VALUES ('226', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"bread\",\"familyId\":13,\"id\":78,\"isOnsale\":1,\"name\":\"巧克力可颂\",\"params\":{},\"price\":18.00,\"soldCount\":100,\"title\":\"巧克力可颂\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:09:09', '47');
INSERT INTO `sys_oper_log` VALUES ('227', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"teatime\",\"familyId\":14,\"id\":79,\"isOnsale\":1,\"name\":\"轻蛋糕（提拉…\",\"params\":{},\"price\":26,\"soldCount\":100,\"title\":\"轻蛋糕（提拉…\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:10:58', '44');
INSERT INTO `sys_oper_log` VALUES ('228', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"teatime\",\"familyId\":14,\"id\":80,\"isOnsale\":1,\"name\":\"冻与焗（抹茶…\",\"params\":{},\"price\":25.00,\"soldCount\":100,\"title\":\"冻与焗（抹茶…\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:11:39', '47');
INSERT INTO `sys_oper_log` VALUES ('229', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"teatime\",\"familyId\":14,\"id\":81,\"isOnsale\":1,\"name\":\"轻蛋糕（龙井…\",\"params\":{},\"price\":26.00,\"soldCount\":100,\"title\":\"轻蛋糕（龙井…\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:12:13', '17');
INSERT INTO `sys_oper_log` VALUES ('230', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"teatime\",\"familyId\":14,\"id\":82,\"isOnsale\":1,\"name\":\"云南血雀挂耳…\",\"params\":{},\"price\":180.00,\"soldCount\":100,\"title\":\"云南血雀挂耳…\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:13:01', '14');
INSERT INTO `sys_oper_log` VALUES ('231', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"teatime\",\"familyId\":14,\"id\":83,\"isOnsale\":1,\"name\":\"苏门答腊曼特\",\"params\":{},\"price\":180.00,\"soldCount\":100,\"title\":\"苏门答腊曼特\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:13:36', '16');
INSERT INTO `sys_oper_log` VALUES ('232', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":307,\"md\":\"/profile/upload/2024/06/26/bread02_20240626141446A001.jpg\",\"params\":{},\"productId\":73}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:14:49', '15');
INSERT INTO `sys_oper_log` VALUES ('233', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":308,\"md\":\"/profile/upload/2024/06/26/s2_20240626141544A002.png\",\"params\":{},\"productId\":74}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:15:50', '6');
INSERT INTO `sys_oper_log` VALUES ('234', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":309,\"md\":\"/profile/upload/2024/06/26/s2_20240626141614A003.jpg\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:16:20', '6');
INSERT INTO `sys_oper_log` VALUES ('235', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/06/26/s1_20240626141643A004.png\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:16:45', '21');
INSERT INTO `sys_oper_log` VALUES ('236', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/06/26/s1_20240626141643A004.png\",\"params\":{},\"productId\":76}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:17:14', '6');
INSERT INTO `sys_oper_log` VALUES ('237', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":311,\"md\":\"/profile/upload/2024/06/26/s2_20240626141723A005.jpg\",\"params\":{},\"productId\":77}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:17:25', '16');
INSERT INTO `sys_oper_log` VALUES ('238', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":312,\"md\":\"/profile/upload/2024/06/26/s3_20240626141735A006.png\",\"params\":{},\"productId\":78}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:17:38', '5');
INSERT INTO `sys_oper_log` VALUES ('239', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/06/26/s1_20240626141818A007.png\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:18:21', '5');
INSERT INTO `sys_oper_log` VALUES ('240', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/06/26/s2_20240626141849A008.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:18:51', '15');
INSERT INTO `sys_oper_log` VALUES ('241', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":315,\"md\":\"/profile/upload/2024/06/26/s3_20240626141859A009.jpg\",\"params\":{},\"productId\":81}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:19:04', '14');
INSERT INTO `sys_oper_log` VALUES ('242', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":316,\"md\":\"/profile/upload/2024/06/26/s1_20240626141916A010.png\",\"params\":{},\"productId\":82}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:19:19', '15');
INSERT INTO `sys_oper_log` VALUES ('243', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":317,\"md\":\"/profile/upload/2024/06/26/s2_20240626141929A011.png\",\"params\":{},\"productId\":83}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:19:31', '16');
INSERT INTO `sys_oper_log` VALUES ('244', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":19,\"params\":{},\"productId\":74,\"recommendedId\":1,\"recommendedSale\":2,\"seqTopSale\":6}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:21:15', '16');
INSERT INTO `sys_oper_log` VALUES ('245', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":20,\"params\":{},\"productId\":67,\"recommendedId\":2,\"recommendedSale\":1,\"seqTopSale\":7}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:21:57', '23');
INSERT INTO `sys_oper_log` VALUES ('246', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":21,\"params\":{},\"productId\":75,\"recommendedId\":2,\"recommendedSale\":2,\"seqTopSale\":8}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:22:24', '26');
INSERT INTO `sys_oper_log` VALUES ('247', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":22,\"params\":{},\"productId\":76,\"recommendedId\":3,\"recommendedSale\":1,\"seqTopSale\":9}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:23:27', '25');
INSERT INTO `sys_oper_log` VALUES ('248', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":23,\"params\":{},\"productId\":77,\"recommendedId\":3,\"recommendedSale\":2,\"seqTopSale\":10}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:23:38', '5');
INSERT INTO `sys_oper_log` VALUES ('249', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":24,\"params\":{},\"productId\":78,\"recommendedId\":3,\"recommendedSale\":3,\"seqTopSale\":11}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:23:47', '14');
INSERT INTO `sys_oper_log` VALUES ('250', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":25,\"params\":{},\"productId\":79,\"recommendedId\":4,\"recommendedSale\":1,\"seqTopSale\":11}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:24:05', '19');
INSERT INTO `sys_oper_log` VALUES ('251', '首页商品', '2', 'com.ruoyi.cs.controller.IndexProductController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":25,\"params\":{},\"productId\":79,\"recommendedId\":4,\"recommendedSale\":1,\"seqTopSale\":12}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:24:14', '14');
INSERT INTO `sys_oper_log` VALUES ('252', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":26,\"params\":{},\"productId\":80,\"recommendedId\":4,\"recommendedSale\":2,\"seqTopSale\":13}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:24:24', '13');
INSERT INTO `sys_oper_log` VALUES ('253', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":27,\"params\":{},\"productId\":81,\"recommendedId\":4,\"recommendedSale\":3,\"seqTopSale\":14}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:24:35', '13');
INSERT INTO `sys_oper_log` VALUES ('254', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":28,\"params\":{},\"productId\":82,\"recommendedId\":5,\"recommendedSale\":1,\"seqTopSale\":15}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:24:59', '18');
INSERT INTO `sys_oper_log` VALUES ('255', '首页商品', '1', 'com.ruoyi.cs.controller.IndexProductController.add()', 'POST', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":29,\"params\":{},\"productId\":83,\"recommendedId\":52,\"recommendedSale\":2,\"seqTopSale\":16}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:25:09', '15');
INSERT INTO `sys_oper_log` VALUES ('256', '首页商品', '2', 'com.ruoyi.cs.controller.IndexProductController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexProduct', '127.0.0.1', '内网IP', '{\"id\":29,\"params\":{},\"productId\":83,\"recommendedId\":5,\"recommendedSale\":2,\"seqTopSale\":16}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 14:26:22', '16');
INSERT INTO `sys_oper_log` VALUES ('257', '商品', '2', 'com.ruoyi.cs.controller.GoodsController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"蛋糕\",\"familyId\":12,\"id\":63,\"isOnsale\":1,\"name\":\"Mango in Season\",\"params\":{},\"price\":268,\"soldCount\":100,\"title\":\"Mango in Season\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:46:56', '17');
INSERT INTO `sys_oper_log` VALUES ('258', '商品', '2', 'com.ruoyi.cs.controller.GoodsController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"蛋糕\",\"familyId\":12,\"id\":64,\"isOnsale\":1,\"name\":\"白夜\",\"params\":{},\"price\":268,\"soldCount\":100,\"title\":\"白夜\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:47:08', '15');
INSERT INTO `sys_oper_log` VALUES ('259', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":12,\"img\":\"/profile/upload/2024/06/25/select01_20240625195005A004.png\",\"name\":\"蛋糕\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:47:25', '16');
INSERT INTO `sys_oper_log` VALUES ('260', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":13,\"img\":\"/profile/upload/2024/06/25/select02_20240625195029A005.png\",\"name\":\"面包\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:47:38', '4');
INSERT INTO `sys_oper_log` VALUES ('261', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":14,\"img\":\"/profile/upload/2024/06/25/select03_20240625195051A006.png\",\"name\":\"下午茶\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:47:48', '13');
INSERT INTO `sys_oper_log` VALUES ('262', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":15,\"img\":\"/profile/upload/2024/06/25/select04_20240625195107A007.png\",\"name\":\"冰淇淋\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:48:00', '12');
INSERT INTO `sys_oper_log` VALUES ('263', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"面包\",\"familyId\":13,\"id\":84,\"isOnsale\":1,\"name\":\"重瓣玫瑰吐司\",\"params\":{},\"price\":21.00,\"soldCount\":100,\"title\":\"重瓣玫瑰吐司\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:49:25', '22');
INSERT INTO `sys_oper_log` VALUES ('264', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"面包\",\"familyId\":13,\"id\":85,\"isOnsale\":1,\"name\":\"红藜麦轻吐司\",\"params\":{},\"price\":21.00,\"soldCount\":100,\"title\":\"红藜麦轻吐司\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:49:52', '14');
INSERT INTO `sys_oper_log` VALUES ('265', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"面包\",\"familyId\":13,\"id\":86,\"isOnsale\":1,\"name\":\"冰菠萝包-宇宙\",\"params\":{},\"price\":59.00,\"soldCount\":100,\"title\":\"冰菠萝包-宇宙\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:50:26', '16');
INSERT INTO `sys_oper_log` VALUES ('266', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"下午茶\",\"familyId\":14,\"id\":87,\"isOnsale\":1,\"name\":\"闺蜜轻享套餐\",\"params\":{},\"price\":49.00,\"soldCount\":100,\"title\":\"闺蜜轻享套餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:51:38', '2');
INSERT INTO `sys_oper_log` VALUES ('267', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"下午茶\",\"familyId\":14,\"id\":88,\"isOnsale\":1,\"name\":\"户外乐享套餐\",\"params\":{},\"price\":89.00,\"soldCount\":100,\"title\":\"户外乐享套餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:52:18', '6');
INSERT INTO `sys_oper_log` VALUES ('268', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"下午茶\",\"familyId\":14,\"id\":89,\"isOnsale\":1,\"name\":\"办公室巨享套餐\",\"params\":{},\"price\":198.00,\"soldCount\":100,\"title\":\"办公室巨享套餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:52:54', '13');
INSERT INTO `sys_oper_log` VALUES ('269', '商品', '5', 'com.ruoyi.cs.controller.GoodsController.export()', 'POST', '1', 'admin', '研发部门', '/cs/goods/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"2\"}', null, '0', null, '2024-06-26 18:53:56', '781');
INSERT INTO `sys_oper_log` VALUES ('270', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":90,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:56:33', '22');
INSERT INTO `sys_oper_log` VALUES ('271', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":91,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:57:16', '15');
INSERT INTO `sys_oper_log` VALUES ('272', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":92,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:57:39', '5');
INSERT INTO `sys_oper_log` VALUES ('273', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":93,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:58:07', '10');
INSERT INTO `sys_oper_log` VALUES ('274', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":94,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:58:45', '15');
INSERT INTO `sys_oper_log` VALUES ('275', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":95,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:59:10', '14');
INSERT INTO `sys_oper_log` VALUES ('276', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":96,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 18:59:38', '18');
INSERT INTO `sys_oper_log` VALUES ('277', '商品', '1', 'com.ruoyi.cs.controller.GoodsController.add()', 'POST', '1', 'admin', '研发部门', '/cs/goods', '127.0.0.1', '内网IP', '{\"category\":\"冰淇淋\",\"familyId\":15,\"id\":97,\"isOnsale\":1,\"name\":\"阳光香葱卷\",\"params\":{},\"price\":19.80,\"soldCount\":100,\"title\":\"阳光香葱卷\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:00:14', '12');
INSERT INTO `sys_oper_log` VALUES ('278', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":318,\"md\":\"/profile/upload/2024/06/26/bread03_20240626190048A001.jpg\",\"params\":{},\"productId\":84}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:00:50', '22');
INSERT INTO `sys_oper_log` VALUES ('279', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":319,\"md\":\"/profile/upload/2024/06/26/bread04_20240626190107A002.jpg\",\"params\":{},\"productId\":85}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:01:15', '15');
INSERT INTO `sys_oper_log` VALUES ('280', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":320,\"md\":\"/profile/upload/2024/06/26/bread05_20240626190124A003.jpg\",\"params\":{},\"productId\":86}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:01:28', '12');
INSERT INTO `sys_oper_log` VALUES ('281', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":321,\"md\":\"/profile/upload/2024/06/26/tea01_20240626190145A004.jpg\",\"params\":{},\"productId\":87}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:01:48', '4');
INSERT INTO `sys_oper_log` VALUES ('282', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":322,\"md\":\"/profile/upload/2024/06/26/tea02_20240626190205A005.jpg\",\"params\":{},\"productId\":88}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:02:07', '5');
INSERT INTO `sys_oper_log` VALUES ('283', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":323,\"md\":\"/profile/upload/2024/06/26/tea03_20240626190215A006.jpg\",\"params\":{},\"productId\":89}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:02:18', '5');
INSERT INTO `sys_oper_log` VALUES ('284', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":324,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190249A007.jpg\",\"params\":{},\"productId\":90}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:02:51', '5');
INSERT INTO `sys_oper_log` VALUES ('285', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":325,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190303A008.jpg\",\"params\":{},\"productId\":91}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:03:05', '5');
INSERT INTO `sys_oper_log` VALUES ('286', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":326,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190313A009.jpg\",\"params\":{},\"productId\":92}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:03:15', '5');
INSERT INTO `sys_oper_log` VALUES ('287', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":327,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190325A010.jpg\",\"params\":{},\"productId\":93}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:03:27', '15');
INSERT INTO `sys_oper_log` VALUES ('288', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":328,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190433A011.jpg\",\"params\":{},\"productId\":95}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:04:36', '12');
INSERT INTO `sys_oper_log` VALUES ('289', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":329,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190444A012.jpg\",\"params\":{},\"productId\":94}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:04:46', '14');
INSERT INTO `sys_oper_log` VALUES ('290', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":330,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190455A013.jpg\",\"params\":{},\"productId\":96}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:04:57', '4');
INSERT INTO `sys_oper_log` VALUES ('291', '商品图片', '1', 'com.ruoyi.cs.controller.ProductPicController.add()', 'POST', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":331,\"md\":\"/profile/upload/2024/06/26/bread01_20240626190505A014.jpg\",\"params\":{},\"productId\":97}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:05:07', '14');
INSERT INTO `sys_oper_log` VALUES ('292', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":4,\"id\":26,\"isChecked\":1,\"params\":{},\"productId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:05:32', '14');
INSERT INTO `sys_oper_log` VALUES ('293', '购物车', '2', 'com.ruoyi.cs.controller.ShoppingcartItemController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":4,\"id\":26,\"isChecked\":1,\"params\":{},\"productId\":90,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:27:17', '32');
INSERT INTO `sys_oper_log` VALUES ('294', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":5,\"id\":27,\"isChecked\":1,\"params\":{},\"productId\":89,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 19:44:52', '35');
INSERT INTO `sys_oper_log` VALUES ('295', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":3,\"id\":28,\"isChecked\":1,\"params\":{},\"productId\":68,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-26 20:01:48', '59');
INSERT INTO `sys_oper_log` VALUES ('296', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":13,\"id\":29,\"isChecked\":1,\"params\":{},\"productId\":80,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 09:13:38', '13');
INSERT INTO `sys_oper_log` VALUES ('297', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":1,\"id\":30,\"isChecked\":1,\"params\":{},\"productId\":89,\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 09:13:58', '13');
INSERT INTO `sys_oper_log` VALUES ('298', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":1,\"id\":31,\"isChecked\":1,\"params\":{},\"productId\":70,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 09:14:09', '13');
INSERT INTO `sys_oper_log` VALUES ('299', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":1,\"id\":32,\"isChecked\":1,\"params\":{},\"productId\":80,\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-27 09:14:20', '13');
INSERT INTO `sys_oper_log` VALUES ('300', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":5,\"img\":\"/profile/upload/2024/06/29/banner01_20240629210507A001.jpg\",\"params\":{},\"productId\":0,\"seq\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:05:08', '20');
INSERT INTO `sys_oper_log` VALUES ('301', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":6,\"img\":\"/profile/upload/2024/06/29/banner02_20240629210516A002.jpg\",\"params\":{},\"productId\":0,\"seq\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:05:18', '9');
INSERT INTO `sys_oper_log` VALUES ('302', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":7,\"img\":\"/profile/upload/2024/06/29/banner03_20240629210526A003.jpg\",\"params\":{},\"productId\":0,\"seq\":3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:05:26', '9');
INSERT INTO `sys_oper_log` VALUES ('303', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":8,\"img\":\"/profile/upload/2024/06/29/banner04_20240629210542A004.jpg\",\"params\":{},\"productId\":0,\"seq\":4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:05:44', '6');
INSERT INTO `sys_oper_log` VALUES ('304', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":12,\"img\":\"/profile/upload/2024/06/29/select01_20240629210722A005.png\",\"name\":\"蛋糕\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:07:23', '11');
INSERT INTO `sys_oper_log` VALUES ('305', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":13,\"img\":\"/profile/upload/2024/06/29/select02_20240629210731A006.png\",\"name\":\"面包\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:07:31', '5');
INSERT INTO `sys_oper_log` VALUES ('306', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":14,\"img\":\"/profile/upload/2024/06/29/select03_20240629210738A007.png\",\"name\":\"下午茶\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:07:39', '7');
INSERT INTO `sys_oper_log` VALUES ('307', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":15,\"img\":\"/profile/upload/2024/06/29/select04_20240629210745A008.png\",\"name\":\"冰淇淋\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:07:46', '32');
INSERT INTO `sys_oper_log` VALUES ('308', '用户', '2', 'com.ruoyi.cs.controller.UserController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/user', '127.0.0.1', '内网IP', '{\"avatar\":\"/profile/upload/2024/06/29/010c5459d2fda7a8012044638a64cb_20240629210828A009.jpg\",\"email\":\"18072825466\",\"gender\":0,\"id\":1,\"name\":\"wjh\",\"nickName\":\"wjh\",\"params\":{},\"phone\":\"18072825466\",\"remark\":\"第一个用户\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:08:30', '34');
INSERT INTO `sys_oper_log` VALUES ('309', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2024/06/29/recb01_20240629210946A010.jpg\",\"text\":\"芬芳又深邃，正如生活本身\",\"title\":\"当季推荐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:09:47', '70');
INSERT INTO `sys_oper_log` VALUES ('310', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"pic\":\"/profile/upload/2024/06/29/recb02_20240629210953A011.jpg\",\"text\":\"可以许愿，可以照亮眼前\",\"title\":\"生日聚会\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:09:53', '27');
INSERT INTO `sys_oper_log` VALUES ('311', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"pic\":\"/profile/upload/2024/06/29/recb03_20240629211001A012.jpg\",\"text\":\"早餐的品质，就是生活的品质\",\"title\":\"早餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:10:02', '92');
INSERT INTO `sys_oper_log` VALUES ('312', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":4,\"params\":{},\"pic\":\"/profile/upload/2024/06/29/recb04_20240629211009A013.jpg\",\"text\":\"工作与生活的平衡，努力唤醒与能力补给\",\"title\":\"下午茶\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:10:10', '57');
INSERT INTO `sys_oper_log` VALUES ('313', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":5,\"params\":{},\"pic\":\"/profile/upload/2024/06/29/recb05_20240629211017A014.jpg\",\"text\":\"常温、便携，可以带往更远的地方\",\"title\":\"假期出游\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:10:18', '54');
INSERT INTO `sys_oper_log` VALUES ('314', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":297,\"md\":\"/profile/upload/2024/06/29/cake01_20240629211259A015.jpg\",\"params\":{},\"productId\":63}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:13:02', '16');
INSERT INTO `sys_oper_log` VALUES ('315', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":298,\"md\":\"/profile/upload/2024/06/29/cake02_20240629211328A016.jpg\",\"params\":{},\"productId\":64}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:13:30', '12');
INSERT INTO `sys_oper_log` VALUES ('316', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":299,\"md\":\"/profile/upload/2024/06/29/cake03_20240629211336A017.png\",\"params\":{},\"productId\":65}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:13:38', '7');
INSERT INTO `sys_oper_log` VALUES ('317', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/06/29/cake04_20240629211345A018.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:13:47', '6');
INSERT INTO `sys_oper_log` VALUES ('318', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":301,\"md\":\"/profile/upload/2024/06/29/cake05_20240629211355A019.jpg\",\"params\":{},\"productId\":67}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:13:56', '6');
INSERT INTO `sys_oper_log` VALUES ('319', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/06/29/cake06_20240629211424A020.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:14:25', '4');
INSERT INTO `sys_oper_log` VALUES ('320', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":303,\"md\":\"/profile/upload/2024/06/29/cake07_20240629211431A021.jpg\",\"params\":{},\"productId\":69}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:14:32', '7');
INSERT INTO `sys_oper_log` VALUES ('321', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":304,\"md\":\"/profile/upload/2024/06/29/cake08_20240629211438A022.png\",\"params\":{},\"productId\":70}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:14:40', '6');
INSERT INTO `sys_oper_log` VALUES ('322', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":303,\"md\":\"/profile/upload/2024/06/29/cake06_20240629211547A023.jpg\",\"params\":{},\"productId\":69}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:15:49', '5');
INSERT INTO `sys_oper_log` VALUES ('323', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/06/29/cake07_20240629211555A024.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:15:56', '7');
INSERT INTO `sys_oper_log` VALUES ('324', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":304,\"md\":\"/profile/upload/2024/06/29/cake07_20240629211619A025.jpg\",\"params\":{},\"productId\":70}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:16:21', '7');
INSERT INTO `sys_oper_log` VALUES ('325', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/06/29/cake08_20240629211627A026.png\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:16:29', '7');
INSERT INTO `sys_oper_log` VALUES ('326', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":301,\"md\":\"/profile/upload/2024/06/29/cake08_20240629211702A027.png\",\"params\":{},\"productId\":67}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:17:03', '13');
INSERT INTO `sys_oper_log` VALUES ('327', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/06/29/cake05_20240629211709A028.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:17:11', '5');
INSERT INTO `sys_oper_log` VALUES ('328', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":305,\"md\":\"/profile/upload/2024/06/29/hot02_20240629211754A029.jpg\",\"params\":{},\"productId\":71}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:17:56', '9');
INSERT INTO `sys_oper_log` VALUES ('329', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":306,\"md\":\"/profile/upload/2024/06/29/hot02_20240629211825A030.jpg\",\"params\":{},\"productId\":72}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:18:28', '7');
INSERT INTO `sys_oper_log` VALUES ('330', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":305,\"md\":\"/profile/upload/2024/06/29/cake08_20240629211844A031.png\",\"params\":{},\"productId\":71}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:18:45', '5');
INSERT INTO `sys_oper_log` VALUES ('331', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":307,\"md\":\"/profile/upload/2024/06/29/s2_20240629212012A032.png\",\"params\":{},\"productId\":73}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:20:14', '9');
INSERT INTO `sys_oper_log` VALUES ('332', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/06/29/bread01_20240629212107A033.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:21:09', '5');
INSERT INTO `sys_oper_log` VALUES ('333', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":307,\"md\":\"/profile/upload/2024/06/29/bread02_20240629212147A034.jpg\",\"params\":{},\"productId\":73}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:21:48', '4');
INSERT INTO `sys_oper_log` VALUES ('334', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":308,\"md\":\"/profile/upload/2024/06/29/bread03_20240629212158A035.jpg\",\"params\":{},\"productId\":74}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:22:00', '5');
INSERT INTO `sys_oper_log` VALUES ('335', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":309,\"md\":\"/profile/upload/2024/06/29/bread04_20240629212206A036.jpg\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:22:08', '6');
INSERT INTO `sys_oper_log` VALUES ('336', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":308,\"md\":\"/profile/upload/2024/06/29/s2_20240629212252A037.png\",\"params\":{},\"productId\":74}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:22:54', '7');
INSERT INTO `sys_oper_log` VALUES ('337', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/06/29/bread04_20240629212420A038.jpg\",\"params\":{},\"productId\":76}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:24:23', '8');
INSERT INTO `sys_oper_log` VALUES ('338', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":311,\"md\":\"/profile/upload/2024/06/29/bread03_20240629212451A039.jpg\",\"params\":{},\"productId\":77}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:24:53', '6');
INSERT INTO `sys_oper_log` VALUES ('339', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":312,\"md\":\"/profile/upload/2024/06/29/bread05_20240629212505A040.jpg\",\"params\":{},\"productId\":78}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:25:06', '6');
INSERT INTO `sys_oper_log` VALUES ('340', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/06/29/bread06_20240629212512A041.jpg\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:25:13', '6');
INSERT INTO `sys_oper_log` VALUES ('341', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/06/29/bread07_20240629212519A042.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:25:20', '5');
INSERT INTO `sys_oper_log` VALUES ('342', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":315,\"md\":\"/profile/upload/2024/06/29/bread08_20240629212526A043.jpg\",\"params\":{},\"productId\":81}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:25:27', '6');
INSERT INTO `sys_oper_log` VALUES ('343', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/06/29/tea01_20240629212621A044.jpg\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:26:22', '7');
INSERT INTO `sys_oper_log` VALUES ('344', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/06/29/tea02_20240629212639A045.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:26:40', '5');
INSERT INTO `sys_oper_log` VALUES ('345', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":315,\"md\":\"/profile/upload/2024/06/29/tea08_20240629212700A046.jpg\",\"params\":{},\"productId\":81}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:27:01', '7');
INSERT INTO `sys_oper_log` VALUES ('346', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/06/29/s1_20240629213421A047.png\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:34:23', '6');
INSERT INTO `sys_oper_log` VALUES ('347', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/06/29/s2_20240629213430A048.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:34:31', '5');
INSERT INTO `sys_oper_log` VALUES ('348', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":316,\"md\":\"/profile/upload/2024/06/29/s1_20240629213515A049.png\",\"params\":{},\"productId\":82}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:35:16', '11');
INSERT INTO `sys_oper_log` VALUES ('349', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":317,\"md\":\"/profile/upload/2024/06/29/s2_20240629213524A050.png\",\"params\":{},\"productId\":83}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:35:26', '6');
INSERT INTO `sys_oper_log` VALUES ('350', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":318,\"md\":\"/profile/upload/2024/06/29/bread01_20240629213605A051.jpg\",\"params\":{},\"productId\":84}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:36:07', '6');
INSERT INTO `sys_oper_log` VALUES ('351', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":318,\"md\":\"/profile/upload/2024/06/29/bread03_20240629213723A052.jpg\",\"params\":{},\"productId\":84}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-29 21:37:25', '7');
INSERT INTO `sys_oper_log` VALUES ('352', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":309,\"md\":\"/profile/upload/2024/06/30/s3_20240630103932A001.png\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:39:35', '27');
INSERT INTO `sys_oper_log` VALUES ('353', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":311,\"md\":\"/profile/upload/2024/06/30/s3_20240630104032A002.png\",\"params\":{},\"productId\":77}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:40:34', '7');
INSERT INTO `sys_oper_log` VALUES ('354', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":319,\"md\":\"/profile/upload/2024/06/30/bread04_20240630104132A003.jpg\",\"params\":{},\"productId\":85}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:41:33', '8');
INSERT INTO `sys_oper_log` VALUES ('355', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":320,\"md\":\"/profile/upload/2024/06/30/bread05_20240630104143A004.jpg\",\"params\":{},\"productId\":86}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:41:45', '7');
INSERT INTO `sys_oper_log` VALUES ('356', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":312,\"md\":\"/profile/upload/2024/06/30/s2_20240630104340A005.jpg\",\"params\":{},\"productId\":78}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:43:42', '446');
INSERT INTO `sys_oper_log` VALUES ('357', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/06/30/s1_20240630104413A006.png\",\"params\":{},\"productId\":76}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:44:14', '84');
INSERT INTO `sys_oper_log` VALUES ('358', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":321,\"md\":\"/profile/upload/2024/06/30/tea01_20240630104519A007.jpg\",\"params\":{},\"productId\":87}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:45:20', '153');
INSERT INTO `sys_oper_log` VALUES ('359', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":322,\"md\":\"/profile/upload/2024/06/30/tea02_20240630104526A008.jpg\",\"params\":{},\"productId\":88}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:45:27', '56');
INSERT INTO `sys_oper_log` VALUES ('360', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":323,\"md\":\"/profile/upload/2024/06/30/tea03_20240630104543A009.jpg\",\"params\":{},\"productId\":89}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:45:44', '83');
INSERT INTO `sys_oper_log` VALUES ('361', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":324,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104612A010.jpg\",\"params\":{},\"productId\":90}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:14', '7');
INSERT INTO `sys_oper_log` VALUES ('362', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":325,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104619A011.jpg\",\"params\":{},\"productId\":91}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:21', '7');
INSERT INTO `sys_oper_log` VALUES ('363', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":326,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104627A012.jpg\",\"params\":{},\"productId\":92}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:29', '7');
INSERT INTO `sys_oper_log` VALUES ('364', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":327,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104635A013.jpg\",\"params\":{},\"productId\":93}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:36', '7');
INSERT INTO `sys_oper_log` VALUES ('365', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":328,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104641A014.jpg\",\"params\":{},\"productId\":95}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:43', '6');
INSERT INTO `sys_oper_log` VALUES ('366', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":329,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104648A015.jpg\",\"params\":{},\"productId\":94}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:50', '6');
INSERT INTO `sys_oper_log` VALUES ('367', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":330,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104658A016.jpg\",\"params\":{},\"productId\":96}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:46:59', '11');
INSERT INTO `sys_oper_log` VALUES ('368', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":331,\"md\":\"/profile/upload/2024/06/30/bread01_20240630104705A017.jpg\",\"params\":{},\"productId\":97}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 10:47:06', '7');
INSERT INTO `sys_oper_log` VALUES ('369', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":309,\"md\":\"/profile/upload/2024/06/30/s2_20240630203840A018.jpg\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-30 20:38:42', '18');
INSERT INTO `sys_oper_log` VALUES ('370', '用户', '2', 'com.ruoyi.cs.controller.UserController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/user', '127.0.0.1', '内网IP', '{\"avatar\":\"/profile/upload/2024/07/01/20200315224548_tLBjw_20240701080808A001.jpeg\",\"email\":\"18072825466\",\"gender\":0,\"id\":1,\"name\":\"wjh\",\"nickName\":\"wjh\",\"params\":{},\"phone\":\"18072825466\",\"remark\":\"第一个用户\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-07-01 08:08:10', '25');
INSERT INTO `sys_oper_log` VALUES ('371', '购物车', '1', 'com.ruoyi.cs.controller.ShoppingcartItemController.add()', 'POST', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":5,\"id\":33,\"isChecked\":1,\"params\":{},\"productId\":65,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-07-01 08:09:46', '23');
INSERT INTO `sys_oper_log` VALUES ('372', '购物车', '2', 'com.ruoyi.cs.controller.ShoppingcartItemController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":1,\"id\":30,\"isChecked\":1,\"params\":{},\"productId\":89,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-07-01 08:10:13', '16');
INSERT INTO `sys_oper_log` VALUES ('373', '购物车', '2', 'com.ruoyi.cs.controller.ShoppingcartItemController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/shoppingcart', '127.0.0.1', '内网IP', '{\"count\":1,\"id\":32,\"isChecked\":1,\"params\":{},\"productId\":80,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-07-01 08:10:17', '16');
INSERT INTO `sys_oper_log` VALUES ('374', '购物车', '3', 'com.ruoyi.cs.controller.ShoppingcartItemController.remove()', 'DELETE', '1', 'admin', '研发部门', '/cs/shoppingcart/32', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-07-01 08:10:58', '21');
INSERT INTO `sys_oper_log` VALUES ('375', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"pic\":\"/profile/upload/2024/09/25/recb01_20240925082854A001.jpg\",\"text\":\"芬芳又深邃，正如生活本身\",\"title\":\"当季推荐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:28:55', '45');
INSERT INTO `sys_oper_log` VALUES ('376', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"pic\":\"/profile/upload/2024/09/25/recb02_20240925082905A002.jpg\",\"text\":\"可以许愿，可以照亮眼前\",\"title\":\"生日聚会\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:29:06', '35');
INSERT INTO `sys_oper_log` VALUES ('377', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"pic\":\"/profile/upload/2024/09/25/recb03_20240925082912A003.jpg\",\"text\":\"早餐的品质，就是生活的品质\",\"title\":\"早餐\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:29:13', '15');
INSERT INTO `sys_oper_log` VALUES ('378', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":4,\"params\":{},\"pic\":\"/profile/upload/2024/09/25/recb04_20240925082920A004.jpg\",\"text\":\"工作与生活的平衡，努力唤醒与能力补给\",\"title\":\"下午茶\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:29:21', '36');
INSERT INTO `sys_oper_log` VALUES ('379', '首页推荐类别 ', '2', 'com.ruoyi.cs.controller.IndexRecommendedController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/recommended', '127.0.0.1', '内网IP', '{\"id\":5,\"params\":{},\"pic\":\"/profile/upload/2024/09/25/recb05_20240925082931A005.jpg\",\"text\":\"常温、便携，可以带往更远的地方\",\"title\":\"假期出游\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:29:32', '44');
INSERT INTO `sys_oper_log` VALUES ('380', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":5,\"img\":\"/profile/upload/2024/09/25/banner01_20240925085040A006.jpg\",\"params\":{},\"productId\":0,\"seq\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:50:41', '14');
INSERT INTO `sys_oper_log` VALUES ('381', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":6,\"img\":\"/profile/upload/2024/09/25/banner02_20240925085046A007.jpg\",\"params\":{},\"productId\":0,\"seq\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:50:47', '24');
INSERT INTO `sys_oper_log` VALUES ('382', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":7,\"img\":\"/profile/upload/2024/09/25/banner03_20240925085051A008.jpg\",\"params\":{},\"productId\":0,\"seq\":3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:50:52', '6');
INSERT INTO `sys_oper_log` VALUES ('383', '首页轮播', '2', 'com.ruoyi.cs.controller.IndexCarouselController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/indexCarousel', '127.0.0.1', '内网IP', '{\"id\":8,\"img\":\"/profile/upload/2024/09/25/banner04_20240925085056A009.jpg\",\"params\":{},\"productId\":0,\"seq\":4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 08:50:56', '6');
INSERT INTO `sys_oper_log` VALUES ('384', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":12,\"img\":\"/profile/upload/2024/09/25/select01_20240925093627A001.png\",\"name\":\"蛋糕\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:36:28', '21');
INSERT INTO `sys_oper_log` VALUES ('385', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":13,\"img\":\"/profile/upload/2024/09/25/select02_20240925093638A002.png\",\"name\":\"面包\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:36:39', '7');
INSERT INTO `sys_oper_log` VALUES ('386', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":14,\"img\":\"/profile/upload/2024/09/25/select03_20240925093644A003.png\",\"name\":\"下午茶\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:36:45', '8');
INSERT INTO `sys_oper_log` VALUES ('387', '商品分类', '2', 'com.ruoyi.cs.controller.ProductFamilyController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/productfamily', '127.0.0.1', '内网IP', '{\"id\":15,\"img\":\"/profile/upload/2024/09/25/select04_20240925093649A004.png\",\"name\":\"冰淇淋\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:36:50', '6');
INSERT INTO `sys_oper_log` VALUES ('388', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":297,\"md\":\"/profile/upload/2024/09/25/s1_20240925093749A006.jpg\",\"params\":{},\"productId\":63}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:37:50', '11');
INSERT INTO `sys_oper_log` VALUES ('389', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":297,\"md\":\"/profile/upload/2024/09/25/cake01_20240925093816A007.jpg\",\"params\":{},\"productId\":63}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:17', '8');
INSERT INTO `sys_oper_log` VALUES ('390', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":298,\"md\":\"/profile/upload/2024/09/25/cake02_20240925093826A008.jpg\",\"params\":{},\"productId\":64}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:28', '5');
INSERT INTO `sys_oper_log` VALUES ('391', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":299,\"md\":\"/profile/upload/2024/09/25/cake03_20240925093833A009.png\",\"params\":{},\"productId\":65}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:34', '9');
INSERT INTO `sys_oper_log` VALUES ('392', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/09/25/cake04_20240925093839A010.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:40', '5');
INSERT INTO `sys_oper_log` VALUES ('393', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":301,\"md\":\"/profile/upload/2024/09/25/cake05_20240925093845A011.jpg\",\"params\":{},\"productId\":67}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:46', '7');
INSERT INTO `sys_oper_log` VALUES ('394', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/09/25/cake06_20240925093854A012.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:38:59', '8');
INSERT INTO `sys_oper_log` VALUES ('395', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":303,\"md\":\"/profile/upload/2024/09/25/cake07_20240925093905A013.jpg\",\"params\":{},\"productId\":69}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:39:07', '7');
INSERT INTO `sys_oper_log` VALUES ('396', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":304,\"md\":\"/profile/upload/2024/09/25/cake08_20240925093912A014.png\",\"params\":{},\"productId\":70}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:39:13', '6');
INSERT INTO `sys_oper_log` VALUES ('397', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":303,\"md\":\"/profile/upload/2024/09/25/cake06_20240925095002A015.jpg\",\"params\":{},\"productId\":69}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:50:03', '9');
INSERT INTO `sys_oper_log` VALUES ('398', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":305,\"md\":\"/profile/upload/2024/09/25/cake01_20240925095601A017.jpg\",\"params\":{},\"productId\":71}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:56:02', '10');
INSERT INTO `sys_oper_log` VALUES ('399', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":306,\"md\":\"/profile/upload/2024/09/25/cake02_20240925095607A018.jpg\",\"params\":{},\"productId\":72}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:56:09', '6');
INSERT INTO `sys_oper_log` VALUES ('400', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":302,\"md\":\"/profile/upload/2024/09/25/cake05_20240925095630A019.jpg\",\"params\":{},\"productId\":68}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:56:31', '7');
INSERT INTO `sys_oper_log` VALUES ('401', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":301,\"md\":\"/profile/upload/2024/09/25/cake04_20240925095639A020.jpg\",\"params\":{},\"productId\":67}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 09:56:41', '6');
INSERT INTO `sys_oper_log` VALUES ('402', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":307,\"md\":\"/profile/upload/2024/09/25/hot02_20240925100751A021.jpg\",\"params\":{},\"productId\":73}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:07:52', '6');
INSERT INTO `sys_oper_log` VALUES ('403', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/09/25/hot01_20240925100831A022.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:08:32', '9');
INSERT INTO `sys_oper_log` VALUES ('404', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":300,\"md\":\"/profile/upload/2024/09/25/bread01_20240925101137A023.jpg\",\"params\":{},\"productId\":66}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:11:38', '6');
INSERT INTO `sys_oper_log` VALUES ('405', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":307,\"md\":\"/profile/upload/2024/09/25/bread02_20240925101156A024.jpg\",\"params\":{},\"productId\":73}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:11:57', '7');
INSERT INTO `sys_oper_log` VALUES ('406', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":308,\"md\":\"/profile/upload/2024/09/25/bread03_20240925101203A025.jpg\",\"params\":{},\"productId\":74}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:05', '7');
INSERT INTO `sys_oper_log` VALUES ('407', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":309,\"md\":\"/profile/upload/2024/09/25/bread04_20240925101213A026.jpg\",\"params\":{},\"productId\":75}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:15', '8');
INSERT INTO `sys_oper_log` VALUES ('408', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/09/25/bread05_20240925101220A027.jpg\",\"params\":{},\"productId\":76}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:22', '6');
INSERT INTO `sys_oper_log` VALUES ('409', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":311,\"md\":\"/profile/upload/2024/09/25/bread06_20240925101227A028.jpg\",\"params\":{},\"productId\":77}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:29', '7');
INSERT INTO `sys_oper_log` VALUES ('410', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":312,\"md\":\"/profile/upload/2024/09/25/bread07_20240925101233A029.jpg\",\"params\":{},\"productId\":78}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:34', '5');
INSERT INTO `sys_oper_log` VALUES ('411', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/09/25/bread08_20240925101239A030.jpg\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:12:41', '6');
INSERT INTO `sys_oper_log` VALUES ('412', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":308,\"md\":\"/profile/upload/2024/09/25/s2_20240925101927A031.png\",\"params\":{},\"productId\":74}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:19:28', '7');
INSERT INTO `sys_oper_log` VALUES ('413', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":306,\"md\":\"/profile/upload/2024/09/25/s1_20240925101948A032.jpg\",\"params\":{},\"productId\":72}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:19:50', '8');
INSERT INTO `sys_oper_log` VALUES ('414', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":305,\"md\":\"/profile/upload/2024/09/25/cake08_20240925102039A033.png\",\"params\":{},\"productId\":71}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:20:41', '6');
INSERT INTO `sys_oper_log` VALUES ('415', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":304,\"md\":\"/profile/upload/2024/09/25/cake07_20240925102052A034.jpg\",\"params\":{},\"productId\":70}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-09-25 10:20:53', '8');
INSERT INTO `sys_oper_log` VALUES ('416', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/10/16/tea03_20241016095006A001.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:50:07', '15');
INSERT INTO `sys_oper_log` VALUES ('417', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":314,\"md\":\"/profile/upload/2024/10/16/s2_20241016095209A002.jpg\",\"params\":{},\"productId\":80}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:52:11', '6');
INSERT INTO `sys_oper_log` VALUES ('418', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":313,\"md\":\"/profile/upload/2024/10/16/s1_20241016095223A003.png\",\"params\":{},\"productId\":79}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:52:27', '10');
INSERT INTO `sys_oper_log` VALUES ('419', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":315,\"md\":\"/profile/upload/2024/10/16/s3_20241016095233A004.jpg\",\"params\":{},\"productId\":81}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:52:41', '7');
INSERT INTO `sys_oper_log` VALUES ('420', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":316,\"md\":\"/profile/upload/2024/10/16/s1_20241016095503A005.png\",\"params\":{},\"productId\":82}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:55:05', '5');
INSERT INTO `sys_oper_log` VALUES ('421', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":317,\"md\":\"/profile/upload/2024/10/16/s2_20241016095514A006.png\",\"params\":{},\"productId\":83}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:55:17', '8');
INSERT INTO `sys_oper_log` VALUES ('422', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":318,\"md\":\"/profile/upload/2024/10/16/tea01_20241016095615A007.jpg\",\"params\":{},\"productId\":84}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:56:17', '6');
INSERT INTO `sys_oper_log` VALUES ('423', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":319,\"md\":\"/profile/upload/2024/10/16/tea02_20241016095623A008.jpg\",\"params\":{},\"productId\":85}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:56:24', '8');
INSERT INTO `sys_oper_log` VALUES ('424', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":320,\"md\":\"/profile/upload/2024/10/16/tea03_20241016095630A009.jpg\",\"params\":{},\"productId\":86}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:56:31', '8');
INSERT INTO `sys_oper_log` VALUES ('425', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":318,\"md\":\"/profile/upload/2024/10/16/bread03_20241016095743A010.jpg\",\"params\":{},\"productId\":84}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:57:45', '5');
INSERT INTO `sys_oper_log` VALUES ('426', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":319,\"md\":\"/profile/upload/2024/10/16/bread04_20241016095751A011.jpg\",\"params\":{},\"productId\":85}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:57:52', '7');
INSERT INTO `sys_oper_log` VALUES ('427', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":320,\"md\":\"/profile/upload/2024/10/16/bread05_20241016095759A012.jpg\",\"params\":{},\"productId\":86}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 09:58:00', '6');
INSERT INTO `sys_oper_log` VALUES ('428', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":312,\"md\":\"/profile/upload/2024/10/16/s2_20241016100325A013.jpg\",\"params\":{},\"productId\":78}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:03:27', '7');
INSERT INTO `sys_oper_log` VALUES ('429', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":310,\"md\":\"/profile/upload/2024/10/16/s1_20241016100419A014.png\",\"params\":{},\"productId\":76}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:04:20', '9');
INSERT INTO `sys_oper_log` VALUES ('430', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":311,\"md\":\"/profile/upload/2024/10/16/s3_20241016100426A015.png\",\"params\":{},\"productId\":77}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:04:29', '7');
INSERT INTO `sys_oper_log` VALUES ('431', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":321,\"md\":\"/profile/upload/2024/10/16/tea01_20241016100555A016.jpg\",\"params\":{},\"productId\":87}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:05:57', '9');
INSERT INTO `sys_oper_log` VALUES ('432', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":322,\"md\":\"/profile/upload/2024/10/16/tea02_20241016100603A017.jpg\",\"params\":{},\"productId\":88}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:06:04', '6');
INSERT INTO `sys_oper_log` VALUES ('433', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":323,\"md\":\"/profile/upload/2024/10/16/tea03_20241016100610A018.jpg\",\"params\":{},\"productId\":89}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:06:13', '7');
INSERT INTO `sys_oper_log` VALUES ('434', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":324,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100647A019.jpg\",\"params\":{},\"productId\":90}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:06:48', '7');
INSERT INTO `sys_oper_log` VALUES ('435', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":325,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100654A020.jpg\",\"params\":{},\"productId\":91}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:06:56', '5');
INSERT INTO `sys_oper_log` VALUES ('436', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":326,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100701A021.jpg\",\"params\":{},\"productId\":92}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:02', '6');
INSERT INTO `sys_oper_log` VALUES ('437', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":327,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100711A022.jpg\",\"params\":{},\"productId\":93}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:12', '6');
INSERT INTO `sys_oper_log` VALUES ('438', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":328,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100717A023.jpg\",\"params\":{},\"productId\":95}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:18', '5');
INSERT INTO `sys_oper_log` VALUES ('439', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":329,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100723A024.jpg\",\"params\":{},\"productId\":94}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:24', '5');
INSERT INTO `sys_oper_log` VALUES ('440', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":330,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100730A025.jpg\",\"params\":{},\"productId\":96}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:31', '5');
INSERT INTO `sys_oper_log` VALUES ('441', '商品图片', '2', 'com.ruoyi.cs.controller.ProductPicController.edit()', 'PUT', '1', 'admin', '研发部门', '/cs/pic', '127.0.0.1', '内网IP', '{\"id\":331,\"md\":\"/profile/upload/2024/10/16/bread01_20241016100736A026.jpg\",\"params\":{},\"productId\":97}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-10-16 10:07:37', '4');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2024-06-05 14:09:57', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2024-06-05 14:09:57', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-06-05 14:09:57', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2024-06-05 14:09:57', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-17 13:59:41', 'admin', '2024-06-05 14:09:57', '', '2024-10-17 13:59:41', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-05 14:09:57', 'admin', '2024-06-05 14:09:57', '', null, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- View structure for v.product
-- ----------------------------
DROP VIEW IF EXISTS `v.product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v.product` AS select `c`.`md` AS `pic`,`a`.`id` AS `id`,`a`.`family_id` AS `family_id`,`a`.`title` AS `title`,`a`.`subtitle` AS `subtitle`,`a`.`price` AS `price`,`a`.`spec` AS `spec`,`a`.`name` AS `name`,`a`.`category` AS `category`,`a`.`details` AS `details`,`a`.`shelf_time` AS `shelf_time`,`a`.`sold_count` AS `sold_count`,`a`.`is_onsale` AS `is_onsale`,`b`.`name` AS `family_name` from ((`cs_product` `a` join `cs_product_family` `b` on((`a`.`family_id` = `b`.`id`))) join `cs_product_pic` `c` on((`a`.`id` = `c`.`product_id`))) ;
