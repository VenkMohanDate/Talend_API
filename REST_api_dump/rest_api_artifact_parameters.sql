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
-- Table structure for table `artifact_parameters`
--

DROP TABLE IF EXISTS `artifact_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifact_parameters` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `artifact_id` varchar(255) DEFAULT NULL,
  `parameters` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_artifact_parameters_id` (`id`),
  KEY `ART_ID_idx` (`artifact_id`),
  CONSTRAINT `ART_ID` FOREIGN KEY (`artifact_id`) REFERENCES `artifacts` (`artifact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifact_parameters`
--

LOCK TABLES `artifact_parameters` WRITE;
/*!40000 ALTER TABLE `artifact_parameters` DISABLE KEYS */;
INSERT INTO `artifact_parameters` VALUES ('0.1.0.20231411033855','string_log','65539490da9b600cea7f5f9c','[]'),('0.1.0.20240312081732','J_Sample_connect_param','674ebe9de5252152e629d64f','[{\"name\": \"parameter_name\", \"type\": \"String\", \"value\": \"param_name_sample_connect\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_hostname\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_username\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_picture\", \"type\": \"String\", \"value\": \"resource_picture_sample_connect\", \"comment\": \"\", \"required\": false}]'),('0.1.0.20240312083815','J_Sample_connect_2','674ec37755ab575895d63c7c','[{\"name\": \"parameter_param1\", \"type\": \"String\", \"value\": \"PARAM_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"parameter_param2\", \"type\": \"String\", \"value\": \"PARAM_2\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_param1\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_param2\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param1\", \"type\": \"String\", \"value\": \"RES_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param2\", \"type\": \"String\", \"value\": \"RES_2\", \"comment\": \"\", \"required\": false}]'),('0.1.0.20242009062233','J_tLogComponent','66ed14aa989b474889ca3aa5','[]'),('0.1.0.20242009070138','sample_job_2','66ed1dd2d62f281a3895d99f','[{\"name\": \"parameter_name\", \"type\": \"String\", \"value\": \"parameter_name\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_hostname\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_username\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_picture\", \"type\": \"String\", \"value\": \"ressource_picture\", \"comment\": \"\", \"required\": false}]'),('0.1.0.20242105122612','rest_get_itterate','664c92e6ad9c22194030598b','[{\"name\": \"INput\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}]'),('0.1.0.20242511071503','J_Talend_API_REST_MYSQL_Update','674423f855ab575895d5e331','[{\"name\": \"base_URL\", \"type\": \"String\", \"value\": \"https://api.eu.cloud.talend.com/tmc/v2.6\", \"comment\": \"\", \"required\": false}, {\"name\": \"Authorization\", \"type\": \"String\", \"value\": \"Bearer   uwrfDd1ZSqmY1l_t_iVXfGyZOxna3uyVyPjY3ix4yqpxis7zPkSAbRDDMm_tF72W\", \"comment\": \"\", \"required\": false}]'),('0.1.1.20231809114748','sample_job','6503a2f0c8e0e66adab53908','[]'),('0.1.1.20240312084226','J_Sample_connect_2','674ec37755ab575895d63c7c','[{\"name\": \"parameter_param1\", \"type\": \"String\", \"value\": \"PARAM_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"parameter_param2\", \"type\": \"String\", \"value\": \"PARAM_2\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_con_param1\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_con_param2\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param1\", \"type\": \"String\", \"value\": \"RES_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param2\", \"type\": \"String\", \"value\": \"RES_2\", \"comment\": \"\", \"required\": false}]'),('0.1.1.20242009070458','sample_job_2','66ed1e9a0012b838a7877646','[{\"name\": \"parameter_name\", \"type\": \"String\", \"value\": \"parameter_name\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_hostname\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_username\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_picture\", \"type\": \"String\", \"value\": \"ressource_picture\", \"comment\": \"\", \"required\": false}]'),('0.1.1.20242105011547','rest_get_itterate','664c92e6ad9c22194030598b','[{\"name\": \"INput\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}]'),('0.1.2.20240312011123','J_Sample_connect_2','674ec37755ab575895d63c7c','[{\"name\": \"parameter_param1\", \"type\": \"String\", \"value\": \"PARAM_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"parameter_param2\", \"type\": \"String\", \"value\": \"PARAM_2\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_con_param1\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_con_param2\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param1\", \"type\": \"String\", \"value\": \"RES_1\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_param2\", \"type\": \"String\", \"value\": \"RES_2\", \"comment\": \"\", \"required\": false}]'),('0.1.2.20241608093351','rest_get_itterate','66bf1d02ecdf792fba150b6f','[{\"name\": \"INput\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}]'),('0.1.2.20242308014328','sample_job','6503a2f0c8e0e66adab53908','[{\"name\": \"parameter_name\", \"type\": \"String\", \"value\": \"parameter_name\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_hostname\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_username\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"ressource_picture\", \"type\": \"String\", \"value\": \"ressource_picture\", \"comment\": \"\", \"required\": false}]'),('0.1.3.20242009062729','sample_job','6503a2f0c8e0e66adab53908','[{\"name\": \"parameter_name\", \"type\": \"String\", \"value\": \"parameter_name\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_hostname\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"connection_db_username\", \"type\": \"String\", \"value\": \"\", \"comment\": \"\", \"required\": false}, {\"name\": \"resource_picture\", \"type\": \"String\", \"value\": \"ressource_picture\", \"comment\": \"\", \"required\": false}]');
/*!40000 ALTER TABLE `artifact_parameters` ENABLE KEYS */;
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
