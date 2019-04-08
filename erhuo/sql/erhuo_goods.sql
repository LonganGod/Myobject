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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `GoodsID` int(11) NOT NULL AUTO_INCREMENT,
  `UserPhone` varchar(45) NOT NULL,
  `GoodsTitle` varchar(45) NOT NULL,
  `GoodsMoney1` varchar(10) NOT NULL,
  `GoodsMoney2` varchar(10) DEFAULT NULL,
  `GoodsDescribe` varchar(500) NOT NULL,
  `GoodsType` varchar(20) DEFAULT NULL,
  `GoodsSituation` varchar(10) DEFAULT NULL,
  `GoodsImg1` varchar(100) DEFAULT NULL,
  `GoodsImg2` varchar(100) DEFAULT NULL,
  `GoodsImg3` varchar(100) DEFAULT NULL,
  `GoodsImg4` varchar(100) DEFAULT NULL,
  `GoodsImg5` varchar(100) DEFAULT NULL,
  `GoodsUserName` varchar(20) NOT NULL,
  `GoodsUserPhone` varchar(45) NOT NULL,
  `GoodsUserQQ` varchar(45) DEFAULT NULL,
  `GoodsUserPlace` varchar(45) NOT NULL,
  `GoodsData` varchar(500) NOT NULL,
  PRIMARY KEY (`GoodsID`),
  KEY `GoodsUser_id_idx` (`GoodsID`,`UserPhone`),
  KEY `Goods_User_FK` (`UserPhone`),
  CONSTRAINT `Goods_User_FK` FOREIGN KEY (`UserPhone`) REFERENCES `user` (`userphone`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (6,'15531085321','路由器','123','269','用了两年，半新','dianqi','half','./images/goods/路由器 3.jpg','./images/goods/路由器 4.jpg','','','','王先生','17736137471','359664640','十教216','2018/12/2'),(7,'15531092616','小米 8','2300','2800','入手三个月，有更好的','shouji','new','./images/goods/mi 8 1.jpg','./images/goods/mi 8 2.jpg','./images/goods/mi 8 3.jpg','./images/goods/mi 8 4.jpg','','李士明','15531092616','123456789','十教216','2018/12/2'),(8,'15531092616','路由器','200','249','用了半年，黑色','dianqi','half','./images/goods/路由器 3.jpg','./images/goods/路由器 4.jpg','','','','李先生','15531092616','','西校区 朝曦楼 628','2018/12/2'),(9,'15531092616','雨伞','45','50','时尚雨伞','jujia','new','./images/goods/yvsan 1.jpg','./images/goods/yvsan 2.jpg','./images/goods/yvsan 3.jpg','','','李士明','15531092616','','十教315','2018/12/2'),(10,'15531085321','吉他','530','600','要毕业了，吉他不想带走了','wanju','new','./images/goods/民谣吉他 1.jpg','./images/goods/民谣吉他 2.jpg','','','','王先生','15531085321','','西校区 朝曦楼 628','2018/12/2'),(13,'15531085321','储物柜','80','120','全新 彩色','jujia','new','./images/goods/收纳柜 1.jpg','./images/goods/收纳柜 2.jpg','./images/goods/收纳柜 3.jpg','./images/goods/收纳柜 4.jpg','','王先生','15531085321','359664640','西校区 朝曦楼 628','2018/12/11'),(20,'15531085321','苹果手机 iPhone X','5300','6500','全新','shouji','new','./images/goods/Apple iPhone X 1.jpg','./images/goods/Apple iPhone X 2.jpg','./images/goods/Apple iPhone X 3.jpg','','','王硕','15531085321','123123','西校区 朝曦楼 628','2018/12/25');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 10:39:16
