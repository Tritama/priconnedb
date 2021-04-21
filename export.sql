-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: list_app
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `chara`
--

DROP TABLE IF EXISTS `chara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `limitedType` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `positionNumber` int(11) DEFAULT NULL,
  `star6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chara`
--

LOCK TABLES `chara` WRITE;
/*!40000 ALTER TABLE `chara` DISABLE KEYS */;
INSERT INTO `chara` VALUES (1,'ペコリーヌ',0,0,110,1),(2,'リマ',0,0,0,1),(3,'クルミ',0,0,460,0),(4,'レイ',0,0,490,1),(5,'ミソギ',0,0,370,1),(6,'クルミ',2,0,550,0),(7,'レイ',3,0,90,0),(8,'エリコ',12,0,290,0),(9,'ペコリーヌ',1,0,450,0),(10,'タマキ',0,0,400,1),(11,'スズメ',1,2,2320,0),(12,'タマキ',1,0,430,0),(13,'キャル',1,2,2330,0),(14,'シノブ',4,1,1210,0),(15,'ミサキ',4,2,2420,0),(16,'チカ',2,2,2310,0),(17,'アヤネ',2,0,310,0),(18,'ユイ',3,2,2240,0),(19,'ヒヨリ',3,0,200,0),(20,'シズル',12,1,1060,0),(21,'ムイミ',0,0,160,0),(22,'アン',0,2,2010,0),(23,'グレア',0,1,1270,0),(24,'クウカ',11,0,50,0),(25,'ニノン',11,0,220,0),(26,'ラム',0,1,1340,0),(27,'レム',0,1,1330,0),(28,'エミリア',0,2,2170,0),(29,'スズナ',1,2,2100,0),(30,'イオ',1,2,2140,0),(31,'サレン',1,1,1440,0),(32,'カオリ',1,1,1180,0),(33,'マコト',1,0,240,0),(34,'マホ',1,2,2360,0),(35,'ネネカ',0,2,2030,0),(36,'アオイ',10,2,2040,0),(37,'クロエ',0,0,270,0),(38,'チエル',0,0,420,0),(39,'ユニ',0,2,2400,0),(40,'キョウカ',4,2,2430,0),(41,'ミソギ',4,0,390,0),(42,'ミミ',4,1,1020,0),(43,'ルナ',0,2,2290,0),(44,'カヤ',0,0,190,0),(45,'イノリ',0,0,340,0),(46,'ノゾミ',2,1,1140,0),(47,'クリスティーナ',2,0,520,0),(48,'アンナ',0,1,1200,0),(49,'イリヤ',2,0,500,0),(50,'キャル',3,2,2050,0),(51,'スズメ',3,2,2160,0),(52,'コッコロ',3,0,140,0),(53,'カスミ',5,2,2190,0),(54,'シオリ',5,2,2120,0),(55,'ウヅキ',14,1,1040,0),(56,'ミオ',14,2,2060,0),(57,'サレン',0,1,1190,1),(58,'リン',14,0,100,0),(59,'ニノン',0,1,1130,1),(60,'ノゾミ',0,0,150,0),(61,'リン',9,1,1160,0),(62,'マヒル',9,1,1070,0),(63,'コッコロ',7,1,1360,0),(64,'アユミ',8,1,1250,0),(65,'リノ',8,2,2200,0),(66,'モニカ',0,1,1120,0),(67,'アンナ',1,0,510,0),(68,'ルカ',1,0,320,0),(69,'ナナカ',1,1,1220,0),(70,'ハツネ',1,1,1400,0),(71,'ミサト',1,2,2070,0),(72,'アカリ',0,1,1410,1),(73,'ジュン',1,0,250,0),(74,'アカリ',6,1,1290,0),(75,'ヨリ',6,1,1300,0),(76,'ミミ',0,1,1000,1),(77,'ツムギ',4,0,80,0),(78,'マツリ',4,0,280,0),(79,'レイ',4,1,1050,0),(80,'トモ',5,1,1090,0),(81,'シノブ',0,1,1010,0),(82,'ユカリ',2,1,1110,0),(83,'サレン',2,0,70,0),(84,'ヒヨリ',7,0,350,0),(85,'ムイミ',3,0,40,0),(86,'ペコリーヌ',3,0,480,0),(87,'マヒル',0,1,1080,1),(88,'コッコロ',15,1,1310,0),(89,'ユイ',15,1,1430,0),(90,'シェフィ',0,1,1030,0),(91,'カスミ',1,2,2220,0),(92,'キャル',7,2,2250,0),(93,'リマ',13,0,210,0),(94,'マコト',13,0,180,0),(95,'ミフユ',0,1,1150,1),(96,'ミツキ',0,1,1390,0),(97,'アキノ',0,0,230,1),(98,'コッコロ',0,1,1240,1),(99,'ユカリ',0,1,1100,1),(100,'ヨリ',0,1,1420,1),(101,'コッコロ',1,1,1320,0),(102,'ミヤコ',4,1,1450,0),(103,'アユミ',0,1,1260,0),(104,'リノ',0,2,2080,1),(105,'マホ',0,2,2370,1),(106,'ハツネ',0,2,2270,1),(107,'イオ',0,2,2130,1),(108,'シオリ',0,2,2110,0),(109,'ユキ',0,2,2390,0),(110,'スズナ',0,2,2090,1),(111,'チカ',0,2,2350,0),(112,'マコト',0,0,170,0),(113,'シズル',0,0,530,1),(114,'キャル',0,2,2260,1),(115,'ユイ',0,2,2380,1),(116,'ミサキ',0,2,2280,0),(117,'スズメ',0,2,2150,0),(118,'アオイ',0,2,2340,0),(119,'ルゥ',0,2,2020,0),(120,'ジータ',0,0,470,0),(121,'クウカ',0,0,20,0),(122,'ミヤコ',0,0,10,0),(123,'カオリ',0,0,60,0),(124,'アリサ',0,2,2000,0),(125,'ラビリスタ',0,1,1370,0),(126,'ツムギ',0,0,330,0),(127,'キョウカ',0,2,2410,1),(128,'ミサト',0,2,2210,0),(129,'イリヤ',0,1,1170,0),(130,'マツリ',0,0,260,0),(131,'トモ',0,0,410,0),(132,'クリスティーナ',0,0,540,0),(133,'アヤネ',0,0,380,1),(134,'カスミ',0,2,2180,0),(135,'リン',0,1,1350,0),(136,'ナナカ',0,2,2230,0),(137,'ルカ',0,0,130,0),(138,'エリコ',0,0,440,0),(139,'ペコリーヌ',7,0,120,0),(140,'アキノ',2,0,300,0),(141,'ジュン',0,0,30,0),(142,'ネネカ',3,1,1380,0),(143,'ヒヨリ',0,0,360,1),(144,'ミフユ',1,1,1230,0),(145,'モニカ',5,1,1280,0),(146,'ユイ',7,2,2300,0);
/*!40000 ALTER TABLE `chara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chara_limitedtype`
--

DROP TABLE IF EXISTS `chara_limitedtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chara_limitedtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitedType` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chara_limitedtype`
--

LOCK TABLES `chara_limitedtype` WRITE;
/*!40000 ALTER TABLE `chara_limitedtype` DISABLE KEYS */;
INSERT INTO `chara_limitedtype` VALUES (1,'サマー'),(2,'クリスマス'),(3,'ニューイヤー'),(4,'ハロウィン'),(5,'マジカル'),(6,'エンジェル'),(7,'プリンセス'),(8,'ワンダー'),(9,'レンジャー'),(10,'編入生'),(11,'オーエド'),(12,'バレンタイン'),(13,'シンデレラ'),(14,'デレマス'),(15,'儀装束');
/*!40000 ALTER TABLE `chara_limitedtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `boss` int(11) DEFAULT NULL,
  `chara1_id` int(11) DEFAULT NULL,
  `chara1_rank` int(11) DEFAULT NULL,
  `chara2_id` int(11) DEFAULT NULL,
  `chara2_rank` int(11) DEFAULT NULL,
  `chara3_id` int(11) DEFAULT NULL,
  `chara3_rank` int(11) DEFAULT NULL,
  `chara4_id` int(11) DEFAULT NULL,
  `chara4_rank` int(11) DEFAULT NULL,
  `chara5_id` int(11) DEFAULT NULL,
  `chara5_rank` int(11) DEFAULT NULL,
  `auto` int(11) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `URL` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `boss` int(11) DEFAULT NULL,
  `chara1_id` int(11) DEFAULT NULL,
  `chara1_star` int(11) DEFAULT NULL,
  `chara1_rank` int(11) DEFAULT NULL,
  `chara2_id` int(11) DEFAULT NULL,
  `chara2_star` int(11) DEFAULT NULL,
  `chara2_rank` int(11) DEFAULT NULL,
  `chara3_id` int(11) DEFAULT NULL,
  `chara3_star` int(11) DEFAULT NULL,
  `chara3_rank` int(11) DEFAULT NULL,
  `chara4_id` int(11) DEFAULT NULL,
  `chara4_star` int(11) DEFAULT NULL,
  `chara4_rank` int(11) DEFAULT NULL,
  `chara5_id` int(11) DEFAULT NULL,
  `chara5_star` int(11) DEFAULT NULL,
  `chara5_rank` int(11) DEFAULT NULL,
  `auto` int(11) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `URL` text,
  `carryover` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (202135,202102,4,5,125,5,19,57,6,19,4,6,19,84,3,19,137,3,18,0,14000000,'https://gamewith.jp/pricone-re/article/show/143218',0),(202137,202102,4,5,91,3,14,50,3,20,35,3,19,142,3,14,63,4,18,0,16000000,'https://gamewith.jp/pricone-re/article/show/143218',0),(202138,202102,4,5,105,6,14,91,3,14,50,3,20,35,4,19,72,6,18,1,15500000,'https://gamewith.jp/pricone-re/article/show/143218',0),(202139,202102,4,5,36,5,18,125,5,19,63,3,14,84,3,19,97,6,19,1,13000000,'https://gamewith.jp/pricone-re/article/show/143218',0),(202141,202102,4,4,125,5,19,63,3,14,84,3,19,33,4,20,97,6,19,1,15000000,'https://gamewith.jp/pricone-re/article/show/163515',0),(202142,202102,4,5,13,3,20,35,4,19,72,6,14,49,3,20,24,5,20,0,10000000,'https://gamewith.jp/pricone-re/article/show/143218',0),(202143,202102,4,4,134,3,14,50,3,20,35,5,19,142,4,14,63,3,14,0,11000000,'https://gamewith.jp/pricone-re/article/show/163515',0),(202144,202102,4,4,13,5,20,35,5,19,22,5,20,72,6,18,63,4,19,1,9500000,'https://gamewith.jp/pricone-re/article/show/163515',0),(202145,202102,4,3,125,5,19,86,5,18,84,4,19,97,6,19,83,4,20,1,11500000,'https://gamewith.jp/pricone-re/article/show/155569',0),(202146,202102,4,3,43,4,16,91,5,12,50,3,20,57,6,19,24,5,19,1,20000000,'https://gamewith.jp/pricone-re/article/show/155569',0),(202147,202102,4,3,105,6,14,91,3,14,50,5,20,35,5,19,31,5,14,0,10500000,'https://gamewith.jp/pricone-re/article/show/155569',0),(202148,202102,4,3,105,6,14,13,5,20,35,5,19,22,5,20,31,5,14,0,9200000,'https://gamewith.jp/pricone-re/article/show/155569',0),(202149,202102,4,3,34,5,20,35,5,19,22,5,20,72,6,18,24,5,20,0,7200000,'https://gamewith.jp/pricone-re/article/show/155569',0),(202150,202102,4,2,125,5,19,57,6,19,86,5,18,10,6,19,84,5,19,1,14000000,'https://gamewith.jp/pricone-re/article/show/120394',0),(202151,202102,4,2,18,3,11,50,4,20,35,3,19,31,3,14,72,6,19,1,10000000,'https://gamewith.jp/pricone-re/article/show/120394',0),(202152,202102,4,2,99,6,16,132,5,19,10,6,19,84,3,19,33,3,20,1,10000000,'https://gamewith.jp/pricone-re/article/show/120394',0),(202153,202102,4,2,13,5,20,18,3,12,35,3,19,22,5,20,31,3,14,0,7100000,'https://gamewith.jp/pricone-re/article/show/120394',0),(202154,202102,4,1,105,6,14,13,5,20,50,5,20,35,4,19,72,6,19,0,17500000,'https://gamewith.jp/pricone-re/article/show/117526',0),(202155,202102,4,1,125,5,19,86,5,18,84,4,19,33,3,20,137,3,19,1,16000000,'https://gamewith.jp/pricone-re/article/show/117526',0),(202156,202102,4,1,34,5,20,13,5,20,35,4,19,22,5,20,72,6,19,0,14000000,'https://gamewith.jp/pricone-re/article/show/117526',0),(202157,202102,4,1,36,5,18,132,5,19,84,4,19,33,3,20,52,3,18,0,10000000,'https://gamewith.jp/pricone-re/article/show/117526',0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'にんじゃわんこ');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19  3:36:52
