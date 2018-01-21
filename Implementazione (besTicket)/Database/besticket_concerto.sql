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
-- Table structure for table `concerto`
--

DROP TABLE IF EXISTS `concerto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concerto` (
  `Cod_Concerto` int(11) NOT NULL AUTO_INCREMENT,
  `Data` date NOT NULL,
  `Ora` time NOT NULL,
  `Artista` int(11) NOT NULL,
  `Luogo` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Concerto`),
  KEY `Artista` (`Artista`),
  KEY `Luogo` (`Luogo`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerto`
--

LOCK TABLES `concerto` WRITE;
/*!40000 ALTER TABLE `concerto` DISABLE KEYS */;
INSERT INTO `concerto` VALUES (1,'2018-09-28','21:30:00',1,1),(2,'2018-10-02','21:40:00',1,5),(3,'2018-10-12','21:30:00',1,8),(4,'2018-09-18','21:30:00',2,1),(5,'2018-10-05','22:00:00',2,2),(6,'2018-08-27','21:00:00',3,1),(7,'2018-09-04','21:00:00',3,2),(8,'2018-09-11','21:30:00',3,4),(9,'2018-09-17','21:30:00',3,5),(10,'2018-12-30','21:00:00',3,8),(11,'2018-09-17','22:00:00',4,1),(12,'2018-11-09','21:30:00',4,5),(13,'2018-08-22','21:00:00',5,3),(14,'2018-11-24','21:30:00',5,4),(15,'2018-12-04','21:00:00',5,6),(17,'2018-09-21','21:00:00',7,2),(18,'2018-09-27','21:30:00',7,4),(19,'2018-11-17','21:00:00',7,7),(20,'2018-10-10','21:00:00',8,4),(21,'2018-11-11','21:30:00',8,8),(22,'2018-09-23','21:30:00',9,1),(23,'2018-09-21','21:00:00',10,5),(24,'2018-09-27','21:30:00',10,6),(25,'2018-11-07','21:10:00',10,7),(26,'2018-11-28','21:30:00',10,8),(27,'2018-09-18','21:40:00',11,2),(28,'2018-11-27','21:00:00',12,4),(29,'2018-09-21','22:30:00',13,1),(30,'2018-10-12','22:30:00',13,2),(31,'2018-11-02','22:30:00',13,3),(32,'2018-11-20','22:30:00',13,7),(33,'2018-09-18','21:30:00',14,1),(34,'2018-10-25','21:30:00',14,2),(35,'2018-09-19','22:00:00',15,4),(36,'2018-10-22','21:30:00',16,6),(37,'2018-11-07','21:30:00',17,2),(38,'2018-09-14','21:30:00',18,3),(39,'2018-09-22','21:30:00',18,6),(40,'2018-10-14','21:30:00',18,7),(41,'2018-12-24','21:00:00',19,1),(42,'2018-10-22','21:30:00',19,6),(43,'2018-09-26','21:30:00',20,1),(44,'2018-11-14','21:30:00',21,2),(45,'2018-09-21','21:30:00',22,3),(46,'2018-10-23','21:30:00',22,5),(47,'2018-10-18','21:30:00',22,8),(48,'2018-11-03','21:30:00',23,3),(49,'2018-10-08','21:30:00',24,1),(50,'2018-09-30','21:30:00',25,1),(51,'2018-10-01','21:30:00',25,2),(52,'2018-09-21','21:30:00',26,2),(53,'2018-10-04','21:30:00',26,6),(54,'2018-10-09','21:30:00',26,7),(55,'2018-09-11','21:30:00',27,1),(56,'2018-05-11','21:30:00',24,9),(57,'2018-09-13','21:30:00',2,8);
/*!40000 ALTER TABLE `concerto` ENABLE KEYS */;
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
