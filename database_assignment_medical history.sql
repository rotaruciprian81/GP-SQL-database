CREATE DATABASE  IF NOT EXISTS `database_assignment` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `database_assignment`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: database_assignment
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `medical history`
--

DROP TABLE IF EXISTS `medical history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical history` (
  `HistoryID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `Details` text COLLATE utf8_bin,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`HistoryID`),
  UNIQUE KEY `HistoryID_UNIQUE` (`HistoryID`),
  KEY `fk_medical history_patients1_idx` (`PatientID`),
  CONSTRAINT `fk_medical history_patients1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical history`
--

LOCK TABLES `medical history` WRITE;
/*!40000 ALTER TABLE `medical history` DISABLE KEYS */;
INSERT INTO `medical history` VALUES (11,1,'gsdgs gsgs gsgsg','2014-11-29 10:55:03','2014-11-29 10:55:03'),(12,2,'tru jtgf fg gfhgf','2014-11-29 10:55:03','2014-11-29 10:55:03'),(13,3,'wet wetgdfdfh r ','2014-11-29 10:55:03','2014-11-29 10:55:03'),(14,4,'th rt hr ge ','2014-11-29 10:55:03','2014-11-29 10:55:03'),(15,5,'erryrt ','2014-11-29 10:55:04','2014-11-29 10:55:04'),(16,6,'erter hgfb hh','2014-11-29 10:55:04','2014-11-29 10:55:04'),(17,7,' etyhdhr breg d','2014-11-29 10:55:04','2014-11-29 10:55:04'),(18,8,'erg fd gge gre','2014-11-29 10:55:04','2014-11-29 10:55:04'),(19,9,'reyer greg re','2014-11-29 10:55:04','2014-11-29 10:55:04'),(20,10,' greg evr e gre','2014-11-29 10:55:04','2014-11-29 10:55:04'),(21,11,'ert gr gre tregre','2014-11-29 10:55:04','2014-11-29 10:55:04'),(22,12,'erg drgre','2014-11-29 10:55:04','2014-11-29 10:55:04'),(23,13,'e greger ','2014-11-29 10:55:04','2014-11-29 10:55:04');
/*!40000 ALTER TABLE `medical history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:42
