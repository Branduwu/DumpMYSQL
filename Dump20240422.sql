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
-- Table structure for table `carrito_compras`
--

DROP TABLE IF EXISTS `carrito_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_compras` (
  `id_carrito` bigint NOT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `usuarios_id_usuarios` bigint NOT NULL,
  PRIMARY KEY (`id_carrito`,`usuarios_id_usuarios`),
  KEY `fk_carrito_compras_usuarios1_idx` (`usuarios_id_usuarios`),
  CONSTRAINT `fk_carrito_compras_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_compras`
--

LOCK TABLES `carrito_compras` WRITE;
/*!40000 ALTER TABLE `carrito_compras` DISABLE KEYS */;
INSERT INTO `carrito_compras` VALUES (1,'2024-04-22 17:34:27',1),(2,'2024-04-22 17:34:27',2),(3,'2024-04-22 17:34:27',3),(4,'2024-04-22 17:34:27',4),(5,'2024-04-22 17:34:27',5);
/*!40000 ALTER TABLE `carrito_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_compras_has_lentes`
--

DROP TABLE IF EXISTS `carrito_compras_has_lentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_compras_has_lentes` (
  `id_carrito` bigint NOT NULL,
  `id_lentes` bigint NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_carrito`,`id_lentes`),
  KEY `fk_carrito_compras_has_lentes_lentes1_idx` (`id_lentes`),
  KEY `fk_carrito_compras_has_lentes_carrito_compras1_idx` (`id_carrito`),
  CONSTRAINT `fk_carrito_compras_has_lentes_carrito_compras1` FOREIGN KEY (`id_carrito`) REFERENCES `carrito_compras` (`id_carrito`),
  CONSTRAINT `fk_carrito_compras_has_lentes_lentes1` FOREIGN KEY (`id_lentes`) REFERENCES `lentes` (`id_lentes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_compras_has_lentes`
--

LOCK TABLES `carrito_compras_has_lentes` WRITE;
/*!40000 ALTER TABLE `carrito_compras_has_lentes` DISABLE KEYS */;
INSERT INTO `carrito_compras_has_lentes` VALUES (1,1,1),(1,2,2),(2,3,1),(3,4,3),(4,5,2);
/*!40000 ALTER TABLE `carrito_compras_has_lentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categorias` bigint NOT NULL AUTO_INCREMENT,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categorias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Metal'),(2,'Plástico'),(3,'Madera'),(4,'Acetato'),(5,'Titanio');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id_citas` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id_usuarios` bigint NOT NULL,
  `fecha_hora_cita` datetime NOT NULL,
  PRIMARY KEY (`id_citas`,`usuarios_id_usuarios`),
  KEY `fk_citas_usuarios1_idx` (`usuarios_id_usuarios`),
  CONSTRAINT `fk_citas_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,1,'2024-05-01 10:00:00'),(2,2,'2024-05-02 14:30:00'),(3,3,'2024-05-03 11:15:00'),(4,4,'2024-05-04 16:45:00'),(5,5,'2024-05-05 09:30:00');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_compras` bigint NOT NULL AUTO_INCREMENT,
  `Id_usuario` bigint NOT NULL,
  `id_tipo_pago` bigint NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `pago_total` bigint NOT NULL,
  PRIMARY KEY (`id_compras`,`Id_usuario`,`id_tipo_pago`),
  KEY `fk_compras_usuarios1_idx` (`Id_usuario`),
  KEY `fk_compras_tipos de pago1_idx` (`id_tipo_pago`),
  CONSTRAINT `fk_compras_tipos de pago1` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipos de pago` (`id_tipo_pago`),
  CONSTRAINT `fk_compras_usuarios1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,1,'2024-04-22 17:34:27',500),(2,2,2,'2024-04-22 17:34:27',750),(3,3,3,'2024-04-22 17:34:27',1000),(4,4,4,'2024-04-22 17:34:27',1250),(5,5,5,'2024-04-22 17:34:27',800);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id_direcciones` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id_usuarios` bigint NOT NULL,
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `municipio_alcaldia` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  PRIMARY KEY (`id_direcciones`,`usuarios_id_usuarios`),
  KEY `fk_direcciones_usuarios1_idx` (`usuarios_id_usuarios`),
  CONSTRAINT `fk_direcciones_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,1,'Calle 1','Colonia 1','Municipio 1','Estado 1','12345'),(2,2,'Calle 2','Colonia 2','Municipio 2','Estado 2','54321'),(3,3,'Calle 3','Colonia 3','Municipio 3','Estado 3','98765'),(4,4,'Calle 4','Colonia 4','Municipio 4','Estado 4','56789'),(5,5,'Calle 5','Colonia 5','Municipio 5','Estado 5','24680');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `lentes_has_categorias`
--

DROP TABLE IF EXISTS `lentes_has_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lentes_has_categorias` (
  `lentes_id_lentes` bigint NOT NULL,
  `categorias_id_categorias` bigint NOT NULL,
  PRIMARY KEY (`lentes_id_lentes`,`categorias_id_categorias`),
  KEY `fk_lentes_has_categorias_categorias1_idx` (`categorias_id_categorias`),
  KEY `fk_lentes_has_categorias_lentes1_idx` (`lentes_id_lentes`),
  CONSTRAINT `fk_lentes_has_categorias_categorias1` FOREIGN KEY (`categorias_id_categorias`) REFERENCES `categorias` (`id_categorias`),
  CONSTRAINT `fk_lentes_has_categorias_lentes1` FOREIGN KEY (`lentes_id_lentes`) REFERENCES `lentes` (`id_lentes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lentes_has_categorias`
--

LOCK TABLES `lentes_has_categorias` WRITE;
/*!40000 ALTER TABLE `lentes_has_categorias` DISABLE KEYS */;
INSERT INTO `lentes_has_categorias` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `lentes_has_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id_tarjeta` bigint NOT NULL,
  `numero_tarjeta` varchar(15) NOT NULL,
  `expiracion` varchar(10) NOT NULL,
  `direccion_tarjeta` varchar(45) DEFAULT NULL,
  `usuarios_id_usuarios` bigint NOT NULL,
  PRIMARY KEY (`id_tarjeta`,`usuarios_id_usuarios`),
  KEY `fk_tarjetas_usuarios1_idx` (`usuarios_id_usuarios`),
  CONSTRAINT `fk_tarjetas_usuarios1` FOREIGN KEY (`usuarios_id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo` bigint NOT NULL AUTO_INCREMENT,
  `rol` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Cliente'),(3,'Proveedor'),(4,'Empleado'),(5,'Invitado');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos de pago`
--

DROP TABLE IF EXISTS `tipos de pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos de pago` (
  `id_tipo_pago` bigint NOT NULL,
  `descripcion_tipo_pago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos de pago`
--

LOCK TABLES `tipos de pago` WRITE;
/*!40000 ALTER TABLE `tipos de pago` DISABLE KEYS */;
INSERT INTO `tipos de pago` VALUES (1,'Tarjeta de crédito'),(2,'Tarjeta de débito'),(3,'PayPal'),(4,'Transferencia bancaria'),(5,'Efectivo');
/*!40000 ALTER TABLE `tipos de pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` bigint NOT NULL AUTO_INCREMENT,
  `id_tipo` bigint NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `estatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`,`id_tipo`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_usuarios_tipo_usuario_idx` (`id_tipo`),
  CONSTRAINT `fk_usuarios_tipo_usuario` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Juan','Pérez','1990-01-01','Masculino','juan@example.com','password1','2024-04-22 17:34:26','Activo'),(2,2,'María','González','1985-05-10','Femenino','maria@example.com','password2','2024-04-22 17:34:26','Activo'),(3,3,'Carlos','López','1992-08-15','Masculino','carlos@example.com','password3','2024-04-22 17:34:26','Activo'),(4,4,'Laura','Martínez','1988-12-20','Femenino','laura@example.com','password4','2024-04-22 17:34:26','Activo'),(5,5,'Pedro','Ramírez','1995-03-25','Masculino','pedro@example.com','password5','2024-04-22 17:34:26','Activo');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22 17:54:28
