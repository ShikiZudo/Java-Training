CREATE DATABASE  IF NOT EXISTS `hexa1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hexa1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hexa1
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `carloan`
--

DROP TABLE IF EXISTS `carloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carloan` (
  `lid` int NOT NULL,
  `cid` int DEFAULT NULL,
  `c_model` varchar(255) DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carloan`
--

LOCK TABLES `carloan` WRITE;
/*!40000 ALTER TABLE `carloan` DISABLE KEYS */;
INSERT INTO `carloan` VALUES (102,2,'Corolla',30000),(104,4,'Mustang',65000),(107,7,'i10',70000),(111,11,'Swift',40000),(114,14,'Seltos',50000);
/*!40000 ALTER TABLE `carloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `creditscore` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ram Jain','ram@email.com','1234567890','123 Nikhil Heights, Indore',750),(2,'Jaden Smith','jaden@email.com','9876543210','456 Tilak apartment, Noida',800),(3,'Bob Builder','bob@email.com','5551234567','789 Jhalak Rise, Delhi',700),(4,'Alice Ekka','alice@email.com','3334445555','246 Reference Heights, Mumbai',700),(5,'Charles Xavier','charles@email.com','8889990000','789 Algol Apartments, Mysore',800),(6,'Eva Mendez','eva@email.com','1112223333','654 Elmo street, Banglore',750),(7,'Chloe Grace','grace@email.com','7778889999','987 Hightech Rise, Bhopal',780),(8,'Bruce Lee','lee@email.com','3335557777','543 Moulana Azad St, Ghaziabad',820),(9,'Sophia John','sophia@email.com','6669991111','876 Akbar St, Old Delhi',700),(10,'Olive Pop','olivie@email.com','1113335555','234 Jahangir St, New Delhi',760),(11,'Ryan Gosling','ryan@email.com','4446668888','765 Kokila St, West Bengal',810),(12,'Papa Garcia','garcia@email.com','9998887777','543 Alphonsa St, Chennai',780),(13,'John Johnson','johnson@email.com','1112223333','987 Wushang St, Banglore',400),(14,'Ethan Hunt','ethan@email.com','4445556666','654 Amira Heights, Vadodara',820),(15,'Alex Anto','alex@email.com','9991112222','876 Alice St, Patna',750),(16,'r','r','80888854','89 sneha',600),(17,'rat','ta@gmail','123456789','bhopal',700);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeloan`
--

DROP TABLE IF EXISTS `homeloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeloan` (
  `lid` int NOT NULL,
  `cid` int DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeloan`
--

LOCK TABLES `homeloan` WRITE;
/*!40000 ALTER TABLE `homeloan` DISABLE KEYS */;
INSERT INTO `homeloan` VALUES (101,1,'123 Sneha Nagar,Bhopal',120000),(103,3,'789 Arera Colony, Delhi',180000),(105,5,'789 Cedar St, Vadodara',110000),(106,6,'654 Multiplex, Noida',18000),(108,8,'543 Shri ram colony, Indore',160000),(109,9,'876 Nikhil Homes, Mumbai',22000),(110,10,'234 Long St, Bandra, Mumbai',110000),(112,12,'543 Tilak Nagar, Mysore',75000),(113,13,'987 Apeksha Heigts, Kochin',90000),(115,15,'876 Chettanaad, Pala',70000),(116,16,'89 sneha',10000),(117,17,'bhopal',10000);
/*!40000 ALTER TABLE `homeloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `lid` int NOT NULL,
  `cid` int DEFAULT NULL,
  `pamt` int DEFAULT NULL,
  `irate` int DEFAULT NULL,
  `loan_term` int DEFAULT NULL,
  `loan_type` varchar(20) DEFAULT NULL,
  `loan_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (101,1,100000,5,24,'Home Loan','Approved'),(102,2,50000,7,12,'Car Loan','Approved'),(103,3,150000,6,36,'Home Loan','Rejected'),(104,4,75000,8,18,'Car Loan','Approved'),(105,5,120000,6,24,'Home Loan','Pending'),(106,6,20000,4,6,'Car Loan','Approved'),(107,7,90000,5,15,'Car Loan','Pending'),(108,8,180000,7,30,'Home Loan','Approved'),(109,9,25000,6,12,'Car Loan','Rejected'),(110,10,120000,6,24,'Home Loan','Pending'),(111,11,50000,4,12,'Car Loan','Approved'),(112,12,80000,8,18,'Home Loan','Rejected'),(113,13,100000,7,18,'Home Loan','Pending'),(114,14,60000,5,15,'Car Loan','Approved'),(115,15,75000,6,24,'Home Loan','Rejected'),(116,16,1000,5,2,'HomeLoan','Pending'),(117,17,10000,5,2,'HomeLoan','Approved');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 17:45:49
