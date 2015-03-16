# Host: localhost  (Version: 5.5.38)
# Date: 2015-03-16 20:30:44
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
# Structure for table "gg_user"
#

DROP TABLE IF EXISTS `gg_user`;
CREATE TABLE `gg_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `dis_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `login_times` int(11) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "gg_user"
#

/*!40000 ALTER TABLE `gg_user` DISABLE KEYS */;
INSERT INTO `gg_user` VALUES (1,'mayue','马月','123456','1987-06-15','辽宁','铁岭','member',4,2015,'mayue615@qq.com','18626881652'),(2,'linianfu','李年富','123456',NULL,NULL,NULL,'member',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `gg_user` ENABLE KEYS */;
