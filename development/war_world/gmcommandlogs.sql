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
-- Table structure for table `gmcommandlogs`
--

DROP TABLE IF EXISTS `gmcommandlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmcommandlogs` (
  `AccountId` int(10) unsigned DEFAULT NULL,
  `PlayerName` varchar(255) DEFAULT NULL,
  `Command` text,
  `Date` datetime DEFAULT NULL,
  `GMCommandLogs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`GMCommandLogs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmcommandlogs`
--

LOCK TABLES `gmcommandlogs` WRITE;
/*!40000 ALTER TABLE `gmcommandlogs` DISABLE KEYS */;
INSERT INTO `gmcommandlogs` VALUES (3,'Testblack','SET LEVEL TO Testblack 40','2014-01-14 02:38:23','052b7257-955d-42b3-ac38-ae769d0b1651'),(3,'Diciple','SET LEVEL TO Diciple 6','2013-12-23 04:52:17','0740f40f-a9d5-42ff-b792-5df4f4b96b50'),(3,'Shamou','REZ PLAYER Shamou','2014-01-03 23:43:35','077b97d8-322e-4f29-8e7a-496fd3adc1a6'),(3,'Ddyox','ADD XP TO Ddyox 1500','2013-12-24 05:31:45','09679f93-3fd1-4a57-a928-6d58ca13a764'),(3,'Dyox','REMOVE CREATURE 116 275757 AT 100 848296 829953','2013-12-22 12:23:54','0d3b19ce-0281-41de-8196-cf7d3a5538d7'),(3,'Discipletest','ADD XP TO Discipletest 50000','2014-01-14 05:53:18','0ddadca3-8259-44a5-8b4a-0829cf1ce5ae'),(3,'Diciple','SET LEVEL TO Diciple 6','2013-12-23 04:43:54','11c2605c-86fb-4ed0-9012-db5812df4182'),(3,'Ddyox','ADD XP TO Ddyox 500','2013-12-24 05:52:25','14019292-288f-472c-99b9-ecd849fb5e71'),(3,'Ddyox','SET LEVEL TO Ddyox 4','2013-12-24 05:34:21','14e2f9b5-94b9-4479-9b6c-fbb1834d0575'),(3,'Ddyox','ADD XP TO Ddyox 1000','2013-12-24 05:33:57','18fe707d-aa75-4125-a4c1-9e39f2b8de14'),(3,'Dyox','SPAWN CREATURE 116 275757 AT 100 848296 829953','2013-12-22 12:23:45','1c165d00-7f58-4d33-95bf-c1a970b821da'),(3,'Blacorrr','SET LEVEL TO Blacorrr 40','2014-01-13 06:14:43','2b4a802c-9d49-4bc3-a007-2acbfdc0a46f'),(3,'Diciple','ADD XP TO Diciple 5000','2013-12-23 03:17:52','2cb94be8-4242-4c5c-9053-1e7d7ee48a61'),(3,'Ttesqtefe','SPAWN CREATURE 288 275757 AT 100 851203 827602','2014-01-12 00:52:35','30b2ce75-1eab-4156-82d9-2649634d202a'),(3,'Testdiscilple','SET LEVEL TO Testdiscilple 40','2014-01-14 01:37:04','34d2249d-41d2-4577-9ec2-29986f905f95'),(3,'Diciple','ADD XP TO Diciple 4000','2013-12-23 04:41:05','35bb71f1-1607-490b-bd50-f0cc257ed07e'),(3,'Brighttest','REZ PLAYER Brighttest','2014-01-13 00:14:42','3adbf6e6-3191-4875-99c1-b08b92288e64'),(3,'Testshamoux','SET LEVEL TO Testshamoux 10','2014-01-11 06:33:22','3f8bb1cc-224b-4616-97fe-b24215774d4b'),(3,'Diciple','SET LEVEL TO Diciple 7','2013-12-23 04:52:11','429e95b4-49b9-482e-bfa0-b614f531c5b8'),(3,'Testamor','ADD XP TO Testamor 50000','2014-01-03 23:58:54','443acf8d-ce50-400c-a579-f1b4dd72f614'),(3,'Ddyox','SET LEVEL TO Ddyox 3','2013-12-24 05:34:18','4489de50-4840-4c03-9a63-cd9ef29481c2'),(3,'Ddyox','ADD XP TO Ddyox 5000','2013-12-24 05:52:28','4674cc6c-e306-4b47-9c01-9042a812c9a9'),(3,'Shamou','REZ PLAYER Shamou','2014-01-03 23:44:43','4769b37f-058c-4c7d-b806-bbba55586571'),(3,'Berserk','REZ PLAYER Berserk','2014-01-03 11:21:18','49a4652f-0df6-43c8-928b-58d11d24245e'),(3,'Shamou','REZ PLAYER Shamou','2014-01-03 23:42:42','4af558c3-ff23-4f2e-9481-9f8e5d739ddb'),(3,'Discipletest','ADD XP TO Discipletest 50000','2014-02-12 22:31:26','4bff21db-6635-468e-8008-be286707e0fc'),(3,'Discipletest','KILL PLAYER Witchtest','2014-01-14 05:54:27','4d3ca971-2a74-4e61-8de0-43986cbad468'),(3,'Diciple','SET LEVEL TO Diciple 5','2013-12-23 04:52:13','5358d310-8e43-44c7-8059-ae1c75a15db1'),(3,'Testamor','REZ PLAYER Testamor','2014-01-04 00:00:48','574e86bd-768e-45a5-8633-da05718ea762'),(3,'Test','SET LEVEL TO Test 2','2013-12-23 09:22:10','59553243-6cd6-415d-8617-fad5f60df9c1'),(3,'Orcpacolypse','ADD ITEM TO Orcpacolypse 188922 1','2013-12-24 02:39:05','64d76d63-40f4-493a-99da-63086e496267'),(3,'Testest','REZ PLAYER Testest','2014-01-11 02:33:48','6b266a6e-a8af-4df2-bfbd-7a4162b45dbc'),(3,'Discipletest','ADD XP TO Discipletest 500000','2014-01-14 05:53:28','7586bcbd-bf01-4bcd-bf9b-13e62abaa583'),(3,'Swordmaster','SET LEVEL TO Swordmaster 2','2013-12-23 11:08:12','791ec070-20f8-4c90-811d-9ce0d12dcc85'),(3,'Ddyox','ADD XP TO Ddyox 5000','2013-12-24 05:52:48','796dc76d-8c48-44f3-aa6a-feff42faa9f1'),(60,'Tthomas','APPEAR PLAYER Shamou TO 100 848006 832172','2014-01-03 20:09:56','7eadb4db-f279-4f0a-8a23-e8cb0ca51369'),(3,'Testamor','REZ PLAYER Testamor','2014-01-04 00:00:06','840ecd61-4e5d-420d-b8aa-0cca8f130e20'),(3,'Testamor','REZ PLAYER Testamor','2014-01-03 23:52:46','8449ba7d-69d9-4bad-b690-1fa621bfc0c7'),(3,'Testshamoux','ADD XP TO Testshamoux 50000','2014-01-13 00:22:23','84c5f4d4-6083-42f8-a483-f81c383a071d'),(3,'Ddyox','ADD XP TO Ddyox 500','2013-12-24 05:31:38','85f5a244-0925-4ff9-b320-d968d07cace7'),(3,'Ddyox','SET LEVEL TO Ddyox 1','2013-12-24 05:52:22','85f633a5-7ede-41c8-84dd-33283d942d19'),(3,'Shamannnn','REZ PLAYER Shamannnn','2014-01-12 20:08:12','8a1345e1-2873-4e91-b119-a26c100391ea'),(3,'Shamou','ADD XP TO Shamou 20400','2014-01-03 20:03:05','8b549a9a-b9e4-4e6b-a29b-2e034f989809'),(3,'Ddyox','ADD XP TO Ddyox 5000','2013-12-24 05:33:49','8c886084-aa46-43af-9d32-cdb79b1cfc0f'),(3,'Chopassstest','SET LEVEL TO Chopassstest 40','2014-01-13 06:44:59','8e2b0c2e-110b-4ad1-9ede-69da03e48dfc'),(3,'Healertest','REZ PLAYER Healertest','2014-01-11 06:31:07','8fcb9be8-bf6f-43a0-9c54-fe97b9a3b46d'),(3,'Ddyox','SET RENOWN TO Ddyox 2','2013-12-24 05:49:31','a0fae97e-1235-4aff-90e9-1593ed08e8af'),(3,'Discipletest','KILL PLAYER Witchtest','2014-01-14 05:54:47','a6057aab-63d2-4db1-b8c0-b110786f0ff4'),(3,'Shamannnn','REZ PLAYER Shamannnn','2014-01-12 21:14:50','a807f929-c8ad-4d15-819d-3d50276cf887'),(3,'Testkinght','SET LEVEL TO Testkinght 40','2014-01-14 04:57:58','ae18d0d0-7501-4aff-95bf-403d249cb231'),(3,'Healertest','KILL PLAYER Healertest','2014-01-11 06:30:48','b0c86146-8c08-4a5f-ad56-85813f17a605'),(3,'Diciple','ADD XP TO Diciple 14000','2013-12-23 04:42:44','b6f769c1-b63a-4250-877f-6be2c7aada0d'),(3,'Diciple','SET LEVEL TO Diciple 5','2013-12-23 04:41:29','c035f2ed-bbbd-41f9-a342-8b0611d9d97d'),(3,'Diciple','SET LEVEL TO Diciple 7','2013-12-23 05:01:01','c07b271b-5813-4f2c-8dac-fb479b3eda7d'),(60,'Tthomas','REZ PLAYER Tthomas','2014-01-11 23:35:20','c6033b09-09ac-48cd-9fe2-d609635bafe8'),(3,'Ddyox','ADD XP TO Ddyox 1500','2013-12-24 05:31:42','c8bc28d0-f2ec-4c13-b35e-546211b6d972'),(3,'Diciple','ADD XP TO Diciple 20000','2013-12-23 04:52:00','ca36acc9-14e5-4da6-b439-6bee56d4d04d'),(3,'Diciple','SET LEVEL TO Diciple 50','2013-12-23 04:41:26','ce6e69e8-ef27-43db-910a-4b43aa4f11c9'),(3,'Test','SPAWN CREATURE 116 275756 AT 106 837299 936419','2013-12-22 11:58:56','d6ee2eb7-906d-4be1-a9b3-c5bf98e1d20d'),(3,'Ddyox','SET LEVEL TO Ddyox 38','2013-12-24 05:52:19','db6f7b20-5e53-4558-b6c8-90201cb7b912'),(3,'Testshamoux','SET LEVEL TO Testshamoux 40','2014-01-13 04:39:45','dc7db6c3-c08e-4b9c-885c-6d7b7224ce4d'),(3,'Diciple','ADD XP TO Diciple 200','2013-12-23 04:52:04','df0e5d8b-2d87-40f3-9f83-7ef5024bcda1'),(3,'Shamannnn','ADD XP TO Shamannnn 50000','2014-01-12 16:54:05','e15fcf76-d9b6-4e83-a31e-14477cff2ab2'),(3,'Ttesqtefe','REZ PLAYER Ttesqtefe','2014-01-12 00:58:19','e32bf4ea-f80f-4f6f-aa91-b43fc90394c3'),(3,'Dyox','SET LEVEL TO Dyox 40','2013-12-23 06:59:22','e439a2e2-2c19-4e07-8064-9cd0c5505646'),(3,'Diciple','ADD RENOWN TO Diciple 500','2013-12-23 04:22:08','e43b3b0c-dd7b-4e27-a404-d60bf471ad59'),(3,'Berserk','KILL PLAYER Berserk','2014-01-03 11:20:58','e6268d10-8035-45e1-9269-fed2efbf8305'),(3,'Brighttest','REZ PLAYER Brighttest','2014-01-13 00:19:10','e665a383-4824-4074-9357-32484179f7e6'),(3,'Ddyox','SET LEVEL TO Ddyox 40','2013-12-24 05:52:16','ea186e68-c6ca-4e66-8da9-ed226e608706'),(3,'Ddyox','SET LEVEL TO Ddyox 40','2013-12-24 05:49:42','ec933639-a0ad-4834-8e4d-5ddbd6e86244'),(3,'Ddyox','SET LEVEL TO Ddyox 39','2013-12-24 05:49:51','f004c936-da94-4489-9861-d64be76c2da8'),(3,'Ddyox','SET LEVEL TO Ddyox 5','2013-12-24 05:49:36','f2c77835-d24d-4567-bab3-95533f12fc23'),(3,'Shamou','SET LEVEL TO Shamou 5','2014-01-03 20:01:54','f3cb782d-fc81-4017-bc27-28b20678ee0c'),(3,'Diciple','SET LEVEL TO Diciple 5','2013-12-23 04:43:51','fd89413c-c377-4c00-8e00-645f9a0dcc5c');
/*!40000 ALTER TABLE `gmcommandlogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-24  3:47:22
