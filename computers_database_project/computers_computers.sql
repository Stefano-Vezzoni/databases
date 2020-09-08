-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: computers
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computers` (
  `computer_id` int NOT NULL AUTO_INCREMENT,
  `computer_case_id` int NOT NULL,
  `motherboard_id` int NOT NULL,
  `power_supply_id` int NOT NULL,
  `processor_id` int NOT NULL,
  `ram_id` int NOT NULL,
  `storage_device_id` int NOT NULL,
  `video_card_id` int NOT NULL,
  PRIMARY KEY (`computer_id`),
  KEY `computer_case_id` (`computer_case_id`),
  KEY `motherboard_id` (`motherboard_id`),
  KEY `power_supply_id` (`power_supply_id`),
  KEY `processor_id` (`processor_id`),
  KEY `ram_id` (`ram_id`),
  KEY `storage_device_id` (`storage_device_id`),
  KEY `video_card_id` (`video_card_id`),
  CONSTRAINT `computers_ibfk_1` FOREIGN KEY (`computer_case_id`) REFERENCES `computer_case` (`computer_case_id`),
  CONSTRAINT `computers_ibfk_2` FOREIGN KEY (`motherboard_id`) REFERENCES `motherboard` (`motherboard_id`),
  CONSTRAINT `computers_ibfk_3` FOREIGN KEY (`power_supply_id`) REFERENCES `power_supply` (`power_supply_id`),
  CONSTRAINT `computers_ibfk_4` FOREIGN KEY (`processor_id`) REFERENCES `processor` (`processor_id`),
  CONSTRAINT `computers_ibfk_5` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`ram_id`),
  CONSTRAINT `computers_ibfk_6` FOREIGN KEY (`storage_device_id`) REFERENCES `storage_device` (`storage_device_id`),
  CONSTRAINT `computers_ibfk_7` FOREIGN KEY (`video_card_id`) REFERENCES `video_card` (`video_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` VALUES (1,1,2,2,2,2,2,2),(2,2,5,3,3,1,1,1),(3,5,3,5,5,2,1,1),(4,5,3,3,1,4,4,4),(5,4,2,2,4,5,1,1);
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06 14:30:25
