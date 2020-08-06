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
-- Table structure for table `video_card`
--

DROP TABLE IF EXISTS `video_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_card` (
  `video_card_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `interface` varchar(255) NOT NULL,
  `graphic_ram` varchar(255) NOT NULL,
  `graphic_ram_size` varchar(255) NOT NULL,
  `memory_bus_width` varchar(255) NOT NULL,
  `memory_clock_speed` varchar(255) NOT NULL,
  PRIMARY KEY (`video_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_card`
--

LOCK TABLES `video_card` WRITE;
/*!40000 ALTER TABLE `video_card` DISABLE KEYS */;
INSERT INTO `video_card` VALUES (1,'MSI Gaming GeForce GT 710','PCIEx16','DDR3','2 GB','64 bits','1600 MHZ'),(2,'XFX Radeon RX 580 GTS XXX Edition','PCIEx8','GDDR5','8 GB','256 bits','1386 MHZ'),(3,'XFX Radeon RX 570 RS XXX Edition','PCIEx8','GDDR5','8 GB','256 bits','7000 MHZ'),(4,'Sapphire Radeon 11265-05-20G PULSE RX 580','PCIEx8','GDDR5','8 GB','256 bits','1750 MHZ'),(5,'XFX RX 5500 XT Thicc II Pro','PCIEx16','GDDR6','8 GB','128 bits','14 GHZ');
/*!40000 ALTER TABLE `video_card` ENABLE KEYS */;
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
