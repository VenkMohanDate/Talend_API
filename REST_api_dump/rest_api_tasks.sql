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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `task_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `workspace_id` varchar(255) DEFAULT NULL,
  `environment_id` varchar(255) DEFAULT NULL,
  `artifact_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `task_id_UNIQUE` (`task_id`),
  KEY `workspace_id` (`workspace_id`),
  KEY `environment_id` (`environment_id`),
  KEY `artifact_id` (`artifact_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`workspace_id`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`environment_id`) REFERENCES `environments` (`environment_id`),
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`artifact_id`) REFERENCES `artifacts` (`artifact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('6503a2f0c8e0e66adab5390a','sample_job','64c0cc03f351fd408f3e99b5','64c0cc03f351fd408f3e99b4','6503a2f0c8e0e66adab53908'),('65539490da9b600cea7f5f9e','string_log','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','65539490da9b600cea7f5f9c'),('664c92e6ad9c22194030598d','rest_get_itterate','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','664c92e6ad9c22194030598b'),('66bf1fd5ecdf792fba150b8f','rest_get_itterate','64c0cc03f351fd408f3e99b5','64c0cc03f351fd408f3e99b4','66bf1d02ecdf792fba150b6f'),('66ed14aa989b474889ca3aa7','J_tLogComponent','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','66ed14aa989b474889ca3aa5'),('66ed1dd3d62f281a3895d9a1','sample_job_2','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','66ed1dd2d62f281a3895d99f'),('66ed1ee98145c92343fd5ef9','sample_job_2','64c0cc03f351fd408f3e99b5','64c0cc03f351fd408f3e99b4','66ed1e9a0012b838a7877646'),('673d2c58d489e24c4c2c34df','task3_sam2_artifact_db3_param','64c0cc03f351fd408f3e99b5','64c0cc03f351fd408f3e99b4','66ed1e9a0012b838a7877646'),('674423f855ab575895d5e333','J_Talend_API_REST_MYSQL_Update','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','674423f855ab575895d5e331'),('674ebe9de5252152e629d651','J_Sample_connect_param','64a42b408789e747006a3a30','5dad37ccce4f7e148621e4b1','674ebe9de5252152e629d64f'),('674ec377e5252152e629d694','J_Sample_connect_2','64c0cc03f351fd408f3e99b5','64c0cc03f351fd408f3e99b4','674ec37755ab575895d63c7c');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
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
