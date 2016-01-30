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
-- Temporary table structure for view `hospital referals by name`
--

DROP TABLE IF EXISTS `hospital referals by name`;
/*!50001 DROP VIEW IF EXISTS `hospital referals by name`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `hospital referals by name` (
  `Patient Name` tinyint NOT NULL,
  `Patient Surname` tinyint NOT NULL,
  `Date and time` tinyint NOT NULL,
  `Hospital Name` tinyint NOT NULL,
  `Adress` tinyint NOT NULL,
  `Postcode` tinyint NOT NULL,
  `City` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `prescription drugs by parient`
--

DROP TABLE IF EXISTS `prescription drugs by parient`;
/*!50001 DROP VIEW IF EXISTS `prescription drugs by parient`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `prescription drugs by parient` (
  `Name` tinyint NOT NULL,
  `Surname` tinyint NOT NULL,
  `Medicine` tinyint NOT NULL,
  `Number of items` tinyint NOT NULL,
  `Drug_price` tinyint NOT NULL,
  `Total` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `appointments by patient`
--

DROP TABLE IF EXISTS `appointments by patient`;
/*!50001 DROP VIEW IF EXISTS `appointments by patient`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `appointments by patient` (
  `Name` tinyint NOT NULL,
  `Surname` tinyint NOT NULL,
  `Date` tinyint NOT NULL,
  `Time` tinyint NOT NULL,
  `Staff Name` tinyint NOT NULL,
  `Staff Surname` tinyint NOT NULL,
  `Role` tinyint NOT NULL,
  `Room` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `hospital referals by name`
--

/*!50001 DROP TABLE IF EXISTS `hospital referals by name`*/;
/*!50001 DROP VIEW IF EXISTS `hospital referals by name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hospital referals by name` AS select `patients`.`Name` AS `Patient Name`,`patients`.`Surname` AS `Patient Surname`,`hospital_refferals`.`Date_and_time` AS `Date and time`,`hospitals`.`Name` AS `Hospital Name`,`hospitals`.`Adress` AS `Adress`,`hospitals`.`Postcode` AS `Postcode`,`hospitals`.`City` AS `City` from ((((`patients` join `appointments`) join `appointment_event`) join `hospital_refferals`) join `hospitals`) where ((`patients`.`PatientID` = `appointments`.`PatientID`) and (`appointments`.`AppointmentID` = `appointment_event`.`AppointmentID`) and (`appointment_event`.`EventID` = `hospital_refferals`.`EventID`) and (`hospital_refferals`.`HospitalID` = `hospitals`.`HospitalID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prescription drugs by parient`
--

/*!50001 DROP TABLE IF EXISTS `prescription drugs by parient`*/;
/*!50001 DROP VIEW IF EXISTS `prescription drugs by parient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prescription drugs by parient` AS select `patients`.`Name` AS `Name`,`patients`.`Surname` AS `Surname`,`drugs`.`Drug_name` AS `Medicine`,`prescribed_drugs`.`Nr_of` AS `Number of items`,`drugs`.`Drug_price` AS `Drug_price`,(`prescribed_drugs`.`Nr_of` * `drugs`.`Drug_price`) AS `Total` from (((((`patients` join `appointments`) join `appointment_event`) join `prescription`) join `prescribed_drugs`) join `drugs`) where ((`patients`.`PatientID` = `appointments`.`PatientID`) and (`appointments`.`AppointmentID` = `appointment_event`.`AppointmentID`) and (`appointment_event`.`PrescriptionID` = `prescription`.`PrescriptionID`) and (`prescription`.`PrescriptionID` = `prescribed_drugs`.`PrescritionID`) and (`prescribed_drugs`.`Drug_ID` = `drugs`.`Drug_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `appointments by patient`
--

/*!50001 DROP TABLE IF EXISTS `appointments by patient`*/;
/*!50001 DROP VIEW IF EXISTS `appointments by patient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appointments by patient` AS select `patients`.`Name` AS `Name`,`patients`.`Surname` AS `Surname`,`appointments`.`A_Date` AS `Date`,`appointments`.`A_Time` AS `Time`,`staff`.`Name` AS `Staff Name`,`staff`.`Surname` AS `Staff Surname`,`roles`.`RoleName` AS `Role`,`rooms`.`RoomNR` AS `Room` from ((((`patients` join `appointments`) join `staff`) join `roles`) join `rooms`) where ((`patients`.`PatientID` = `appointments`.`PatientID`) and (`appointments`.`StaffID` = `staff`.`StaffID`) and (`staff`.`RoleID` = `roles`.`RoleID`) and (`appointments`.`RoomID` = `rooms`.`RoomID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-01  9:34:45
