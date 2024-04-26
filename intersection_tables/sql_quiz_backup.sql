-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: sql_quiz_db
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bsg_fakeship`
--

DROP TABLE IF EXISTS `bsg_fakeship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bsg_fakeship` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `separate_saucer_section` tinyint(1) DEFAULT '0',
  `length` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsg_fakeship`
--

LOCK TABLES `bsg_fakeship` WRITE;
/*!40000 ALTER TABLE `bsg_fakeship` DISABLE KEYS */;
/*!40000 ALTER TABLE `bsg_fakeship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bsg_people`
--

DROP TABLE IF EXISTS `bsg_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bsg_people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeworld` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homeworld` (`homeworld`),
  CONSTRAINT `bsg_people_ibfk_1` FOREIGN KEY (`homeworld`) REFERENCES `bsg_planets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsg_people`
--

LOCK TABLES `bsg_people` WRITE;
/*!40000 ALTER TABLE `bsg_people` DISABLE KEYS */;
INSERT INTO `bsg_people` VALUES (1,'William','Adama',3,61),(2,'Lee','Adama',3,30),(6,'Saul','Tigh',NULL,71),(8,'Galen','Tyrol',1,32);
/*!40000 ALTER TABLE `bsg_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bsg_planets`
--

DROP TABLE IF EXISTS `bsg_planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bsg_planets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `population` bigint DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsg_planets`
--

LOCK TABLES `bsg_planets` WRITE;
/*!40000 ALTER TABLE `bsg_planets` DISABLE KEYS */;
INSERT INTO `bsg_planets` VALUES (1,'Gemenon',2800000000,'Old Gemenese','Oranu'),(2,'Leonis',2600000000,'Leonese','Luminere'),(3,'Caprica',4900000000,'Caprican','Caprica City'),(7,'Sagittaron',1700000000,NULL,'Tawa'),(16,'Aquaria',25000,'Titanussy',NULL),(17,'Canceron',6700000000,NULL,'Hades'),(18,'Libran',2100000,NULL,NULL),(19,'Picon',1400000000,NULL,'Queestown'),(20,'Scorpia',450000000,NULL,'Celeste'),(21,'Tauron',2500000000,'Tauron','Hypatia'),(22,'Virgon',4300000000,NULL,'Boskirk'),(23,'Joopiter',1,'Titanussy','Titan');
/*!40000 ALTER TABLE `bsg_planets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 22:06:31
