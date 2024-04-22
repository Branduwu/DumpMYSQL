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
-- Table structure for table `lentes`
--

DROP TABLE IF EXISTS `lentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lentes` (
  `id_lentes` bigint NOT NULL AUTO_INCREMENT,
  `nombre_lentes` varchar(50) NOT NULL,
  `url_imagen` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `largo` varchar(10) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `alto` varchar(10) NOT NULL,
  `modelo_producto` varchar(10) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id_lentes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lentes`
--

LOCK TABLES `lentes` WRITE;
/*!40000 ALTER TABLE `lentes` DISABLE KEYS */;
INSERT INTO `lentes` VALUES (1,'Lente 1','imagen1.jpg','Marca 1','Descripción 1','10','5','3','Modelo 1','SKU1',100.00),(2,'Lente 2','imagen2.jpg','Marca 2','Descripción 2','12','6','4','Modelo 2','SKU2',150.00),(3,'Lente 3','imagen3.jpg','Marca 3','Descripción 3','11','5.5','3.5','Modelo 3','SKU3',120.00),(4,'Lente 4','imagen4.jpg','Marca 4','Descripción 4','13','7','4.5','Modelo 4','SKU4',180.00),(5,'Lente 5','imagen5.jpg','Marca 5','Descripción 5','9','4.5','2.5','Modelo 5','SKU5',90.00);
/*!40000 ALTER TABLE `lentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22 17:54:57
