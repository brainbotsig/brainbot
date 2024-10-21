/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: trading_db
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add my table',7,'add_mytable'),
(26,'Can change my table',7,'change_mytable'),
(27,'Can delete my table',7,'delete_mytable'),
(28,'Can view my table',7,'view_mytable'),
(29,'Can add combined data',8,'add_combineddata'),
(30,'Can change combined data',8,'change_combineddata'),
(31,'Can delete combined data',8,'delete_combineddata'),
(32,'Can view combined data',8,'view_combineddata'),
(33,'Can add login attempt',9,'add_loginattempt'),
(34,'Can change login attempt',9,'change_loginattempt'),
(35,'Can delete login attempt',9,'delete_loginattempt'),
(36,'Can view login attempt',9,'view_loginattempt'),
(37,'Can add user profile',10,'add_userprofile'),
(38,'Can change user profile',10,'change_userprofile'),
(39,'Can delete user profile',10,'delete_userprofile'),
(40,'Can view user profile',10,'view_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$870000$QDCZRh57igLZqp7CXD98EJ$F+nlsAAdbly4EKsR/C1CZEoMqBc/CBddwLA9D1YKC7I=','2024-10-16 14:23:25.665500',0,'suwanon','','','',0,1,'2024-10-10 19:11:11.663806');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combineddata`
--

DROP TABLE IF EXISTS `combineddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combineddata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `currency_pair` varchar(10) NOT NULL,
  `profit` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combineddata`
--

LOCK TABLES `combineddata` WRITE;
/*!40000 ALTER TABLE `combineddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `combineddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(8,'myapp','combineddata'),
(9,'myapp','loginattempt'),
(7,'myapp','mytable'),
(10,'myapp','userprofile'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2024-10-10 19:07:14.106256'),
(2,'auth','0001_initial','2024-10-10 19:07:22.635169'),
(3,'admin','0001_initial','2024-10-10 19:07:24.065512'),
(4,'admin','0002_logentry_remove_auto_add','2024-10-10 19:07:24.154026'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-10-10 19:07:24.211976'),
(6,'contenttypes','0002_remove_content_type_name','2024-10-10 19:07:25.276980'),
(7,'auth','0002_alter_permission_name_max_length','2024-10-10 19:07:25.973145'),
(8,'auth','0003_alter_user_email_max_length','2024-10-10 19:07:26.360702'),
(9,'auth','0004_alter_user_username_opts','2024-10-10 19:07:26.407055'),
(10,'auth','0005_alter_user_last_login_null','2024-10-10 19:07:26.964845'),
(11,'auth','0006_require_contenttypes_0002','2024-10-10 19:07:26.988512'),
(12,'auth','0007_alter_validators_add_error_messages','2024-10-10 19:07:27.040495'),
(13,'auth','0008_alter_user_username_max_length','2024-10-10 19:07:27.427281'),
(14,'auth','0009_alter_user_last_name_max_length','2024-10-10 19:07:27.810709'),
(15,'auth','0010_alter_group_name_max_length','2024-10-10 19:07:28.293792'),
(16,'auth','0011_update_proxy_permissions','2024-10-10 19:07:28.357967'),
(17,'auth','0012_alter_user_first_name_max_length','2024-10-10 19:07:28.752329'),
(18,'myapp','0001_initial','2024-10-10 19:07:28.985743'),
(19,'myapp','0002_combineddata_remove_mytable_column1_and_more','2024-10-10 19:07:33.441438'),
(20,'myapp','0003_loginattempt','2024-10-10 19:07:34.335156'),
(21,'myapp','0004_userprofile','2024-10-10 19:07:35.376561'),
(22,'sessions','0001_initial','2024-10-10 19:07:36.401709');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('2wixu0vhfhllpvrh2z8rer4me2yppn6d','.eJxVjE0OwiAYBe_C2pCCtBSX7nsGwvcnVQNJaVfGu2uTLnT7Zua9VEzbmuPWeIkzqYsy6vS7QcIHlx3QPZVb1VjLusygd0UftOmpEj-vh_t3kFPL3zoIjNKBECIM4I1zbhjFGYs9svGjAUmdFS-OgbA3IREN3RmYbeg9s3p_ABCwOSY:1t14vt:MKptVJGimCnJwHXRmhSL_oyZCSEjvocOOwhGy5j38_4','2024-10-30 14:23:25.699659'),
('8qy4xkv241d3adl91dmavau3x3m4z9st','.eJxVjE0OwiAYBe_C2pCCtBSX7nsGwvcnVQNJaVfGu2uTLnT7Zua9VEzbmuPWeIkzqYsy6vS7QcIHlx3QPZVb1VjLusygd0UftOmpEj-vh_t3kFPL3zoIjNKBECIM4I1zbhjFGYs9svGjAUmdFS-OgbA3IREN3RmYbeg9s3p_ABCwOSY:1szbBH:YYX7TlxM5gNtx9xRhdBAZdq0hXnsbgxKSwpH9gw1Zxk','2024-10-26 12:25:11.428234'),
('zlr1q7uu9a524836i4i1rzckhlchs4bp','.eJxVjE0OwiAYBe_C2pCCtBSX7nsGwvcnVQNJaVfGu2uTLnT7Zua9VEzbmuPWeIkzqYsy6vS7QcIHlx3QPZVb1VjLusygd0UftOmpEj-vh_t3kFPL3zoIjNKBECIM4I1zbhjFGYs9svGjAUmdFS-OgbA3IREN3RmYbeg9s3p_ABCwOSY:1t0jGL:qg6gEm0_6ue3Ta9029U6Iq_VPUBFhM-1uTcTg23mwg0','2024-10-29 15:15:05.640165');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eurusdhistory`
--

DROP TABLE IF EXISTS `eurusdhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eurusdhistory` (
  `order_id` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `bet` float DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eurusdhistory`
--

LOCK TABLES `eurusdhistory` WRITE;
/*!40000 ALTER TABLE `eurusdhistory` DISABLE KEYS */;
INSERT INTO `eurusdhistory` VALUES
('19360304153','open','call',1,'2024-10-11 08:31:01','Win',0.89,'2024-10-11 08:31:57'),
('19360306230','open','call',1,'2024-10-11 08:32:01','Lose',-1,'2024-10-11 08:32:57'),
('19360308311','open','call',2.2,'2024-10-11 08:33:00','Lose',-2.2,'2024-10-11 08:33:58'),
('19360310358','open','call',4.84,'2024-10-11 08:34:01','Lose',-4.84,'2024-10-11 08:34:57'),
('19360312171','open','call',10.648,'2024-10-11 08:35:00','Win',9.5,'2024-10-11 08:35:58'),
('19360314549','open','call',1,'2024-10-11 08:36:01','Lose',-1,'2024-10-11 08:36:58'),
('19360316276','open','call',2.2,'2024-10-11 08:37:00','Lose',-2.2,'2024-10-11 08:37:57'),
('19360318141','open','call',4.84,'2024-10-11 08:38:01','Lose',-4.84,'2024-10-11 08:38:58'),
('19360319797','open','call',10.648,'2024-10-11 08:39:00','Lose',-10.64,'2024-10-11 08:39:58'),
('19360321872','open','call',23.4256,'2024-10-11 08:39:59','Win',20.9,'2024-10-11 08:40:58'),
('19360324139','open','call',1,'2024-10-11 08:41:01','Lose',-1,'2024-10-11 08:41:57'),
('19360325906','open','call',2.2,'2024-10-11 08:42:00','Lose',-2.2,'2024-10-11 08:42:58'),
('19360327702','open','call',4.84,'2024-10-11 08:43:00','Lose',-4.84,'2024-10-11 08:43:58'),
('19360329658','open','call',10.648,'2024-10-11 08:44:00','Win',9.5,'2024-10-11 08:44:58'),
('19360331523','open','call',1,'2024-10-11 08:45:01','Lose',-1,'2024-10-11 08:45:58'),
('19360333891','open','call',2.2,'2024-10-11 08:46:00','Win',1.96,'2024-10-11 08:46:58'),
('19360335727','open','call',1,'2024-10-11 08:47:00','Win',0.89,'2024-10-11 08:47:58'),
('19360337403','open','call',1,'2024-10-11 08:48:01','Lose',-1,'2024-10-11 08:48:58'),
('19360339241','open','call',2.2,'2024-10-11 08:49:01','Lose',-2.2,'2024-10-11 08:49:58'),
('19360340840','open','call',4.84,'2024-10-11 08:50:00','Win',4.31,'2024-10-11 08:50:58'),
('19360342927','open','call',1,'2024-10-11 08:51:01','Lose',-1,'2024-10-11 08:51:58'),
('19360344483','open','call',2.2,'2024-10-11 08:52:00','Lose',-2.2,'2024-10-11 08:52:58'),
('19360346134','open','call',4.84,'2024-10-11 08:53:01','Lose',-4.84,'2024-10-11 08:53:58'),
('19360347752','open','call',10.648,'2024-10-11 08:54:00','Lose',-10.64,'2024-10-11 08:54:58'),
('19360349505','open','call',23.4256,'2024-10-11 08:55:00','Lose',-23.42,'2024-10-11 08:55:58'),
('19360351712','open','call',51.5363,'2024-10-11 08:56:01','Win',45.98,'2024-10-11 08:56:58'),
('19360353792','open','put',1,'2024-10-11 08:57:00','Win',0.89,'2024-10-11 08:57:57'),
('19360355729','open','call',1,'2024-10-11 08:58:00','Win',0.89,'2024-10-11 08:58:57'),
('19360357652','open','call',1,'2024-10-11 08:59:00','Win',0.89,'2024-10-11 08:59:58'),
('19360359519','open','put',1,'2024-10-11 09:00:01','Lose',-1,'2024-10-11 09:00:58'),
('19360361499','open','put',2.2,'2024-10-11 09:01:00','Win',1.96,'2024-10-11 09:01:58'),
('19360363401','open','put',1,'2024-10-11 09:02:00','Win',0.89,'2024-10-11 09:02:58'),
('19360365274','open','call',1,'2024-10-11 09:03:00','Win',0.89,'2024-10-11 09:03:58'),
('19360367023','open','put',1,'2024-10-11 09:04:01','Lose',-1,'2024-10-11 09:04:57'),
('19360368846','open','put',2.2,'2024-10-11 09:05:00','Lose',-2.2,'2024-10-11 09:05:58'),
('19360370824','open','put',4.84,'2024-10-11 09:06:01','Lose',-4.84,'2024-10-11 09:06:57'),
('19360372615','open','put',10.648,'2024-10-11 09:07:01','Win',9.5,'2024-10-11 09:07:57'),
('19360374333','open','put',1,'2024-10-11 09:08:01','Win',0.89,'2024-10-11 09:08:58'),
('19360376122','open','put',1,'2024-10-11 09:09:00','Lose',-1,'2024-10-11 09:09:57'),
('19360377887','open','put',2.2,'2024-10-11 09:10:00','Win',1.96,'2024-10-11 09:10:58'),
('19360380202','open','put',1,'2024-10-11 09:11:01','Win',0.89,'2024-10-11 09:11:58'),
('19360381892','open','put',1,'2024-10-11 09:12:00','Lose',-1,'2024-10-11 09:12:58'),
('19360383569','open','put',2.2,'2024-10-11 09:13:00','Lose',-2.2,'2024-10-11 09:13:57'),
('19360385028','open','put',4.84,'2024-10-11 09:14:00','Lose',-4.84,'2024-10-11 09:14:59'),
('19360386983','open','put',10.648,'2024-10-11 09:15:01','Lose',-10.64,'2024-10-11 09:15:58'),
('19360389090','open','put',23.4256,'2024-10-11 09:16:00','Win',20.9,'2024-10-11 09:16:57'),
('19360390929','open','put',1,'2024-10-11 09:17:00','Win',0.89,'2024-10-11 09:17:57'),
('19360392550','open','put',1,'2024-10-11 09:18:00','Lose',-1,'2024-10-11 09:18:58'),
('19360393996','open','put',2.2,'2024-10-11 09:19:00','Win',1.96,'2024-10-11 09:19:58'),
('19360395824','open','put',1,'2024-10-11 09:20:00','Win',0.89,'2024-10-11 09:20:57'),
('19360401134','open','put',1,'2024-10-11 09:23:00','Lose',-1,'2024-10-11 09:23:58'),
('19360402836','open','put',2.2,'2024-10-11 09:24:00','Lose',-2.2,'2024-10-11 09:24:57'),
('19360404682','open','put',4.84,'2024-10-11 09:25:00','Win',4.31,'2024-10-11 09:25:58'),
('19360406568','open','put',1,'2024-10-11 09:26:00','Win',0.89,'2024-10-11 09:26:57'),
('19360408216','open','put',1,'2024-10-11 09:27:00','Lose',-1,'2024-10-11 09:27:57'),
('19360409614','open','put',2.2,'2024-10-11 09:28:00','Win',1.96,'2024-10-11 09:28:57'),
('19360411314','open','put',1,'2024-10-11 09:29:01','Win',0.89,'2024-10-11 09:29:58'),
('19360413014','open','put',1,'2024-10-11 09:30:00','Win',0.89,'2024-10-11 09:30:57'),
('19360414747','open','put',1,'2024-10-11 09:31:00','Lose',-1,'2024-10-11 09:31:57'),
('19360416446','open','put',2.2,'2024-10-11 09:32:00','Win',1.96,'2024-10-11 09:32:57'),
('19360418343','open','put',1,'2024-10-11 09:33:00','Lose',-1,'2024-10-11 09:33:58'),
('19360419991','open','put',2.2,'2024-10-11 09:34:00','Lose',-2.2,'2024-10-11 09:34:58'),
('19360421780','open','put',4.84,'2024-10-11 09:35:01','Lose',-4.84,'2024-10-11 09:35:57'),
('19360423510','open','put',10.648,'2024-10-11 09:36:00','Lose',-10.64,'2024-10-11 09:36:58'),
('19360425128','open','put',23.4256,'2024-10-11 09:37:00','Win',20.9,'2024-10-11 09:37:57'),
('19360426857','open','put',1,'2024-10-11 09:38:00','Lose',-1,'2024-10-11 09:38:58'),
('19360428705','open','put',2.2,'2024-10-11 09:39:00','Lose',-2.2,'2024-10-11 09:39:58'),
('19360430455','open','put',4.84,'2024-10-11 09:40:00','Win',4.31,'2024-10-11 09:40:58'),
('19360432358','open','put',1,'2024-10-11 09:41:00','Lose',-1,'2024-10-11 09:41:59'),
('19360433968','open','put',2.2,'2024-10-11 09:42:01','Win',1.96,'2024-10-11 09:42:58'),
('19360435346','open','put',1,'2024-10-11 09:43:00','Lose',-1,'2024-10-11 09:43:58'),
('19360436764','open','put',2.2,'2024-10-11 09:44:00','Lose',-2.2,'2024-10-11 09:44:58'),
('19360438385','open','put',4.84,'2024-10-11 09:45:01','Lose',-4.84,'2024-10-11 09:45:58'),
('19360440249','open','put',10.648,'2024-10-11 09:46:00','Lose',-10.64,'2024-10-11 09:46:57'),
('19360441631','open','put',23.4256,'2024-10-11 09:47:00','Win',20.9,'2024-10-11 09:47:57'),
('19360443120','open','put',1,'2024-10-11 09:48:00','Lose',-1,'2024-10-11 09:48:57'),
('19360444916','open','put',2.2,'2024-10-11 09:49:01','Win',1.96,'2024-10-11 09:49:58'),
('19360446403','open','put',1,'2024-10-11 09:50:00','Win',0.89,'2024-10-11 09:50:58'),
('19360448013','open','put',1,'2024-10-11 09:51:01','Win',0.89,'2024-10-11 09:51:57'),
('19360449480','open','put',1,'2024-10-11 09:52:00','Lose',-1,'2024-10-11 09:52:57'),
('19360450728','open','put',2.2,'2024-10-11 09:53:00','Lose',-2.2,'2024-10-11 09:53:57'),
('19360452197','open','put',4.84,'2024-10-11 09:54:00','Lose',-4.84,'2024-10-11 09:54:58'),
('19360453702','open','put',10.648,'2024-10-11 09:55:01','Win',9.5,'2024-10-11 09:55:58'),
('19360455529','open','put',1,'2024-10-11 09:56:00','Win',0.89,'2024-10-11 09:56:58'),
('19360457030','open','put',1,'2024-10-11 09:57:00','Win',0.89,'2024-10-11 09:57:57'),
('19360458479','open','put',1,'2024-10-11 09:58:00','Win',0.89,'2024-10-11 09:58:58'),
('19360460150','open','put',1,'2024-10-11 09:59:01','Lose',-1,'2024-10-11 09:59:59'),
('19360461744','open','put',2.2,'2024-10-11 10:00:02','Lose',-2.2,'2024-10-11 10:00:57'),
('19360463665','open','put',4.84,'2024-10-11 10:01:00','Lose',-4.84,'2024-10-11 10:01:58'),
('19360465462','open','put',10.648,'2024-10-11 10:02:00','Win',9.5,'2024-10-11 10:02:57'),
('19360467215','open','put',1,'2024-10-11 10:03:01','Win',0.89,'2024-10-11 10:03:58'),
('19360469119','open','put',1,'2024-10-11 10:04:00','Lose',-1,'2024-10-11 10:04:58'),
('19360471103','open','put',2.2,'2024-10-11 10:05:01','Win',1.96,'2024-10-11 10:05:58'),
('19360472874','open','put',1,'2024-10-11 10:06:00','Lose',-1,'2024-10-11 10:06:57'),
('19360474537','open','put',2.2,'2024-10-11 10:07:01','Lose',-2.2,'2024-10-11 10:07:57'),
('19360476471','open','put',4.84,'2024-10-11 10:08:00','Lose',-4.84,'2024-10-11 10:08:58'),
('19360478157','open','put',10.648,'2024-10-11 10:09:00','Lose',-10.64,'2024-10-11 10:09:57'),
('19360479939','open','put',23.4256,'2024-10-11 10:10:00','Win',20.9,'2024-10-11 10:10:57'),
('19360481803','open','put',1,'2024-10-11 10:11:01','Lose',-1,'2024-10-11 10:11:57'),
('19360483480','open','put',2.2,'2024-10-11 10:12:02','Lose',-2.2,'2024-10-11 10:12:57'),
('19360484965','open','put',4.84,'2024-10-11 10:13:01','Win',4.31,'2024-10-11 10:13:57'),
('19360486349','open','put',1,'2024-10-11 10:14:01','Win',0.89,'2024-10-11 10:14:58'),
('19360487805','open','put',1,'2024-10-11 10:15:00','Lose',-1,'2024-10-11 10:15:57'),
('19360489979','open','put',2.2,'2024-10-11 10:16:00','Lose',-2.2,'2024-10-11 10:16:58'),
('19360491751','open','put',4.84,'2024-10-11 10:17:00','Lose',-4.84,'2024-10-11 10:17:57'),
('19360493322','open','put',10.648,'2024-10-11 10:18:00','Lose',-10.64,'2024-10-11 10:18:58'),
('19360494913','open','put',23.4256,'2024-10-11 10:19:00','Win',20.9,'2024-10-11 10:19:57'),
('19360496527','open','put',1,'2024-10-11 10:20:00','Lose',-1,'2024-10-11 10:20:58'),
('19360498334','open','put',2.2,'2024-10-11 10:21:02','Lose',-2.2,'2024-10-11 10:21:58'),
('19360499750','open','put',4.84,'2024-10-11 10:22:00','Lose',-4.84,'2024-10-11 10:22:57'),
('19360501351','open','put',10.648,'2024-10-11 10:23:00','Lose',-10.64,'2024-10-11 10:23:57'),
('19360502746','open','put',23.4256,'2024-10-11 10:24:00','Win',20.9,'2024-10-11 10:24:58'),
('19360504528','open','put',1,'2024-10-11 10:25:00','Lose',-1,'2024-10-11 10:25:58'),
('19360506224','open','put',2.2,'2024-10-11 10:26:00','Lose',-2.2,'2024-10-11 10:26:57'),
('19360507722','open','put',4.84,'2024-10-11 10:27:00','Lose',-4.84,'2024-10-11 10:27:58'),
('19360509541','open','put',10.648,'2024-10-11 10:28:00','Win',9.5,'2024-10-11 10:28:57'),
('19360511052','open','put',1,'2024-10-11 10:29:00','Lose',-1,'2024-10-11 10:29:57'),
('19360512690','open','put',2.2,'2024-10-11 10:30:02','Lose',-2.2,'2024-10-11 10:30:58'),
('19360514910','open','put',4.84,'2024-10-11 10:31:00','Win',4.31,'2024-10-11 10:31:58'),
('19360516313','open','put',1,'2024-10-11 10:32:00','Win',0.89,'2024-10-11 10:32:57'),
('19360517907','open','put',1,'2024-10-11 10:33:00','Lose',-1,'2024-10-11 10:33:58'),
('19360519536','open','put',2.2,'2024-10-11 10:34:00','Win',1.96,'2024-10-11 10:34:57'),
('19360521213','open','put',1,'2024-10-11 10:35:00','Win',0.89,'2024-10-11 10:35:58'),
('19360523232','open','call',1,'2024-10-11 10:36:00','Lose',-1,'2024-10-11 10:36:57'),
('19360525083','open','call',2.2,'2024-10-11 10:37:00','Win',1.96,'2024-10-11 10:37:57'),
('19360528101','open','put',1,'2024-10-11 10:39:01','Lose',-1,'2024-10-11 10:39:57'),
('19360529754','open','put',2.2,'2024-10-11 10:40:01','Lose',-2.2,'2024-10-11 10:40:57'),
('19360531384','open','put',4.84,'2024-10-11 10:41:00','Lose',-4.84,'2024-10-11 10:41:58'),
('19360533037','open','put',10.648,'2024-10-11 10:42:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `eurusdhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbpusdhistory`
--

DROP TABLE IF EXISTS `gbpusdhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbpusdhistory` (
  `order_id` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `bet` float DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbpusdhistory`
--

LOCK TABLES `gbpusdhistory` WRITE;
/*!40000 ALTER TABLE `gbpusdhistory` DISABLE KEYS */;
INSERT INTO `gbpusdhistory` VALUES
('19360555929','open','put',1,'2024-10-11 10:55:42','Win',0.89,'2024-10-11 10:56:57'),
('19360557889','open','put',1,'2024-10-11 10:57:00','Win',0.89,'2024-10-11 10:57:58');
/*!40000 ALTER TABLE `gbpusdhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_combineddata`
--

DROP TABLE IF EXISTS `myapp_combineddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_combineddata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `currency_pair` varchar(10) NOT NULL,
  `profit` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_combineddata`
--

LOCK TABLES `myapp_combineddata` WRITE;
/*!40000 ALTER TABLE `myapp_combineddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_combineddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_loginattempt`
--

DROP TABLE IF EXISTS `myapp_loginattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_loginattempt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` char(39) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_loginattempt_user_id_6a5b566a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `myapp_loginattempt_user_id_6a5b566a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_loginattempt`
--

LOCK TABLES `myapp_loginattempt` WRITE;
/*!40000 ALTER TABLE `myapp_loginattempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_loginattempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_mytable`
--

DROP TABLE IF EXISTS `myapp_mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_mytable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_mytable`
--

LOCK TABLES `myapp_mytable` WRITE;
/*!40000 ALTER TABLE `myapp_mytable` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_userprofile`
--

DROP TABLE IF EXISTS `myapp_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `verification_token` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `myapp_userprofile_user_id_8f877d36_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_userprofile`
--

LOCK TABLES `myapp_userprofile` WRITE;
/*!40000 ALTER TABLE `myapp_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `bet` float DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
('19359466560','open','put',2.2,'2024-10-11 00:21:01','Lose',-2.2,'2024-10-11 00:21:58'),
('19359468917','open','put',4.84,'2024-10-11 00:22:02',NULL,NULL,NULL),
('19359472573','open','put',1,'2024-10-11 00:23:32','Lose',-1,'2024-10-11 00:24:59'),
('19359475554','open','put',2.2,'2024-10-11 00:25:02','Lose',-2.2,'2024-10-11 00:25:59'),
('19359478063','open','put',4.84,'2024-10-11 00:26:01','Win',4.31,'2024-10-11 00:26:58'),
('19359479664','open','put',1,'2024-10-11 00:27:01','Lose',-1,'2024-10-11 00:27:58'),
('19359481714','open','put',2.2,'2024-10-11 00:28:01','Lose',-2.2,'2024-10-11 00:28:58'),
('19359483855','open','put',4.84,'2024-10-11 00:29:02','Lose',-4.84,'2024-10-11 00:29:58'),
('19359485816','open','put',10.648,'2024-10-11 00:30:01','Lose',-10.64,'2024-10-11 00:30:58'),
('19359488324','open','put',23.4256,'2024-10-11 00:31:01','Lose',-23.42,'2024-10-11 00:31:58'),
('19359490883','open','put',51.5363,'2024-10-11 00:32:01','Win',45.98,'2024-10-11 00:32:58'),
('19359492641','open','put',1,'2024-10-11 00:33:01','Win',0.89,'2024-10-11 00:33:58'),
('19359494476','open','put',1,'2024-10-11 00:34:01','Lose',-1,'2024-10-11 00:34:58'),
('19359496798','open','put',2.2,'2024-10-11 00:35:01','Lose',-2.2,'2024-10-11 00:35:58'),
('19359499203','open','put',4.84,'2024-10-11 00:36:01','Lose',-4.84,'2024-10-11 00:36:58'),
('19359501334','open','put',10.648,'2024-10-11 00:37:02','Win',9.5,'2024-10-11 00:37:58'),
('19359503069','open','put',1,'2024-10-11 00:38:01','Win',0.89,'2024-10-11 00:38:58'),
('19359504906','open','put',1,'2024-10-11 00:39:02','Lose',-1,'2024-10-11 00:39:58'),
('19359507431','open','put',2.2,'2024-10-11 00:40:02','Lose',-2.2,'2024-10-11 00:40:58'),
('19359509830','open','put',4.84,'2024-10-11 00:41:01','Win',4.31,'2024-10-11 00:41:58'),
('19359511898','open','put',1,'2024-10-11 00:42:01','Lose',-1,'2024-10-11 00:42:58'),
('19359514380','open','put',2.2,'2024-10-11 00:43:01','Win',1.96,'2024-10-11 00:43:58'),
('19359516453','open','put',1,'2024-10-11 00:44:01','Lose',-1,'2024-10-11 00:44:59'),
('19359518780','open','put',2.2,'2024-10-11 00:45:02','Win',1.96,'2024-10-11 00:45:58'),
('19359521532','open','put',1,'2024-10-11 00:46:02','Lose',-1,'2024-10-11 00:46:58'),
('19359523527','open','put',2.2,'2024-10-11 00:47:01','Lose',-2.2,'2024-10-11 00:47:58'),
('19359525678','open','put',4.84,'2024-10-11 00:48:02','Lose',-4.84,'2024-10-11 00:48:58'),
('19359527569','open','put',10.648,'2024-10-11 00:49:01','Lose',-10.64,'2024-10-11 00:50:00'),
('19359529870','open','put',23.4256,'2024-10-11 00:50:02','Win',20.9,'2024-10-11 00:50:58'),
('19359532327','open','put',1,'2024-10-11 00:51:01','Lose',-1,'2024-10-11 00:51:58'),
('19359534556','open','put',2.2,'2024-10-11 00:52:02','Win',1.96,'2024-10-11 00:52:58'),
('19359536592','open','put',1,'2024-10-11 00:53:01','Win',0.89,'2024-10-11 00:53:58'),
('19359538765','open','call',1,'2024-10-11 00:54:01','Win',0.89,'2024-10-11 00:54:59'),
('19359540892','open','put',1,'2024-10-11 00:55:01','Lose',-1,'2024-10-11 00:55:59'),
('19359543190','open','put',2.2,'2024-10-11 00:56:02','Lose',-2.2,'2024-10-11 00:56:58'),
('19359544945','open','put',4.84,'2024-10-11 00:57:01','Lose',-4.84,'2024-10-11 00:57:58'),
('19359546717','open','put',10.648,'2024-10-11 00:58:01','Lose',-10.64,'2024-10-11 00:58:58'),
('19359548310','open','put',23.4256,'2024-10-11 00:59:01','Lose',-23.42,'2024-10-11 00:59:59'),
('19359550291','open','put',51.5363,'2024-10-11 01:00:01','Lose',-51.53,'2024-10-11 01:00:58'),
('19359552609','open','put',113.38,'2024-10-11 01:01:02','Lose',-113.37,'2024-10-11 01:01:58'),
('19359554919','open','put',249.436,'2024-10-11 01:02:01',NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usdchfhistory`
--

DROP TABLE IF EXISTS `usdchfhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usdchfhistory` (
  `order_id` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `bet` float DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `profit` float DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usdchfhistory`
--

LOCK TABLES `usdchfhistory` WRITE;
/*!40000 ALTER TABLE `usdchfhistory` DISABLE KEYS */;
INSERT INTO `usdchfhistory` VALUES
('19360576560','open','put',1,'2024-10-11 11:07:03','Win',0.89,'2024-10-11 11:07:58'),
('19360578437','open','put',1,'2024-10-11 11:08:00','Lose',-1,'2024-10-11 11:08:57'),
('19360580347','open','put',2.2,'2024-10-11 11:09:00','Lose',-2.2,'2024-10-11 11:09:57'),
('19360582447','open','put',4.84,'2024-10-11 11:10:00','Win',4.32,'2024-10-11 11:10:58'),
('19360584407','open','put',1,'2024-10-11 11:11:00','Win',0.89,'2024-10-11 11:11:57'),
('19360588106','open','put',1,'2024-10-11 11:13:01','Win',0.89,'2024-10-11 11:13:57'),
('19360589757','open','call',1,'2024-10-11 11:14:00','Lose',-1,'2024-10-11 11:14:58'),
('19360591634','open','call',2.2,'2024-10-11 11:15:00','Lose',-2.2,'2024-10-11 11:15:57'),
('19360593802','open','call',4.84,'2024-10-11 11:16:00','Lose',-4.84,'2024-10-11 11:16:57'),
('19360595595','open','call',10.648,'2024-10-11 11:17:00','Win',9.52,'2024-10-11 11:17:57'),
('19360597151','open','call',1,'2024-10-11 11:18:00','Lose',-1,'2024-10-11 11:18:57'),
('19360598775','open','call',2.2,'2024-10-11 11:19:00','Lose',-2.2,'2024-10-11 11:19:57'),
('19360600524','open','call',4.84,'2024-10-11 11:20:01','Win',4.32,'2024-10-11 11:20:57'),
('19360602420','open','call',1,'2024-10-11 11:21:00','Win',0.89,'2024-10-11 11:21:57'),
('19360604298','open','put',1,'2024-10-11 11:22:00','Lose',-1,'2024-10-11 11:22:57'),
('19360605765','open','put',2.2,'2024-10-11 11:23:00','Win',1.96,'2024-10-11 11:23:57'),
('19360607268','open','put',1,'2024-10-11 11:24:00','Win',0.89,'2024-10-11 11:25:01'),
('19360608962','open','put',1,'2024-10-11 11:25:04','Win',0.89,'2024-10-11 11:26:00'),
('19360612427','open','put',1,'2024-10-11 11:27:03','Lose',-1,'2024-10-11 11:28:00'),
('19360614021','open','put',2.2,'2024-10-11 11:28:03','Win',1.96,'2024-10-11 11:29:00'),
('19360615368','open','put',1,'2024-10-11 11:29:03','Win',0.89,'2024-10-11 11:30:01'),
('19360616931','open','put',1,'2024-10-11 11:30:03','Lose',-1,'2024-10-11 11:31:00'),
('19360618830','open','put',2.2,'2024-10-11 11:31:02','Win',1.96,'2024-10-11 11:32:00'),
('19360620389','open','put',1,'2024-10-11 11:32:03','Lose',-1,'2024-10-11 11:33:00'),
('19360621663','open','put',2.2,'2024-10-11 11:33:04','Win',1.96,'2024-10-11 11:34:00'),
('19360622837','open','put',1,'2024-10-11 11:34:03','Lose',-1,'2024-10-11 11:35:00'),
('19360624162','open','put',2.2,'2024-10-11 11:35:03','Win',1.96,'2024-10-11 11:36:00'),
('19360625720','open','put',1,'2024-10-11 11:36:03','Win',0.89,'2024-10-11 11:37:00'),
('19360627117','open','put',1,'2024-10-11 11:37:04','Win',0.89,'2024-10-11 11:38:00'),
('19360630264','open','put',1,'2024-10-11 11:39:03','Win',0.89,'2024-10-11 11:40:00'),
('19360631457','open','put',1,'2024-10-11 11:40:03','Win',0.89,'2024-10-11 11:41:00'),
('19360633063','open','put',1,'2024-10-11 11:41:03','Win',0.89,'2024-10-11 11:42:00'),
('19360634578','open','put',1,'2024-10-11 11:42:03','Lose',-1,'2024-10-11 11:43:00'),
('19360635904','open','put',2.2,'2024-10-11 11:43:03','Lose',-2.2,'2024-10-11 11:44:00'),
('19360637572','open','put',4.84,'2024-10-11 11:44:03','Win',4.32,'2024-10-11 11:45:00'),
('19360639146','open','call',1,'2024-10-11 11:45:03','Win',0.89,'2024-10-11 11:46:00'),
('19360641182','open','call',1,'2024-10-11 11:46:03','Lose',-1,'2024-10-11 11:47:00'),
('19360642759','open','call',2.2,'2024-10-11 11:47:03','Lose',-2.2,'2024-10-11 11:48:00'),
('19360643992','open','call',4.84,'2024-10-11 11:48:03','Win',4.32,'2024-10-11 11:49:00'),
('19360645326','open','call',1,'2024-10-11 11:49:03','Lose',-1,'2024-10-11 11:50:01'),
('19360646771','open','call',2.2,'2024-10-11 11:50:03','Win',1.96,'2024-10-11 11:51:00'),
('19360648192','open','call',1,'2024-10-11 11:51:03','Lose',-1,'2024-10-11 11:52:00'),
('19360649614','open','call',2.2,'2024-10-11 11:52:03','Win',1.96,'2024-10-11 11:53:00'),
('19360651198','open','call',1,'2024-10-11 11:53:03','Win',0.89,'2024-10-11 11:54:00'),
('19360652914','open','call',1,'2024-10-11 11:54:04','Win',0.89,'2024-10-11 11:55:00'),
('19360654586','open','call',1,'2024-10-11 11:55:03','Win',0.89,'2024-10-11 11:56:00'),
('19360656295','open','call',1,'2024-10-11 11:56:03','Win',0.89,'2024-10-11 11:57:00'),
('19360657710','open','call',1,'2024-10-11 11:57:03','Lose',-1,'2024-10-11 11:58:00'),
('19360659071','open','call',2.2,'2024-10-11 11:58:04','Win',1.96,'2024-10-11 11:59:00'),
('19360660334','open','call',1,'2024-10-11 11:59:03','Lose',-1,'2024-10-11 12:00:00'),
('19360661960','open','call',2.2,'2024-10-11 12:00:04','Lose',-2.2,'2024-10-11 12:01:00'),
('19360663437','open','call',4.84,'2024-10-11 12:01:03','Lose',-4.84,'2024-10-11 12:02:00'),
('19360664670','open','call',10.648,'2024-10-11 12:02:03','Lose',-10.64,'2024-10-11 12:03:00'),
('19360665784','open','call',23.4256,'2024-10-11 12:03:03','Lose',-23.42,'2024-10-11 12:04:00'),
('19360667038','open','call',51.5363,'2024-10-11 12:04:03','Lose',-51.53,'2024-10-11 12:05:00'),
('19360668816','open','call',113.38,'2024-10-11 12:05:04','Lose',-113.37,'2024-10-11 12:06:00'),
('19360670610','open','call',249.436,'2024-10-11 12:06:03','Win',223,'2024-10-11 12:07:00'),
('19360672184','open','call',1,'2024-10-11 12:07:04','Win',0.89,'2024-10-11 12:08:00'),
('19360673308','open','call',1,'2024-10-11 12:08:03','Win',0.89,'2024-10-11 12:09:00'),
('19360674471','open','call',1,'2024-10-11 12:09:03','Win',0.89,'2024-10-11 12:10:00'),
('19360675951','open','call',1,'2024-10-11 12:10:03','Win',0.89,'2024-10-11 12:11:00'),
('19360677503','open','call',1,'2024-10-11 12:11:03','Win',0.89,'2024-10-11 12:12:00'),
('19360678832','open','call',1,'2024-10-11 12:12:03','Win',0.89,'2024-10-11 12:13:00'),
('19360680108','open','put',1,'2024-10-11 12:13:03','Lose',-1,'2024-10-11 12:14:00'),
('19360681312','open','put',2.2,'2024-10-11 12:14:03','Win',1.96,'2024-10-11 12:15:00'),
('19360684281','open','put',1,'2024-10-11 12:16:04','Lose',-1,'2024-10-11 12:17:00'),
('19360685472','open','put',2.2,'2024-10-11 12:17:03','Lose',-2.2,'2024-10-11 12:18:00'),
('19360686585','open','put',4.84,'2024-10-11 12:18:03','Lose',-4.84,'2024-10-11 12:19:00'),
('19360687692','open','put',10.648,'2024-10-11 12:19:03','Lose',-10.64,'2024-10-11 12:20:01'),
('19360689082','open','put',23.4256,'2024-10-11 12:20:03','Lose',-23.42,'2024-10-11 12:21:00'),
('19360690502','open','put',51.5363,'2024-10-11 12:21:03','Win',46.07,'2024-10-11 12:22:00'),
('19360691742','open','put',1,'2024-10-11 12:22:03','Win',0.89,'2024-10-11 12:23:00'),
('19360693141','open','put',1,'2024-10-11 12:23:03','Lose',-1,'2024-10-11 12:24:00'),
('19360694283','open','call',2.2,'2024-10-11 12:24:03','Lose',-2.2,'2024-10-11 12:25:00'),
('19360695674','open','call',4.84,'2024-10-11 12:25:04','Lose',-4.84,'2024-10-11 12:26:00'),
('19360697201','open','call',10.648,'2024-10-11 12:26:03','Win',9.52,'2024-10-11 12:27:00'),
('19360698692','open','call',1,'2024-10-11 12:27:04','Win',0.89,'2024-10-11 12:28:00'),
('19360699879','open','call',1,'2024-10-11 12:28:03','Win',0.89,'2024-10-11 12:29:00'),
('19360701040','open','call',1,'2024-10-11 12:29:03','Win',0.89,'2024-10-11 12:30:02'),
('19360702565','open','call',1,'2024-10-11 12:30:04','Win',0.89,'2024-10-11 12:31:00'),
('19360704116','open','put',1,'2024-10-11 12:31:03','Win',0.89,'2024-10-11 12:32:00'),
('19360705352','open','put',1,'2024-10-11 12:32:03','Win',0.89,'2024-10-11 12:33:00'),
('19360706644','open','call',1,'2024-10-11 12:33:03','Lose',-1,'2024-10-11 12:34:00'),
('19360707790','open','call',2.2,'2024-10-11 12:34:03','Win',1.96,'2024-10-11 12:35:01'),
('19360709342','open','put',1,'2024-10-11 12:35:03','Win',0.89,'2024-10-11 12:36:00'),
('19360710835','open','put',1,'2024-10-11 12:36:02','Win',0.89,'2024-10-11 12:37:00'),
('19360712023','open','call',1,'2024-10-11 12:37:03','Win',0.89,'2024-10-11 12:38:00'),
('19360713351','open','put',1,'2024-10-11 12:38:04','Win',0.89,'2024-10-11 12:39:00'),
('19360714531','open','put',1,'2024-10-11 12:39:03','Win',0.89,'2024-10-11 12:40:00'),
('19360715924','open','call',1,'2024-10-11 12:40:04','Win',0.89,'2024-10-11 12:41:00'),
('19360717143','open','call',1,'2024-10-11 12:41:03','Win',0.89,'2024-10-11 12:42:00'),
('19360718279','open','call',1,'2024-10-11 12:42:03','Lose',-1,'2024-10-11 12:43:00'),
('19360719631','open','call',2.2,'2024-10-11 12:43:03','Win',1.96,'2024-10-11 12:44:00'),
('19360720895','open','call',1,'2024-10-11 12:44:04','Win',0.89,'2024-10-11 12:45:01'),
('19360722219','open','call',1,'2024-10-11 12:45:03','Lose',-1,'2024-10-11 12:46:00'),
('19360724061','open','call',2.2,'2024-10-11 12:46:03','Lose',-2.2,'2024-10-11 12:47:00'),
('19360725417','open','call',4.84,'2024-10-11 12:47:03','Lose',-4.84,'2024-10-11 12:48:00'),
('19360727168','open','call',10.648,'2024-10-11 12:48:04','Lose',-10.64,'2024-10-11 12:49:00'),
('19360728783','open','call',23.4256,'2024-10-11 12:49:03','Lose',-23.42,'2024-10-11 12:50:00'),
('19360730576','open','call',51.5363,'2024-10-11 12:50:04','Win',46.08,'2024-10-11 12:51:00'),
('19360732324','open','call',1,'2024-10-11 12:51:03','Win',0.89,'2024-10-11 12:52:00'),
('19360733460','open','call',1,'2024-10-11 12:52:03','Win',0.89,'2024-10-11 12:53:00'),
('19360739868','open','put',1,'2024-10-11 12:57:03','Lose',-1,'2024-10-11 12:58:00'),
('19360741301','open','put',2.2,'2024-10-11 12:58:03','Win',1.96,'2024-10-11 12:59:00'),
('19360742471','open','put',1,'2024-10-11 12:59:03','Lose',-1,'2024-10-11 13:00:01'),
('19360743912','open','put',2.2,'2024-10-11 13:00:03','Lose',-2.2,'2024-10-11 13:01:00'),
('19360745574','open','put',4.84,'2024-10-11 13:01:03','Win',4.32,'2024-10-11 13:02:00'),
('19360747012','open','put',1,'2024-10-11 13:02:03','Lose',-1,'2024-10-11 13:03:00'),
('19360748504','open','put',2.2,'2024-10-11 13:03:04','Lose',-2.2,'2024-10-11 13:04:00'),
('19360749648','open','put',4.84,'2024-10-11 13:04:03','Lose',-4.84,'2024-10-11 13:05:01'),
('19360751037','open','put',10.648,'2024-10-11 13:05:03','Lose',-10.64,'2024-10-11 13:06:00'),
('19360752554','open','put',23.4256,'2024-10-11 13:06:03','Lose',-23.42,'2024-10-11 13:07:00'),
('19360753813','open','put',51.5363,'2024-10-11 13:07:03','Win',46.07,'2024-10-11 13:08:00'),
('19360755007','open','put',1,'2024-10-11 13:08:03','Lose',-1,'2024-10-11 13:09:00'),
('19360756223','open','put',2.2,'2024-10-11 13:09:03','Lose',-2.2,'2024-10-11 13:10:00'),
('19360757856','open','put',4.84,'2024-10-11 13:10:03','Lose',-4.84,'2024-10-11 13:11:00'),
('19360759122','open','put',10.648,'2024-10-11 13:11:03','Lose',-10.64,'2024-10-11 13:12:00'),
('19360760359','open','put',23.4256,'2024-10-11 13:12:03','Win',20.94,'2024-10-11 13:13:00'),
('19360761739','open','put',1,'2024-10-11 13:13:03','Lose',-1,'2024-10-11 13:14:00'),
('19360762938','open','put',2.2,'2024-10-11 13:14:03','Win',1.96,'2024-10-11 13:15:01'),
('19360764384','open','put',1,'2024-10-11 13:15:04','Lose',-1,'2024-10-11 13:16:00'),
('19360766042','open','put',2.2,'2024-10-11 13:16:03','Lose',-2.2,'2024-10-11 13:17:00'),
('19360767434','open','put',4.84,'2024-10-11 13:17:03','Win',4.32,'2024-10-11 13:18:00'),
('19360768827','open','put',1,'2024-10-11 13:18:02','Win',0.89,'2024-10-11 13:19:00'),
('19360770475','open','put',1,'2024-10-11 13:19:03','Win',0.89,'2024-10-11 13:20:01'),
('19360771848','open','put',1,'2024-10-11 13:20:03','Lose',-1,'2024-10-11 13:21:00'),
('19360773142','open','put',2.2,'2024-10-11 13:21:03','Win',1.96,'2024-10-11 13:22:00'),
('19360774801','open','put',1,'2024-10-11 13:22:04','Win',0.89,'2024-10-11 13:23:00'),
('19360776180','open','put',1,'2024-10-11 13:23:03','Lose',-1,'2024-10-11 13:24:00'),
('19360777280','open','put',2.2,'2024-10-11 13:24:03','Win',1.96,'2024-10-11 13:25:00'),
('19360778532','open','put',1,'2024-10-11 13:25:03','Lose',-1,'2024-10-11 13:26:00'),
('19360780019','open','put',2.2,'2024-10-11 13:26:04','Lose',-2.2,'2024-10-11 13:27:00'),
('19360781320','open','put',4.84,'2024-10-11 13:27:03','Lose',-4.84,'2024-10-11 13:28:00'),
('19360782315','open','put',10.648,'2024-10-11 13:28:03','Win',9.52,'2024-10-11 13:29:00'),
('19360783470','open','put',1,'2024-10-11 13:29:03','Lose',-1,'2024-10-11 13:30:01'),
('19360784712','open','put',2.2,'2024-10-11 13:30:03','Win',1.96,'2024-10-11 13:31:00'),
('19360786540','open','put',1,'2024-10-11 13:31:03','Win',0.89,'2024-10-11 13:32:00'),
('19360789404','open','put',1,'2024-10-11 13:33:04','Lose',-1,'2024-10-11 13:34:00'),
('19360790875','open','put',2.2,'2024-10-11 13:34:03','Lose',-2.2,'2024-10-11 13:35:00'),
('19360792783','open','put',4.84,'2024-10-11 13:35:04','Win',4.32,'2024-10-11 13:36:00'),
('19360794250','open','put',1,'2024-10-11 13:36:03','Lose',-1,'2024-10-11 13:37:00'),
('19360795629','open','put',2.2,'2024-10-11 13:37:03','Win',1.96,'2024-10-11 13:38:00'),
('19360797297','open','put',1,'2024-10-11 13:38:03','Win',0.89,'2024-10-11 13:39:00'),
('19360798939','open','put',1,'2024-10-11 13:39:04','Lose',-1,'2024-10-11 13:40:00'),
('19360800400','open','put',2.2,'2024-10-11 13:40:03','Win',1.96,'2024-10-11 13:41:00'),
('19360802132','open','put',1,'2024-10-11 13:41:04','Win',0.89,'2024-10-11 13:42:00'),
('19360803521','open','put',1,'2024-10-11 13:42:03','Win',0.89,'2024-10-11 13:43:00'),
('19360805023','open','call',1,'2024-10-11 13:43:03','Lose',-1,'2024-10-11 13:44:00'),
('19360806276','open','call',2.2,'2024-10-11 13:44:03','Win',1.96,'2024-10-11 13:45:01'),
('19360807698','open','call',1,'2024-10-11 13:45:04','Lose',-1,'2024-10-11 13:46:00'),
('19360809445','open','call',2.2,'2024-10-11 13:46:03','Lose',-2.2,'2024-10-11 13:47:00'),
('19360811367','open','call',4.84,'2024-10-11 13:47:04','Lose',-4.84,'2024-10-11 13:48:00'),
('19360812875','open','call',10.648,'2024-10-11 13:48:03','Lose',-10.64,'2024-10-11 13:49:00'),
('19360814561','open','call',23.4256,'2024-10-11 13:49:03','Win',20.94,'2024-10-11 13:50:00'),
('19360816133','open','call',1,'2024-10-11 13:50:03','Lose',-1,'2024-10-11 13:51:00'),
('19360818047','open','call',2.2,'2024-10-11 13:51:03','Win',1.96,'2024-10-11 13:52:00'),
('19360819501','open','call',1,'2024-10-11 13:52:03','Win',0.89,'2024-10-11 13:53:00'),
('19360820786','open','call',1,'2024-10-11 13:53:03','Win',0.89,'2024-10-11 13:54:00'),
('19360822183','open','call',1,'2024-10-11 13:54:03','Win',0.89,'2024-10-11 13:55:01'),
('19360823587','open','call',1,'2024-10-11 13:55:03','Win',0.89,'2024-10-11 13:56:00'),
('19360824831','open','call',1,'2024-10-11 13:56:03','Lose',-1,'2024-10-11 13:57:00'),
('19360826081','open','call',2.2,'2024-10-11 13:57:03','Lose',-2.2,'2024-10-11 13:58:00'),
('19360827502','open','call',4.84,'2024-10-11 13:58:03','Win',4.32,'2024-10-11 13:59:00'),
('19360829219','open','call',1,'2024-10-11 13:59:03','Win',0.89,'2024-10-11 14:00:00'),
('19360830773','open','call',1,'2024-10-11 14:00:04','Win',0.89,'2024-10-11 14:01:00'),
('19360832649','open','call',1,'2024-10-11 14:01:04','Win',0.89,'2024-10-11 14:02:00'),
('19360836210','open','call',1,'2024-10-11 14:03:04','Win',0.89,'2024-10-11 14:04:00'),
('19360837560','open','call',1,'2024-10-11 14:04:04','Lose',-1,'2024-10-11 14:05:00'),
('19360839048','open','call',2.2,'2024-10-11 14:05:03','Win',1.96,'2024-10-11 14:06:00'),
('19360840601','open','put',1,'2024-10-11 14:06:03','Lose',-1,'2024-10-11 14:07:00'),
('19360842024','open','put',2.2,'2024-10-11 14:07:03','Lose',-2.2,'2024-10-11 14:08:00'),
('19360843420','open','put',4.84,'2024-10-11 14:08:04','Win',4.32,'2024-10-11 14:09:00'),
('19360845031','open','put',1,'2024-10-11 14:09:03','Win',0.89,'2024-10-11 14:10:00'),
('19360846600','open','put',1,'2024-10-11 14:10:03',NULL,NULL,NULL);
/*!40000 ALTER TABLE `usdchfhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-10-21 13:25:24
