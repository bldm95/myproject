-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: football_db
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Тренер');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,19),(2,1,20),(3,1,21),(7,1,28),(8,1,29),(9,1,30),(10,1,32);
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add news',6,'add_news'),(17,'Can change news',6,'change_news'),(18,'Can delete news',6,'delete_news'),(19,'Can add player',7,'add_player'),(20,'Can change player',7,'change_player'),(21,'Can delete player',7,'delete_player'),(22,'Can add coach',8,'add_coach'),(23,'Can change coach',8,'change_coach'),(24,'Can delete coach',8,'delete_coach'),(25,'Can add rank',9,'add_rank'),(26,'Can change rank',9,'change_rank'),(27,'Can delete rank',9,'delete_rank'),(28,'Can add photo',10,'add_photo'),(29,'Can change photo',10,'change_photo'),(30,'Can delete photo',10,'delete_photo'),(31,'Can add team',11,'add_team'),(32,'Can change team',11,'change_team'),(33,'Can delete team',11,'delete_team'),(34,'Can add session',12,'add_session'),(35,'Can change session',12,'change_session'),(36,'Can delete session',12,'delete_session'),(37,'Can add game',13,'add_game'),(38,'Can change game',13,'change_game'),(39,'Can delete game',13,'delete_game'),(40,'Can add goal',14,'add_goal'),(41,'Can change goal',14,'change_goal'),(42,'Can delete goal',14,'delete_goal'),(43,'Can add referee',15,'add_referee'),(44,'Can change referee',15,'change_referee'),(45,'Can delete referee',15,'delete_referee'),(46,'Can add place',16,'add_place'),(47,'Can change place',16,'change_place'),(48,'Can delete place',16,'delete_place'),(49,'Can add tournament',17,'add_tournament'),(50,'Can change tournament',17,'change_tournament'),(51,'Can delete tournament',17,'delete_tournament'),(52,'Can add game image',18,'add_gameimage'),(53,'Can change game image',18,'change_gameimage'),(54,'Can delete game image',18,'delete_gameimage'),(58,'Can add user object permission',20,'add_userobjectpermission'),(59,'Can change user object permission',20,'change_userobjectpermission'),(60,'Can delete user object permission',20,'delete_userobjectpermission'),(61,'Can add group object permission',21,'add_groupobjectpermission'),(62,'Can change group object permission',21,'change_groupobjectpermission'),(63,'Can delete group object permission',21,'delete_groupobjectpermission'),(64,'Can view news',6,'view_news');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$WfkQoX4KAPgj$RZ7dATVws1qV8/hUTjPNr0P77TZG5XV1J2PcBsRdMeE=','2017-05-28 14:42:43.095535',1,'bldm95','','','bldm95@mail.ru',1,1,'2016-10-04 13:18:26.912416'),(2,'pbkdf2_sha256$30000$vOtTdvvlh7QS$Y4d7TjA/mGyhRn4E1qDEIhr6XQef3qPglMb/VONpBr0=','2017-02-14 07:33:41.822507',0,'trener','','','',1,1,'2016-11-02 18:23:23.645571'),(3,'!gVY3kaPXulebALB3EGOUid2RRX9exkkp3btAO1Js',NULL,0,'AnonymousUser','','','',0,1,'2017-02-09 17:42:28.079456'),(4,'pbkdf2_sha256$30000$ah8NyqvMS2cq$9dbf8kqnMNOo/Ob1xeTS1D+C7lEJg11c8v76wrsycmg=','2017-02-09 18:38:08.720818',0,'newtrener','','','',1,1,'2017-02-09 18:26:24.100113'),(5,'',NULL,0,'Vova','','','',0,1,'2017-02-11 14:52:27.626731'),(6,'pbkdf2_sha256$30000$CPuD600xIubF$vP4blN+Hqwp7N2gNc5tRIhn1mZ7w3Kmc5j9vyORRzUY=','2017-02-13 19:55:29.502759',0,'Vovan','','','',1,1,'2017-02-11 15:53:14.121303'),(11,'',NULL,0,'joe','','','',0,1,'2017-02-14 08:07:30.576846');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (17,2,2),(18,2,10),(19,2,11),(13,2,58),(14,2,59),(15,2,60),(20,2,61),(21,2,62),(28,4,16),(29,4,17),(25,4,58),(26,4,59),(27,4,60),(33,6,1),(34,6,2),(35,6,3),(30,6,58),(31,6,59),(32,6,60);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-10-04 13:18:54.347507','1','Photo object',1,'[{\"added\": {}}]',10,1),(2,'2016-10-04 13:18:59.792666','1','Ну попробуем',1,'[{\"added\": {}}]',6,1),(3,'2016-10-04 13:26:55.195069','1','Rank object',1,'[{\"added\": {}}]',9,1),(4,'2016-10-04 13:33:12.471890','2','Photo object',1,'[{\"added\": {}}]',10,1),(5,'2016-10-04 13:33:44.160990','3','Photo object',1,'[{\"added\": {}}]',10,1),(6,'2016-10-04 13:34:00.606686','4','Photo object',1,'[{\"added\": {}}]',10,1),(7,'2016-10-04 13:34:49.389631','1','Coach object',1,'[{\"added\": {}}]',8,1),(8,'2016-10-04 13:34:55.237028','1','Team object',1,'[{\"added\": {}}]',11,1),(9,'2016-10-04 13:34:58.707667','1','ЧикуновВладимирДмитриевич',1,'[{\"added\": {}}]',7,1),(10,'2016-10-04 16:48:39.730789','1','Ростов',2,'[{\"changed\": {\"fields\": [\"team_created_date\", \"team_text\"]}}]',11,1),(11,'2016-10-04 17:42:09.701811','1','Ну попробуем',2,'[{\"changed\": {\"fields\": [\"news_text\", \"news_created_date\", \"news_published_date\"]}}]',6,1),(12,'2016-10-04 17:48:35.876420','5','Photo object',1,'[{\"added\": {}}]',10,1),(13,'2016-10-04 17:48:40.701147','2','Проверка изображения',1,'[{\"added\": {}}]',6,1),(14,'2016-10-05 09:22:27.099120','2','Проверка изображения',2,'[{\"changed\": {\"fields\": [\"news_image\", \"news_created_date\", \"news_published_date\"]}}]',6,1),(15,'2016-10-05 09:22:41.619810','1','Ну попробуем',2,'[{\"changed\": {\"fields\": [\"news_image\", \"news_created_date\", \"news_published_date\"]}}]',6,1),(16,'2016-10-05 09:41:48.640781','3','Применяем визуальные эффекты к изображениям в Django',1,'[{\"added\": {}}]',6,1),(17,'2016-10-05 09:43:11.173834','2','Проверка изображения',3,'',6,1),(18,'2016-10-05 09:43:11.210283','1','Ну попробуем',3,'',6,1),(19,'2016-10-05 09:46:19.338378','3','Применяем визуальные эффекты к изображениям в Django',2,'[{\"changed\": {\"fields\": [\"news_image\", \"news_created_date\", \"news_published_date\"]}}]',6,1),(20,'2016-10-05 12:41:14.218157','1','Левко Иван Петрович',2,'[{\"changed\": {\"fields\": [\"coach_year_birth\", \"coach_photo\"]}}]',8,1),(21,'2016-10-06 12:21:52.978313','6','Photo object',1,'[{\"added\": {}}]',10,1),(22,'2016-10-06 12:21:55.156238','2','Лысенко Евгений Петрович',1,'[{\"added\": {}}]',7,1),(23,'2016-10-09 10:00:44.953726','7','Photo object',1,'[{\"added\": {}}]',10,1),(24,'2016-10-09 10:00:47.046612','3','Григорий Пеле Иванович',1,'[{\"added\": {}}]',7,1),(25,'2016-10-09 12:11:32.581342','2','Помошник',1,'[{\"added\": {}}]',9,1),(26,'2016-10-09 12:11:57.354258','8','Photo object',1,'[{\"added\": {}}]',10,1),(27,'2016-10-09 12:12:00.770132','2','Батрудинов Иван Семенович',1,'[{\"added\": {}}]',8,1),(28,'2016-10-09 12:14:51.976427','1','Ростов',2,'[{\"changed\": {\"fields\": [\"created_date\", \"coach\"]}}]',11,1),(29,'2016-10-09 12:44:59.329877','4','Лавров обвинил США в агрессии против России',1,'[{\"added\": {}}]',6,1),(30,'2016-10-12 08:58:27.331886','5','Nanana',1,'[{\"added\": {}}]',6,1),(31,'2016-10-12 08:58:56.725395','6','kmlf',1,'[{\"added\": {}}]',6,1),(32,'2016-10-12 08:59:29.520494','7','ndfjdlj',1,'[{\"added\": {}}]',6,1),(33,'2016-10-12 09:00:00.999449','8','elkrhekrgn;lkr',1,'[{\"added\": {}}]',6,1),(34,'2016-10-12 09:00:28.057079','9','mvfcg,hmbjn,k.',1,'[{\"added\": {}}]',6,1),(35,'2016-10-12 09:12:39.918322','5','Nanana',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(36,'2016-10-12 09:14:20.995438','6','kmlf',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(37,'2016-10-12 09:14:51.710925','7','ndfjdlj',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(38,'2016-10-12 09:15:30.497022','8','elkrhekrgn',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"created_date\", \"published_date\"]}}]',6,1),(39,'2016-10-12 09:16:45.096720','9','mvfcg,hmbjn,k.',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(40,'2016-10-12 09:23:12.997244','9','Photo object',1,'[{\"added\": {}}]',10,1),(41,'2016-10-12 09:23:15.722328','3','Самсонов Борис Борисович',1,'[{\"added\": {}}]',8,1),(42,'2016-10-12 09:23:31.086220','10','Photo object',1,'[{\"added\": {}}]',10,1),(43,'2016-10-12 09:23:33.650211','2','Звезда',1,'[{\"added\": {}}]',11,1),(44,'2016-10-12 09:24:14.500576','11','Photo object',1,'[{\"added\": {}}]',10,1),(45,'2016-10-12 09:24:16.424227','4','Гудулов Петр Иванович',1,'[{\"added\": {}}]',7,1),(46,'2016-10-12 17:53:08.127191','3','Photo object',3,'',10,1),(47,'2016-10-12 17:53:11.134643','1','Ростов',2,'[{\"changed\": {\"fields\": [\"created_date\"]}}]',11,1),(48,'2016-10-17 15:21:22.171705','1','Tournament object',1,'[{\"added\": {}}]',17,1),(49,'2016-10-17 15:26:52.931547','1','Золотой мяч',3,'',17,1),(50,'2016-10-17 15:30:07.110806','2','Золотой мяч',1,'[{\"added\": {}}]',17,1),(51,'2016-10-17 19:15:25.187385','1','Ростов Сельмаш',1,'[{\"added\": {}}]',16,1),(52,'2016-10-17 19:16:09.688637','12','Photo object',1,'[{\"added\": {}}]',10,1),(53,'2016-10-17 19:16:11.695516','1','Коченков Олег Иваночив',1,'[{\"added\": {}}]',15,1),(54,'2016-10-17 19:17:18.049674','13','Photo object',1,'[{\"added\": {}}]',10,1),(55,'2016-10-17 19:19:22.894842','14','Photo object',1,'[{\"added\": {}}]',10,1),(56,'2016-10-17 19:22:45.196686','15','Photo object',1,'[{\"added\": {}}]',10,1),(57,'2016-10-17 19:22:46.401703','3','Золотой мяч Ростов Звезда',1,'[{\"added\": {}}]',13,1),(58,'2016-10-17 19:24:04.314831','3','9 мая',1,'[{\"added\": {}}]',17,1),(59,'2016-10-17 19:31:56.387499','3','Золотой мяч Чикунов 22:24',1,'[{\"added\": {}}]',14,1),(60,'2016-10-17 20:18:52.216678','4','9 мая Звезда Ростов',1,'[{\"added\": {}}]',13,1),(61,'2016-10-17 20:19:26.585207','4','9 мая Григорий 23:19',1,'[{\"added\": {}}]',14,1),(62,'2016-10-21 16:08:26.011738','5','9 мая Звезда Ростов',1,'[{\"added\": {}}]',13,1),(63,'2016-10-26 18:33:11.468098','1','Ростов Сельмаш',2,'[{\"changed\": {\"fields\": [\"address\"]}}]',16,1),(64,'2016-11-02 18:22:21.764542','1','Тренер',1,'[{\"added\": {}}]',3,1),(65,'2016-11-02 18:23:23.683979','2','trener',1,'[{\"added\": {}}]',2,1),(66,'2016-11-02 18:23:45.477574','2','trener',2,'[{\"changed\": {\"fields\": [\"date_joined\"]}}]',2,1),(67,'2016-11-02 18:24:14.003969','2','trener',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"date_joined\"]}}]',2,1),(68,'2016-11-02 18:26:12.392667','1','Тренер',2,'[]',3,1),(69,'2016-11-02 18:26:36.084371','1','Тренер',2,'[]',3,1),(70,'2016-11-12 15:40:58.530547','1','Ростов',2,'[{\"changed\": {\"fields\": [\"created_date\", \"emblem\"]}}]',11,1),(71,'2016-11-12 15:41:14.720103','1','Ростов',2,'[{\"changed\": {\"fields\": [\"created_date\", \"emblem\"]}}]',11,1),(72,'2016-11-13 11:11:25.266048','5','Золотой мяч Лысенко 11:19',1,'[{\"added\": {}}]',14,1),(73,'2016-11-13 12:55:38.913039','6','Золотой мяч Гудулов 55:34',1,'[{\"added\": {}}]',14,1),(74,'2016-11-17 15:41:49.095732','3','Самсонов Борис Борисович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',8,1),(75,'2016-11-17 15:42:04.761878','1','Левко Иван Петрович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\", \"photo\"]}}]',8,1),(76,'2016-11-17 15:42:20.279834','1','Левко Иван Петрович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"rank\"]}}]',8,1),(77,'2016-11-17 15:42:45.884524','2','Батрудинов Иван Семенович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',8,1),(78,'2016-11-17 16:22:12.189662','16','Photo object',1,'[{\"added\": {}}]',10,1),(79,'2016-11-17 16:22:13.973243','2','АНО \"Академия футбола им. В. Понедельника\"',2,'[{\"changed\": {\"fields\": [\"name\", \"created_date\", \"emblem\"]}}]',11,1),(80,'2016-11-17 17:06:38.632112','1','Левко Иван Петрович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"photo\"]}}]',8,1),(81,'2016-11-19 08:05:36.752302','17','Photo object',1,'[{\"added\": {}}]',10,1),(82,'2016-11-19 08:05:38.292602','5','9 мая АНО \"Академия футбола им. В. Понедельника\" Ростов 2016-10-21',2,'[{\"changed\": {\"fields\": [\"date_time\", \"photo\"]}}]',13,1),(83,'2016-11-23 19:11:21.920618','18','Photo object',1,'[{\"added\": {}}]',10,1),(84,'2016-11-23 19:17:11.010711','1','GameImage object',1,'[{\"added\": {}}]',18,1),(85,'2016-11-23 19:17:33.464926','1','GameImage object',2,'[]',18,1),(86,'2016-11-23 19:26:20.284708','6','Золотой мяч Ростов АНО \"Академия футбола им. В. Понедельника\" 2016-11-23',1,'[{\"added\": {}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}]',13,1),(87,'2016-12-01 09:11:31.755869','3','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(88,'2016-12-01 09:13:25.256838','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(89,'2016-12-01 09:16:55.092881','8','Вернблум дисквалифицирован на один матч, но с «Оренбургом» сыграет',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"created_date\", \"published_date\"]}}]',6,1),(90,'2016-12-01 09:17:12.851035','8','Вернблум дисквалифицирован на один матч, но с «Оренбургом» сыграет',2,'[{\"changed\": {\"fields\": [\"image\", \"created_date\", \"published_date\"]}}]',6,1),(91,'2016-12-01 09:20:03.183247','7','Евдокимов: после дисквалификации Вернблума со следующей игры всё стало ясно',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(92,'2016-12-01 09:23:37.527079','6','Слуцкий: слухи о том, что уйду из ЦСКА, перед матчем не давили',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(93,'2016-12-01 09:31:55.238818','5','Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(94,'2016-12-01 09:36:48.344606','4','Быстров: «Действия Хави Гарсии - это уже не футбол, а что-то из кикбоксинга»',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(95,'2016-12-01 09:39:29.097170','3','«Реал» повторил свою рекордную беспроигрышную серию',2,'[{\"changed\": {\"fields\": [\"title\", \"text\", \"image\", \"created_date\", \"published_date\"]}}]',6,1),(96,'2016-12-01 10:25:51.908593','19','Photo object',1,'[{\"added\": {}}]',10,1),(97,'2016-12-01 10:25:53.638385','2','Акопян Аркадий Александрович',1,'[{\"added\": {}}]',15,1),(98,'2016-12-01 10:26:54.650714','20','Photo object',1,'[{\"added\": {}}]',10,1),(99,'2016-12-01 10:26:56.860600','1','Березнев Дмитрий Александрович',2,'[{\"changed\": {\"fields\": [\"surname\", \"name\", \"middle_name\", \"year_birth\", \"photo\"]}}]',15,1),(100,'2016-12-01 10:27:43.121646','21','Photo object',1,'[{\"added\": {}}]',10,1),(101,'2016-12-01 10:27:44.689116','3','Бистерфельд   () Денис Николаевич',1,'[{\"added\": {}}]',15,1),(102,'2016-12-01 10:27:51.134465','3','Бистерфельд Денис Николаевич',2,'[{\"changed\": {\"fields\": [\"surname\", \"year_birth\"]}}]',15,1),(103,'2016-12-01 10:32:36.290974','2','АНО \"Академия футбола им. В. Понедельника\"',2,'[{\"changed\": {\"fields\": [\"created_date\", \"text\"]}}]',11,1),(104,'2016-12-01 10:35:35.408526','22','Photo object',1,'[{\"added\": {}}]',10,1),(105,'2016-12-01 10:36:13.336442','4','Попов Эдуард Владимирович',1,'[{\"added\": {}}]',8,1),(106,'2016-12-01 10:41:13.927310','3','Самсонов Борис Борисович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',8,1),(107,'2016-12-01 10:41:22.216112','1','Левко Иван Петрович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',8,1),(108,'2016-12-01 11:03:07.487596','13','Photo object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',10,1),(109,'2016-12-01 11:03:09.253803','1','Квадро',2,'[{\"changed\": {\"fields\": [\"name\", \"created_date\", \"text\"]}}]',11,1),(110,'2016-12-01 11:04:19.494912','1','Квадро',2,'[{\"changed\": {\"fields\": [\"created_date\", \"text\"]}}]',11,1),(111,'2016-12-01 11:04:35.074938','1','Квадро',2,'[{\"changed\": {\"fields\": [\"created_date\", \"text\"]}}]',11,1),(112,'2016-12-01 11:05:06.383533','1','Квадро',2,'[{\"changed\": {\"fields\": [\"created_date\", \"text\"]}}]',11,1),(113,'2016-12-01 11:19:31.975424','23','Photo object',1,'[{\"added\": {}}]',10,1),(114,'2016-12-01 11:19:49.289682','3','Отырба Вадим Геннадьевич',2,'[{\"changed\": {\"fields\": [\"surname\", \"name\", \"middle_name\", \"year_birth\", \"team\", \"photo\"]}}]',8,1),(115,'2016-12-01 11:20:58.286213','2','Батрудинов Иван Семенович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',8,1),(116,'2016-12-01 11:23:46.475165','3','Отырба Вадим Геннадьевич',2,'[{\"changed\": {\"fields\": [\"year_birth\"]}}]',8,1),(117,'2016-12-01 11:30:30.269958','24','Photo object',1,'[{\"added\": {}}]',10,1),(118,'2016-12-01 11:30:31.950776','3','НОУ ДОД ФШМ ФК \"Ростов\"',1,'[{\"added\": {}}]',11,1),(119,'2016-12-01 11:44:40.477626','3','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" АНО \"Академия футбола им. В. Понедельника\" 2016-10-12',2,'[{\"changed\": {\"fields\": [\"participant_one\", \"date_time\"]}}]',13,1),(120,'2016-12-01 12:15:56.049509','6','Золотой мяч Квадро АНО \"Академия футбола им. В. Понедельника\" 2016-11-23',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}, {\"added\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"added\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}]',13,1),(121,'2016-12-01 12:40:33.438291','6','Золотой мяч Квадро АНО \"Академия футбола им. В. Понедельника\" 2016-11-23',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}, {\"added\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}]',13,1),(122,'2016-12-01 12:41:03.501154','3','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" АНО \"Академия футбола им. В. Понедельника\" 2016-10-12',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}, {\"deleted\": {\"name\": \"game image\", \"object\": \"GameImage object\"}}]',13,1),(123,'2016-12-01 12:42:25.811478','5','9 мая АНО \"Академия футбола им. В. Понедельника\" Квадро 2016-10-21',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}, {\"added\": {\"object\": \"GameImage object\", \"name\": \"game image\"}}]',13,1),(124,'2016-12-06 18:25:18.896888','2','Батрудинов Иван Семенович',3,'',8,1),(125,'2016-12-06 18:25:18.975245','1','Левко Иван Петрович',3,'',8,1),(126,'2016-12-12 18:20:39.435066','6','Золотой мяч Гудулов 54:34',2,'[{\"changed\": {\"fields\": [\"minute\"]}}]',14,1),(127,'2016-12-12 18:34:02.209868','5','Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\", \"source\"]}}]',6,1),(128,'2016-12-18 12:09:05.064395','3','«Реал» повторил свою рекордную беспроигрышную серию',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\", \"source\", \"name_source\"]}}]',6,1),(129,'2016-12-18 12:09:53.354549','6','Слуцкий: слухи о том, что уйду из ЦСКА, перед матчем не давили',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\", \"source\", \"name_source\"]}}]',6,1),(130,'2016-12-18 12:11:15.849438','5','Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\", \"source\"]}}]',6,1),(131,'2016-12-18 13:47:11.742054','7','Золотой мяч Чикунов 55:31',1,'[{\"added\": {}}]',14,1),(132,'2016-12-18 14:10:52.207313','8','9 мая Лысенко 32:12',1,'[{\"added\": {}}]',14,1),(133,'2016-12-18 14:10:58.417317','8','9 мая Лысенко 32:12',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',14,1),(134,'2016-12-18 14:58:15.526931','8','9 мая Лысенко 32:12',2,'[]',14,1),(135,'2016-12-18 15:09:30.947933','8','9 мая Лысенко 32:12',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',14,1),(136,'2016-12-18 15:33:25.640455','8','9 мая Лысенко 32:12',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',14,1),(137,'2016-12-18 15:34:39.270565','9','Золотой мяч Гудулов 23:21',1,'[{\"added\": {}}]',14,1),(138,'2016-12-18 15:35:25.679393','9','9 мая Гудулов 23:21',2,'[{\"changed\": {\"fields\": [\"game\"]}}]',14,1),(139,'2016-12-18 15:45:22.609969','9','9 мая Гудулов 23:21',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',14,1),(140,'2016-12-18 16:48:12.848744','7','9 мая Квадро НОУ ДОД ФШМ ФК \"Ростов\" 2016-12-22',1,'[{\"added\": {}}]',13,1),(141,'2016-12-18 16:55:07.896483','6','Золотой мяч Квадро АНО \"Академия футбола им. В. Понедельника\" 2016-11-23',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(142,'2016-12-18 16:58:13.100091','5','9 мая АНО \"Академия футбола им. В. Понедельника\" Квадро 2016-10-21',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(143,'2016-12-18 16:58:17.654568','4','9 мая АНО \"Академия футбола им. В. Понедельника\" Квадро 2014-10-15',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(144,'2016-12-18 16:58:35.723394','7','9 мая Квадро НОУ ДОД ФШМ ФК \"Ростов\" 2016-12-22',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(145,'2016-12-18 16:58:48.637103','7','9 мая Квадро НОУ ДОД ФШМ ФК \"Ростов\" 2016-12-22',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(146,'2016-12-18 16:58:59.785376','3','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" АНО \"Академия футбола им. В. Понедельника\" 2016-10-12',2,'[{\"changed\": {\"fields\": [\"date_time\", \"played\"]}}]',13,1),(147,'2017-01-19 08:59:24.534646','25','Photo object',1,'[{\"added\": {}}]',10,1),(148,'2017-01-19 08:59:26.278914','5','Ганджубасов Илья Иванович',1,'[{\"added\": {}}]',7,1),(149,'2017-01-19 09:01:25.768246','10','Золотой мяч Ганджубасов 53:14',1,'[{\"added\": {}}]',14,1),(150,'2017-01-19 09:06:30.360722','11','Золотой мяч Ганджубасов 58:12',1,'[{\"added\": {}}]',14,1),(151,'2017-01-19 09:07:00.899494','12','Золотой мяч Ганджубасов 67:54',1,'[{\"added\": {}}]',14,1),(152,'2017-02-09 10:50:50.705500','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(153,'2017-02-09 10:51:45.041952','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(154,'2017-02-09 10:52:31.697043','6','sdf sdf sdf',1,'[{\"added\": {}}]',7,2),(155,'2017-02-09 10:56:45.121020','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(156,'2017-02-09 11:13:25.748786','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(157,'2017-02-09 11:13:54.650529','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\", \"source\"]}}]',6,2),(158,'2017-02-09 11:13:59.457455','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\", \"source\"]}}]',6,2),(159,'2017-02-09 11:15:29.822079','10','Test',1,'[{\"added\": {}}]',6,2),(160,'2017-02-09 11:19:14.270545','7','Евдокимов: после дисквалификации Вернблума со следующей игры всё стало ясно',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,2),(161,'2017-02-09 11:22:29.363741','10','Test',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,2),(162,'2017-02-09 11:22:34.041309','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(163,'2017-02-09 11:22:44.062293','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(164,'2017-02-09 11:23:02.095361','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(165,'2017-02-09 11:23:07.706699','8','Вернблум дисквалифицирован на один матч, но с «Оренбургом» сыграет',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(166,'2017-02-09 11:23:13.243578','7','Евдокимов: после дисквалификации Вернблума со следующей игры всё стало ясно',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(167,'2017-02-09 11:23:15.783689','7','Евдокимов: после дисквалификации Вернблума со следующей игры всё стало ясно',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,1),(168,'2017-02-09 11:23:21.483700','6','Слуцкий: слухи о том, что уйду из ЦСКА, перед матчем не давили',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(169,'2017-02-09 11:23:25.476938','6','Слуцкий: слухи о том, что уйду из ЦСКА, перед матчем не давили',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,1),(170,'2017-02-09 11:23:30.857688','5','Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(171,'2017-02-09 11:23:36.076317','4','Быстров: «Действия Хави Гарсии - это уже не футбол, а что-то из кикбоксинга»',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(172,'2017-02-09 11:23:38.817089','4','Быстров: «Действия Хави Гарсии - это уже не футбол, а что-то из кикбоксинга»',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,1),(173,'2017-02-09 11:23:49.178648','3','«Реал» повторил свою рекордную беспроигрышную серию',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(174,'2017-02-09 11:26:04.651911','1','fgh',1,'[{\"added\": {}}]',NULL,1),(175,'2017-02-09 11:27:35.343505','2','ffd',1,'[{\"added\": {}}]',NULL,1),(176,'2017-02-09 11:43:52.546667','11','dfg',1,'[{\"added\": {}}]',6,1),(177,'2017-02-09 16:50:35.177064','5','Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»',2,'[]',6,2),(178,'2017-02-09 17:52:23.992140','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(179,'2017-02-09 17:52:46.440425','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(180,'2017-02-09 17:53:30.316218','10','Test',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(181,'2017-02-09 17:53:37.677330','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(182,'2017-02-09 17:53:44.369798','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,1),(183,'2017-02-09 17:54:01.220304','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(184,'2017-02-09 17:54:59.890176','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(185,'2017-02-09 17:55:32.730015','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"user\", \"created_date\", \"published_date\"]}}]',6,1),(186,'2017-02-09 17:57:58.134091','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(187,'2017-02-09 17:59:36.980589','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(188,'2017-02-09 18:13:31.640065','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(189,'2017-02-09 18:13:31.751893','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(190,'2017-02-09 18:14:24.112601','6','sdfj sdf sdf',2,'[{\"changed\": {\"fields\": [\"surname\", \"year_birth\"]}}]',7,2),(191,'2017-02-09 18:18:43.626632','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(192,'2017-02-09 18:23:00.287297','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(193,'2017-02-09 18:23:08.144528','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(194,'2017-02-09 18:23:09.910830','10','Test',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,2),(195,'2017-02-09 18:23:45.034994','10','Testjkbjkk',2,'[{\"changed\": {\"fields\": [\"title\", \"created_date\", \"published_date\"]}}]',6,2),(196,'2017-02-09 18:23:50.005030','10','Test',2,'[{\"changed\": {\"fields\": [\"title\", \"created_date\", \"published_date\"]}}]',6,2),(197,'2017-02-09 18:24:38.206458','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(198,'2017-02-09 18:26:24.137903','4','newtrener',1,'[{\"added\": {}}]',2,1),(199,'2017-02-09 18:26:36.340902','4','newtrener',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"date_joined\"]}}]',2,1),(200,'2017-02-09 18:32:50.395943','4','newtrener',2,'[{\"changed\": {\"fields\": [\"date_joined\"]}}]',2,1),(201,'2017-02-09 18:33:17.293572','9','Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,4),(202,'2017-02-09 18:33:36.742638','12','ljo;hlkj',1,'[{\"added\": {}}]',6,4),(203,'2017-02-09 18:33:43.242165','12','ljo;hlkj',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',6,4),(204,'2017-02-09 18:34:04.492777','12','ljo;hlkj',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,2),(205,'2017-02-09 18:35:14.917852','4','newtrener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(206,'2017-02-09 18:36:14.050806','4','newtrener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(207,'2017-02-09 18:36:38.049145','13',',bnm./',1,'[{\"added\": {}}]',6,4),(208,'2017-02-09 18:37:32.836878','4','newtrener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(209,'2017-02-09 18:38:23.012975','10','Test',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,4),(210,'2017-02-11 16:04:49.609126','6','Vovan',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"date_joined\"]}}]',2,1),(211,'2017-02-11 16:32:51.059230','6','Vovan',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',2,1),(212,'2017-02-11 16:33:06.951794','6','Vovan',2,'[{\"changed\": {\"fields\": [\"date_joined\"]}}]',2,1),(213,'2017-02-11 16:48:49.914877','6','Vovan',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(214,'2017-02-11 16:50:01.903864','6','Vovan',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(215,'2017-02-11 16:50:28.620894','10','News object',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,6),(216,'2017-02-11 16:50:32.729302','13','News object',2,'[{\"changed\": {\"fields\": [\"text\", \"created_date\", \"published_date\"]}}]',6,6),(217,'2017-02-13 19:55:13.071225','6','Vovan',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(218,'2017-02-14 07:25:27.575519','2','trener',2,'[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]',2,1),(219,'2017-02-14 07:26:05.746256','2','АНО \"Академия футбола им. В. Понедельника\"',2,'[{\"changed\": {\"fields\": [\"created_date\", \"text\"]}}]',11,2),(220,'2017-02-14 07:36:33.369425','8','joe',3,'',2,1),(221,'2017-02-14 08:07:28.541711','10','joe',3,'',2,1),(222,'2017-02-15 16:54:49.133343','3','9 мая 14-10-14',2,'[{\"changed\": {\"fields\": [\"year\"]}}]',17,1),(223,'2017-02-15 16:58:48.124668','26','Photo object',1,'[{\"added\": {}}]',10,1),(224,'2017-02-15 16:58:52.621912','4','Квадро',1,'[{\"added\": {}}]',11,1),(225,'2017-02-15 17:00:25.393669','27','Photo object',1,'[{\"added\": {}}]',10,1),(226,'2017-02-15 17:00:26.589660','5','Зерщиков Алексей Станиславович',1,'[{\"added\": {}}]',8,1),(227,'2017-02-15 17:02:01.013882','28','Photo object',1,'[{\"added\": {}}]',10,1),(228,'2017-02-15 17:02:13.765060','5','СКА',1,'[{\"added\": {}}]',11,1),(229,'2017-02-15 17:03:27.101937','6','Малахаев Арсентий Иванович',1,'[{\"added\": {}}]',8,1),(230,'2017-02-15 17:19:31.528816','4','Гудулов Петр Иванович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',7,1),(231,'2017-02-15 17:19:35.606284','3','Григорий Пеле Иванович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',7,1),(232,'2017-02-15 17:19:42.437881','2','Лысенко Евгений Петрович',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',7,1),(233,'2017-02-15 17:19:47.190339','1','Чикунов Владимир Дмитриевич',2,'[{\"changed\": {\"fields\": [\"year_birth\", \"team\"]}}]',7,1),(234,'2017-02-15 17:21:11.628261','4','Гудулов Петр Иванович',2,'[{\"changed\": {\"fields\": [\"year_birth\"]}}]',7,1),(235,'2017-02-15 17:22:24.545605','6','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" Квадро 2016-11-23',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(236,'2017-02-15 18:31:01.893039','9','9 мая 2016-10-21 Гудулов 23:21',3,'',14,1),(237,'2017-02-15 18:31:01.931191','8','9 мая 2014-10-15 Лысенко 32:12',3,'',14,1),(238,'2017-02-15 18:31:01.964693','10','Золотой мяч 2016-11-23 Ганджубасов 53:14',3,'',14,1),(239,'2017-02-15 18:31:02.031475','7','Золотой мяч 2016-10-12 Чикунов 55:31',3,'',14,1),(240,'2017-02-15 18:31:02.064988','11','9 мая 2016-12-22 Ганджубасов 58:12',3,'',14,1),(241,'2017-02-15 18:31:02.098536','12','9 мая 2014-10-15 Гудулов 67:54',3,'',14,1),(242,'2017-02-15 18:31:48.552710','13','9 мая 2014-10-15 Чикунов 23:12',1,'[{\"added\": {}}]',14,1),(243,'2017-02-15 18:32:08.686892','14','9 мая 2014-10-15 Гудулов 25:14',1,'[{\"added\": {}}]',14,1),(244,'2017-02-15 18:32:47.139947','15','9 мая 2014-10-15 Григорий 58:45',1,'[{\"added\": {}}]',14,1),(245,'2017-02-15 18:47:59.938760','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 2014-10-15',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(246,'2017-02-15 18:48:11.868469','5','9 мая СКА Квадро 2014-10-16',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(247,'2017-04-13 18:23:18.186681','20','News object',3,'',6,1),(248,'2017-04-13 18:23:18.298003','19','News object',3,'',6,1),(249,'2017-04-13 18:23:18.331918','18','News object',3,'',6,1),(250,'2017-04-13 18:23:18.375365','17','News object',3,'',6,1),(251,'2017-04-13 18:23:46.833970','14','News object',3,'',6,1),(252,'2017-04-13 18:23:46.881385','15','News object',3,'',6,1),(253,'2017-04-13 18:23:46.915544','16','News object',3,'',6,1),(254,'2017-04-13 19:19:58.020054','3','9 мая С13-04-17по13-04-17',2,'[{\"changed\": {\"fields\": [\"start_date\", \"end_date\"]}}]',17,1),(255,'2017-04-13 19:20:19.733516','2','Золотой мяч   С 13-04-17 по 13-04-17',2,'[{\"changed\": {\"fields\": [\"start_date\", \"end_date\"]}}]',17,1),(256,'2017-04-13 19:20:26.957049','2','Золотой мяч   С 13-04-17 по 13-04-17',2,'[{\"changed\": {\"fields\": [\"start_date\", \"end_date\"]}}]',17,1),(257,'2017-04-13 19:25:57.357807','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 2014-10-15 00:00:00+00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(258,'2017-04-13 19:32:29.891482','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(259,'2017-04-13 19:32:36.741206','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(260,'2017-04-13 19:32:47.186867','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(261,'2017-04-13 19:32:56.285650','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(262,'2017-04-13 19:34:16.921322','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(263,'2017-04-13 19:40:04.393998','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(264,'2017-04-13 19:40:13.827265','7','9 мая СКА НОУ ДОД ФШМ ФК \"Ростов\" 15-10-14-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(265,'2017-04-13 19:42:49.206295','3','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" Квадро 12-10-16-00:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(266,'2017-04-13 19:45:03.328533','3','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" Квадро 12-10-16-15:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(267,'2017-04-13 19:46:50.903494','6','Золотой мяч НОУ ДОД ФШМ ФК \"Ростов\" Квадро 23-11-16-22:46',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1),(268,'2017-04-13 19:47:05.040859','5','9 мая СКА Квадро 16-10-14-17:00',2,'[{\"changed\": {\"fields\": [\"date_time\"]}}]',13,1);
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(4,'auth','permission'),(2,'auth','user'),(5,'contenttypes','contenttype'),(21,'guardian','groupobjectpermission'),(20,'guardian','userobjectpermission'),(6,'home','news'),(12,'sessions','session'),(8,'team','coach'),(10,'team','photo'),(7,'team','player'),(9,'team','rank'),(11,'team','team'),(13,'tournaments','game'),(18,'tournaments','gameimage'),(14,'tournaments','goal'),(16,'tournaments','place'),(15,'tournaments','referee'),(17,'tournaments','tournament');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-10-04 13:13:29.012524'),(2,'auth','0001_initial','2016-10-04 13:13:36.769244'),(3,'admin','0001_initial','2016-10-04 13:13:38.275154'),(4,'admin','0002_logentry_remove_auto_add','2016-10-04 13:13:38.387908'),(5,'contenttypes','0002_remove_content_type_name','2016-10-04 13:13:39.445581'),(6,'auth','0002_alter_permission_name_max_length','2016-10-04 13:13:40.429994'),(7,'auth','0003_alter_user_email_max_length','2016-10-04 13:13:41.092983'),(8,'auth','0004_alter_user_username_opts','2016-10-04 13:13:41.149902'),(9,'auth','0005_alter_user_last_login_null','2016-10-04 13:13:41.688916'),(10,'auth','0006_require_contenttypes_0002','2016-10-04 13:13:41.733970'),(11,'auth','0007_alter_validators_add_error_messages','2016-10-04 13:13:41.787646'),(12,'auth','0008_alter_user_username_max_length','2016-10-04 13:13:42.396859'),(13,'home','0001_initial','2016-10-04 13:13:43.339866'),(14,'team','0001_initial','2016-10-04 13:15:21.366435'),(15,'team','0002_auto_20161004_1614','2016-10-04 13:15:23.938534'),(16,'home','0002_auto_20161004_1615','2016-10-04 13:16:17.102800'),(17,'home','0003_auto_20161004_1616','2016-10-04 13:16:17.979031'),(18,'sessions','0001_initial','2016-10-04 13:17:42.869698'),(19,'home','0004_auto_20161005_1221','2016-10-05 09:21:16.369275'),(20,'home','0005_auto_20161005_1253','2016-10-06 12:15:50.978764'),(21,'home','0006_auto_20161006_1515','2016-10-06 12:15:52.442360'),(22,'team','0003_auto_20161006_1525','2016-10-06 12:26:16.226218'),(23,'team','0004_auto_20161012_2052','2016-10-12 17:52:28.025685'),(24,'tournaments','0001_initial','2016-10-17 15:15:12.667211'),(25,'tournaments','0002_auto_20161017_1828','2016-10-17 15:28:54.838223'),(26,'tournaments','0003_auto_20161021_1907','2016-10-21 16:07:49.497391'),(27,'tournaments','0004_auto_20161021_1936','2016-10-21 16:37:02.791922'),(28,'tournaments','0005_auto_20161021_1941','2016-10-21 16:42:02.907735'),(29,'team','0005_auto_20161026_1223','2016-10-26 09:24:07.797886'),(30,'tournaments','0006_place_address','2016-10-26 18:32:11.103061'),(31,'tournaments','0007_auto_20161123_2215','2016-11-23 19:15:42.507163'),(32,'home','0007_news_source','2016-12-12 18:30:13.857631'),(33,'home','0008_auto_20161218_1449','2016-12-18 11:49:49.699467'),(34,'tournaments','0008_auto_20161218_1529','2016-12-18 13:45:50.126715'),(35,'tournaments','0009_auto_20161218_1531','2016-12-18 13:45:50.228280'),(36,'tournaments','0010_auto_20161218_1537','2016-12-18 13:45:51.669175'),(37,'tournaments','0011_auto_20161218_1538','2016-12-18 13:45:51.833707'),(38,'tournaments','0012_auto_20161218_1708','2016-12-18 14:09:02.947064'),(39,'tournaments','0013_auto_20161218_1710','2016-12-18 14:10:44.744650'),(40,'tournaments','0014_game_played','2016-12-18 16:54:37.666311'),(41,'tournaments','0015_auto_20170119_1206','2017-01-19 09:06:20.676392'),(42,'home','0009_entry','2017-02-09 10:48:42.993129'),(43,'home','0010_auto_20170209_1421','2017-02-09 11:21:53.535045'),(44,'home','0011_auto_20170209_1436','2017-02-09 11:36:48.068236'),(45,'home','0012_auto_20170209_1949','2017-02-09 16:49:46.674245'),(46,'guardian','0001_initial','2017-02-09 17:42:27.675749'),(47,'home','0013_auto_20170209_2112','2017-02-09 18:13:04.301993'),(48,'home','0014_auto_20170215_2025','2017-02-15 17:25:35.608648'),(49,'tournaments','0016_auto_20170413_2209','2017-04-13 19:09:19.905682'),(50,'tournaments','0017_auto_20170413_2222','2017-04-13 19:22:55.820924'),(51,'tournaments','0018_auto_20170413_2239','2017-04-13 19:39:08.259354'),(52,'tournaments','0019_auto_20170413_2246','2017-04-13 19:46:37.274725');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('049ozhqclgn2f3zd8navvftulwdn47pl','ZGNhM2ZkNWZmM2I4OTgzNTdhMjg4YzljMzA4MDI5ZjI3ZDdhNDNmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2IxYzEzMWY3MjQwNGZkNmYyNzEwNWE5YTNkNTZiM2E3ZWMwNjViOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-11-26 14:15:46.396029'),('6mtddb7vfy28pcllcphle8rknjstul51','OTY5NWZkOTZmMjkzODAxZjUxOTdhMmIzMjRhZjgwZDBmODI3OTEzMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiMWMxMzFmNzI0MDRmZDZmMjcxMDVhOWEzZDU2YjNhN2VjMDY1YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-10-18 13:18:29.931450'),('79dyi4wts61vkdxcgqo6b2y990gn62ih','OTY5NWZkOTZmMjkzODAxZjUxOTdhMmIzMjRhZjgwZDBmODI3OTEzMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiMWMxMzFmNzI0MDRmZDZmMjcxMDVhOWEzZDU2YjNhN2VjMDY1YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-01 16:54:18.760250'),('a4z1uu4f2yg4rsf5ly1svzdzzr2kc47u','OTY5NWZkOTZmMjkzODAxZjUxOTdhMmIzMjRhZjgwZDBmODI3OTEzMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiMWMxMzFmNzI0MDRmZDZmMjcxMDVhOWEzZDU2YjNhN2VjMDY1YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-20 17:46:12.645455'),('dfrbgsgif1emubdldcxnqbz83wwugzwt','ZGNhM2ZkNWZmM2I4OTgzNTdhMjg4YzljMzA4MDI5ZjI3ZDdhNDNmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2IxYzEzMWY3MjQwNGZkNmYyNzEwNWE5YTNkNTZiM2E3ZWMwNjViOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-23 13:11:42.342857'),('j2lcnu0skub4n10mkki2k2nav5t3qfwx','ZGNhM2ZkNWZmM2I4OTgzNTdhMjg4YzljMzA4MDI5ZjI3ZDdhNDNmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2IxYzEzMWY3MjQwNGZkNmYyNzEwNWE5YTNkNTZiM2E3ZWMwNjViOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-12-21 19:21:08.470234'),('jfbbkjv2ggynq8t6682gqoespmxz61zu','ODc2NTQ0ZGNmNTgwNDIwZDNhNWMxNjViY2Y2NTZhZGMzMWJhNjY5Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2IxYzEzMWY3MjQwNGZkNmYyNzEwNWE5YTNkNTZiM2E3ZWMwNjViOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-09 18:32:44.995904'),('o8v53j1mllohvb9hob4pxmgrhuonxl19','MWZjYzAyZGE2Nzk4MDcyM2M3NzQ4YjQwNDFiNzhlMjY4NzI2OWM5Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjYjFjMTMxZjcyNDA0ZmQ2ZjI3MTA1YTlhM2Q1NmIzYTdlYzA2NWI5In0=','2017-02-28 07:33:51.194413'),('pblnemdlni1k7kc0hxuuj4awrt1x9y82','OTdlNDEyZjZlMmZjZWQ4MmE5MjQxNGMwNDhjYjkwNDQzYjg0N2E1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYjFjMTMxZjcyNDA0ZmQ2ZjI3MTA1YTlhM2Q1NmIzYTdlYzA2NWI5In0=','2017-06-11 14:42:43.129672'),('sv7pcxqjd446opgzljmkkk36eo60b4u6','ZGNhM2ZkNWZmM2I4OTgzNTdhMjg4YzljMzA4MDI5ZjI3ZDdhNDNmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2IxYzEzMWY3MjQwNGZkNmYyNzEwNWE5YTNkNTZiM2E3ZWMwNjViOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-02 08:55:15.418870');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_groupobjectpermission_group_id_3f189f7c_uniq` (`group_id`,`permission_id`,`object_pk`),
  KEY `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_groupobjectpermissio_group_id_4bbbfb62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_userobjectpermission_user_id_b0b3d2fc_uniq` (`user_id`,`permission_id`,`object_pk`),
  KEY `guardian_user_content_type_id_2e892405_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_user_content_type_id_2e892405_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
INSERT INTO `guardian_userobjectpermission` VALUES (1,'9',6,17,2),(2,'10',6,17,1),(3,'10',6,16,1),(4,'9',6,16,2),(5,'5',6,18,2),(6,'5',6,17,2),(7,'5',6,16,2),(9,'12',6,16,4),(10,'12',6,17,4),(11,'12',6,18,4),(12,'13',6,16,4),(13,'13',6,17,4),(14,'13',6,18,4),(15,'10',6,18,6),(16,'10',6,17,6),(17,'10',6,16,6),(18,'10',6,16,2),(19,'10',6,17,2),(20,'10',6,18,2);
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_news`
--

DROP TABLE IF EXISTS `home_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `name_source` varchar(30),
  `user_id` int(11),
  PRIMARY KEY (`id`),
  KEY `home_news_e8701ad4` (`user_id`),
  CONSTRAINT `home_news_user_id_220490b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_news`
--

LOCK TABLES `home_news` WRITE;
/*!40000 ALTER TABLE `home_news` DISABLE KEYS */;
INSERT INTO `home_news` VALUES (3,'«Реал» повторил свою рекордную беспроигрышную серию','Обыграв хихонский «Спортинг» (2:1) в матче 13-го тура Примеры, мадридский «Реал» продлил свою беспроигрышную серию во всех турнирах до 31 матча, что является повторением клубного рекорда.\r\nВ последний раз подопечные Зинедина Зидана уступали 6 апреля 2016 года, когда были повержены «Вольфсбургом» в первом матче 1/4 финала Лиги чемпионов.\r\nРанее «сливочные» выдавали столь же впечатляющую серию в сезоне-2013/14. Тогда командой, напомним, руководил Карло Анчелотти.','2016-10-05 09:41:48.636448','2016-11-26 20:45:00.000000','images/7.jpg','http://www.soccer.ru/news/948470.shtml','Футбол',1),(4,'Быстров: «Действия Хави Гарсии - это уже не футбол, а что-то из кикбоксинга»','Полузащитник «Краснодара» Владимир Быстров считает, что хавбек «Зенита» Хави Гарсия должен быть дисквалифицирован за удар локтем игрока «быков» Юрия Газинского. Инцидент произошел во время воскресного матча между этими командами. По итогам столкновения у Газинского оказался сломан нос.\r\n«Это не столкновение. И вообще не футбол, а что-то из кикбоксинга. Если человек в прыжке ломает футболисту нос, а тот к тому же получает сотрясение мозга и теряет сознание, это должно жестко караться. Хави Гарсия не имел права вести себя таким образом, многочисленные повторы доказывают, что судья должен был удалять испанца и назначать пенальти. \r\nКакая желтая, о чем вы?! Желтой там близко не было! Чистое удаление! Будет крайне несправедливо, если за удар соперника в лицо Хави Гарсию не дисквалифицируют хотя бы постфактум. \r\nЧто с Газинским? Виделись сегодня на базе. Нос сломан, лечат. Он парень сильный, придет в себя. Все будет хорошо».','2016-10-09 12:44:59.296424','2016-11-28 20:45:57.000000','images/6.jpg','','',1),(5,'Моуриньо: «Мхитарян наконец показал себя против команды АПЛ»','Наставник «Манчестер Юнайтед» Жозе Моуриньо оценил игру полузащитника команды Генриха Мхитаряна, который отметился двумя голевыми пасами в кубковом поединке против «Вест Хэма», завершившемся победой «красных дьяволов» (4:1):\r\n«Я очень рад, потому что сегодня он сыграл против команды АПЛ, обладающей классом команды АПЛ и всеми качествами команды АПЛ.\r\nЭто четко показало его прогресс. После матча с „Фейеноордом“ мы могли подумать „Ладно, это другой уровень футбола“, но сегодня Мики показал себя против правильной и типичной команды Премьер-лиги. Так что я очень счастлив.\r\nМы знаем, зачем мы его купили, и мы ждали его адаптации, которая, кажется, уже наступает».','2016-10-12 08:58:26.951619','2016-12-01 03:29:24.000000','images/5.jpg','','',2),(6,'Слуцкий: слухи о том, что уйду из ЦСКА, перед матчем не давили','Леонид Слуцкий отказался комментировать слухи об отставке, но рассказал, почему доверяет Фёдору Чалову и насколько молод Сергей Игнашевич.\r\n\r\nПресс-конференция главного тренера «Оренбурга» Роберта Евдокимова получилась одной из самых коротких в Премьер-Лиге.\r\n\r\n«Несмотря на не самые «футбольные» погодные условия и не самое качественное состояние поля, мы показали хороший футбол и достойно смотрелись на фоне чемпиона, — рассказал Евдокимов. — ЦСКА заслуженно победил сегодня».\r\n\r\nК Леониду Слуцкому вопросов у журналистов было куда больше. Вчера различные источники взорвали медиапространство информацией о том, матч с «Тоттенхэмом» станет последним для тренера в ЦСКА. Главных претендентов на место Слуцкого двое — это хорошо знакомый «армейцам» Виктор Гончаренко или недавно уволенный из «Краснодара» Олег Кононов. Есть и третий вариант — Александр Гришин, тренирующий дубль ЦСКА.\r\n\r\nНа самую обсуждаемую тему последних двух дней Леонид Викторович говорить не хотел.\r\n\r\n— Тяжёлая игра, тяжёлая победа, — подвёл итоги победы над «Оренбургом» Слуцкий. — В очень сложных погодных условиях мы выполнили план на игру, реализовав свои моменты и разрушив атакующие действия соперника. Пользуясь случаем, поздравляю Игоря Акинфеева с 252-м сухим матчем.\r\n\r\n— А вас мы поздравляем с 300-м матчем в ЦСКА. 302-й, с «Тоттенхэмом», станет последним?\r\n— Свободен! — прервал журналиста директор по связям с общественностью и информационной политике ЦСКА Сергей Аксёнов. — Пресс-конференция предназначена только для вопросов по сыгранному матчу.\r\n\r\n— Слухи в прессе давили на вас?\r\n— Нет, не давили, — прервал молчание Слуцкий.\r\n\r\n— Сергей Игнашевич обрёл вторую молодость в опорной зоне?\r\n— У него ещё первая не закончилась.\r\n\r\n— Почему вы предпочитаете Фёдора Чалова другим нападающим?\r\n— Другие форварды уже имели достаточное количество игрового времени. При прочих равных нужно отдавать предпочтение своим воспитанникам, тем более более молодым.','2016-10-12 08:58:56.715803','2016-11-30 19:10:00.000000','images/4.jpg','https://www.championat.com','Чемпионат',1),(7,'Евдокимов: после дисквалификации Вернблума со следующей игры всё стало ясно','Главный тренер «Оренбурга» Роберт Евдокимов прокомментировал гостевое поражение от ЦСКА (0:2) в матче 16-го тура РФПЛ.\r\n\r\n«Удовлетворение нашей игрой было и до гола, и после. ЦСКА — чемпион, но, думаю, мы достойно сражались. У нас было достаточно много предголевых подходов, но, может, поле, мяч, холод или наше мастерство не давало завершить атаки, особенно с правого фланга.\r\n\r\nСудейство? После того как Вернблума дисквалифицировали, но со следующего матча, в принципе всё стало ясно и по судейству, и по этим моментам. Получается, если Вернблум пропускает следующие игры, то сегодня он мог получать и жёлтую карточку, и красную. Мне эта ситуация не очень понятна. \r\n\r\nА что касается судейства, пенальти и всего такого, то это всё бессмысленно», — заявил Евдокимов в эфире телеканала «Наш футбол».','2016-10-12 08:59:29.509199','2016-11-30 18:37:00.000000','images/3.jpg','','',1),(8,'Вернблум дисквалифицирован на один матч, но с «Оренбургом» сыграет','Глава контрольно-дисциплинарного комитета РФС Артур Григорьянц рассказал, какие решения были приняты на очередном заседании комитета по итогам матча 15-го тура РФПЛ ЦСКА – «Рубин».\r\n\r\n«По матчу ЦСКА – «Рубин»: за использование пиротехники болельщиками «армейцев» мы решили оштрафовать клуб на 10 тыс. рублей.\r\n\r\nМы рассмотрели инцидент с участием игрока ЦСКА Понтуса Вернблума и игрока «Рубина» Серхио Санчеса. Мы возбудили дело после рапорта судьи Александра Егорова, который сказал, что не видел эпизод, но если бы видел, то применил бы красную карточку. Инспектор матча написал в рапорте, что Вернблум специально ударил соперника. На заседание были приглашены Александр Егоров и сам Вернблум. КДК направил запрос в контрольно-квалификационную комиссию для дачи заключения по данному вопросу. \r\n\r\nКомиссия постановила признать ошибочным решение судьи Егорова. Вернблум прислал объяснение, что он извинился перед Санчесом на поле и извинился за этот эпизод перед комиссией. Основываясь на докладе и заявлении игрока, КДК принял решение дисквалифицировать Вернблума на один матч 17-го тура РФПЛ», — передаёт слова Григорьянца корреспондент «Чемпионата» Никита Кузин.','2016-10-12 09:00:00.987467','2016-11-30 13:21:00.000000','images/2.jpg','','',1),(9,'Прядкин: не видим возможности перенести матч «Ростов» — «Зенит»','Президент РФПЛ Сергей Прядкин заявил, что лига не видит возможности перенести матч 17-го тура РФПЛ «Ростов» — «Зенит» на следующий год.\r\n\r\nРанее сообщалось, что «Ростов» и «Зенит» договорились о переносе матча, который должен состояться 3 декабря, на весеннюю часть чемпионата.\r\n\r\n«Лига проанализировала обращение клубов. Юристы дали оценку соответствия обстоятельств статье 6 регламента чемпионата. По действующей редакции мы не видим возможности перенести матч на февраль. В этой связи не будет и соответствующего обращения в РФС. В регламенте следующего сезона мы, возможно, отразим новую модель переносов, идя навстречу участникам еврокубков и при согласии обоих участников матча нашего чемпионата. Желаем удачи клубам и хорошего зрелища зрителям, которые планируют посетить этот матч», — цитирует Прядкина «Спорт-экспресс».kkjljk;','2016-10-12 09:00:28.042091','2016-11-30 15:00:00.000000','images/1_zaP34Ky.jpg','','',2),(10,'Test','testkjnlkljkhjkljnbjhbn,n,mhhhhh','2017-02-09 11:15:29.467122','2017-02-09 11:15:25.000000','images/2017-01-21_19.05.45.jpg','','',1),(11,'dfg','dfg','2017-02-09 11:43:52.498108','2017-02-09 11:43:44.000000','images/2013-03-28_11.12.15.jpg','','',1),(12,'ljo;hlkj','ljkgfdyuio;yfguioyutcdogihujhukjl;mb,','2017-02-09 18:33:36.024500','2017-02-09 18:33:42.000000','images/2016-06-16_11.16.40.jpg','','',4),(13,',bnm./','jklgfkhvj,.nhhhhh','2017-02-09 18:36:38.035699','2017-02-09 18:36:37.000000','images/2013-10-28_15.44.34.jpg','','',4),(14,'Test s','Test Test s','2016-10-05 06:41:48.636448','2016-11-26 17:45:00.000000','/','',NULL,NULL),(15,'Test s','Test Test s','2016-10-05 06:41:48.636448','2016-11-26 17:45:00.000000','/','',NULL,NULL),(16,'Test s','Test Test s','2016-10-05 06:41:48.636448','2016-11-26 17:45:00.000000','/','',NULL,NULL),(17,'Test s','Test Test s','2016-10-05 06:41:48.636448','2016-11-26 17:45:00.000000','/','',NULL,NULL);
/*!40000 ALTER TABLE `home_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_coach`
--

DROP TABLE IF EXISTS `team_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `middle_name` varchar(80) NOT NULL,
  `surname` varchar(80) NOT NULL,
  `year_birth` date NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `team_id` int(11),
  PRIMARY KEY (`id`),
  KEY `team_coach_18722d3e` (`rank_id`),
  KEY `team_coach_photo_id_03373831_fk_team_photo_id` (`photo_id`),
  KEY `team_coach_f6a7ca40` (`team_id`),
  CONSTRAINT `team_coach_photo_id_03373831_fk_team_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `team_photo` (`id`),
  CONSTRAINT `team_coach_rank_id_7fac8546_fk_team_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `team_rank` (`id`),
  CONSTRAINT `team_coach_team_id_fc416a6c_fk_team_team_id` FOREIGN KEY (`team_id`) REFERENCES `team_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_coach`
--

LOCK TABLES `team_coach` WRITE;
/*!40000 ALTER TABLE `team_coach` DISABLE KEYS */;
INSERT INTO `team_coach` VALUES (3,'Вадим','Геннадьевич','Отырба','1986-10-12',23,1,NULL),(4,'Эдуард','Владимирович','Попов','1985-05-04',22,1,NULL),(5,'Алексей','Станиславович','Зерщиков','1980-02-15',27,1,4),(6,'Арсентий','Иванович','Малахаев','1990-04-12',NULL,1,5);
/*!40000 ALTER TABLE `team_coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_photo`
--

DROP TABLE IF EXISTS `team_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_photo`
--

LOCK TABLES `team_photo` WRITE;
/*!40000 ALTER TABLE `team_photo` DISABLE KEYS */;
INSERT INTO `team_photo` VALUES (1,'images/2016-06-10_19.43.45.jpg'),(2,'images/2016-06-10_19.43.45_fsepmlv.jpg'),(4,'images/2016-06-16_16.14.31.jpg'),(5,'images/2016-06-24_20.31.49.jpg'),(6,'images/2016-07-12_19.28.15.jpg'),(7,'images/2016-07-31_13.45.39.jpg'),(8,'images/2016-06-30_11.03.10.jpg'),(9,'images/DSC_2048.JPG'),(10,'images/DSC_0727.JPG'),(11,'images/DSC_1050.JPG'),(12,'images/2016-09-11_12.55.21.jpg'),(13,'images/icon_kvadro.jpg'),(14,'images/2016-06-29_11.58.59.jpg'),(15,'images/2016-06-29_11.58.55.jpg'),(16,'images/icon_logo.jpg'),(17,'images/2016-06-10_15.49.40.jpg'),(18,'images/2013-10-28_15.44.42.jpg'),(19,'images/1_gecQsQE.jpg'),(20,'images/2_iZI1AhI.jpg'),(21,'images/3_4vmrpOb.jpg'),(22,'images/попов'),(23,'images/квадро.jpg'),(24,'images/icon_fkrostov2.jpg'),(25,'images/2016-12-11_11.27.30.jpg'),(26,'images/icon_kvadro_hi0IpKN.jpg'),(27,'images/8539.jpg'),(28,'images/icon_ska.jpg');
/*!40000 ALTER TABLE `team_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_player`
--

DROP TABLE IF EXISTS `team_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `middle_name` varchar(80) NOT NULL,
  `surname` varchar(80) NOT NULL,
  `year_birth` date NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_player_5cc7a1eb` (`team_id`),
  KEY `team_player_photo_id_7521610e_fk_team_photo_id` (`photo_id`),
  CONSTRAINT `team_player_photo_id_7521610e_fk_team_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `team_photo` (`id`),
  CONSTRAINT `team_player_team_id_031b9c1d_fk_team_team_id` FOREIGN KEY (`team_id`) REFERENCES `team_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_player`
--

LOCK TABLES `team_player` WRITE;
/*!40000 ALTER TABLE `team_player` DISABLE KEYS */;
INSERT INTO `team_player` VALUES (1,'Владимир','Дмитриевич','Чикунов','1995-04-08',2,4),(2,'Евгений','Петрович','Лысенко','2016-10-06',6,3),(3,'Пеле','Иванович','Григорий','2016-10-09',7,5),(4,'Петр','Иванович','Гудулов','2016-10-12',11,4),(5,'Илья','Иванович','Ганджубасов','2000-02-15',25,3),(6,'sdf','sdf','sdfj','2017-02-09',2,NULL);
/*!40000 ALTER TABLE `team_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_rank`
--

DROP TABLE IF EXISTS `team_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_rank`
--

LOCK TABLES `team_rank` WRITE;
/*!40000 ALTER TABLE `team_rank` DISABLE KEYS */;
INSERT INTO `team_rank` VALUES (1,'Старший'),(2,'Помошник');
/*!40000 ALTER TABLE `team_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_team`
--

DROP TABLE IF EXISTS `team_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created_date` date NOT NULL,
  `text` longtext NOT NULL,
  `emblem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_team_emblem_id_5f6c11f0_fk_team_photo_id` (`emblem_id`),
  CONSTRAINT `team_team_emblem_id_5f6c11f0_fk_team_photo_id` FOREIGN KEY (`emblem_id`) REFERENCES `team_photo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_team`
--

LOCK TABLES `team_team` WRITE;
/*!40000 ALTER TABLE `team_team` DISABLE KEYS */;
INSERT INTO `team_team` VALUES (3,'НОУ ДОД ФШМ ФК \"Ростов\"','2011-05-14','Адрес - 344029, г. Ростов-на-Дону, пр. Шолохова 31-е\r\nДиректор - Ковалев Леонид Федорович\r\n\r\nТелефон - 291-43-53\r\n\r\nТренер - Усин Владимир Михайлович',24),(4,'Квадро','2017-02-15','Адрес - 34413, г. Ростов-на-Дону, ул. Королева, 22/30\r\nПрезидент - Сакеллариус Владимир Ильич\r\nВице-Президент  – Березнев Дмитрий Александрович\r\nТелефон - 231-12-33, факс - 231-12-37\r\nE-mail - kvadro_06@bk.ru',26),(5,'СКА','2015-02-15','Адрес - 344068, г. Ростов-на-Дону, ул. Фурмановская, 150\r\nДиректор - Гуриев Игорь Акерманович',28);
/*!40000 ALTER TABLE `team_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_game`
--

DROP TABLE IF EXISTS `tournaments_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime(6) DEFAULT NULL,
  `participant_one_id` int(11) DEFAULT NULL,
  `participant_two_id` int(11) DEFAULT NULL,
  `place_id` int(11),
  `referee_id` int(11),
  `tournament_id` int(11),
  `played` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tournaments_game_62becf4a` (`place_id`),
  KEY `tournaments_game_3cf09080` (`referee_id`),
  KEY `tournaments_game_656a3fdb` (`tournament_id`),
  KEY `tournaments_game_participant_one_id_83be7384_fk_team_team_id` (`participant_one_id`),
  KEY `tournaments_game_participant_two_id_bb68517f_fk_team_team_id` (`participant_two_id`),
  CONSTRAINT `tournaments__tournament_id_d22680c0_fk_tournaments_tournament_id` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments_tournament` (`id`),
  CONSTRAINT `tournaments_game_participant_one_id_83be7384_fk_team_team_id` FOREIGN KEY (`participant_one_id`) REFERENCES `team_team` (`id`),
  CONSTRAINT `tournaments_game_participant_two_id_bb68517f_fk_team_team_id` FOREIGN KEY (`participant_two_id`) REFERENCES `team_team` (`id`),
  CONSTRAINT `tournaments_game_place_id_9e18b513_fk_tournaments_place_id` FOREIGN KEY (`place_id`) REFERENCES `tournaments_place` (`id`),
  CONSTRAINT `tournaments_game_referee_id_865c60aa_fk_tournaments_referee_id` FOREIGN KEY (`referee_id`) REFERENCES `tournaments_referee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_game`
--

LOCK TABLES `tournaments_game` WRITE;
/*!40000 ALTER TABLE `tournaments_game` DISABLE KEYS */;
INSERT INTO `tournaments_game` VALUES (3,'2016-10-12 15:00:00.000000',3,4,1,1,2,1),(4,'2014-10-15 00:00:00.000000',4,5,1,1,3,1),(5,'2014-10-16 14:00:00.000000',5,4,1,1,3,1),(6,'2016-11-23 19:46:49.000000',3,4,1,1,2,1),(7,'2014-10-15 00:00:00.000000',5,3,1,3,3,0);
/*!40000 ALTER TABLE `tournaments_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_gameimage`
--

DROP TABLE IF EXISTS `tournaments_gameimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_gameimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tournaments_gameimage_6072f8b3` (`game_id`),
  CONSTRAINT `tournaments_gameimage_game_id_83f4925e_fk_tournaments_game_id` FOREIGN KEY (`game_id`) REFERENCES `tournaments_game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_gameimage`
--

LOCK TABLES `tournaments_gameimage` WRITE;
/*!40000 ALTER TABLE `tournaments_gameimage` DISABLE KEYS */;
INSERT INTO `tournaments_gameimage` VALUES (7,'images/Квадро.JPG',6),(8,'images/dush-6_2004.JPG',6),(9,'images/icon_ros_2004.JPG',5),(10,'images/icon_pob_2004.jpg',5);
/*!40000 ALTER TABLE `tournaments_gameimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_goal`
--

DROP TABLE IF EXISTS `tournaments_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` smallint(5) unsigned NOT NULL,
  `game_id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `sec` smallint(5) unsigned NOT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tournaments_goal_game_id_2a73f232_fk_tournaments_game_id` (`game_id`),
  KEY `tournaments_goal_player_id_8ae77b91_fk_team_player_id` (`player_id`),
  CONSTRAINT `tournaments_goal_game_id_2a73f232_fk_tournaments_game_id` FOREIGN KEY (`game_id`) REFERENCES `tournaments_game` (`id`),
  CONSTRAINT `tournaments_goal_player_id_8ae77b91_fk_team_player_id` FOREIGN KEY (`player_id`) REFERENCES `team_player` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_goal`
--

LOCK TABLES `tournaments_goal` WRITE;
/*!40000 ALTER TABLE `tournaments_goal` DISABLE KEYS */;
INSERT INTO `tournaments_goal` VALUES (13,23,4,1,12,'0'),(14,25,4,4,14,'0'),(15,58,4,3,45,'2');
/*!40000 ALTER TABLE `tournaments_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_place`
--

DROP TABLE IF EXISTS `tournaments_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_place`
--

LOCK TABLES `tournaments_place` WRITE;
/*!40000 ALTER TABLE `tournaments_place` DISABLE KEYS */;
INSERT INTO `tournaments_place` VALUES (1,'Ростов Сельмаш','ул.Специалистов 32');
/*!40000 ALTER TABLE `tournaments_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_referee`
--

DROP TABLE IF EXISTS `tournaments_referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_referee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `middle_name` varchar(80) NOT NULL,
  `year_birth` date NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tournaments_referee_photo_id_b6125906_fk_team_photo_id` (`photo_id`),
  CONSTRAINT `tournaments_referee_photo_id_b6125906_fk_team_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `team_photo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_referee`
--

LOCK TABLES `tournaments_referee` WRITE;
/*!40000 ALTER TABLE `tournaments_referee` DISABLE KEYS */;
INSERT INTO `tournaments_referee` VALUES (1,'Березнев','Дмитрий','Александрович','1975-08-30',20),(2,'Акопян','Аркадий','Александрович','1969-12-09',19),(3,'Бистерфельд','Денис','Николаевич','1980-12-23',21);
/*!40000 ALTER TABLE `tournaments_referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments_tournament`
--

DROP TABLE IF EXISTS `tournaments_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments_tournament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `end_date` date NOT NULL,
  `start_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments_tournament`
--

LOCK TABLES `tournaments_tournament` WRITE;
/*!40000 ALTER TABLE `tournaments_tournament` DISABLE KEYS */;
INSERT INTO `tournaments_tournament` VALUES (2,'Золотой мяч','2017-08-29','2017-04-13'),(3,'9 мая','2017-05-29','2017-04-13');
/*!40000 ALTER TABLE `tournaments_tournament` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-28 17:51:11
