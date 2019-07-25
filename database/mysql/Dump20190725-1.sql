-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: oc
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `t_author`
--

DROP TABLE IF EXISTS `t_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `chinese_name` varchar(45) DEFAULT NULL COMMENT '中文名',
  `birth` smallint(4) DEFAULT NULL COMMENT '出生年份',
  `died` smallint(4) DEFAULT NULL COMMENT '逝世年份',
  `nationality` varchar(45) DEFAULT NULL COMMENT '国籍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_author`
--

LOCK TABLES `t_author` WRITE;
/*!40000 ALTER TABLE `t_author` DISABLE KEYS */;
INSERT INTO `t_author` VALUES (1,'García Márquez','加西亚·马尔克斯',1927,2014,'哥伦比亚'),(2,'吴军','吴军',NULL,NULL,'美国');
/*!40000 ALTER TABLE `t_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book`
--

DROP TABLE IF EXISTS `t_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chinese_name` varchar(100) DEFAULT NULL COMMENT '书名',
  `name` varchar(100) DEFAULT NULL COMMENT '原书名',
  `subtitle` varchar(100) DEFAULT NULL COMMENT '副标题',
  `isbn` varchar(60) DEFAULT NULL,
  `price` float DEFAULT NULL COMMENT '定价',
  `publisher` varchar(45) DEFAULT NULL COMMENT '出版社',
  `publication_year` smallint(4) DEFAULT NULL COMMENT '出版年',
  `book_binding` smallint(1) DEFAULT NULL COMMENT '装帧',
  `page` mediumint(5) DEFAULT NULL COMMENT '页数',
  `douban_value` float DEFAULT NULL COMMENT '豆瓣评分',
  `douban_count` int(11) DEFAULT NULL COMMENT '评价人数',
  `buy_state` smallint(1) DEFAULT NULL COMMENT '购买状态',
  `translator` varchar(45) DEFAULT NULL COMMENT '译者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='书籍表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book`
--

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` VALUES (1,'百年孤独','Cien años de soledad',NULL,'9787544253994',39.5,'南海出版公司',2011,2,360,9.2,132127,1,'范晔');
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book_author`
--

DROP TABLE IF EXISTS `t_book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_book_author` (
  `author_id` int(11) NOT NULL COMMENT '作者ID',
  `book_id` int(11) NOT NULL COMMENT '书籍ID',
  PRIMARY KEY (`author_id`,`book_id`),
  KEY `book_id_fk_idx` (`book_id`),
  CONSTRAINT `author_id_fk` FOREIGN KEY (`author_id`) REFERENCES `t_author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `t_book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍作者中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book_author`
--

LOCK TABLES `t_book_author` WRITE;
/*!40000 ALTER TABLE `t_book_author` DISABLE KEYS */;
INSERT INTO `t_book_author` VALUES (1,1);
/*!40000 ALTER TABLE `t_book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_book`
--

DROP TABLE IF EXISTS `v_book`;
/*!50001 DROP VIEW IF EXISTS `v_book`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_book` AS SELECT 
 1 AS `id`,
 1 AS `chinese_name`,
 1 AS `name`,
 1 AS `buy_state`,
 1 AS `douban_value`,
 1 AS `douban_count`,
 1 AS `subtitle`,
 1 AS `translator`,
 1 AS `publisher`,
 1 AS `publication_year`,
 1 AS `page`,
 1 AS `price`,
 1 AS `book_binding`,
 1 AS `isbn`,
 1 AS `author_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_book`
--

/*!50001 DROP VIEW IF EXISTS `v_book`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_book` AS select `t_book`.`id` AS `id`,`t_book`.`chinese_name` AS `chinese_name`,`t_book`.`name` AS `name`,`t_book`.`buy_state` AS `buy_state`,`t_book`.`douban_value` AS `douban_value`,`t_book`.`douban_count` AS `douban_count`,`t_book`.`subtitle` AS `subtitle`,`t_book`.`translator` AS `translator`,`t_book`.`publisher` AS `publisher`,`t_book`.`publication_year` AS `publication_year`,`t_book`.`page` AS `page`,`t_book`.`price` AS `price`,`t_book`.`book_binding` AS `book_binding`,`t_book`.`isbn` AS `isbn`,group_concat(`t_author`.`chinese_name` separator '/') AS `author_name` from ((`t_book_author` left join `t_author` on((`t_author`.`id` = `t_book_author`.`author_id`))) left join `t_book` on((`t_book`.`id` = `t_book_author`.`book_id`))) group by `t_book`.`id`,`t_book`.`chinese_name`,`t_book`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25  9:56:29
