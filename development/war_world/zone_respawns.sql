-- MySQL dump 10.13  Distrib 5.5.37, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: dyoxfin
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `zone_respawns`
--

DROP TABLE IF EXISTS `zone_respawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_respawns` (
  `Zone_Respawns_ID` text,
  `RespawnID` int(11) NOT NULL AUTO_INCREMENT,
  `ZoneID` int(11) NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `PinX` smallint(5) unsigned NOT NULL,
  `PinY` smallint(5) unsigned NOT NULL,
  `PinZ` smallint(5) unsigned NOT NULL,
  `WorldO` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`RespawnID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_respawns`
--

LOCK TABLES `zone_respawns` WRITE;
/*!40000 ALTER TABLE `zone_respawns` DISABLE KEYS */;
INSERT INTO `zone_respawns` VALUES ('591904e9-c935-4965-b182-e9879574a107',1,106,1,22535,27200,5192,2092);
/*!40000 ALTER TABLE `zone_respawns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-24  3:47:26
