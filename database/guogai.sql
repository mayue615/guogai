# Host: localhost  (Version: 5.5.38)
# Date: 2015-04-04 13:06:52
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "gg_company"
#

DROP TABLE IF EXISTS `gg_company`;
CREATE TABLE `gg_company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "gg_company"
#

/*!40000 ALTER TABLE `gg_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `gg_company` ENABLE KEYS */;

#
# Structure for table "gg_photo"
#

DROP TABLE IF EXISTS `gg_photo`;
CREATE TABLE `gg_photo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "gg_photo"
#

/*!40000 ALTER TABLE `gg_photo` DISABLE KEYS */;
INSERT INTO `gg_photo` VALUES (1,1,NULL);
/*!40000 ALTER TABLE `gg_photo` ENABLE KEYS */;

#
# Structure for table "gg_user"
#

DROP TABLE IF EXISTS `gg_user`;
CREATE TABLE `gg_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `english_name` varchar(255) DEFAULT NULL,
  `chinese_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `login_times` int(11) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "gg_user"
#

/*!40000 ALTER TABLE `gg_user` DISABLE KEYS */;
INSERT INTO `gg_user` VALUES (1,'mayue','Ma Yue','马月','123456','1987-06-15','辽宁','铁岭','member',4,2015,'mayue615@qq.com','18626881652',NULL,NULL),(2,'linianfu','Liu Nianfu','李年富','123456',NULL,NULL,NULL,'member',NULL,NULL,NULL,NULL,NULL,NULL),(3,'liguang','Li Guang','李光','123456','1987-06-15',NULL,NULL,'member',NULL,NULL,'mayue615@qq.com','18626881650','2015-04-04 10:27:48',NULL),(4,'liguang2','Li Guang','李光','123456','1987-06-15',NULL,NULL,'member',NULL,NULL,'mayue615@qq.com','18626881650','2015-04-04 10:29:49',NULL),(5,'h','yue','h','1','1987-06-15',NULL,NULL,'member',NULL,NULL,'yue.4.ma@nsn.com','18626881650','2015-04-04 10:32:48',NULL),(6,'h2','xiaoyue','小月','1','1987-06-15',NULL,NULL,'member',NULL,NULL,'yue.4.ma@nsn.com','18626881650','2015-04-04 10:33:38',NULL),(7,'cuicui','Cuicui','翠翠','1','1987-06-15','','','member',NULL,NULL,'cuicui@nsn.com','13234459880','2015-04-04 10:48:57','./7/551f6b496a25a.png');
/*!40000 ALTER TABLE `gg_user` ENABLE KEYS */;
