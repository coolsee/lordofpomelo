-- MySQL dump 10.13  Distrib 5.5.25a, for Win32 (x86)
--
-- Host: localhost    Database: Pomelo
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bag`
--

DROP TABLE IF EXISTS `bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `playerId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `items` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '{}',
  `itemCount` smallint(6) unsigned DEFAULT '8',
  PRIMARY KEY (`id`),
  KEY `INDEX_PLAYER_ID` (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag`
--

LOCK TABLES `bag` WRITE;
/*!40000 ALTER TABLE `bag` DISABLE KEYS */;
/*!40000 ALTER TABLE `bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `playerId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(6) unsigned DEFAULT '0',
  `armor` smallint(6) unsigned DEFAULT '0',
  `helmet` smallint(6) unsigned DEFAULT '0',
  `necklace` smallint(6) unsigned DEFAULT '0',
  `ring` smallint(6) unsigned DEFAULT '0',
  `belt` smallint(6) unsigned DEFAULT '0',
  `shoes` smallint(6) unsigned DEFAULT '0',
  `amulet` smallint(6) DEFAULT NULL,
  `legguard` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `INDEX_PLAYER_ID` (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fightskill`
--

DROP TABLE IF EXISTS `fightskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fightskill` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `playerId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skillId` smallint(6) unsigned DEFAULT '0',
  `level` smallint(6) unsigned DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `INDEX_PLAYER_ID` (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fightskill`
--

LOCK TABLES `fightskill` WRITE;
/*!40000 ALTER TABLE `fightskill` DISABLE KEYS */;
/*!40000 ALTER TABLE `fightskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `kindId` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0002',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` smallint(6) unsigned DEFAULT '0',
  `rank` smallint(6) unsigned DEFAULT '1' COMMENT 'dfsfds',
  `level` smallint(6) unsigned DEFAULT '1',
  `experience` smallint(11) unsigned DEFAULT '0',
  `attackValue` smallint(6) unsigned DEFAULT '0',
  `defenceValue` smallint(6) unsigned DEFAULT '0',
  `hitRate` smallint(6) unsigned DEFAULT '0',
  `dodgeRate` smallint(6) unsigned DEFAULT '0',
  `walkSpeed` smallint(6) unsigned DEFAULT '0',
  `attackSpeed` smallint(6) unsigned DEFAULT '0',
  `hp` smallint(6) unsigned DEFAULT '0',
  `mp` smallint(6) unsigned DEFAULT '0',
  `maxHp` smallint(6) unsigned DEFAULT '0',
  `maxMp` smallint(6) unsigned DEFAULT '0',
  `areaId` bigint(20) unsigned DEFAULT '1',
  `x` int(10) unsigned DEFAULT '0',
  `y` int(10) unsigned DEFAULT '0',
  `kindName` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'god soilder',
  `skillPoint` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_GAME_NAME` (`name`),
  KEY `INDEX_PALYER_USER_ID` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `playerId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `kindId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taskState` smallint(6) unsigned DEFAULT '0',
  `startTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `taskData` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '{}',
  PRIMARY KEY (`id`),
  KEY `INDEX_TASK_ID` (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `loginCount` smallint(6) unsigned DEFAULT '0',
  `from` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLoginTime` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_ACCOUNT_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-17 22:13:46
