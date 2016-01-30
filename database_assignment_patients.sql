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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Surname` varchar(45) COLLATE utf8_bin NOT NULL,
  `NIN` varchar(9) COLLATE utf8_bin NOT NULL,
  `Adress` varchar(60) COLLATE utf8_bin NOT NULL,
  `Postcode` varchar(8) COLLATE utf8_bin NOT NULL,
  `City` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `DOB` date NOT NULL,
  `Telephone` int(11) NOT NULL,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `PatientID_UNIQUE` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This is the Patients table which will include all the patients details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Aleshia','Tomkiewicz','SD345678Y','14 Taylor St','CT2 7PP','St. Stephens Ward','1982-11-25',1835703597,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(2,'Evan','Zigomalas','FG456323D','5 Binney St','HP11 2AX','Abbey Ward','1984-05-17',1937864715,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(3,'France','Andrade','CV340167J','8 Moor Place','BH6 3BE','East Southbourne and Tuckton W','1974-02-02',1347368222,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(4,'Ulysses','Mcwalters','CM453627J','505 Exeter Rd','DN36 5RP','Greets Green and Lyng Ward','2001-08-21',1547429341,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(5,'Eric','Rampy','NH763497K','9472 Lind St','NN14 2GH','Desborough','1981-11-11',1969886290,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(6,'Marg','Grasmick','MT132547I','5396 Forth Street','SO14 3TY','Bargate Ward','1976-03-21',1865582516,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(7,'Laquita','Hisaw','HC461839O','20 Gloucester Pl #96','NE29 7AD','Chirton Ward','1978-02-09',1746394243,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(8,'Lura','Manzella','TY654732R','929 Augustine St','BS16 4LL','Staple Hill Ward','0186-05-05',1907538509,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(9,'Yuette','Klapec','KL856743I','45 Bradfield St #166','DE6 1QN','Parwich','1973-03-11',1903649460,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(10,'Fernanda','Writer','BA348743T','620 Northampton St','DA2 7PP','Wilmington','1982-07-09',1630202053,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(11,'Charlesetta','Erm','ZX349467Y','5 Hygeia St','S40 4LY','Loundsley Green Ward','1995-07-06',1276816806,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(12,'Corrinne','Jaret','NR132435I','2150 Morley St','DG8 7DE','Dee Ward','2002-05-08',1625932209,'2014-11-28 09:58:58','2014-11-28 09:58:58'),(13,'Niesha','Bruch','IL900646O','24 Bolton St','EH52 5TL','Broxburn, Uphall and Winchburg','1996-07-09',1874856950,'2014-11-28 10:00:34','2014-11-28 10:00:34');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
