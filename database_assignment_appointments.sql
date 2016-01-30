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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `AppointmentID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `StaffID` int(11) NOT NULL,
  `RoomID` int(11) DEFAULT NULL,
  `A_Date` date NOT NULL,
  `A_Time` time DEFAULT NULL,
  `Lenght` time DEFAULT NULL,
  `Reason` text COLLATE utf8_bin,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AppointmentID`),
  UNIQUE KEY `AppointmentID_UNIQUE` (`AppointmentID`),
  KEY `fk_appointments_patients1_idx` (`PatientID`),
  KEY `fk_appointments_staff1_idx` (`StaffID`),
  KEY `fk_appointments_Rooms1_idx` (`RoomID`),
  CONSTRAINT `fk_appointments_patients1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appointments_staff1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appointments_Rooms1` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`RoomID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='This table named Appointments will be used to create appointments and store details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (13,1,8,1,'2014-12-01','09:30:00','00:30:00','no reason','2014-11-30 13:37:28','2014-11-30 13:37:28'),(14,2,9,2,'2014-12-01','10:30:00','00:30:00','no reason','2014-11-30 13:37:28','2014-11-30 13:37:28'),(15,3,10,3,'2014-12-01','11:00:00','00:45:00','no reson','2014-11-30 13:37:28','2014-11-30 13:37:28'),(16,4,11,1,'2014-12-01','12:40:00','00:15:00',NULL,'2014-11-30 13:37:28','2014-11-30 13:37:28');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `database_assignment`.`appointments_BEFORE_INSERT` BEFORE INSERT ON `appointments` FOR EACH ROW
BEGIN 
IF (SELECT A_Date FROM appointments WHERE 
(NEW.A_Time >= A_Time AND NEW.A_Time < A_Time+Lenght AND NEW.RoomID = RoomID) 
OR 
(NEW.A_Time >= A_Time AND NEW.A_Time < A_Time+Lenght AND NEW.StaffID = StaffID) 
OR 
(NEW.A_Time >= A_Time AND NEW.A_Time < A_Time+Lenght AND NEW.PatientID = PatientID) 
OR 
(NEW.A_Time+NEW.Lenght > A_Time AND NEW.A_Time+NEW.Lenght < A_Time+Lenght AND NEW.RoomID = RoomID) 
OR 
(NEW.A_Time+NEW.Lenght > A_Time AND NEW.A_Time+NEW.Lenght < A_Time+Lenght AND NEW.StaffID = StaffID)
OR 
(NEW.A_Time+NEW.Lenght > A_Time AND NEW.A_Time+NEW.Lenght < A_Time+Lenght AND NEW.PatientID = PatientID))>= CURDATE() 
THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THERE ARE APOINTMENTS CONFLICTING WITH THIS APPOINTMENT';
ELSEIF NEW.A_Date<CURDATE() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THE APPOINTMENT CAN NOT BE SET IN THE PAST';
ELSEIF NEW.A_Date=CURDATE() AND NEW.A_Time<CURTIME() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THE APPOINTMENT CAN NOT BE SET IN THE PAST';
ELSEIF (DAYOFWEEK(NEW.A_Date) = 1 OR DAYOFWEEK(NEW.A_Date) = 7) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THE APPOINTMENT CAN NOT BE SET OUTSIDE WORKING DAYS (MON-FRI)';
ELSEIF (NEW.A_Time<'09:00:00' OR NEW.A_Time>'16:55:00') AND NEW.A_Time+NEW.Lenght>'17:00:00' THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THE APPOINTMENT CAN NOT BE SET OUTSIDE WORKING HOURS';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `database_assignment`.`appointments_AFTER_INSERT` AFTER INSERT ON `appointments` FOR EACH ROW
BEGIN INSERT INTO Appointment_event (AppointmentID) VALUES (NEW.AppointmentID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `database_assignment`.`appointments_BEFORE_DELETE` BEFORE DELETE ON `appointments` FOR EACH ROW
BEGIN
SET SQL_SAFE_UPDATES = 0;
 DELETE FROM Appointment_event WHERE AppointmentID=OLD.AppointmentID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:43
