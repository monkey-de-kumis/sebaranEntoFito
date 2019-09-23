-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: sebaranEntoFito
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB

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
-- Current Database: `sebaranEntoFito`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sebaranEntoFito` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sebaranEntoFito`;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  `luas` decimal(65,1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES (1,'B',12.0,'2019-09-18 06:33:21','0000-00-00 00:00:00'),(2,'C1',4.0,'2019-09-18 06:33:16','2019-09-17 16:00:00'),(7,'C2',1.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(8,'D',3.8,'2019-09-18 06:36:29','0000-00-00 00:00:00'),(9,'E1',0.5,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(10,'E2',1.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(11,'E3',4.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(12,'F',3.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(13,'G',2.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(14,'H',3.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(15,'I',0.4,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(16,'J',1.5,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(17,'K',3.4,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(18,'L',1.5,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(19,'M',1.5,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(20,'N',6.0,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(21,'O',5.0,'2019-09-17 16:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_detail`
--

DROP TABLE IF EXISTS `block_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(100) NOT NULL,
  `varietas_id` int(200) NOT NULL,
  `jumlah` int(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_detail`
--

LOCK TABLES `block_detail` WRITE;
/*!40000 ALTER TABLE `block_detail` DISABLE KEYS */;
INSERT INTO `block_detail` VALUES (1,1,1,1401,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(2,2,2,480,'2019-09-17 16:00:00','0000-00-00 00:00:00'),(3,7,3,97,'2019-09-18 08:18:03','0000-00-00 00:00:00'),(4,8,4,196,'2019-09-18 08:18:12','0000-00-00 00:00:00'),(5,8,5,14,'2019-09-18 08:18:20','0000-00-00 00:00:00'),(6,9,6,72,'2019-09-18 08:18:49','0000-00-00 00:00:00'),(7,10,6,175,'2019-09-18 08:18:54','0000-00-00 00:00:00'),(8,11,6,576,'2019-09-18 08:19:00','0000-00-00 00:00:00'),(9,12,7,348,'2019-09-18 08:19:09','0000-00-00 00:00:00'),(10,13,8,144,'2019-09-18 08:19:15','0000-00-00 00:00:00'),(11,14,9,238,'2019-09-18 08:19:22','0000-00-00 00:00:00'),(12,15,10,23,'2019-09-18 08:19:28','0000-00-00 00:00:00'),(13,16,4,182,'2019-09-18 08:19:34','0000-00-00 00:00:00'),(14,17,4,73,'2019-09-18 08:19:40','0000-00-00 00:00:00'),(15,17,11,46,'2019-09-18 08:19:44','0000-00-00 00:00:00'),(16,18,12,183,'2019-09-18 08:19:49','0000-00-00 00:00:00'),(17,19,13,182,'2019-09-18 08:19:55','0000-00-00 00:00:00'),(18,20,14,705,'2019-09-18 08:20:00','0000-00-00 00:00:00'),(19,21,15,81,'2019-09-18 08:20:04','0000-00-00 00:00:00'),(20,21,16,94,'2019-09-18 08:20:08','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `block_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_ento_fito`
--

DROP TABLE IF EXISTS `block_ento_fito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_ento_fito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_detail_id` int(11) NOT NULL,
  `ento_fito_id` int(11) NOT NULL,
  `persentase` decimal(65,2) NOT NULL,
  `kerusakan` enum('Ringan','Sedang','Berat','Sehat') NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_ento_fito`
--

LOCK TABLES `block_ento_fito` WRITE;
/*!40000 ALTER TABLE `block_ento_fito` DISABLE KEYS */;
INSERT INTO `block_ento_fito` VALUES (3,1,1,5.82,'Ringan','2019-09-20 00:23:15','0000-00-00 00:00:00'),(4,1,2,0.43,'Ringan','2019-09-20 00:23:26','0000-00-00 00:00:00'),(5,1,3,0.16,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(6,1,4,0.21,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(7,2,1,5.00,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(8,2,2,0.31,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(9,3,1,37.63,'Sedang','2019-09-19 16:00:00','0000-00-00 00:00:00'),(10,3,2,31.44,'Sedang','2019-09-19 16:00:00','0000-00-00 00:00:00'),(11,3,3,5.41,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(12,4,1,10.20,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(13,4,2,0.77,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(14,4,3,1.28,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(15,5,2,20.00,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(16,6,1,7.29,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(17,6,5,0.35,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(18,7,1,5.86,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(19,7,2,0.43,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(20,7,4,0.57,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(21,7,5,3.00,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(22,8,1,7.16,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(23,8,4,0.52,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(24,8,5,1.56,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(25,9,1,5.17,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(26,9,4,0.29,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(27,9,5,0.43,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(28,10,1,9.20,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(29,10,4,0.69,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(30,11,1,5.35,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(31,11,4,2.52,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(32,11,5,25.11,'Sedang','2019-09-19 16:00:00','0000-00-00 00:00:00'),(33,12,1,13.04,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(34,12,5,32.61,'Sedang','2019-09-19 16:00:00','0000-00-00 00:00:00'),(35,13,1,28.38,'Sedang','2019-09-19 16:00:00','0000-00-00 00:00:00'),(36,13,2,0.14,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(37,13,3,0.69,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(38,13,4,4.95,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(39,13,5,0.14,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(40,14,1,9.30,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(41,14,2,1.37,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00'),(42,15,1,22.83,'Ringan','2019-09-19 16:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `block_ento_fito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ento_fito`
--

DROP TABLE IF EXISTS `ento_fito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ento_fito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ento_fito`
--

LOCK TABLES `ento_fito` WRITE;
/*!40000 ALTER TABLE `ento_fito` DISABLE KEYS */;
INSERT INTO `ento_fito` VALUES (1,'Oryctes rhinoceros'),(2,'Brontispa longissima'),(3,'Rhynchophorus'),(4,'Busuk pucuk'),(5,'Parasa balitkae');
/*!40000 ALTER TABLE `ento_fito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varietas`
--

DROP TABLE IF EXISTS `varietas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `varietas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varietas`
--

LOCK TABLES `varietas` WRITE;
/*!40000 ALTER TABLE `varietas` DISABLE KEYS */;
INSERT INTO `varietas` VALUES (1,'Dalam Mapanget (DMT)',''),(2,'Dalam Kima Atas ','Galur 2'),(3,'DMT Muda',''),(4,'Kopyor',''),(5,'Cungap merah',''),(6,'Genjah Salak (GSK)',''),(7,'Dalam Mapanget (DMT)','32x83'),(8,'Dalam Mapanget (DMT)','S4'),(9,'Dalam Mapanget (DMT)','S3'),(10,'Dalam Mapanget (DMT)','S2'),(11,'Hibrida',''),(12,'Dalam Mapanget (DMT)','D2'),(13,'Dalam Mapanget (DMT)','Pohon Terpilih'),(14,'Kelapa Komposit',''),(15,'Genjah Kuning Nias (GKN)',''),(16,'KHINA','');
/*!40000 ALTER TABLE `varietas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23  9:07:49
