-- MySQL dump 10.13  Distrib 5.7.44, for Win64 (x86_64)
--
-- Host: localhost    Database: students
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `los_angeles_county`
--

-- adding this line to restore students databases into students_2 database
USE students_2;

DROP TABLE IF EXISTS `los_angeles_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `los_angeles_county` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `place_type` varchar(50) NOT NULL,
  `city` varchar(75) DEFAULT NULL,
  `county` varchar(75) DEFAULT NULL,
  `established_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`),
  KEY `idx_place_type` (`place_type`),
  KEY `idx_city` (`city`),
  KEY `idx_county` (`county`),
  KEY `idx_established_date` (`established_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `los_angeles_county`
--

LOCK TABLES `los_angeles_county` WRITE;
/*!40000 ALTER TABLE `los_angeles_county` DISABLE KEYS */;
INSERT INTO `los_angeles_county` VALUES (1,'Universal Studios Hollywood','Theme Park','Universal City','Los Angeles County','1964-07-15','2025-10-06 02:19:56','2025-10-06 02:19:56'),(2,'Griffith Observatory','Observatory','Los Angeles','Los Angeles County','1935-05-14','2025-10-06 02:19:56','2025-10-06 02:19:56'),(3,'Hollywood Walk of Fame','Historic Landmark','Hollywood','Los Angeles County','1960-02-08','2025-10-06 02:19:56','2025-10-06 02:19:56'),(4,'Getty Center','Museum','Los Angeles','Los Angeles County','1997-12-16','2025-10-06 02:19:56','2025-10-06 02:19:56'),(5,'Santa Monica Pier','Historic Landmark','Santa Monica','Los Angeles County','1909-09-09','2025-10-06 02:19:56','2025-10-06 02:19:56'),(6,'Los Angeles County Museum of Art','Museum','Los Angeles','Los Angeles County','1965-04-12','2025-10-06 02:19:56','2025-10-06 02:19:56'),(7,'Rodeo Drive','Shopping District','Beverly Hills','Los Angeles County','1961-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(8,'Hollywood Sign','Historic Landmark','Hollywood Hills','Los Angeles County','1923-07-13','2025-10-06 02:19:56','2025-10-06 02:19:56'),(9,'Dodger Stadium','Sports Stadium','Los Angeles','Los Angeles County','1962-04-10','2025-10-06 02:19:56','2025-10-06 02:19:56'),(10,'Natural History Museum of Los Angeles County','Museum','Los Angeles','Los Angeles County','1913-03-01','2025-10-06 02:19:56','2025-10-06 02:19:56');
/*!40000 ALTER TABLE `los_angeles_county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `napa_county`
--

DROP TABLE IF EXISTS `napa_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `napa_county` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `place_type` varchar(50) NOT NULL,
  `city` varchar(75) DEFAULT NULL,
  `county` varchar(75) DEFAULT NULL,
  `established_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`),
  KEY `idx_place_type` (`place_type`),
  KEY `idx_city` (`city`),
  KEY `idx_county` (`county`),
  KEY `idx_established_date` (`established_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `napa_county`
--

LOCK TABLES `napa_county` WRITE;
/*!40000 ALTER TABLE `napa_county` DISABLE KEYS */;
INSERT INTO `napa_county` VALUES (1,'Napa Valley Wine Region','Wine Region','Napa','Napa County','1800-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(2,'Castello di Amorosa','Winery','Calistoga','Napa County','2007-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(3,'Napa Valley Wine Train','Tourist Attraction','Napa','Napa County','1989-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(4,'Robert Mondavi Winery','Winery','Oakville','Napa County','1966-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(5,'Sterling Vineyards','Winery','Calistoga','Napa County','1964-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(6,'V. Sattui Winery','Winery','St. Helena','Napa County','1976-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(7,'Opus One Winery','Winery','Oakville','Napa County','1978-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(8,'Beringer Vineyards','Winery','St. Helena','Napa County','1876-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(9,'Domaine Carneros','Winery','Napa','Napa County','1987-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(10,'Napa Valley Opera House','Historic Theater','Napa','Napa County','1879-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56');
/*!40000 ALTER TABLE `napa_county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orange_county`
--

DROP TABLE IF EXISTS `orange_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orange_county` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `place_type` varchar(50) NOT NULL,
  `city` varchar(75) DEFAULT NULL,
  `county` varchar(75) DEFAULT NULL,
  `established_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`),
  KEY `idx_place_type` (`place_type`),
  KEY `idx_city` (`city`),
  KEY `idx_county` (`county`),
  KEY `idx_established_date` (`established_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orange_county`
--

LOCK TABLES `orange_county` WRITE;
/*!40000 ALTER TABLE `orange_county` DISABLE KEYS */;
INSERT INTO `orange_county` VALUES (1,'Disneyland Resort','Theme Park','Anaheim','Orange County','1955-07-17','2025-10-06 02:19:56','2025-10-06 02:19:56'),(2,'Knott Berry Farm','Theme Park','Buena Park','Orange County','1940-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(3,'Huntington Beach Pier','Historic Landmark','Huntington Beach','Orange County','1904-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(4,'South Coast Plaza','Shopping Mall','Costa Mesa','Orange County','1967-03-15','2025-10-06 02:19:56','2025-10-06 02:19:56'),(5,'Mission San Juan Capistrano','Historic Landmark','San Juan Capistrano','Orange County','1776-11-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(6,'Irvine Spectrum Center','Shopping District','Irvine','Orange County','1995-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(7,'Balboa Fun Zone','Amusement Area','Newport Beach','Orange County','1936-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(8,'Crystal Cove State Park','State Park','Laguna Beach','Orange County','1979-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(9,'Orange County Museum of Art','Museum','Santa Ana','Orange County','1962-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(10,'Dana Point Harbor','Harbors','Dana Point','Orange County','1971-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56');
/*!40000 ALTER TABLE `orange_county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_francisco_county`
--

DROP TABLE IF EXISTS `san_francisco_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_francisco_county` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `place_type` varchar(50) NOT NULL,
  `city` varchar(75) DEFAULT NULL,
  `county` varchar(75) DEFAULT NULL,
  `established_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`),
  KEY `idx_place_type` (`place_type`),
  KEY `idx_city` (`city`),
  KEY `idx_county` (`county`),
  KEY `idx_established_date` (`established_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_francisco_county`
--

LOCK TABLES `san_francisco_county` WRITE;
/*!40000 ALTER TABLE `san_francisco_county` DISABLE KEYS */;
INSERT INTO `san_francisco_county` VALUES (1,'Golden Gate Bridge','Bridge','San Francisco','San Francisco County','1937-05-27','2025-10-06 02:19:56','2025-10-06 02:19:56'),(2,'Alcatraz Island','Historic Site','San Francisco','San Francisco County','1934-08-11','2025-10-06 02:19:56','2025-10-06 02:19:56'),(3,'Fisherman Wharf','Tourist District','San Francisco','San Francisco County','1880-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(4,'Pier 39','Shopping','San Francisco','San Francisco County','1978-06-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(5,'Union Square','Public Plaza','San Francisco','San Francisco County','1850-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(6,'Chinatown San Francisco','Historic District','San San Francisco','San Francisco County','1848-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(7,'Coit Tower','Historic Landmark','San Francisco','San Francisco County','1933-10-08','2025-10-06 02:19:56','2025-10-06 02:19:56'),(8,'San Francisco Museum of Modern Art','Museum','San Francisco','San Francisco County','1935-05-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(9,'Lombard Street','Historic Landmark','San Francisco','San Francisco County','1922-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(10,'Palace of Fine Arts','Historic Landmark','San Francisco','San Francisco County','1915-12-15','2025-10-06 02:19:56','2025-10-06 02:19:56');
/*!40000 ALTER TABLE `san_francisco_county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `santa_clara_county`
--

DROP TABLE IF EXISTS `santa_clara_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `santa_clara_county` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `place_type` varchar(50) NOT NULL,
  `city` varchar(75) DEFAULT NULL,
  `county` varchar(75) DEFAULT NULL,
  `established_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`),
  KEY `idx_place_type` (`place_type`),
  KEY `idx_city` (`city`),
  KEY `idx_county` (`county`),
  KEY `idx_established_date` (`established_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `santa_clara_county`
--

LOCK TABLES `santa_clara_county` WRITE;
/*!40000 ALTER TABLE `santa_clara_county` DISABLE KEYS */;
INSERT INTO `santa_clara_county` VALUES (1,'Silicon Valley','Technology Region','San Jose','Santa Clara County','1950-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(2,'Apple Park Visitor Center','Museum','Cupertino','Santa Clara County','2017-11-17','2025-10-06 02:19:56','2025-10-06 02:19:56'),(3,'Intel Museum','Museum','Santa Clara','Santa Clara County','1992-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(4,'CaliforniaÔÇÖs Great America','Theme Park','Santa Clara','Santa Clara County','1976-03-20','2025-10-06 02:19:56','2025-10-06 02:19:56'),(5,'Winchester Mystery House','Historic Mansion','San Jose','Santa Clara County','1884-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(6,'The Tech Interactive','Science & Technology Museum','San Jose','Santa Clara County','1990-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(7,'LeviÔÇÖs Stadium','Sports Stadium','Santa Clara','Santa Clara County','2014-07-17','2025-10-06 02:19:56','2025-10-06 02:19:56'),(8,'Rosicrucian Egyptian Museum','Museum','San Jose','Santa Clara County','1927-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56'),(9,'SAP Center','Sports Arena','San Jose','Santa Clara County','1993-09-07','2025-10-06 02:19:56','2025-10-06 02:19:56'),(10,'Happy Hollow Park & Zoo','Zoo','San Jose','Santa Clara County','1961-01-01','2025-10-06 02:19:56','2025-10-06 02:19:56');
/*!40000 ALTER TABLE `santa_clara_county` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-05 23:00:46
