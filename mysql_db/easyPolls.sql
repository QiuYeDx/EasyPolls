-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (arm64)
--
-- Host: localhost    Database: easyPolls
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `time` date NOT NULL,
  `content` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `op1` varchar(255) NOT NULL,
  `op2` varchar(255) NOT NULL,
  `op3` varchar(255) DEFAULT NULL,
  `op4` varchar(255) DEFAULT NULL,
  `op5` varchar(255) DEFAULT NULL,
  `n1` int unsigned DEFAULT NULL,
  `n2` int DEFAULT NULL,
  `n3` int DEFAULT NULL,
  `n4` int DEFAULT NULL,
  `n5` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
INSERT INTO `polls` VALUES (1,'问题1','2021-10-01','描述1','是','否','路过 ','','',4,0,1,0,0),(2,'问题2','2021-10-02','描述2','是','否','','','',0,0,0,0,0),(3,'问题3','2021-10-04','描述3','是','否','','','',0,0,0,0,0),(4,'问题4','2021-10-05','描述4','是','否','','','',0,0,0,0,0),(5,'问题5','2021-10-07','描述5','是','否','','','',0,0,0,0,0),(6,'问题6','2021-10-08','描述6','是','否','','','',1,0,0,0,0),(7,'问题7','2021-10-09','描述7','是','否','','','',1,0,0,0,0),(8,'问题8','2021-10-14','描述8','是','否','','','',0,0,0,0,0),(9,'问题9','2021-10-15','描述9','A','B','C','D','E',0,0,0,0,0),(10,'问题10','2021-10-15','描述10','选项1','选项2','选项3','选项4','选项5',0,0,0,0,0),(11,'问题11','2021-10-15','描述11','是','否','','','',0,0,0,0,0),(12,'问题12','2021-10-15','描述12','A','B','C','D','E',0,0,0,0,0),(13,'你喜欢EasyPolls吗？','2021-10-15','如果觉得喜欢，就点个赞吧～','赞！','还需要完善','','','',1,0,0,0,0);
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 17:06:17
