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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `Cod_Artista` int(11) NOT NULL AUTO_INCREMENT,
  `Nazionalità` varchar(10) DEFAULT NULL,
  `Genere` varchar(20) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Tipo` varchar(10) NOT NULL,
  `Img` varchar(1000) DEFAULT NULL,
  `Biglietti_Venduti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Cod_Artista`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Usa','poprock','Anastacia','Cantautore','images/top10/4.jpg',0),(2,'Usa','punk','Green Day','Gruppo','images/top10/14.jpg',1),(3,'Italia','pop','Elisa','Cantautore','images/top10/1.jpg',0),(4,'Usa','pop','Jason Derulo','Cantautore','images/top10/2.jpg',0),(5,'Italia','blues','Zucchero','Cantautore','images/top10/3.jpg',0),(6,'Spagna','pop','Alvaro Soler','Cantautore','images/top10/5.jpg',0),(7,'Italia','pop','Arisa','Cantautore','images/top10/6.jpg',0),(8,'Italia','poprock','Biaggio Antonacci','Cantautore','images/top10/7.jpg',0),(9,'Svezia','metal','Arch Enemy','Gruppo','images/top10/8.jpg',0),(10,'Italia','rap','Caparezza','Cantautore','images/top10/9.jpg',0),(11,'Usa','pop','Beyonce','Cantautore','images/top10/10.jpg',0),(12,'Italia','poprock','Elio e le storie tese','Gruppo','images/top10/11.jpg',0),(13,'Italia','rap','J-Ax','Cantautore','images/top10/12.jpg',0),(14,'Italia','pop','Francesco Gabbani','Cantautore','images/top10/13.jpg',0),(15,'Usa','metal','Avenged Sevenfold','Gruppo','images/top10/15.jpg',0),(16,'Uk','rock','Coldplay','Gruppo','images/top10/16.jpg',0),(17,'Uk','metal','Iron Maiden','Gruppo','images/top10/17.jpg',0),(18,'Italia','poprock','Ligabue','Cantautore','images/top10/18.jpg',0),(19,'Italia','classica','Andrea Bocelli','Cantautore','images/top10/19.jpg',0),(20,'Usa','poprock','Maroon 5','Gruppo','images/top10/20.jpg',0),(21,'Uk','jazz','Muse','Gruppo','images/top10/21.jpg',0),(22,'Italia','pop','Nek','Cantautore','images/top10/22.jpg',0),(23,'Uk','pop','Ed Sheeran','Cantautore','images/top10/23.jpg',0),(24,'Usa','pop','Pentatonix','Gruppo','images/top10/24.jpg',0),(25,'Usa','pop','Madonna','Cantautore','images/top10/25.jpg',0),(26,'Italia','pop','Tiziano Ferro','Cantautore','images/top10/27.JPG',0),(27,'Italia','rock','Vasco Rossi','Cantautore','images/top10/28.jpg',3);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
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
