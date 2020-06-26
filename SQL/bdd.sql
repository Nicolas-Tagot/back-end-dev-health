-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: bdd_hackathon
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Sophie Geautro'),(2,'Marie Gaultier'),(3,' Bruno Maltor'),(4,'Henri Perriot'),(5,'Patrick Bruel'),(6,'Meï Tan');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response` varchar(255) DEFAULT NULL,
  `heure` datetime DEFAULT CURRENT_TIMESTAMP,
  `medic` tinyint(4) DEFAULT NULL,
  `sante` tinyint(4) DEFAULT NULL,
  `perso` tinyint(4) DEFAULT NULL,
  `id_patient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,'Moral : très bien','2020-06-26 10:28:19',NULL,NULL,1,1),(2,'A bien pris son comprimé','2020-06-26 10:28:23',1,NULL,NULL,1),(3,'A bien vérifié son taux de glycémie','2020-06-26 10:28:27',NULL,1,NULL,1),(4,'Taux de glycémie normal > 0,45g/l et < 1,26g/l','2020-06-26 10:28:32',NULL,1,NULL,1),(5,'Moral : très bien','2020-06-26 11:46:16',NULL,NULL,1,1),(6,'N\'a pas pris son comprimé','2020-06-26 11:46:19',1,NULL,NULL,1),(7,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:46:23',NULL,1,NULL,1),(8,'Moral : Bien','2020-06-26 11:46:32',NULL,NULL,1,1),(9,'N\'a pas pris son comprimé','2020-06-26 11:46:35',1,NULL,NULL,1),(10,'A bien vérifié son taux de glycémie','2020-06-26 11:46:40',NULL,1,NULL,1),(11,'Taux de glycémie normal > 0,45g/l et < 1,26g/l','2020-06-26 11:46:43',NULL,1,NULL,1),(12,'Moral : Moyen','2020-06-26 11:46:52',NULL,NULL,1,1),(13,'N\'a pas pris son comprimé','2020-06-26 11:46:58',1,NULL,NULL,1),(14,'A bien vérifié son taux de glycémie','2020-06-26 11:47:02',NULL,1,NULL,1),(15,'Taux de glycémie faible < 0,45g/l','2020-06-26 11:47:06',NULL,1,NULL,1),(16,'Moral : Bien','2020-06-26 11:48:30',NULL,NULL,1,2),(17,'N\'a pas pris son comprimé','2020-06-26 11:48:33',1,NULL,NULL,2),(18,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:48:38',NULL,1,NULL,2),(19,'Moral : Bien','2020-06-26 11:48:46',NULL,NULL,1,2),(20,'N\'a pas pris son comprimé','2020-06-26 11:48:48',1,NULL,NULL,2),(21,'A bien vérifié son taux de glycémie','2020-06-26 11:48:52',NULL,1,NULL,2),(22,'Taux de glycémie normal > 0,45g/l et < 1,26g/l','2020-06-26 11:48:56',NULL,1,NULL,2),(23,'Moral : Bien','2020-06-26 11:49:04',NULL,NULL,1,2),(24,'N\'a pas pris son comprimé','2020-06-26 11:49:07',1,NULL,NULL,2),(25,'A bien vérifié son taux de glycémie','2020-06-26 11:49:12',NULL,1,NULL,2),(26,'Taux de glycémie faible < 0,45g/l','2020-06-26 11:49:15',NULL,1,NULL,2),(27,'Moral : très bien','2020-06-26 11:49:24',NULL,NULL,1,2),(28,'N\'a pas pris son comprimé','2020-06-26 11:49:27',1,NULL,NULL,2),(29,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:49:31',NULL,1,NULL,2),(30,'Moral : très bien','2020-06-26 11:49:39',NULL,NULL,1,2),(31,'A bien pris son comprimé','2020-06-26 11:49:42',1,NULL,NULL,2),(32,'A bien vérifié son taux de glycémie','2020-06-26 11:49:47',NULL,1,NULL,2),(33,'Taux de glycémie élevé > à 1,26g/l','2020-06-26 11:49:51',NULL,1,NULL,2),(34,'Moral : très bien','2020-06-26 11:50:31',NULL,NULL,1,3),(35,'N\'a pas pris son comprimé','2020-06-26 11:50:34',1,NULL,NULL,3),(36,'A bien vérifié son taux de glycémie','2020-06-26 11:50:38',NULL,1,NULL,3),(37,'Taux de glycémie faible < 0,45g/l','2020-06-26 11:50:41',NULL,1,NULL,3),(38,'Moral : très bien','2020-06-26 11:50:49',NULL,NULL,1,3),(39,'N\'a pas pris son comprimé','2020-06-26 11:50:52',1,NULL,NULL,3),(40,'A bien vérifié son taux de glycémie','2020-06-26 11:50:57',NULL,1,NULL,3),(41,'Taux de glycémie faible < 0,45g/l','2020-06-26 11:51:00',NULL,1,NULL,3),(42,'Moral : très bien','2020-06-26 11:51:07',NULL,NULL,1,3),(43,'N\'a pas pris son comprimé','2020-06-26 11:51:10',1,NULL,NULL,3),(44,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:51:13',NULL,1,NULL,3),(45,'Moral : très bien','2020-06-26 11:51:21',NULL,NULL,1,3),(46,'N\'a pas pris son comprimé','2020-06-26 11:51:24',1,NULL,NULL,3),(47,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:51:28',NULL,1,NULL,3),(48,'Moral : très bien','2020-06-26 11:51:36',NULL,NULL,1,3),(49,'N\'a pas pris son comprimé','2020-06-26 11:51:39',1,NULL,NULL,3),(50,'A bien vérifié son taux de glycémie','2020-06-26 11:51:43',NULL,1,NULL,3),(51,'Taux de glycémie élevé > à 1,26g/l','2020-06-26 11:51:47',NULL,1,NULL,3),(52,'Moral : Pas bien','2020-06-26 11:51:57',NULL,NULL,1,3),(53,'A bien pris son comprimé','2020-06-26 11:52:03',1,NULL,NULL,3),(54,'N\'a pas vérifié son taux de glycémie','2020-06-26 11:52:07',NULL,1,NULL,3),(55,'Moral : très bien','2020-06-26 12:11:07',NULL,NULL,1,0),(56,'A bien pris son comprimé','2020-06-26 12:11:21',1,NULL,NULL,0),(57,'A bien vérifié son taux de glycémie','2020-06-26 12:11:28',NULL,1,NULL,0),(58,'Taux de glycémie faible < 0,45g/l','2020-06-26 12:11:31',NULL,1,NULL,0),(59,'Désire être contacté tous les jours','2020-06-26 12:12:10',NULL,NULL,1,0),(60,'Moral : très bien','2020-06-26 13:21:39',NULL,NULL,1,2),(61,'A bien pris son comprimé','2020-06-26 13:21:42',1,NULL,NULL,2),(62,'A bien vérifié son taux de glycémie','2020-06-26 13:21:47',NULL,1,NULL,2),(63,'Taux de glycémie faible < 0,45g/l','2020-06-26 13:21:50',NULL,1,NULL,2);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,'Aucun'),(2,'Grossesse'),(3,'Diabète'),(4,'Echographie'),(5,'Dépression'),(6,'Gastro'),(7,'Grippe');
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 14:10:06