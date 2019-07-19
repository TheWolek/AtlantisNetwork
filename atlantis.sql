/*
REkonstrukcja struktury SQL, wyczyszczone inserty, powinno działac - DonTheDev
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `crimecategories`
-- ----------------------------
DROP TABLE IF EXISTS `crimecategories`;
CREATE TABLE `crimecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `crimeclasses`
-- ----------------------------
DROP TABLE IF EXISTS `crimeclasses`;
CREATE TABLE `crimeclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `punishment` int(15) NOT NULL,
  `maxpunishment` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `crimes`
-- ----------------------------
DROP TABLE IF EXISTS `crimes`;
CREATE TABLE `crimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `garage`
-- ----------------------------
DROP TABLE IF EXISTS `garage`;
CREATE TABLE `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `finish` varchar(45) DEFAULT NULL,
  `rims` varchar(45) DEFAULT NULL,
  `windows` varchar(45) DEFAULT NULL,
  `lights` varchar(45) DEFAULT NULL,
  `spoiler` varchar(45) NOT NULL,
  `fuel` varchar(45) NOT NULL,
  `damage` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicleID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65316 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `general`;
CREATE TABLE `general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(255) NOT NULL,
  `license` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3238 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=631909 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `idmail` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `readmail` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmail`),
  UNIQUE KEY `idmail_UNIQUE` (`idmail`)
) ENGINE=InnoDB AUTO_INCREMENT=20663 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `idmessages` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmessages`),
  UNIQUE KEY `idmessages_UNIQUE` (`idmessages`)
) ENGINE=InnoDB AUTO_INCREMENT=61836 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `racetimes`;
CREATE TABLE `racetimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `rallyracetimes`;
CREATE TABLE `rallyracetimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `bankaccount` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `battleyeid` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cash` decimal(13,2) DEFAULT NULL,
  `bank` decimal(13,2) DEFAULT NULL,
  `cop` int(13) DEFAULT NULL,
  `ems` int(13) DEFAULT NULL,
  `mafia` int(13) DEFAULT NULL,
  `legal` int(13) DEFAULT NULL,
  `fire` int(13) DEFAULT NULL,
  `mobster` int(13) DEFAULT NULL,
  `biker` int(13) DEFAULT NULL,
  `dmv` int(13) DEFAULT NULL,
  `doc` int(13) DEFAULT NULL,
  `da` int(13) DEFAULT NULL,
  `admin` int(13) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `items` varchar(1500) DEFAULT NULL,
  `phoneBackground` varchar(55) DEFAULT NULL,
  `messages` varchar(2500) DEFAULT NULL,
  `statuses` varchar(2500) DEFAULT NULL,
  `houselevel` int(11) DEFAULT NULL,
  `housecontent` varchar(10000) DEFAULT NULL,
  `shopcontent` varchar(10000) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT NULL,
  `prison` varchar(45) DEFAULT NULL,
  `prisonreason` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bankaccount`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1334 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `caseID` int(10) NOT NULL AUTO_INCREMENT,
  `suspect` varchar(45) DEFAULT NULL,
  `suspectGUID` varchar(45) DEFAULT NULL,
  `officer` varchar(45) DEFAULT NULL,
  `officerGUID` varchar(45) DEFAULT NULL,
  `approved` varchar(45) DEFAULT NULL,
  `approvedGUID` varchar(45) DEFAULT NULL,
  `closed` varchar(45) DEFAULT NULL,
  `closedGUID` varchar(45) DEFAULT NULL,
  `charges` varchar(3000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `evidence` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `jailtime` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`caseID`),
  UNIQUE KEY `caseID_UNIQUE` (`caseID`)
) ENGINE=InnoDB AUTO_INCREMENT=16001 DEFAULT CHARSET=utf8;

