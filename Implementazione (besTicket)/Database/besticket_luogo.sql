CREATE DATABASE  IF NOT EXISTS `besticket` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `besticket`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: besticket
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `luogo`
--

DROP TABLE IF EXISTS `luogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luogo` (
  `Cod_Luogo` int(11) NOT NULL AUTO_INCREMENT,
  `Città` varchar(15) NOT NULL,
  `CAP` varchar(5) NOT NULL,
  `Via` varchar(100) NOT NULL,
  PRIMARY KEY (`Cod_Luogo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luogo`
--

LOCK TABLES `luogo` WRITE;
/*!40000 ALTER TABLE `luogo` DISABLE KEYS */;
INSERT INTO `luogo` VALUES (1,'Milano','20090','via Giuseppe di Vittorio 6'),(2,'Roma','00178','via Appia Nuova 1245'),(3,'Torino','10135','via Madama Cristina 71'),(4,'Bologna','40124','via Cartoleria 42'),(5,'Napoli','80125','via Barbagallo 115'),(6,'Firenze','50136','via Fabrizio de Andrè 10'),(7,'Bari','70126','via Giuseppe Prezzolini 22'),(8,'Palermo','90146','Viale del Fante 70'),(9,'Roma','00144','Piazzale Pier Luigi Nervi 1');
/*!40000 ALTER TABLE `luogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-15 19:50:06
