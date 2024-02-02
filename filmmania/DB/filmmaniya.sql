-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_addmoviereview`
--

DROP TABLE IF EXISTS `app_addmoviereview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_addmoviereview` (
  `id` tinyint(4) DEFAULT NULL,
  `critid_id` tinyint(4) DEFAULT NULL,
  `moviename` varchar(11) DEFAULT NULL,
  `comment` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_addmoviereview`
--

LOCK TABLES `app_addmoviereview` WRITE;
/*!40000 ALTER TABLE `app_addmoviereview` DISABLE KEYS */;
INSERT INTO `app_addmoviereview` VALUES (8,3,'Christopher','good'),(9,3,'Home','good'),(10,3,'Christopher','good');
/*!40000 ALTER TABLE `app_addmoviereview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_addmovies`
--

DROP TABLE IF EXISTS `app_addmovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_addmovies` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `image` varchar(12) DEFAULT NULL,
  `dislikes` tinyint(4) DEFAULT NULL,
  `likes` tinyint(4) DEFAULT NULL,
  `duration` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_addmovies`
--

LOCK TABLES `app_addmovies` WRITE;
/*!40000 ALTER TABLE `app_addmovies` DISABLE KEYS */;
INSERT INTO `app_addmovies` VALUES (1,'Home','images_1.jpg',1,1,'2h 41m'),(2,'Christopher','images.jpg',1,1,'2h 30m');
/*!40000 ALTER TABLE `app_addmovies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_addvideoreview`
--

DROP TABLE IF EXISTS `app_addvideoreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_addvideoreview` (
  `id` tinyint(4) DEFAULT NULL,
  `comment` varchar(4) DEFAULT NULL,
  `videoname` varchar(9) DEFAULT NULL,
  `critid_id` tinyint(4) DEFAULT NULL,
  `replay` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_addvideoreview`
--

LOCK TABLES `app_addvideoreview` WRITE;
/*!40000 ALTER TABLE `app_addvideoreview` DISABLE KEYS */;
INSERT INTO `app_addvideoreview` VALUES (19,'good','Instagram',3,'thankyou\r\n'),(20,'good','Instagram',3,'Thank you'),(21,'bad','Video',3,'Sorry');
/*!40000 ALTER TABLE `app_addvideoreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_addvideos`
--

DROP TABLE IF EXISTS `app_addvideos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_addvideos` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(9) DEFAULT NULL,
  `video` varchar(35) DEFAULT NULL,
  `aspid` tinyint(4) DEFAULT NULL,
  `dislikes` tinyint(4) DEFAULT NULL,
  `likes` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_addvideos`
--

LOCK TABLES `app_addvideos` WRITE;
/*!40000 ALTER TABLE `app_addvideos` DISABLE KEYS */;
INSERT INTO `app_addvideos` VALUES (3,'Instagram','pexels-ekrulila-8928916_dHFRAPN.mp4',1,0,1),(4,'Video','production_ID_4650167.mp4',1,1,0);
/*!40000 ALTER TABLE `app_addvideos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_aspirantsregister`
--

DROP TABLE IF EXISTS `app_aspirantsregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_aspirantsregister` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(9) DEFAULT NULL,
  `email` varchar(13) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `address` varchar(6) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `aspid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_aspirantsregister`
--

LOCK TABLES `app_aspirantsregister` WRITE;
/*!40000 ALTER TABLE `app_aspirantsregister` DISABLE KEYS */;
INSERT INTO `app_aspirantsregister` VALUES (1,'Vineeth V','vi@gmail.com',9061777219,'Vi@12345','Idukki','approved',7),(2,'Dev','dev@gmail.com',9876323456,'Dev@12345','kochi','approved',9);
/*!40000 ALTER TABLE `app_aspirantsregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_criticsregister`
--

DROP TABLE IF EXISTS `app_criticsregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_criticsregister` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `address` varchar(5) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `critid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_criticsregister`
--

LOCK TABLES `app_criticsregister` WRITE;
/*!40000 ALTER TABLE `app_criticsregister` DISABLE KEYS */;
INSERT INTO `app_criticsregister` VALUES (3,'Vishun','vis@gmail.com',9061777219,'Vi@12345','Kochi','approved',11),(4,'Bobin','bobin@gmail.com',9638527411,'Bo@12345','Kochi','approved',12);
/*!40000 ALTER TABLE `app_criticsregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_like`
--

DROP TABLE IF EXISTS `app_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_like` (
  `id` tinyint(4) DEFAULT NULL,
  `mid_id` tinyint(4) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL,
  `critid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_like`
--

LOCK TABLES `app_like` WRITE;
/*!40000 ALTER TABLE `app_like` DISABLE KEYS */;
INSERT INTO `app_like` VALUES (3,1,'like',3),(4,2,'dislike',3),(5,1,'dislike',4),(6,2,'like',4);
/*!40000 ALTER TABLE `app_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_login`
--

DROP TABLE IF EXISTS `app_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_login` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `userType` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_login`
--

LOCK TABLES `app_login` WRITE;
/*!40000 ALTER TABLE `app_login` DISABLE KEYS */;
INSERT INTO `app_login` VALUES (1,'admin@gmail.com','admin','admin'),(3,'ram@gmail.com','Ra@12345','user'),(4,'to@gmail.com','To@12345','user'),(7,'vi@gmail.com','Vi@12345','aspirants'),(9,'dev@gmail.com','Dev@12345','aspirants'),(11,'vis@gmail.com','Vi@12345','critics'),(12,'bobin@gmail.com','Bo@12345','critics'),(13,'jos@gmail.com','Jos@12345','user');
/*!40000 ALTER TABLE `app_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_messageuser`
--

DROP TABLE IF EXISTS `app_messageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_messageuser` (
  `id` tinyint(4) DEFAULT NULL,
  `message` varchar(6) DEFAULT NULL,
  `replay` varchar(10) DEFAULT NULL,
  `userid_id` tinyint(4) DEFAULT NULL,
  `aspid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_messageuser`
--

LOCK TABLES `app_messageuser` WRITE;
/*!40000 ALTER TABLE `app_messageuser` DISABLE KEYS */;
INSERT INTO `app_messageuser` VALUES (9,'Hi','Daaaaaaaaa',3,1),(10,'hii','Odaa',3,1),(11,'hii','',6,1),(12,'HHi','',3,1),(13,'podaaa','',3,1);
/*!40000 ALTER TABLE `app_messageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userregister`
--

DROP TABLE IF EXISTS `app_userregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userregister` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `email` varchar(13) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `address` varchar(5) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `userid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userregister`
--

LOCK TABLES `app_userregister` WRITE;
/*!40000 ALTER TABLE `app_userregister` DISABLE KEYS */;
INSERT INTO `app_userregister` VALUES (3,'Tom Thomas','to@gmail.com',9747691771,'To@12345','Adoor','approved',4),(6,'Joseph','jos@gmail.com',9998765446,'Jos@12345','Adoor','approved',13);
/*!40000 ALTER TABLE `app_userregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_videolike`
--

DROP TABLE IF EXISTS `app_videolike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_videolike` (
  `id` tinyint(4) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL,
  `vid_id` tinyint(4) DEFAULT NULL,
  `critid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_videolike`
--

LOCK TABLES `app_videolike` WRITE;
/*!40000 ALTER TABLE `app_videolike` DISABLE KEYS */;
INSERT INTO `app_videolike` VALUES (1,'like',3,3),(2,'dislike',4,3);
/*!40000 ALTER TABLE `app_videolike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(24) DEFAULT NULL,
  `name` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_login','Can add login'),(26,7,'change_login','Can change login'),(27,7,'delete_login','Can delete login'),(28,7,'view_login','Can view login'),(29,8,'add_userregister','Can add userregister'),(30,8,'change_userregister','Can change userregister'),(31,8,'delete_userregister','Can delete userregister'),(32,8,'view_userregister','Can view userregister'),(33,9,'add_aspirantsregister','Can add aspirantsregister'),(34,9,'change_aspirantsregister','Can change aspirantsregister'),(35,9,'delete_aspirantsregister','Can delete aspirantsregister'),(36,9,'view_aspirantsregister','Can view aspirantsregister'),(37,10,'add_criticsregister','Can add criticsregister'),(38,10,'change_criticsregister','Can change criticsregister'),(39,10,'delete_criticsregister','Can delete criticsregister'),(40,10,'view_criticsregister','Can view criticsregister'),(41,11,'add_addmovies','Can add addmovies'),(42,11,'change_addmovies','Can change addmovies'),(43,11,'delete_addmovies','Can delete addmovies'),(44,11,'view_addmovies','Can view addmovies'),(45,12,'add_addvideos','Can add addvideos'),(46,12,'change_addvideos','Can change addvideos'),(47,12,'delete_addvideos','Can delete addvideos'),(48,12,'view_addvideos','Can view addvideos'),(49,13,'add_addreview','Can add addreview'),(50,13,'change_addreview','Can change addreview'),(51,13,'delete_addreview','Can delete addreview'),(52,13,'view_addreview','Can view addreview'),(53,13,'add_addmoviereview','Can add addmoviereview'),(54,13,'change_addmoviereview','Can change addmoviereview'),(55,13,'delete_addmoviereview','Can delete addmoviereview'),(56,13,'view_addmoviereview','Can view addmoviereview'),(57,14,'add_addvideoreview','Can add addvideoreview'),(58,14,'change_addvideoreview','Can change addvideoreview'),(59,14,'delete_addvideoreview','Can delete addvideoreview'),(60,14,'view_addvideoreview','Can view addvideoreview'),(61,15,'add_messageuser','Can add messageuser'),(62,15,'change_messageuser','Can change messageuser'),(63,15,'delete_messageuser','Can delete messageuser'),(64,15,'view_messageuser','Can view messageuser'),(65,16,'add_like','Can add like'),(66,16,'change_like','Can change like'),(67,16,'delete_like','Can delete like'),(68,16,'view_like','Can view like'),(69,17,'add_videolike','Can add videolike'),(70,17,'change_videolike','Can change videolike'),(71,17,'delete_videolike','Can delete videolike'),(72,17,'view_videolike','Can view videolike');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$kvmmu2IbEpDMut3BPmU8Dc$1C2g8Dzw6fSnW8qdvydUcKnl0qWGf4Zz0i5QN/sLoSE=','2023-03-23',1,'admin','','',1,1,'2023-03-15','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(28) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(48) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Login object (1)',1,'[{\"added\": {}}]',7,1,'2023-03-15'),(2,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Aspid\"]}}]',12,1,'2023-03-16'),(3,1,'Addreview object (1)',3,'',13,1,'2023-03-17'),(4,2,'Addreview object (2)',3,'',13,1,'2023-03-17'),(5,3,'Addreview object (3)',2,'[]',13,1,'2023-03-17'),(6,3,'Addvideoreview object (3)',3,'',14,1,'2023-03-17'),(7,2,'Addvideoreview object (2)',3,'',14,1,'2023-03-17'),(8,1,'Addvideoreview object (1)',3,'',14,1,'2023-03-17'),(9,8,'Login object (8)',3,'',7,1,'2023-03-20'),(10,6,'Login object (6)',3,'',7,1,'2023-03-20'),(11,13,'Addvideoreview object (13)',3,'',14,1,'2023-03-21'),(12,12,'Addvideoreview object (12)',3,'',14,1,'2023-03-21'),(13,14,'Addvideoreview object (14)',3,'',14,1,'2023-03-21'),(14,15,'Addvideoreview object (15)',3,'',14,1,'2023-03-21'),(15,16,'Addvideoreview object (16)',3,'',14,1,'2023-03-21'),(16,1,'Messageuser object (1)',3,'',15,1,'2023-03-21'),(17,2,'Messageuser object (2)',3,'',15,1,'2023-03-21'),(18,8,'Messageuser object (8)',3,'',15,1,'2023-03-22'),(19,7,'Messageuser object (7)',3,'',15,1,'2023-03-22'),(20,6,'Messageuser object (6)',3,'',15,1,'2023-03-22'),(21,5,'Messageuser object (5)',3,'',15,1,'2023-03-22'),(22,4,'Messageuser object (4)',3,'',15,1,'2023-03-22'),(23,3,'Messageuser object (3)',3,'',15,1,'2023-03-22'),(24,2,'Like object (2)',3,'',16,1,'2023-03-22'),(25,1,'Like object (1)',3,'',16,1,'2023-03-22'),(26,2,'Addmovies object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',11,1,'2023-03-22'),(27,1,'Addmovies object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',11,1,'2023-03-22'),(28,6,'Like object (6)',3,'',16,1,'2023-03-22'),(29,5,'Like object (5)',3,'',16,1,'2023-03-22'),(30,4,'Like object (4)',3,'',16,1,'2023-03-22'),(31,3,'Like object (3)',3,'',16,1,'2023-03-22'),(32,2,'Addmovies object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',11,1,'2023-03-22'),(33,1,'Addmovies object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',11,1,'2023-03-22'),(34,2,'Addvideos object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',12,1,'2023-03-22'),(35,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',12,1,'2023-03-22'),(36,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',12,1,'2023-03-22'),(37,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Dislikes\"]}}]',12,1,'2023-03-22'),(38,2,'Addvideos object (2)',2,'[{\"changed\": {\"fields\": [\"Dislikes\"]}}]',12,1,'2023-03-22'),(39,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',12,1,'2023-03-22'),(40,2,'Addvideos object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',12,1,'2023-03-22'),(41,4,'videolike object (4)',3,'',17,1,'2023-03-22'),(42,3,'videolike object (3)',3,'',17,1,'2023-03-22'),(43,2,'videolike object (2)',3,'',17,1,'2023-03-22'),(44,1,'videolike object (1)',3,'',17,1,'2023-03-22'),(45,7,'videolike object (7)',3,'',17,1,'2023-03-22'),(46,6,'videolike object (6)',3,'',17,1,'2023-03-22'),(47,5,'videolike object (5)',3,'',17,1,'2023-03-22'),(48,2,'Addvideos object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',12,1,'2023-03-22'),(49,1,'Addvideos object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',12,1,'2023-03-22'),(50,2,'Addvideos object (2)',3,'',12,1,'2023-03-22'),(51,1,'Addvideos object (1)',3,'',12,1,'2023-03-22'),(52,8,'Like object (8)',3,'',16,1,'2023-03-22'),(53,7,'Like object (7)',3,'',16,1,'2023-03-22'),(54,2,'Addmovies object (2)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',11,1,'2023-03-22'),(55,1,'Addmovies object (1)',2,'[{\"changed\": {\"fields\": [\"Dislikes\"]}}]',11,1,'2023-03-22'),(56,2,'Like object (2)',3,'',16,1,'2023-03-23'),(57,1,'Like object (1)',3,'',16,1,'2023-03-23'),(58,2,'Addmovies object (2)',2,'[{\"changed\": {\"fields\": [\"Dislikes\"]}}]',11,1,'2023-03-23'),(59,1,'Addmovies object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',11,1,'2023-03-23'),(60,1,'Addmovies object (1)',2,'[{\"changed\": {\"fields\": [\"Likes\"]}}]',11,1,'2023-03-23'),(61,18,'Addvideoreview object (18)',3,'',14,1,'2023-03-23'),(62,17,'Addvideoreview object (17)',3,'',14,1,'2023-03-23'),(63,11,'Addvideoreview object (11)',3,'',14,1,'2023-03-23'),(64,10,'Addvideoreview object (10)',3,'',14,1,'2023-03-23'),(65,9,'Addvideoreview object (9)',3,'',14,1,'2023-03-23'),(66,8,'Addvideoreview object (8)',3,'',14,1,'2023-03-23'),(67,7,'Addvideoreview object (7)',3,'',14,1,'2023-03-23'),(68,4,'Addvideos object (4)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',12,1,'2023-03-23'),(69,3,'Addvideos object (3)',2,'[{\"changed\": {\"fields\": [\"Likes\", \"Dislikes\"]}}]',12,1,'2023-03-23'),(70,3,'Userregister object (3)',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',8,1,'2023-03-23'),(71,3,'Criticsregister object (3)',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',10,1,'2023-03-23'),(72,1,'Aspirantsregister object (1)',2,'[{\"changed\": {\"fields\": [\"Phone\"]}}]',9,1,'2023-03-23');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(13,'app','addmoviereview'),(11,'app','addmovies'),(14,'app','addvideoreview'),(12,'app','addvideos'),(9,'app','aspirantsregister'),(10,'app','criticsregister'),(16,'app','like'),(7,'app','login'),(15,'app','messageuser'),(8,'app','userregister'),(17,'app','videolike'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(66) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-15'),(2,'auth','0001_initial','2023-03-15'),(3,'admin','0001_initial','2023-03-15'),(4,'admin','0002_logentry_remove_auto_add','2023-03-15'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-15'),(6,'app','0001_initial','2023-03-15'),(7,'contenttypes','0002_remove_content_type_name','2023-03-15'),(8,'auth','0002_alter_permission_name_max_length','2023-03-15'),(9,'auth','0003_alter_user_email_max_length','2023-03-15'),(10,'auth','0004_alter_user_username_opts','2023-03-15'),(11,'auth','0005_alter_user_last_login_null','2023-03-15'),(12,'auth','0006_require_contenttypes_0002','2023-03-15'),(13,'auth','0007_alter_validators_add_error_messages','2023-03-15'),(14,'auth','0008_alter_user_username_max_length','2023-03-15'),(15,'auth','0009_alter_user_last_name_max_length','2023-03-15'),(16,'auth','0010_alter_group_name_max_length','2023-03-15'),(17,'auth','0011_update_proxy_permissions','2023-03-15'),(18,'auth','0012_alter_user_first_name_max_length','2023-03-15'),(19,'sessions','0001_initial','2023-03-15'),(20,'app','0002_userregister','2023-03-15'),(21,'app','0003_criticsregister_aspirantsregister','2023-03-15'),(22,'app','0004_alter_aspirantsregister_status_and_more','2023-03-15'),(23,'app','0005_rename_userid_aspirantsregister_aspid_and_more','2023-03-16'),(24,'app','0006_addmovies','2023-03-16'),(25,'app','0007_remove_addmovies_movid','2023-03-16'),(26,'app','0008_addvideos','2023-03-16'),(27,'app','0009_remove_addvideos_image_addvideos_video','2023-03-16'),(28,'app','0010_addvideos_aspid','2023-03-16'),(29,'app','0011_remove_addvideos_duration','2023-03-16'),(30,'app','0012_addreview','2023-03-17'),(31,'app','0013_alter_addreview_critid','2023-03-17'),(32,'app','0014_rename_addreview_addmoviereview_addvideoreview','2023-03-17'),(33,'app','0015_rename_critid_addvideoreview_aspid_and_more','2023-03-17'),(34,'app','0016_rename_aspid_addvideoreview_critid','2023-03-17'),(35,'app','0017_addvideoreview_replay','2023-03-21'),(36,'app','0018_messageuser','2023-03-21'),(37,'app','0019_messageuser_aspid','2023-03-21'),(38,'app','0020_alter_addmoviereview_comment_and_more','2023-03-21'),(39,'app','0021_alter_messageuser_aspid','2023-03-22'),(40,'app','0022_like','2023-03-22'),(41,'app','0023_alter_like_movieid','2023-03-22'),(42,'app','0024_rename_movieid_like_mid','2023-03-22'),(43,'app','0025_remove_like_dislike_remove_like_like_like_type','2023-03-22'),(44,'app','0026_addmovies_dislikes_addmovies_likes','2023-03-22'),(45,'app','0027_alter_addmovies_dislikes_alter_addmovies_likes','2023-03-22'),(46,'app','0028_alter_addmovies_duration','2023-03-22'),(47,'app','0029_addvideos_dislikes_addvideos_likes','2023-03-22'),(48,'app','0030_videolike','2023-03-22'),(49,'app','0031_alter_videolike_vid','2023-03-22'),(50,'app','0032_rename_userid_like_aspid_and_more','2023-03-22'),(51,'app','0033_remove_like_aspid_remove_videolike_aspid_like_critid_and_more','2023-03-22');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(232) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('y4930qejug37ksn86x9tpj8y30qzrm4h','.eJxVjLEOwjAMRP8lM4paOU1rRna-IXJshxRQKjXthPh3iNQBxrv37l4m0L7lsFddwyzmbHpz-u0i8UNLA3KnclssL2Vb52ibYg9a7XURfV4O9-8gU83ftRPAyY_AEznHAIKAjNKl0SMDC6omgUikEpN0Ayd0kXvwA7iWzfsD9zc41g:1pcPNa:392Y9GSWcW-b-k40huzPnapUiCmo3Ezmag7kFfsLAak','2023-03-29'),('7zmt668q2jtd3mozvb0ht2mo82jhpp2j','.eJxVjMEOwiAQRP-FsyElS2nXo3e_gSy7IFVDk1JOxn9Xkl56nDdv5qPaIupqLspT27NvNW6-E2XUiQXiVyy9kCeVx6p5Lfu2BN0VfbRV31eJ79vhng4y1fxfWwGc3QQ8k7UMIAjIKEOaHDKwYIxJIBBFCUmGkRPawAbcCLZn9f0BbOg68w:1pcpeP:2Q-Bi9h6ftCLM_JkpzLjodJ_1tDmbr4LxCvqyNAN2ko','2023-03-30'),('un8nu15s7qlu217dchbrrpwrjiqjpugu','.eJxVjMEOwiAQRP-FsyGtS2nXo_d-A1l2QaqGJqWcjP-uJL30OG_ezEfVRdTtelGO6p5cLWFzjahenZgnfoXcCnlSfqya17xvi9dN0Udb9LxKeN8P93SQqKT_2gjgZEfgiYxhAEFARuniaJGBBUOIAp4oiI_SDRzReO7BDmBaVt8fbZQ69A:1pdCox:ADKzaGcjFScxnQfd0m6XCXoh3VyWr7NWszCl1Udraso','2023-03-31'),('i1d2oxubszbkqywqn5k6t1mj2xl7hwb3','.eJxVjrEOwyAQQ_-FuUJBR0iuY_d-Q3TcQUlbgZSEKeq_N0gZ2tH2s-VdTVS3NNU1LNMs6qqMuvx6nvgVcgvkSflRNJe8LbPXDdFnuup7kfC-nezfQKI1HW0rgKMbgEeylgEEARmli4NDBhYMIQp4oiA-StdzROvZgOvBNn2M1vbPfL7F7jrz:1peWWP:PFPdTJWPHQnu0gIcuK8rnilFs9V4PdryAzY6ui0bns0','2023-04-04'),('525tt8v7di4jmedijlq5o0xshqi8d4il','eyJ1aWQiOjF9:1peadn:OFPb6_fyzH-r4fhzm1L11EcgbF4_eWNDCkrzt-ZUb2U','2023-04-04'),('2ggeew9ekyv0k2e1sf4l7usukq7lhxql','.eJxVjMEOwiAQRP-FsyFtltKuR-9-A1l2QaoGklJOxn9Xkl56nDdv5qPaKuoKF-Wo7cm1GjbXiRrViXniV8i9kCflR9Fc8r6tXndFH23V9yLhfTvc00Gimv5rI4CLnYEXMoYBBAEZZYizRQYWDCEKeKIgPsowcUTjeQQ7gelZfX9uQDr1:1peg60:6jhZaH7a4ZabTaHzUlXfMMr-dFcpmrn6cruBVIgkwco','2023-04-04'),('8z38r49zyt1f15wiyyvgsa87xquof3ei','eyJ1aWQiOjZ9:1peuXU:xZWMwC7ok95bzYsYjztoNLRjubB16ihmE0yF_JZdWxk','2023-04-05'),('xon36q444x3wb4a42xf7aj0h0erybrga','eyJ1aWQiOjF9:1pewRc:88wDvgoNds5I6imLwENNBoFzlGmMZZplBlvpOQWCT18','2023-04-05'),('p8wa14f79zoh0c1mxjuqedng6yb599r2','.eJxVjMEOwiAQRP-FsyFtltKuR-9-A1l2QaoGklJOxn9Xkl56nDdv5qPaKuoKF-Wo7cm1GjbXiRrViXniV8i9kCflR9Fc8r6tXndFH23V9yLhfTvc00Gimv5rI4CLnYEXMoYBBAEZZYizRQYWDCEKeKIgPsowcUTjeQQ7gelZfX9uQDr1:1pfD9U:DYsNOzHxf_5DMWYQ23TJ-LzJUZq8wANn7skEBngmrc8','2023-04-06'),('k4po2d7aub5k61ik34ajou4023auzfex','.eJxVjMEOwiAQRP-FsyFtltKuR-9-A1l2QaoGklJOxn9Xkl56nDdv5qPaKuoKF-Wo7cm1GjbXiRrViXniV8i9kCflR9Fc8r6tXndFH23V9yLhfTvc00Gimv5rI4CLnYEXMoYBBAEZZYizRQYWDCEKeKIgPsowcUTjeQQ7gelZfX9uQDr1:1pfEqW:Y_5J4c6V74adnyhdhT29Ex5ljfsvOBK_UB6moJMRnPw','2023-04-06');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(21) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',51),('django_admin_log',72),('django_content_type',17),('auth_permission',72),('auth_group',0),('auth_user',1),('app_login',13),('app_userregister',6),('app_aspirantsregister',2),('app_criticsregister',4),('app_addvideos',4),('app_addmoviereview',10),('app_addvideoreview',21),('app_messageuser',13),('app_addmovies',2),('app_like',6),('app_videolike',2);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 22:44:55
