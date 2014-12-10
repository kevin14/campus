# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.14)
# Database: cpc
# Generation Time: 2014-11-28 12:10:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cpc_area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_area`;

CREATE TABLE `cpc_area` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `area_name` char(30) NOT NULL COMMENT '区名',
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_city`;

CREATE TABLE `cpc_city` (
  `id` int(10) NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table cpc_classify
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_classify`;

CREATE TABLE `cpc_classify` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL,
  `g_nums` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_comments`;

CREATE TABLE `cpc_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `gid` int(10) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `pid` int(10) NOT NULL,
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_goods`;

CREATE TABLE `cpc_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `gname` char(16) NOT NULL,
  `gdesc` text COMMENT '物品描述',
  `gprice` int(10) NOT NULL,
  `mobile` int(15) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '物品状态',
  `place` varchar(20) NOT NULL DEFAULT '0' COMMENT '交易位置',
  `browser_num` int(10) NOT NULL,
  `classify` tinyint(2) NOT NULL,
  `ctime` int(10) NOT NULL,
  `gpic_url` varchar(100) NOT NULL,
  `gpic_url_small` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_pics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_pics`;

CREATE TABLE `cpc_pics` (
  `id` int(10) unsigned NOT NULL,
  `pic_url` char(30) NOT NULL,
  `ctime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cpc_schools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_schools`;

CREATE TABLE `cpc_schools` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `school_name` char(30) NOT NULL,
  `area` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_session`;

CREATE TABLE `cpc_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` char(32) NOT NULL,
  `username` char(16) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uavatar` varchar(100) NOT NULL,
  `schoolid` int(10) unsigned NOT NULL,
  `schoolname` varchar(100) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cpc_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_user`;

CREATE TABLE `cpc_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` char(16) NOT NULL,
  `email` char(100) NOT NULL,
  `password` char(32) NOT NULL,
  `ip` char(15) NOT NULL,
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cpc_userinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cpc_userinfo`;

CREATE TABLE `cpc_userinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uavatar` varchar(255) NOT NULL,
  `schoolId` smallint(5) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
