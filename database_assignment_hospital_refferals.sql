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
-- Table structure for table `hospital_refferals`
--

DROP TABLE IF EXISTS `hospital_refferals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_refferals` (
  `RefferalID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_and_time` datetime NOT NULL,
  `HospitalID` int(11) NOT NULL,
  `Details` text COLLATE utf8_bin,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`RefferalID`),
  UNIQUE KEY `RefferalID_UNIQUE` (`RefferalID`),
  KEY `fk_hospital_refferals_hospitals1_idx` (`HospitalID`),
  KEY `fk_hospital_refferals_appointment_event1_idx` (`EventID`),
  CONSTRAINT `fk_hospital_refferals_appointment_event1` FOREIGN KEY (`EventID`) REFERENCES `appointment_event` (`EventID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hospital_refferals_hospitals1` FOREIGN KEY (`HospitalID`) REFERENCES `hospitals` (`HospitalID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_refferals`
--

LOCK TABLES `hospital_refferals` WRITE;
/*!40000 ALTER TABLE `hospital_refferals` DISABLE KEYS */;
INSERT INTO `hospital_refferals` VALUES (8,'2014-12-10 09:30:00',1,'none','2014-11-30 13:50:53','2014-11-30 13:50:53',9),(9,'2014-12-11 10:00:00',2,'none','2014-11-30 13:50:53','2014-11-30 13:50:53',10),(10,'2014-12-11 10:30:00',3,'none','2014-11-30 13:50:53','2014-11-30 13:50:53',11),(11,'2014-12-12 11:00:00',4,'none','2014-11-30 13:50:53','2014-11-30 13:50:53',12);
/*!40000 ALTER TABLE `hospital_refferals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:45
