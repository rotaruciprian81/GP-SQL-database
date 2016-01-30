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
-- Table structure for table `nextofkin`
--

DROP TABLE IF EXISTS `nextofkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nextofkin` (
  `NextOfKinID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Surname` varchar(45) COLLATE utf8_bin NOT NULL,
  `Telephone` int(11) NOT NULL,
  `Relation` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NextOfKinID`),
  UNIQUE KEY `NextOfKinID_UNIQUE` (`NextOfKinID`),
  KEY `fk_nextofkin_patients1_idx` (`PatientID`),
  CONSTRAINT `fk_nextofkin_patients1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This is the Next Of Kin table where we will store next of kin details for all patients';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nextofkin`
--

LOCK TABLES `nextofkin` WRITE;
/*!40000 ALTER TABLE `nextofkin` DISABLE KEYS */;
INSERT INTO `nextofkin` VALUES (1,1,'Niesha','Bruch',1874856950,'family'),(2,2,'Rueben','Gastellum',1976755279,'family'),(3,3,'Michell','Throssell',1967580851,'family'),(4,4,'Edgar','Kanne',1326532337,'family'),(5,5,'Dewitt','Julio',1253528327,'family'),(6,6,'Charisse','Spinello',1719831436,'family'),(7,7,'Mee','Lapinski',1578287816,'family'),(8,8,'Peter','Gutierres',1842767201,'friend'),(9,9,'Octavio','Salvadore',1552709248,'family'),(10,10,'Martha','Teplica',1677684257,'family'),(11,11,'Tamesha','Veigel',1217342071,'friend'),(12,12,'Tess','Sitra',1473229124,'family'),(13,13,'Leonard','Kufner',1230623547,'family');
/*!40000 ALTER TABLE `nextofkin` ENABLE KEYS */;
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
