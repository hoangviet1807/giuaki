-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: cts
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `Employee_Id` int DEFAULT NULL,
  `Mission_Id` int DEFAULT NULL,
  `Status` int DEFAULT '1',
  `Process_Id` int NOT NULL AUTO_INCREMENT,
  `EndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Process_Id`),
  KEY `FK_Employee_Id_idx` (`Employee_Id`),
  KEY `FK_Mission_Id_idx` (`Mission_Id`),
  CONSTRAINT `FK_Employee_Id` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Employee_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Mission_Id` FOREIGN KEY (`Mission_Id`) REFERENCES `mission` (`Mission_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (8,7,2,21,NULL),(8,14,2,22,NULL),(8,18,2,23,NULL),(8,16,1,24,NULL),(8,15,1,25,NULL),(8,17,0,26,NULL),(8,20,2,27,NULL),(18,18,2,28,NULL),(18,16,0,29,NULL),(18,14,2,30,NULL),(18,56,2,33,NULL),(18,50,1,34,NULL);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23 20:25:11
