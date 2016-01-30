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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `HospitalID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Adress` varchar(60) COLLATE utf8_bin NOT NULL,
  `Postcode` varchar(9) COLLATE utf8_bin NOT NULL,
  `City` varchar(45) COLLATE utf8_bin NOT NULL,
  `Profile` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`HospitalID`),
  UNIQUE KEY `HospitalID_UNIQUE` (`HospitalID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table will include all hospital details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Airedale NHS Foundation Trust','Skipton Road','BD20 6TD','Keighley','general'),(2,'Barts Health NHS Trust','80 Newark Street','E1 2ES','London','general'),(3,'Bedford Hospital NHS Trust','Kempston Road','MK42 9DJ','Bedford','general'),(4,'Bolton NHS Foundation Trust','Minerva Road','BL4 0JR','Bolton','general'),(5,'Croydon Health Services NHS Trust','530 London Road','CR7 7YE',' Croydon','general'),(6,'Dartford and Gravesham NHS Trust','Darenth Wood Road','DA2 8DA','Dartford','heart'),(7,'East Cheshire NHS Trust','Victoria Road','SK10 3BL','Macclesfield','ear'),(8,'Ipswich Hospital NHS Trust','Heath Road','IP4 5PD',' Ipswich','heart'),(9,'Lewisham and Greenwich NHS Trust','Lewisham High Street','SE13 6LH','London','general');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:44
