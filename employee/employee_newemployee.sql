-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `newemployee`
--

DROP TABLE IF EXISTS `newemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newemployee` (
  `EmpID` smallint NOT NULL DEFAULT '0',
  `EmpFname` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `EmpLname` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `Department` varchar(20) CHARACTER SET utf8mb3 NOT NULL,
  `Project` varchar(5) CHARACTER SET utf8mb3 NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb3 NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb3 NOT NULL,
  `DOB` date NOT NULL,
  `Gender` char(5) CHARACTER SET utf8mb3 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newemployee`
--

LOCK TABLES `newemployee` WRITE;
/*!40000 ALTER TABLE `newemployee` DISABLE KEYS */;
INSERT INTO `newemployee` VALUES (1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','Samantha_Coates3020@eirey.tech','1976-01-12','M'),(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','Andrea_Hope3243@nanoff.biz','1968-02-05','F'),(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','Sydney_Eastwood3997@supunk.biz','1980-01-01','M'),(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','Domenic_Lee2521@deavo.com','1992-02-05','F'),(5,'Ankit','Kapoor','Admin','P1','Delhi(DEL)','Mason_Abbey3634@brety.org','1994-03-07','M');
/*!40000 ALTER TABLE `newemployee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01 10:27:02
