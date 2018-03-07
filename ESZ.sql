-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.20-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 chris 的数据库结构
CREATE DATABASE IF NOT EXISTS `chris` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `chris`;


-- 导出  表 chris.goods 结构
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_type_id` int(11) NOT NULL,
  `goods_type_name` varchar(50) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `goods_name` varchar(40) DEFAULT NULL,
  `goods_description` varchar(255) DEFAULT NULL,
  `goods_price` int(11) DEFAULT NULL,
  `goods_pic_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  chris.goods 的数据：~8 rows (大约)
DELETE FROM `goods`;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`goods_id`, `goods_type_id`, `goods_type_name`, `goods_num`, `goods_name`, `goods_description`, `goods_price`, `goods_pic_url`) VALUES
	(1, 1, '文具', 10, '书签', NULL, 3, 'shuqian.png'),
	(2, 1, '文具', 10, '钢笔', NULL, 20, 'gangbi.png'),
	(3, 1, '文具', 10, '黑色中性笔', NULL, 3, 'zhongxing.png'),
	(4, 1, '文具', 10, '文具盒', NULL, 10, 'bidai.png'),
	(5, 1, '文具', 10, '胶带', NULL, 3, 'jiaodai.png'),
	(6, 1, '文具', 10, '胶水', NULL, 3, 'jiaoshui.png'),
	(7, 2, '电子', 10, '数据线', NULL, 15, 'shujuxian.png'),
	(8, 3, '医护', 10, '手套', NULL, 10, 'shoutao.png');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;


-- 导出  表 chris.indent 结构
CREATE TABLE IF NOT EXISTS `indent` (
  `indent_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `indent_num` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `modify_time` date NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`indent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  chris.indent 的数据：~2 rows (大约)
DELETE FROM `indent`;
/*!40000 ALTER TABLE `indent` DISABLE KEYS */;
INSERT INTO `indent` (`indent_id`, `user_id`, `indent_num`, `price`, `name`, `address`, `state`, `modify_time`, `create_time`) VALUES
	(1, 6, '1520318813691', 215, '二傻子', '傻子帝国', '1', '2018-03-06', '2018-03-06'),
	(2, 6, '1520327861331', 54, '二傻子', '傻子帝国', '1', '2018-03-06', '2018-03-06'),
	(3, 6, '1520332435736', 150, '二傻子', '傻子帝国', '1', '2018-03-06', '2018-03-06');
/*!40000 ALTER TABLE `indent` ENABLE KEYS */;


-- 导出  表 chris.shop_car 结构
CREATE TABLE IF NOT EXISTS `shop_car` (
  `shopcar_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT '0',
  `user_nick` varchar(40) DEFAULT NULL,
  `modify_time` date DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`shopcar_id`),
  UNIQUE KEY `userId` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  chris.shop_car 的数据：~0 rows (大约)
DELETE FROM `shop_car`;
/*!40000 ALTER TABLE `shop_car` DISABLE KEYS */;
INSERT INTO `shop_car` (`shopcar_id`, `user_id`, `total_price`, `user_nick`, `modify_time`, `create_time`) VALUES
	(1, 6, 203, '二傻子', '2018-03-06', '2018-01-05');
/*!40000 ALTER TABLE `shop_car` ENABLE KEYS */;


-- 导出  表 chris.shop_order 结构
CREATE TABLE IF NOT EXISTS `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shopcar_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(40) DEFAULT NULL,
  `goods_type_id` int(11) DEFAULT NULL,
  `goods_type_name` varchar(40) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modify_time` date DEFAULT NULL,
  `state_num` int(11) DEFAULT NULL,
  `indent_num` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  chris.shop_order 的数据：~6 rows (大约)
DELETE FROM `shop_order`;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` (`order_id`, `order_num`, `user_id`, `shopcar_id`, `goods_id`, `goods_name`, `goods_type_id`, `goods_type_name`, `goods_num`, `goods_price`, `total_price`, `create_time`, `modify_time`, `state_num`, `indent_num`) VALUES
	(1, 0, 6, 1, 1, '书签', NULL, NULL, 1, 3, 3, '2018-01-10', '2018-01-10', NULL, NULL),
	(2, 0, 6, 1, 2, '钢笔', NULL, NULL, 10, 20, 200, '2018-01-10', '2018-01-10', NULL, NULL),
	(3, NULL, 6, 1, 2, '钢笔', 1, '文具', 10, 20, 200, '2018-03-06', '2018-03-06', 2, '1520318813691'),
	(4, NULL, 6, 1, 3, '黑色中性笔', 1, '文具', 5, 3, 15, '2018-03-06', '2018-03-06', 2, '1520318813691'),
	(5, NULL, 6, 1, 1, '书签', 1, '文具', 8, 3, 24, '2018-03-06', '2018-03-06', 2, '1520327861331'),
	(6, NULL, 6, 1, 7, '数据线', 2, '电子', 10, 15, 150, '2018-03-06', '2018-03-06', 2, '1520332435736'),
	(7, NULL, 6, 1, 8, '手套', 3, '医护', 3, 10, 30, '2018-03-06', '2018-03-06', 2, '1520327861331');
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;


-- 导出  表 chris.type 结构
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  chris.type 的数据：~3 rows (大约)
DELETE FROM `type`;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`type_id`, `type_name`) VALUES
	(1, '文具'),
	(2, '电子'),
	(3, '医护');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;


-- 导出  表 chris.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `modify_time` date DEFAULT NULL,
  `user_name` char(40) DEFAULT NULL,
  `user_phone` char(40) DEFAULT NULL,
  `user_email` char(40) DEFAULT NULL,
  `user_pwd` char(40) DEFAULT NULL,
  `nick_name` varchar(40) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_introduce` varchar(255) DEFAULT NULL,
  `user_age` varchar(20) DEFAULT NULL,
  `user_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  chris.t_user 的数据：~12 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `create_time`, `modify_time`, `user_name`, `user_phone`, `user_email`, `user_pwd`, `nick_name`, `user_address`, `user_introduce`, `user_age`, `user_price`) VALUES
	(2, '2017-12-21', '2017-12-21', '2', NULL, '1', '3', NULL, NULL, NULL, NULL, NULL),
	(3, '2017-12-21', '2017-12-21', '1', NULL, '1', '3', NULL, NULL, NULL, NULL, NULL),
	(4, '2017-12-22', '2017-12-22', '132', '33333', '123', '123', NULL, NULL, NULL, NULL, NULL),
	(5, '2017-12-22', '2017-12-22', '22', '44', '11', '33', '阿三三', NULL, NULL, NULL, NULL),
	(6, '2017-12-22', '2018-03-06', '123', '123123123', '123123', '123', '二傻子', '傻子帝国', '5566', '200', 1000),
	(7, '2017-12-26', '2017-12-26', '', '123333', '', '', '', NULL, NULL, NULL, NULL),
	(8, '2017-12-26', '2017-12-26', '', '13', '', '', '', NULL, NULL, NULL, NULL),
	(9, '2017-12-26', '2017-12-26', '133', '3', '', '', '', NULL, NULL, NULL, NULL),
	(10, '2017-12-27', '2017-12-27', '3333333', '33333333333', '333333', '3333', '', NULL, NULL, NULL, NULL),
	(11, '2017-12-27', '2017-12-27', '3333', '333333333', '111', '333', '1', NULL, NULL, NULL, NULL),
	(12, '2017-12-27', '2017-12-27', '3333', '333333333', '111', '333', '1', NULL, NULL, NULL, NULL),
	(13, '2017-12-28', '2017-12-29', '1234', '12312312312', 'aa@sina.com', '1234', '旺仔牛奶', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
