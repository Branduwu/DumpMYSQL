-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: salud_y_vida
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `compras_has_lentes`
--

DROP TABLE IF EXISTS `compras_has_lentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_has_lentes` (
  `compras_id_compras` bigint NOT NULL,
  `lentes_id_lentes` bigint NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`compras_id_compras`,`lentes_id_lentes`,`cantidad`),
  KEY `fk_compras_has_lentes_lentes1_idx` (`lentes_id_lentes`),
  KEY `fk_compras_has_lentes_compras1_idx` (`compras_id_compras`),
  CONSTRAINT `fk_compras_has_lentes_compras1` FOREIGN KEY (`compras_id_compras`) REFERENCES `compras` (`id_compras`),
  CONSTRAINT `fk_compras_has_lentes_lentes1` FOREIGN KEY (`lentes_id_lentes`) REFERENCES `lentes` (`id_lentes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_has_lentes`
--

LOCK TABLES `compras_has_lentes` WRITE;
/*!40000 ALTER TABLE `compras_has_lentes` DISABLE KEYS */;
INSERT INTO `compras_has_lentes` VALUES (1,1,2),(1,2,1),(2,3,3),(3,4,2),(4,5,1);
/*!40000 ALTER TABLE `compras_has_lentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22 17:54:58
