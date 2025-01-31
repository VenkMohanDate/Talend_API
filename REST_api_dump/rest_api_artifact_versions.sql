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
-- Table structure for table `artifact_versions`
--

DROP TABLE IF EXISTS `artifact_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifact_versions` (
  `version` varchar(255) NOT NULL,
  `artifact_id` varchar(255) NOT NULL,
  PRIMARY KEY (`version`),
  KEY `artifact_id` (`artifact_id`),
  CONSTRAINT `artifact_versions_ibfk_1` FOREIGN KEY (`artifact_id`) REFERENCES `artifacts` (`artifact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifact_versions`
--

LOCK TABLES `artifact_versions` WRITE;
/*!40000 ALTER TABLE `artifact_versions` DISABLE KEYS */;
INSERT INTO `artifact_versions` VALUES ('[\"0.1.3.20242009062729\",\"0.1.2.20242308014328\",\"0.1.1.20231809114748\"]','6503a2f0c8e0e66adab53908'),('[\"0.1.0.20231411033855\"]','65539490da9b600cea7f5f9c'),('[\"0.1.1.20242105011547\",\"0.1.0.20242105122612\"]','664c92e6ad9c22194030598b'),('[\"0.1.2.20241608093351\"]','66bf1d02ecdf792fba150b6f'),('[\"0.1.0.20242009062233\"]','66ed14aa989b474889ca3aa5'),('[\"0.1.0.20242009070138\"]','66ed1dd2d62f281a3895d99f'),('[\"0.1.1.20242009070458\"]','66ed1e9a0012b838a7877646'),('[\"0.1.0.20242511071503\"]','674423f855ab575895d5e331'),('[\"0.1.0.20240312081732\"]','674ebe9de5252152e629d64f'),('[\"0.1.2.20240312011123\",\"0.1.1.20240312084226\",\"0.1.0.20240312083815\"]','674ec37755ab575895d63c7c');
/*!40000 ALTER TABLE `artifact_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-31 11:49:16
