CREATE DATABASE  IF NOT EXISTS `umayor_convenios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `umayor_convenios`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: umayor_convenios
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `origen` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:29'),(2,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:30'),(3,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:32'),(4,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:33'),(5,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:34'),(6,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:35'),(7,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:36'),(8,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:36'),(9,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:37'),(10,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:38'),(11,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:39'),(12,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:39'),(13,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:40'),(14,'manuel meriño','mmdqmwd@dqwdw.cl','11111111',2,10,224,'desktop','2017-07-19 23:46:41'),(15,'Manuel Meriño','manuel.merino.c@gmail.com','967391357',2,12,112,'desktop','2017-07-19 23:51:11'),(16,'Manuel Meriño','manuel.merino.c@gmail.com','967391357',2,12,112,'desktop','2017-07-19 23:51:11'),(17,'Manuel Meriño','manuel.merino.c@gmail.com','967391357',2,12,112,'desktop','2017-07-19 23:51:39'),(18,'Manuel Meriño','manuel.merino.c@gmail.com','967391357',2,12,110,'desktop','2017-07-19 23:52:03'),(19,'manuel meriño','mmerino@cronstudio.com','87878787',1,4,16,'desktop','2017-07-20 00:25:17');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 18:41:27
