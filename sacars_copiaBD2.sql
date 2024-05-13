-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: viaduct.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `Numero_Documento` int NOT NULL,
  `ID_Tipo_Documento` int NOT NULL,
  `Nombre_Completo` varchar(240) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Celular` varchar(20) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Usuario` varchar(60) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  PRIMARY KEY (`Numero_Documento`),
  KEY `ID_Tipo_Documento` (`ID_Tipo_Documento`),
  CONSTRAINT `Cliente_ibfk_1` FOREIGN KEY (`ID_Tipo_Documento`) REFERENCES `Tipo_Documento` (`ID_Tipo_Documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (7356267,2,'Luisa Fernanda Beltran Jimenez','1998-07-15','3142674545','luisa6798@gmail.com','luisa6798','luisita98'),(1002524234,2,'Jerson Julian Cañon Castillo','2002-03-23','3132456787','julian@gmail.com','julian','julian1423'),(1002525345,2,'Laura Camila Beltán Pinzón','1998-11-27','3114349090','juliancast140502@gmail.com','Laura','mwn2u98w'),(1002525700,2,'Laura Sofia Ortiz Peña','1995-06-28','3112112323','laura67@gmail.com','laura67','cdcacas'),(1002525756,2,'Andres Santiago Cañon Cardenas','1998-06-18','3115432323','andres98@gmail.com','andres98','andres981423'),(1002525900,2,'Juan Esteban Fiaga Suarez','2000-07-13','3112342323','juliancast314@gmail.com','esteban67','fobvw6j9'),(1002534567,2,'Andres David Peréz Gómez','2001-07-15','3142678901','david2001@gmail.com','david765','daSacars'),(1002540202,2,'Maria Camila Cortes Beltran','1997-06-10','3142069115','maria14@gmail.com','maria14','mariaSacars14'),(1003330202,2,'Diego Andres Perez Castillo','2001-06-11','3142067989','Diego14@gmail.com','Diego14','DiegoSacars14'),(1003535907,2,'Sebastian Matias Romero Cifuentes','1959-06-23','3122345656','matias59@gmail.com','matias59','sacMatias'),(1032525920,2,'Laura Catalina Hugo Sosa','2003-05-13','3212453635','cata03@gmail.com','cata03','cata03Sacars'),(1092434567,4,'Samuel David Cañon Cifuentes','2000-07-25','3154153434','samuel34@gmail.com','samu34','samu34Sacars');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Color`
--

DROP TABLE IF EXISTS `Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Color` (
  `ID_Color` int NOT NULL,
  `Nombre_Color` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Color`
--

LOCK TABLES `Color` WRITE;
/*!40000 ALTER TABLE `Color` DISABLE KEYS */;
INSERT INTO `Color` VALUES (1,'Gris'),(2,'Rojo'),(3,'Azul Metálico'),(4,'Negro'),(5,'Blanco'),(7,'Dorado'),(8,'Marrón'),(9,'Gris oscuro'),(10,' Naranja'),(11,'Azul');
/*!40000 ALTER TABLE `Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cotizacion_Cliente`
--

DROP TABLE IF EXISTS `Cotizacion_Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cotizacion_Cliente` (
  `ID_Cotizacion` int NOT NULL AUTO_INCREMENT,
  `ID_Vehiculo` int NOT NULL,
  `Numero_Documento` int NOT NULL,
  `Fecha` datetime NOT NULL,
  PRIMARY KEY (`ID_Cotizacion`),
  KEY `ID_Vehiculo` (`ID_Vehiculo`),
  KEY `Numero_Documento` (`Numero_Documento`),
  CONSTRAINT `Cotizacion_Cliente_ibfk_1` FOREIGN KEY (`ID_Vehiculo`) REFERENCES `Vehiculo` (`ID_Vehiculo`),
  CONSTRAINT `Cotizacion_Cliente_ibfk_2` FOREIGN KEY (`Numero_Documento`) REFERENCES `Cliente` (`Numero_Documento`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cotizacion_Cliente`
--

LOCK TABLES `Cotizacion_Cliente` WRITE;
/*!40000 ALTER TABLE `Cotizacion_Cliente` DISABLE KEYS */;
INSERT INTO `Cotizacion_Cliente` VALUES (1,1,1002525900,'2023-11-27 20:05:04'),(2,2,1002525345,'2023-11-27 19:35:33'),(3,3,1002524234,'2023-11-27 20:05:23'),(8,4,1002524234,'2023-11-27 21:17:23'),(10,4,7356267,'2023-11-27 22:31:38'),(11,5,7356267,'2023-11-27 22:34:55');
/*!40000 ALTER TABLE `Cotizacion_Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marca`
--

DROP TABLE IF EXISTS `Marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Marca` (
  `ID_Marca` int NOT NULL,
  `Nombre_Marca` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marca`
--

LOCK TABLES `Marca` WRITE;
/*!40000 ALTER TABLE `Marca` DISABLE KEYS */;
INSERT INTO `Marca` VALUES (1,'Chevrolet'),(2,'Ford'),(3,'Toyota'),(4,'Nissan'),(5,'BMW');
/*!40000 ALTER TABLE `Marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipo_Documento`
--

DROP TABLE IF EXISTS `Tipo_Documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipo_Documento` (
  `ID_Tipo_Documento` int NOT NULL,
  `Abreviatura` varchar(5) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Tipo_Documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo_Documento`
--

LOCK TABLES `Tipo_Documento` WRITE;
/*!40000 ALTER TABLE `Tipo_Documento` DISABLE KEYS */;
INSERT INTO `Tipo_Documento` VALUES (1,'TI','TARJETA DE IDENTIDAD'),(2,'CC','CEDULA DE CIUDADANIA'),(3,'TE','TARJETA DE EXTRANJERIA'),(4,'CE','CEDULA DE EXTRANJERIA');
/*!40000 ALTER TABLE `Tipo_Documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehiculo`
--

DROP TABLE IF EXISTS `Vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehiculo` (
  `ID_Vehiculo` int NOT NULL,
  `ID_Marca` int NOT NULL,
  `Modelo` varchar(80) NOT NULL,
  `Descripcion` varchar(350) NOT NULL,
  `Anio` int NOT NULL,
  `ID_Color` int NOT NULL,
  `Kilometraje` int NOT NULL,
  `Tipo_Combustible` varchar(200) NOT NULL,
  `Precio` float NOT NULL,
  PRIMARY KEY (`ID_Vehiculo`),
  KEY `ID_Marca` (`ID_Marca`),
  KEY `ID_Color` (`ID_Color`),
  CONSTRAINT `Vehiculo_ibfk_1` FOREIGN KEY (`ID_Marca`) REFERENCES `Marca` (`ID_Marca`),
  CONSTRAINT `Vehiculo_ibfk_2` FOREIGN KEY (`ID_Color`) REFERENCES `Color` (`ID_Color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehiculo`
--

LOCK TABLES `Vehiculo` WRITE;
/*!40000 ALTER TABLE `Vehiculo` DISABLE KEYS */;
INSERT INTO `Vehiculo` VALUES (1,1,'Aveo','Chevrolet Aveo 1.6 Sd',2008,1,0,'Gasolina',19500000),(2,2,'Mundeo','Ford Mundeo',2017,7,0,'Gasolina',125900000),(3,3,'Camry','Toyota Camry V6 3.5l',2014,8,0,'Gasolina',98500000),(4,4,'Sentra','Nissan Sentra 1.8 B17 Fl',2017,11,0,'Gasolina',57000000),(5,2,'Focus','Ford Focus 2.0 Se',2018,11,0,'Gasolina',39700000);
/*!40000 ALTER TABLE `Vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 17:46:36
