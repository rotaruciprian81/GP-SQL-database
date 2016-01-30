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
-- Table structure for table `prescribed_drugs`
--

DROP TABLE IF EXISTS `prescribed_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescribed_drugs` (
  `PD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PrescritionID` int(11) DEFAULT NULL,
  `Drug_ID` int(11) DEFAULT NULL,
  `Nr_of` int(1) DEFAULT NULL,
  PRIMARY KEY (`PD_ID`),
  UNIQUE KEY `PD_ID_UNIQUE` (`PD_ID`),
  KEY `fk_prescribed_drugs_prescription1_idx` (`PrescritionID`),
  KEY `fk_prescribed_drugs_drugs1_idx` (`Drug_ID`),
  CONSTRAINT `fk_prescribed_drugs_drugs1` FOREIGN KEY (`Drug_ID`) REFERENCES `drugs` (`Drug_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prescribed_drugs_prescription1` FOREIGN KEY (`PrescritionID`) REFERENCES `prescription` (`PrescriptionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescribed_drugs`
--

LOCK TABLES `prescribed_drugs` WRITE;
/*!40000 ALTER TABLE `prescribed_drugs` DISABLE KEYS */;
INSERT INTO `prescribed_drugs` VALUES (8,15,1,3),(9,15,2,2),(10,16,8,6),(11,17,9,4),(12,17,10,1),(13,18,11,1),(14,18,12,2);
/*!40000 ALTER TABLE `prescribed_drugs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:43
