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
-- Table structure for table `biglietto`
--

DROP TABLE IF EXISTS `biglietto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biglietto` (
  `Cod_Biglietto` int(11) NOT NULL AUTO_INCREMENT,
  `Prezzo` double NOT NULL,
  PRIMARY KEY (`Cod_Biglietto`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biglietto`
--

LOCK TABLES `biglietto` WRITE;
/*!40000 ALTER TABLE `biglietto` DISABLE KEYS */;
INSERT INTO `biglietto` VALUES (1,50),(2,50),(3,50),(4,50),(5,50),(6,50),(7,50),(8,50),(9,50),(10,50),(11,75),(12,75),(13,75),(14,75),(15,75),(16,75),(17,75),(18,75),(19,75),(20,75),(21,32.5),(22,32.5),(23,32.5),(24,32.5),(25,32.5),(26,32.5),(27,32.5),(28,32.5),(29,32.5),(30,32.5),(31,55.3),(32,55.3),(33,55.3),(34,55.3),(35,55.3),(36,55.3),(37,55.3),(38,55.3),(39,55.3),(40,55.3),(41,62),(42,62),(43,62),(44,62),(45,62),(46,62),(47,62),(48,62),(49,62),(50,62),(51,120),(52,120),(53,120),(54,120),(55,120),(56,120),(57,120),(58,120),(59,120),(60,120),(61,80),(62,80),(63,80),(64,80),(65,80),(66,80),(67,80),(68,80),(69,80),(70,80),(71,90),(72,90),(73,90),(74,90),(75,90),(76,90),(77,90),(78,90),(79,90),(80,90),(81,70),(82,70),(83,70),(84,70),(85,70),(86,70),(87,70),(88,70),(89,70),(90,70),(91,23),(92,23),(93,23),(94,23),(95,23),(96,23),(97,23),(98,23),(99,23),(100,23),(101,52),(102,52),(103,52),(104,52),(105,52),(106,52),(107,52),(108,52),(109,52),(110,52),(111,40.7),(112,40.7),(113,40.7),(114,40.7),(115,40.7),(116,40.7),(117,40.7),(118,40.7),(119,40.7),(120,40.7),(121,90),(122,90),(123,90),(124,90),(125,90),(126,90),(127,90),(128,90),(129,90),(130,90),(131,115),(132,115),(133,115),(134,115),(135,115),(136,115),(137,115),(138,115),(139,115),(140,115),(141,20),(142,20),(143,20),(144,20),(145,20),(146,20),(147,20),(148,20),(149,20),(150,20),(151,45),(152,45),(153,45),(154,45),(155,45),(156,45),(157,45),(158,45),(159,45),(160,45),(161,57),(162,57),(163,57),(164,57),(165,57),(166,57),(167,57),(168,57),(169,57),(170,57),(171,92),(172,92),(173,92),(174,92),(175,92),(176,92),(177,92),(178,92),(179,92),(180,92),(181,100),(182,100),(183,100),(184,100),(185,100),(186,100),(187,100),(188,100),(189,100),(190,100),(191,160),(192,160),(193,160),(194,160),(195,160),(196,160),(197,160),(198,160),(199,160),(200,160),(201,60),(202,60),(203,60),(204,60),(205,60),(206,60),(207,60),(208,60),(209,60),(210,60),(211,76),(212,76),(213,76),(214,76),(215,76),(216,76),(217,76),(218,76),(219,76),(220,76),(221,15),(222,15),(223,15),(224,15),(225,15),(226,15),(227,15),(228,15),(229,15),(230,15),(231,200),(232,200),(233,200),(234,200),(235,200),(236,200),(237,200),(238,200),(239,200),(240,200),(241,112),(242,112),(243,112),(244,112),(245,112),(246,112),(247,112),(248,112),(249,112),(250,112),(251,87.4),(252,87.4),(253,87.4),(254,87.4),(255,87.4),(256,87.4),(257,87.4),(258,87.4),(259,87.4),(260,87.4),(261,30),(262,30),(263,30),(264,30),(265,30),(266,30),(267,30),(268,30),(269,30),(270,30),(271,35),(272,35),(273,35),(274,35),(275,35),(276,35),(277,35),(278,35),(279,35),(280,35),(281,41),(282,41),(283,41),(284,41),(285,41),(286,41),(287,41),(288,41),(289,41),(290,41),(291,47),(292,47),(293,47),(294,47),(295,47),(296,47),(297,47),(298,47),(299,47),(300,47),(301,88),(302,88),(303,88),(304,88),(305,88),(306,88),(307,88),(308,88),(309,88),(310,88),(311,101),(312,101),(313,101),(314,101),(315,101),(316,101),(317,101),(318,101),(319,101),(320,101),(321,97),(322,97),(323,97),(324,97),(325,97),(326,97),(327,97),(328,97),(329,97),(330,97),(331,97.5),(332,97.5),(333,97.5),(334,97.5),(335,97.5),(336,97.5),(337,97.5),(338,97.5),(339,97.5),(340,97.5),(341,63),(342,63),(343,63),(344,63),(345,63),(346,63),(347,63),(348,63),(349,63),(350,63),(351,67.22),(352,67.22),(353,67.22),(354,67.22),(355,67.22),(356,67.22),(357,67.22),(358,67.22),(359,67.22),(360,67.22),(361,34),(362,34),(363,34),(364,34),(365,34),(366,34),(367,34),(368,34),(369,34),(370,34),(371,88.99),(372,88.99),(373,88.99),(374,88.99),(375,88.99),(376,88.99),(377,88.99),(378,88.99),(379,88.99),(380,88.99),(381,79),(382,79),(383,79),(384,79),(385,79),(386,79),(387,79),(388,79),(389,79),(390,79),(391,78.2),(392,78.2),(393,78.2),(394,78.2),(395,78.2),(396,78.2),(397,78.2),(398,78.2),(399,78.2),(400,78.2),(401,58),(402,58),(403,58),(404,58),(405,58),(406,58),(407,58),(408,58),(409,58),(410,58),(411,36.8),(412,36.8),(413,36.8),(414,36.8),(415,36.8),(416,36.8),(417,36.8),(418,36.8),(419,36.8),(420,36.8),(421,67.15),(422,67.15),(423,67.15),(424,67.15),(425,67.15),(426,67.15),(427,67.15),(428,67.15),(429,67.15),(430,67.15),(431,67.5),(432,67.5),(433,67.5),(434,67.5),(435,67.5),(436,67.5),(437,67.5),(438,67.5),(439,67.5),(440,67.5),(441,86.95),(442,86.95),(443,86.95),(444,86.95),(445,86.95),(446,86.95),(447,86.95),(448,86.95),(449,86.95),(450,86.95),(451,85.5),(452,85.5),(453,85.5),(454,85.5),(455,85.5),(456,85.5),(457,85.5),(458,85.5),(459,85.5),(460,85.5),(461,105),(462,105),(463,105),(464,105),(465,105),(466,105),(467,105),(468,105),(469,105),(470,105),(471,105.5),(472,105.5),(473,105.5),(474,105.5),(475,105.5),(476,105.5),(477,105.5),(478,105.5),(479,105.5),(480,105.5),(481,170.2),(482,170.2),(483,170.2),(484,170.2),(485,170.2),(486,170.2),(487,170.2),(488,170.2),(489,170.2),(490,170.2),(491,43.86),(492,43.86),(493,43.86),(494,43.86),(495,43.86),(496,43.86),(497,43.86),(498,43.86),(499,43.86),(500,43.86),(501,75.9),(502,75.9),(503,75.9),(504,75.9),(505,75.9),(506,75.9),(507,75.9),(508,75.9),(509,75.9),(510,75.9),(511,75.65),(512,75.65),(513,75.65),(514,75.65),(515,75.65),(516,75.65),(517,75.65),(518,75.65),(519,75.65),(521,81),(522,81),(523,81),(524,81),(525,81),(526,81),(527,81),(528,81),(529,81),(530,81),(531,82.65),(532,82.65),(533,82.65),(534,82.65),(535,82.65),(536,82.65),(537,82.65),(538,82.65),(539,82.65),(540,82.65),(541,100.2),(542,100.2),(543,100.2),(544,100.2),(545,100.2),(546,100.2),(547,100.2),(548,100.2),(549,100.2),(551,57),(552,57),(553,57),(554,57),(555,57),(556,57),(557,57),(558,57),(559,57),(560,57);
/*!40000 ALTER TABLE `biglietto` ENABLE KEYS */;
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
