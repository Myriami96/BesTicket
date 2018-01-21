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
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utente` (
  `Username` varchar(50) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Via` varchar(50) NOT NULL,
  `CAP` char(5) NOT NULL,
  `Città` varchar(100) NOT NULL,
  `Stato` varchar(25) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Pwd` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Provincia` varchar(20) DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES ('Franca098','Francesca','Marcantonia','via isorella 23','83050','Gaiano','IT','Registrato','','ciaozia23','franceschella@yahoo.it','SA','1989-09-12'),('Fusk','Manuel','Fuschetto','c/da Retezzone','83054','Sant\'Angelo dei Lombardi','IT','AdminConcerti','3421249695','manuel123','manuel.fuschetto@libero.it','AV','1996-12-28'),('Giuseppe','Giuseppe','Pila','Via Panettone 5','02547','boh','IT','Registrato','3214578458','123456789','Giuseppe@boh.com','BL','1995-02-03'),('Macintosh','Nicolà','Iannuzzi','Corso F.de Sanctis','83040','Conza della Campania','IT','AdminConcerti','3483897673','1234567891','nomeutente96@gmail.com','AV','1996-06-23'),('Mario','Mario','Rossi','C/da Ciavolone 56','12345','Grottaminarda','IT','Registrato','3213256785','miaomiao','mario.rossi@hotmail.it','AV','2002-12-11'),('Myriam96','Myriam','Imbriano','C/da Piano Delle Briglie 7','83040','Conza della Campania','IT','AdminUtenti','3209123785','23071965','imbriano.myriam@gmail.com','AV','1996-11-09');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-15 19:50:07
