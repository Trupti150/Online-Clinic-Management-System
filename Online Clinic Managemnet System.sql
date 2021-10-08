CREATE DATABASE  IF NOT EXISTS `clinicdatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinicdatabase`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: clinicdatabase
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `user_id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKra7xoi9wtlcq07tmoxxe5jrh4` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,3,'Sumeet','Hatkar','7038809668','Nanded','male','2019-08-02'),(2,2,'Trupti','Yadav','9604633443','Islampur','female','2020-05-08'),(3,3,'Shree','Vitkar','8483036123','Pune','male','2020-08-08'),(4,3,'Monika','Shivankar','987654321','Pune','female','2020-09-05'),(5,2,'Chandan','Yadav','8275276923','Delhi','male','2020-08-06'),(7,3,'Pooja','Gudal','7350675594','Pune','female','2021-09-02'),(8,1,'Admin','Admin','111111111','Pune','male','2021-09-22'),(9,2,'Sonia','Hatkar','8668523897','Mumbai','female','2021-08-19'),(10,2,'Aarti','Gudal','7558361692','Purna','female','1978-06-21'),(11,2,'Hardik','Patil','11111111','Nanded','male','2021-09-17'),(12,2,'Akshay','Morale','22222222','Nanded','male','2021-09-12'),(13,2,'DEEPA','Hatkar','2222222','NANDED','female','2021-09-14'),(14,3,'Praful','H','333333333','Nanded','male','2021-08-25'),(15,2,'ds','da','213','sdf','male','2021-09-26'),(16,3,'abc','xyz','222222','pune','female','2021-09-30'),(17,3,'prasad','gudal','7847653678','pune','male','2021-10-01'),(18,2,'Bakul','Jashi','7689876545','pune','female','2021-09-09'),(19,2,'abc','xyz','1111','pune','female','2021-09-07'),(20,3,'Amol','jadhav','123456789','Pune','male','2021-09-09'),(21,2,'Darshan','Jadhav','987654321','Pune','male','2021-08-23'),(22,3,'Vijay','Gole','123123123','Pune','male','2013-01-21'),(23,3,'Pramod','Kaul','1234564561','Pune','male','2012-06-21'),(24,3,'Hardik','Vitkar','123456789','Pune','male','2006-06-21'),(25,2,'abcd','xyzw','1234567891','Pune','male','2021-09-21');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_1`
--

DROP TABLE IF EXISTS `account_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_1` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `u_id` int DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `u_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_1`
--

LOCK TABLES `account_1` WRITE;
/*!40000 ALTER TABLE `account_1` DISABLE KEYS */;
INSERT INTO `account_1` VALUES (101,1,2,'Sumeet','hatkar','7038809668','Nanded','Male','1996-03-07',NULL),(102,2,2,'Shreeshail','Vitkar','8668523897','Pune','Male','1998-08-08',NULL),(103,3,3,'Trupti','Yadav','9604633443','Islampur','Female','1994-08-27',NULL),(104,4,3,'Pooja','Gudal','7350675594','Purna','Female','1997-09-17',NULL),(105,5,2,'SH','Hatkar','7038809666','Nanded','Male','1996-03-06',NULL),(106,6,3,'xyz','aaa','11111','abcs','M','2021-09-22',NULL),(108,7,3,'xyz','aaa','11111','abcs','M','2021-09-22',NULL);
/*!40000 ALTER TABLE `account_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `app_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int DEFAULT NULL,
  `dr_id` int DEFAULT NULL,
  `app_date` date DEFAULT NULL,
  `app_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  KEY `dr_id` (`dr_id`),
  KEY `FKpsj4o10mj103nddd3cceo1fun` (`u_id`),
  CONSTRAINT `FKpsj4o10mj103nddd3cceo1fun` FOREIGN KEY (`u_id`) REFERENCES `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (14,7,5,'2021-09-25','04PM-05PM'),(15,1,2,'2021-09-25','04PM-05PM'),(16,1,5,'2021-09-30','10AM-11AM'),(17,1,2,'2021-09-25','06PM-07PM'),(18,3,10,'2021-09-26','06PM-07PM'),(19,4,12,'2021-09-28','06PM-07PM'),(22,3,18,'2021-09-29','07PM-08PM'),(23,1,2,'2021-09-27','06PM-07PM'),(24,20,11,'2021-09-27','06PM-07PM'),(25,24,5,'2021-09-28','07PM-08PM'),(26,23,5,'2021-09-28','07PM-08PM');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dr_id` int DEFAULT NULL,
  `specialization` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `experience` varchar(15) NOT NULL,
  `fees` double NOT NULL,
  `time_slot` varchar(45) DEFAULT NULL,
  `approval_status` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dridtoaccount_idx` (`dr_id`),
  CONSTRAINT `dridtoaccount` FOREIGN KEY (`dr_id`) REFERENCES `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,2,'NEUROLOGIST','MBBS','10',500,NULL,1),(2,5,'ORTHOLOGIST','MBBS','5',1000,NULL,1),(7,9,'CARDIOLOGIST','MD','5',600,NULL,0),(8,10,'DERMATOLOGIST','MBBS','5',800,NULL,0),(9,11,'Neuro','MBBS','5',500,NULL,0),(10,12,'Veternary','MBBS','5',598,NULL,0),(11,13,'Neuro','MBBS','5',500,NULL,0),(12,18,'Neuro','MBBS','10',500,NULL,0),(13,19,'NEUROLOGIST','mbbs','5',500,NULL,0),(14,21,'NEUROLOGIST','MBBS','5',500,'',0),(15,25,'ORTHOLOGIST','MBBS','',500,'',0);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_leave`
--

DROP TABLE IF EXISTS `dr_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dr_leave` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `approval_status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_leave`
--

LOCK TABLES `dr_leave` WRITE;
/*!40000 ALTER TABLE `dr_leave` DISABLE KEYS */;
INSERT INTO `dr_leave` VALUES (1,'Trupti','Yadav','2020-08-08','2020-09-08','Out of Town',1),(2,'Chandan','Yadav','2020-02-07','2020-09-07','Family Function',0),(4,'sonia','Hatkar','2021-09-14','2021-09-16','Family Function',1),(5,'sonia','Hatkar','2021-09-14','2021-09-16','Family Function',0),(6,'Sonia','Hatkar','2021-09-25','2021-09-26','dazx',0),(7,'Aarti','Gudal','2021-09-23','2021-09-29','Purna',0),(8,'Hardik','Patil','2021-09-25','2021-09-28','Family Function',0),(9,'Trupti','Yadav','2021-09-25','2021-09-30','sick',0),(10,'Trupti','Yadav','2021-09-24','2021-09-26','xyz',0),(11,'Trupti','Yadav','2021-09-26','2021-09-27','Sick leave',0),(12,'Trupti','Yadav','2021-09-27','2021-09-20','s',0),(13,'Trupti','Yadav','2021-09-27','2021-09-29','leave for personal reason',0),(14,'Darshan','Jadhav','2021-09-28','2021-09-29','Family Function',0),(15,'Chandan','Yadav','2021-09-28','2021-09-29','<button>Submit</button>',0);
/*!40000 ALTER TABLE `dr_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Doctor'),(3,'Patient'),(4,'Receptionist');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sumeethatkar@gmail.com','Sumeet123'),(2,'trupti@gmail.com','Trupti123'),(3,'shree@gmail.com','Shree123'),(4,'pat3@gmail.com','shree123'),(5,'dr2id5@gmail.com','shree123'),(6,'dr3@gmail.com','shree123'),(7,'pooja@gmail.com','Pooja123'),(8,'admin@gmail.com','Admin123'),(9,'sonia@gmail.com','Sonia123'),(10,'aarti@gmail.com','Aarti123'),(11,'h@gmail.com','Hardik123'),(12,'a@gmail.com','Akshay123'),(13,'deepahatkar@gmail.com','Deepa123'),(14,'p@gmail.com','Praful123'),(15,'dr1id2@gmail.com','Dr123'),(16,'abc2@gmail.com','Abc123'),(17,'prasad@gmail.com','prasad123'),(18,'b@gmail.com','bakul123'),(19,'abc@gmail.com','Abc123'),(20,'amol@gmail.com','Amol123'),(21,'darshan@gmail.com','Darshan123'),(22,'vijay@gmail.com','Vijay123'),(23,'pramod@gmail.com','Pramod123'),(24,'vitkar@gmail.com','Vitkar123'),(25,'abcd@gmail.com','Abcd123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 17:17:39
