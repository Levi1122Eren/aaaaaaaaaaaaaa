-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: discutant
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audience`
--

DROP TABLE IF EXISTS `audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audience` (
  `id_audience` int NOT NULL AUTO_INCREMENT,
  `id_watched_discussion` int DEFAULT NULL,
  `id_user_audience` int DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_audience`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audience`
--

LOCK TABLES `audience` WRITE;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban`
--

DROP TABLE IF EXISTS `ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban` (
  `id_ban` int NOT NULL AUTO_INCREMENT,
  `timestamp_ban` datetime(6) DEFAULT NULL,
  `date_and_time` datetime(6) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `screenshots` varbinary(255) DEFAULT NULL,
  `reason` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban`
--

LOCK TABLES `ban` WRITE;
/*!40000 ALTER TABLE `ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Котики',NULL),(2,'Собачки',NULL),(6,'Музыка','');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_topic`
--

DROP TABLE IF EXISTS `category_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_topic` (
  `id_category_topic` int NOT NULL AUTO_INCREMENT,
  `id_category` int DEFAULT NULL,
  `id_topic` int DEFAULT NULL,
  PRIMARY KEY (`id_category_topic`),
  KEY `FKnh177atmjtiwr39gffu3xx22v` (`id_category`),
  KEY `FKeu7t5yi9xay9fc3e0s4tm7d3t` (`id_topic`),
  CONSTRAINT `FKeu7t5yi9xay9fc3e0s4tm7d3t` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`),
  CONSTRAINT `FKnh177atmjtiwr39gffu3xx22v` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_topic`
--

LOCK TABLES `category_topic` WRITE;
/*!40000 ALTER TABLE `category_topic` DISABLE KEYS */;
INSERT INTO `category_topic` VALUES (3,1,3),(5,1,7),(13,1,1),(14,1,5),(15,1,6),(17,1,2),(18,1,4),(20,2,8),(21,2,9),(22,2,10),(23,1,11),(24,6,18),(25,6,12),(26,6,19);
/*!40000 ALTER TABLE `category_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id_chat` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_chat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientlogin`
--

DROP TABLE IF EXISTS `clientlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientlogin` (
  `idclient` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleC` int DEFAULT '4',
  `lastname` varchar(45) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `sex` tinyint DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `info` mediumtext,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idclient`),
  KEY `role_idx` (`roleC`),
  CONSTRAINT `role` FOREIGN KEY (`roleC`) REFERENCES `role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientlogin`
--

LOCK TABLES `clientlogin` WRITE;
/*!40000 ALTER TABLE `clientlogin` DISABLE KEYS */;
INSERT INTO `clientlogin` VALUES (3,'levi1122','$2a$12$k6qAq6SLtzUshjIe6IW1zeYKBEK3QkWTW8Vh.zwSVEUvBZSoBaLsG',3,'Akerman',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'eren0000','$2a$12$u73BJP8ldcb7ksgfdD7sPO4GW9gI.WNfpiXjrzKO/sM1ZIgE68Uwy',4,'eger',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'1','$2a$12$5L.bNO3lgfLneawFGZz79OjEmX34faRxX8ioHMKtmkmZUc3ncLqmG',4,'Новиков','Александрович',1,'Россия','Новоуральск','2012-02-20','Я крутой мужик реально, смотрите мои дискуссии','4i4@mail.ru','4i4','https://kartinkof.club/uploads/posts/2022-12/1670428439_kartinkof-club-p-kartinki-khuligan-2022-5.jpg','Никита',0),(12,'питса','$2a$12$1V4ie3BoFANbgMXmiDNoEe.Rpg7x8K..FyWZUdA/kRjcXoIgQ8bte',4,'Антонова','Питсовна',2,'Россия','Екатеринбург','2002-02-12',NULL,'alex.andra200202@gmail.com','Pitsa','https://kartinkof.club/uploads/posts/2022-12/1670428437_kartinkof-club-p-kartinki-khuligan-2022-1.jpg','Александра',0),(13,'pitsa2','$2a$12$xaQWIhFcsOaoDBRKDGqIOuS/UhSn6weBokva4slGb22JTE34a7XF6',4,'hui',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `clientlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_role_settings`
--

DROP TABLE IF EXISTS `custom_role_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_role_settings` (
  `id_role_settings` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_role_settings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_role_settings`
--

LOCK TABLES `custom_role_settings` WRITE;
/*!40000 ALTER TABLE `custom_role_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_role_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_roles`
--

DROP TABLE IF EXISTS `custom_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_roles` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_roles`
--

LOCK TABLES `custom_roles` WRITE;
/*!40000 ALTER TABLE `custom_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion`
--

DROP TABLE IF EXISTS `discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussion` (
  `id_discussion` int NOT NULL AUTO_INCREMENT,
  `date_and_time` datetime(6) DEFAULT NULL,
  `nullified` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `steno` varbinary(255) DEFAULT NULL,
  `id_topic` int DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `views` int DEFAULT NULL,
  PRIMARY KEY (`id_discussion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion`
--

LOCK TABLES `discussion` WRITE;
/*!40000 ALTER TABLE `discussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id_like` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_like`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id_message` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negative_actions`
--

DROP TABLE IF EXISTS `negative_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negative_actions` (
  `id_action` int NOT NULL AUTO_INCREMENT,
  `date_and_time` datetime(6) DEFAULT NULL,
  `kind` int DEFAULT NULL,
  `id_negative_user` int DEFAULT NULL,
  `screenshots` varbinary(255) DEFAULT NULL,
  `reason` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negative_actions`
--

LOCK TABLES `negative_actions` WRITE;
/*!40000 ALTER TABLE `negative_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `negative_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negativeactionkinds`
--

DROP TABLE IF EXISTS `negativeactionkinds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negativeactionkinds` (
  `id_kind` int NOT NULL AUTO_INCREMENT,
  `badrate` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negativeactionkinds`
--

LOCK TABLES `negativeactionkinds` WRITE;
/*!40000 ALTER TABLE `negativeactionkinds` DISABLE KEYS */;
/*!40000 ALTER TABLE `negativeactionkinds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `idpost` int NOT NULL AUTO_INCREMENT,
  `name_post` varchar(255) NOT NULL,
  `link_video` varchar(255) NOT NULL,
  `del` tinyint NOT NULL DEFAULT '0',
  `category` int DEFAULT NULL,
  PRIMARY KEY (`idpost`),
  KEY `idcategory_idx` (`category`),
  CONSTRAINT `idcategory` FOREIGN KEY (`category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'trtr','https://vk.com/wall-220302560_179',0,1),(6,'хехе','https://vk.com/wall-220302560_129',0,2),(7,'errrennn','egeeer',0,1),(9,'New','',0,2),(10,'','',0,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_tag` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tag_idx` (`id_tag`),
  KEY `id_post_idx` (`id_post`),
  CONSTRAINT `id_post` FOREIGN KEY (`id_post`) REFERENCES `posts` (`idpost`),
  CONSTRAINT `id_tag` FOREIGN KEY (`id_tag`) REFERENCES `topic` (`id_topic`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES (16,1,2),(21,1,1),(22,1,4),(23,1,7),(24,6,7),(25,6,10),(26,6,9),(64,10,1),(65,10,5),(66,10,3);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `idrole` int NOT NULL AUTO_INCREMENT,
  `name_role` varchar(2555) NOT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (3,'ROLE_ADMIN'),(4,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_settings_variable`
--

DROP TABLE IF EXISTS `role_settings_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_settings_variable` (
  `id_settings_variable` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_settings_variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_settings_variable`
--

LOCK TABLES `role_settings_variable` WRITE;
/*!40000 ALTER TABLE `role_settings_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_settings_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `idteams` int NOT NULL AUTO_INCREMENT,
  `name_team` varchar(255) NOT NULL,
  PRIMARY KEY (`idteams`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'ИНФ-21-3');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id_topic` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_topic`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Пузатые котики',NULL),(2,'Смешные котики',NULL),(3,'Классные котики',NULL),(4,'Сфинксы',NULL),(5,'Вислоухие',NULL),(6,'Дворовые',NULL),(7,'Домашние',NULL),(8,'Бульдоги',NULL),(9,'Таксы',NULL),(10,'Классные собачки',NULL),(11,'Котики сатаны',NULL),(12,'Гитара',NULL),(18,'Пианино',NULL),(19,'Моцарт','');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12  3:10:28
