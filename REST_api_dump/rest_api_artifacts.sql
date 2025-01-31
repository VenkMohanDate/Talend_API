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
-- Table structure for table `artifacts`
--

DROP TABLE IF EXISTS `artifacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifacts` (
  `artifact_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artifact_id`),
  KEY `environment_id` (`environment_id`),
  CONSTRAINT `artifacts_ibfk_1` FOREIGN KEY (`environment_id`) REFERENCES `environments` (`environment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifacts`
--

LOCK TABLES `artifacts` WRITE;
/*!40000 ALTER TABLE `artifacts` DISABLE KEYS */;
INSERT INTO `artifacts` VALUES ('6503a2f0c8e0e66adab53908','sample_job','standard','64c0cc03f351fd408f3e99b4'),('65539490da9b600cea7f5f9c','string_log','standard','5dad37ccce4f7e148621e4b1'),('664c92e6ad9c22194030598b','rest_get_itterate','standard','5dad37ccce4f7e148621e4b1'),('66bf1d02ecdf792fba150b6f','rest_get_itterate','standard','64c0cc03f351fd408f3e99b4'),('66ed14aa989b474889ca3aa5','J_tLogComponent','standard','5dad37ccce4f7e148621e4b1'),('66ed1dd2d62f281a3895d99f','sample_job_2','standard','5dad37ccce4f7e148621e4b1'),('66ed1e9a0012b838a7877646','sample_job_2','standard','64c0cc03f351fd408f3e99b4'),('674423f855ab575895d5e331','J_Talend_API_REST_MYSQL_Update','standard','5dad37ccce4f7e148621e4b1'),('674ebe9de5252152e629d64f','J_Sample_connect_param','standard','5dad37ccce4f7e148621e4b1'),('674ec37755ab575895d63c7c','J_Sample_connect_2','standard','64c0cc03f351fd408f3e99b4');
/*!40000 ALTER TABLE `artifacts` ENABLE KEYS */;
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
