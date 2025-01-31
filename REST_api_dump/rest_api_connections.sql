-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: rest_api
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `connection_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `parameters` json DEFAULT NULL,
  PRIMARY KEY (`connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES ('66c8935cb8b77344dfd38dab','db','db','[{\"name\": \"hostname\", \"value\": \"my_fav_host\", \"encrypted\": false}, {\"name\": \"username\", \"value\": \"hostname_venk\", \"encrypted\": false}]'),('66c89503ecdf792fba153f69','db_2','db','[{\"name\": \"hostname\", \"value\": \"my_fav_host_2\", \"encrypted\": false}, {\"name\": \"username\", \"value\": \"hostname_venk_2\", \"encrypted\": false}]'),('66ed1c5dd62f281a3895d99a','db_3','db','[{\"name\": \"username_3\", \"value\": \"user_3\", \"encrypted\": false}, {\"name\": \"hostname_3\", \"value\": \"host_3\", \"encrypted\": false}]'),('673d2753dc355d06de7cac1b','db_connection','db34','[{\"name\": \"hostname\", \"value\": \"Venkatesh\", \"encrypted\": false}]'),('673d359bb1d8b0591623c02f','db4','db','[{\"name\": \"hostname\", \"value\": \"wddwd\", \"encrypted\": false}, {\"name\": \"username\", \"value\": \"dwadwa\", \"encrypted\": false}]');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-31 11:49:17
