-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: erhuo
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `agent` (
  `AgentID` int(11) NOT NULL AUTO_INCREMENT,
  `UserPhone` varchar(45) NOT NULL,
  `AgentTitle` varchar(45) NOT NULL,
  `AgentMoney1` varchar(10) NOT NULL,
  `AgentMoney2` varchar(10) DEFAULT NULL,
  `AgentDescribe` varchar(500) NOT NULL,
  `AgentType` varchar(20) DEFAULT NULL,
  `AgentSituation` varchar(10) DEFAULT NULL,
  `AgentImg1` varchar(1000) DEFAULT NULL,
  `AgentImg2` varchar(1000) DEFAULT NULL,
  `AgentImg3` varchar(1000) DEFAULT NULL,
  `AgentImg4` varchar(1000) DEFAULT NULL,
  `AgentImg5` varchar(1000) DEFAULT NULL,
  `AgentUserName` varchar(20) NOT NULL,
  `AgentUserPhone` varchar(45) NOT NULL,
  `AgentUserQQ` varchar(45) DEFAULT NULL,
  `AgentUserPlace` varchar(45) NOT NULL,
  `AgentData` varchar(500) NOT NULL,
  PRIMARY KEY (`AgentID`),
  KEY `AgentUser_id_idx` (`AgentID`,`UserPhone`),
  KEY `Agent_User_FK` (`UserPhone`),
  CONSTRAINT `Agent_User_FK` FOREIGN KEY (`UserPhone`) REFERENCES `user` (`userphone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 10:39:17
