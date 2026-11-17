-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: test_db
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `opiskelija`
--

DROP TABLE IF EXISTS `opiskelija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiskelija` (
  `idOpiskelija` int NOT NULL AUTO_INCREMENT,
  `Etunimi` varchar(45) DEFAULT NULL,
  `Sukunimi` varchar(45) DEFAULT NULL,
  `Osoite` varchar(45) DEFAULT NULL,
  `Luokkatunnus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOpiskelija`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiskelija`
--

LOCK TABLES `opiskelija` WRITE;
/*!40000 ALTER TABLE `opiskelija` DISABLE KEYS */;
INSERT INTO `opiskelija` VALUES (1,'Aku','Ankka','Ankkalinna 313','TVT25SPO'),(2,'Roope','Ankka','Ankkalinna 1','TVT25SPO'),(3,'Iines','Ankka','Ankkalinna 315','TVT25SPL'),(4,'Mikki','Hiiri','Ankkalinna 316','TVT25SPL'),(5,'Hessu','Hopo','Ankkalinna 317','TVT25SPO');
/*!40000 ALTER TABLE `opiskelija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opintojakso`
--

DROP TABLE IF EXISTS `opintojakso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opintojakso` (
  `idOpintojakso` int NOT NULL AUTO_INCREMENT,
  `Koodi` varchar(45) DEFAULT NULL,
  `Laajuus` tinyint DEFAULT NULL,
  `Nimi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOpintojakso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opintojakso`
--

LOCK TABLES `opintojakso` WRITE;
/*!40000 ALTER TABLE `opintojakso` DISABLE KEYS */;
INSERT INTO `opintojakso` VALUES (1,'IN00CT05',5,'Tietokannat ja rajapinnat'),(2,'IN00CT06',5,'Linux-hallinta'),(3,'IN00CT07',5,'Olio-ohjelmointi'),(4,'IN00CT08',3,'Matematiikka 2'),(5,'IN00CT09',3,'Ruotsin kieli');
/*!40000 ALTER TABLE `opintojakso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arviointi`
--

DROP TABLE IF EXISTS `arviointi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arviointi` (
  `idArviointi` int NOT NULL AUTO_INCREMENT,
  `Paivamaara` date DEFAULT NULL,
  `Arvosana` tinyint DEFAULT NULL,
  `idOpiskelija` int NOT NULL,
  `idOpintojakso` int NOT NULL,
  PRIMARY KEY (`idArviointi`),
  KEY `idOpiskelija` (`idOpiskelija`),
  KEY `idOpintojakso` (`idOpintojakso`),
  CONSTRAINT `arviointi_ibfk_1` FOREIGN KEY (`idOpiskelija`) REFERENCES `opiskelija` (`idOpiskelija`),
  CONSTRAINT `arviointi_ibfk_2` FOREIGN KEY (`idOpintojakso`) REFERENCES `opintojakso` (`idOpintojakso`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arviointi`
--

LOCK TABLES `arviointi` WRITE;
/*!40000 ALTER TABLE `arviointi` DISABLE KEYS */;
INSERT INTO `arviointi` VALUES (1,'2026-11-10',3,1,1),(2,'2026-11-12',2,1,2),(3,'2026-11-14',0,1,5),(4,'2026-11-10',5,2,1),(5,'2026-11-12',4,2,3),(6,'2026-11-10',4,3,1),(7,'2026-11-14',3,3,4),(8,'2026-11-10',5,4,1),(9,'2026-11-12',4,4,2),(10,'2026-11-12',5,5,3),(11,'2026-11-10',1,5,1);
/*!40000 ALTER TABLE `arviointi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-17 15:40:22
