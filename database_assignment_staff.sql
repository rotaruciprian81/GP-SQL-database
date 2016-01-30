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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Surname` varchar(45) COLLATE utf8_bin NOT NULL,
  `NIN` varchar(9) COLLATE utf8_bin NOT NULL,
  `Address` varchar(100) COLLATE utf8_bin NOT NULL,
  `PostCode` varchar(10) COLLATE utf8_bin NOT NULL,
  `City` varchar(45) COLLATE utf8_bin NOT NULL,
  `Telephone` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `StaffID_UNIQUE` (`StaffID`),
  KEY `fk_staff_Roles1_idx` (`RoleID`),
  CONSTRAINT `fk_staff_Roles1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This is the staff table where we will store all their details.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sean','Schurman','DE324536T','2877 Grain St','RG4 5DE','Caversham Ward',1773139510,1,'2014-11-28 11:33:14','2014-11-28 11:33:14'),(2,'Celestina','Pince','ED453645t','13 Stockdale St #779','OX14 5QH','Abingdon on Thames',1763475078,1,'2014-11-28 11:33:14','2014-11-28 11:33:14'),(3,'Maira','Karas','RT45678U','9 Cropper St','RH10 1YJ','Northgate Ward',1582839217,2,'2014-11-28 11:33:14','2014-11-28 11:33:14'),(4,'Beth','Barbone','SD347865R','3 Gaskell St','NE30 2NB','Tynemouth Ward',1210926114,2,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(5,'Wei','Nobel','RF567845R','5221 Royston St','ST21 6GA','Eccleshall',1912146880,2,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(6,'Melissia','Slotemaker','TY564378','83 St Johns Lane #43','EH49 7LS','Linlithgow Ward',1515360513,2,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(7,'Letha','Akey','DR456736I','603 Pall Mall','FY3 8ND','Layton Ward',1694424205,3,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(8,'Isaac','Semrad','TY67898U','76 Dawber St #6','SE3 7JY','Blackheath Westcombe Ward',1939738818,3,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(9,'Kristine','Klipfel','NH678544R','3380 Alexander St','CM1 9QQ','Moulsham and Central Ward',1710435506,3,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(10,'Odette','Moussette','SD345678T','216 Lissant St #8','CM6 1DQ','Great Dunmow',1712248851,3,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(11,'Hobert','Panfilov','RT66755U','92 Phythian St #614','TR11 5RR','Gweek',1245353227,3,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(12,'Isadora','Mchughes','HU348756U','792 Queens Rd','M32 8LR','Stretford Ward',1526145485,4,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(13,'Emily','Pogorelc','SA2346G','5196 York St','SS17 8NS','Orsett Ward',1416913482,4,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(14,'Desire','Barresi','TY87655H','428 Kearsley St','CV35 7UA','Hatton',1566985,4,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(15,'Rosalind','Stamps','NM76654C','8 Chestnut St','BB9 6EW','Barrowford',1918999052,4,'2014-11-28 11:33:15','2014-11-28 11:33:15'),(16,'Vernell','Connley','DF569I','998 Roe St #6','NE48 2BX','Bellingham',1954363885,4,'2014-11-28 11:33:15','2014-11-28 11:33:15');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
