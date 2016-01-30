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
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugs` (
  `Drug_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Drug_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Drug_price` double(3,2) DEFAULT NULL,
  PRIMARY KEY (`Drug_ID`),
  UNIQUE KEY `DrugsID_UNIQUE` (`Drug_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,'Paracetamol',4.22),(2,'Bioxsine Series',5.41),(3,'Standardized Grass Pollen, Grass Mix 5',8.98),(4,'Quick Relief Creamy Diaper Rash',6.40),(5,'Tizanidine',2.29),(6,'Solutions',9.99),(7,'Cyproheptadine Hydrochloride',8.64),(8,'GAMMAGARD S/D',5.29),(9,'Levothyroxine Sodium',7.85),(10,'CYZONE',6.22),(11,'Mucinex DM',4.40),(12,'Mucus Relief',5.89),(13,'Parinum 40 (Number 57)',9.99),(14,'POPULUS ALBA POLLEN',9.99),(15,'Medulla Arnica',4.58),(16,'DEFEND Cough',9.87),(17,'Motion Sickness',4.56),(18,'PRENATE DHA',4.85),(19,'Anti-Bacterial Hand',7.22),(20,'Ladys Choice Invisible Solid',8.99),(21,'Gemcitabine hydrochloride',2.23),(22,'FAMILY CARE HYDROCORTISONE',2.44),(23,'Amitiza',5.75),(24,'SHISEIDO ADVANCED HYDRO-LIQUID COMPACT (REFIL',9.99),(25,'NITROGEN',8.55),(26,'SODIUM SULFACETAMIDE, SULFUR',9.99),(27,'Metolazone',4.57),(28,'LBEL EFFET PARFAIT Spots Reducing Effect Foun',9.89),(29,'Noble Lion Medicated Balm',4.32),(30,'Dextroamphetamine Saccharate, Amphetamine Asp',7.89),(31,'Pain Relief',5.48);
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
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
