-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: eduonline
-- ------------------------------------------------------
-- Server version	5.7.18-1

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
-- Current Database: `eduonline`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eduonline` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eduonline`;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'编辑部门');
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
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,37),(2,1,38),(3,1,72),(4,1,75),(5,1,28),(6,1,29);
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(20,'Can change 用户信息',7,'change_userprofile'),(19,'Can add 用户信息',7,'add_userprofile'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(21,'Can delete 用户信息',7,'delete_userprofile'),(22,'Can add 邮箱验证码',8,'add_emailverifyrecord'),(23,'Can change 邮箱验证码',8,'change_emailverifyrecord'),(24,'Can delete 邮箱验证码',8,'delete_emailverifyrecord'),(25,'Can add 轮播图',9,'add_banner'),(26,'Can change 轮播图',9,'change_banner'),(27,'Can delete 轮播图',9,'delete_banner'),(28,'Can add 课程',10,'add_course'),(29,'Can change 课程',10,'change_course'),(30,'Can delete 课程',10,'delete_course'),(31,'Can add 章节',11,'add_lesson'),(32,'Can change 章节',11,'change_lesson'),(33,'Can delete 章节',11,'delete_lesson'),(34,'Can add 视频',12,'add_video'),(35,'Can change 视频',12,'change_video'),(36,'Can delete 视频',12,'delete_video'),(37,'Can add 课程资源',13,'add_courseresource'),(38,'Can change 课程资源',13,'change_courseresource'),(39,'Can delete 课程资源',13,'delete_courseresource'),(40,'Can add 城市',14,'add_citydict'),(41,'Can change 城市',14,'change_citydict'),(42,'Can delete 城市',14,'delete_citydict'),(43,'Can add 课程机构',15,'add_courseorg'),(44,'Can change 课程机构',15,'change_courseorg'),(45,'Can delete 课程机构',15,'delete_courseorg'),(46,'Can add 教师',16,'add_teacher'),(47,'Can change 教师',16,'change_teacher'),(48,'Can delete 教师',16,'delete_teacher'),(49,'Can add 用户咨询',17,'add_userask'),(50,'Can change 用户咨询',17,'change_userask'),(51,'Can delete 用户咨询',17,'delete_userask'),(52,'Can add 课程评论',18,'add_coursecomments'),(53,'Can change 课程评论',18,'change_coursecomments'),(54,'Can delete 课程评论',18,'delete_coursecomments'),(55,'Can add 用户收藏',19,'add_userfavorite'),(56,'Can change 用户收藏',19,'change_userfavorite'),(57,'Can delete 用户收藏',19,'delete_userfavorite'),(58,'Can add 用户消息',20,'add_usermessage'),(59,'Can change 用户消息',20,'change_usermessage'),(60,'Can delete 用户消息',20,'delete_usermessage'),(61,'Can add 用户课程',21,'add_usercourse'),(62,'Can change 用户课程',21,'change_usercourse'),(63,'Can delete 用户课程',21,'delete_usercourse'),(64,'Can view log entry',1,'view_logentry'),(65,'Can view permission',2,'view_permission'),(66,'Can view group',3,'view_group'),(67,'Can view 用户信息',7,'view_userprofile'),(68,'Can view content type',5,'view_contenttype'),(69,'Can view session',6,'view_session'),(70,'Can view 邮箱验证码',8,'view_emailverifyrecord'),(71,'Can view 轮播图',9,'view_banner'),(72,'Can view 课程',10,'view_course'),(73,'Can view 章节',11,'view_lesson'),(74,'Can view 视频',12,'view_video'),(75,'Can view 课程资源',13,'view_courseresource'),(76,'Can view 城市',14,'view_citydict'),(77,'Can view 课程机构',15,'view_courseorg'),(78,'Can view 教师',16,'view_teacher'),(79,'Can view 用户咨询',17,'view_userask'),(80,'Can view 课程评论',18,'view_coursecomments'),(81,'Can view 用户收藏',19,'view_userfavorite'),(82,'Can view 用户消息',20,'view_usermessage'),(83,'Can view 用户课程',21,'view_usercourse'),(84,'Can add Bookmark',22,'add_bookmark'),(85,'Can change Bookmark',22,'change_bookmark'),(86,'Can delete Bookmark',22,'delete_bookmark'),(87,'Can add User Setting',23,'add_usersettings'),(88,'Can change User Setting',23,'change_usersettings'),(89,'Can delete User Setting',23,'delete_usersettings'),(90,'Can add User Widget',24,'add_userwidget'),(91,'Can change User Widget',24,'change_userwidget'),(92,'Can delete User Widget',24,'delete_userwidget'),(93,'Can view Bookmark',22,'view_bookmark'),(94,'Can view User Setting',23,'view_usersettings'),(95,'Can view User Widget',24,'view_userwidget'),(124,'Can view log entry',35,'view_log'),(123,'Can delete log entry',35,'delete_log'),(122,'Can change log entry',35,'change_log'),(105,'Can add captcha store',28,'add_captchastore'),(106,'Can change captcha store',28,'change_captchastore'),(107,'Can delete captcha store',28,'delete_captchastore'),(108,'Can view captcha store',28,'view_captchastore'),(113,'Can add 轮播课程',10,'add_bannercourse'),(112,'Can view 轮播课程',32,'view_bannercourse'),(114,'Can change 轮播课程',10,'change_bannercourse'),(115,'Can delete 轮播课程',10,'delete_bannercourse'),(121,'Can add log entry',35,'add_log');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (242,'DQFF','dqff','850d4f16ea9e9d284e25ca5695fc59c34d2cb468','2017-10-30 14:22:43'),(241,'YDYL','ydyl','e27ddd688c13af21c3a709f9dddef7b7afc8ca9a','2017-10-30 14:22:36'),(243,'NEYV','neyv','04886a407c0b3967c6fd897347d38adf08cd005f','2017-10-30 14:22:59');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'django入门','django入门','<p><br/> </p><h1 label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\" class=\"ue_t\">[此处键入文章标题]</h1><p><img src=\"http://img.baidu.com/hi/youa/y_0034.gif\" style=\"width:300px;height:200px;float:left;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"200\" border=\"0\"/>图文混排方法</p><p>1. 图片居左，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本</p><p><br/> </p><p>2. 图片居右，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本</p><p><br/> </p><p>3. 图片居中环绕排版</p><p>方法：亲，这个真心没有办法。。。</p><p><br/> </p><p><br/> </p><p><img src=\"http://img.baidu.com/hi/youa/y_0040.gif\" style=\"width:300px;height:300px;float:right;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"300\" border=\"0\"/> </p><p>还有没有什么其他的环绕方式呢？这里是居右环绕</p><p><br/> </p><p>欢迎大家多多尝试，为UEditor提供更多高质量模板！</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p><br/> </p><p><br/> </p>','cj',0,3,0,'courses/2017/9/mysql.jpg',6,'2017-10-24 23:40:00',1,'后端开发','django开发',NULL,'django开发','django开发',0),(2,'java入门','java入门','java入门java入门java入门java入门java入门\r\n\r\njava入门java入门\r\njava入门','zj',20,0,0,'courses/2017/9/57035ff200014b8a06000338-240-135.jpg',2,'2017-10-25 16:04:00',2,'后端开发','',NULL,'','',0),(3,'python入门','python入门','python入门python入门python入门python入门python入门','zj',0,0,0,'courses/2017/9/540e57300001d6d906000338-240-135.jpg',1,'2017-10-25 16:07:00',4,'后端开发','',NULL,'','',0),(4,'java入门2','java入门2','java入门2java入门2java入门2\r\njava入门2\r\njava入门2\r\njava入门2\r\njava入门2','gj',0,0,0,'courses/2017/9/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg',3,'2017-10-25 16:08:00',5,'后端开发','',NULL,'','',0),(5,'java入门3','java入门3','java入门3\r\njava入门3\r\njava入门3\r\njava入门3\r\njava入门3','cj',0,1,0,'courses/2017/9/57035ff200014b8a06000338-240-135_0nFiBSI.jpg',1,'2017-10-25 16:08:00',6,'后端开发','',NULL,'','',0),(6,'python入门2','python入门2','python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2','zj',0,0,0,'courses/2017/9/540e57300001d6d906000338-240-135_MSIqfvw.jpg',0,'2017-10-25 16:08:00',10,'后端开发','',NULL,'','',0),(7,'django与vuejs实战项目','python入门2','<p>&nbsp; &nbsp; python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2</p>','zj',0,2,0,'courses/2017/9/540e57300001d6d906000338-240-135_Z3HIQ2t.jpg',9,'2017-10-25 16:09:00',2,'后端开发','前端开发',NULL,'go语言','前端开发',1),(8,'django实战项目','django实战项目','django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目','zj',0,0,0,'courses/2017/9/540e57300001d6d906000338-240-135_mvvGYHL.jpg',2,'2017-10-25 16:09:00',1,'后端开发','python',NULL,'','',0),(9,'go语言入门','django实战项目','django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目','zj',0,1,0,'courses/2017/9/540e57300001d6d906000338-240-135_wH52IED.jpg',13,'2017-10-25 16:10:00',2,'后端开发','go语言',NULL,'go语言','go语言',1),(10,'django与vuejs实战项目2','django与vuejs实战项目','<p>&nbsp; &nbsp; django与vuejs实战项目</p><p><img src=\"/media/courses/ueditor/aobama_20161113225044_773.png\" title=\"\" alt=\"aobama.png\"/> </p><table><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课程</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课时<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">难度<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">时长<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">学习人数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td></tr><tr><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">django开发<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">20<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">中级<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">30<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr></tbody></table><p><br/> </p><p><img src=\"http://img.baidu.com/hi/jx2/j_0025.gif\"/> </p><p><br/> </p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p><br/> </p>','gj',0,10,0,'courses/2017/9/540e57300001d6d906000338-240-135_n0L8vbw.jpg',103,'2017-10-25 16:10:00',2,'后端开发','python',1,'django的进阶开发','python基础你需要有',0),(11,'前端开发','前端开发','前端开发','cj',0,0,0,'courses/22017/9/default_middile_1.png',4,'2017-10-25 00:01:00',1,'后端开发','前端开发',2,'前端开发','前端开发',0),(12,'scrapy教程','scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程','<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/> </p>','zj',55,0,2,'courses/2017/10/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg',4,'2017-10-25 23:39:00',2,'后端开发','django开发',NULL,'前端开发','django开发',0),(13,'xadmin进阶开发','xadmin进阶开发xadmin进阶开发xadmin进阶开发xadmin进阶开发','<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/></p>','zj',30,1,1,'courses/2017/10/mysql.jpg',6,'2017-10-25 23:43:00',1,'后端开发','django开发',1,'django开发','django开发',0);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_ea134da7` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
INSERT INTO `courses_courseresource` VALUES (1,'前端页面','course/resource/2017/9/media.zip','2017-10-24 22:13:00',10),(2,'前端页面','course/resource/2017/9/curl_wget.rar','2017-10-24 00:01:00',11);
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_ea134da7` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'第一章 django基础知识','2017-10-24 23:44:00',1,20),(2,'第一章 基础知识','2017-10-25 21:50:00',10,0),(3,'第二章 进阶开发','2017-10-25 21:50:00',10,0),(4,'第一章','2017-10-25 00:01:00',11,10),(5,'第二章 django url配置','2017-10-26 23:32:00',1,30),(6,'第三章 django model配置和编码','2017-10-26 23:32:00',1,50),(7,'第三章 需求分析和数据库设计','2017-10-27 00:00:00',10,200),(8,'第四章 django基础知识回顾','2017-10-27 00:00:00',10,30),(9,'第五章 通过xadmin搭建后台管理系统','2017-10-27 00:01:00',10,60);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_55174b7b` (`lesson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
INSERT INTO `courses_video` VALUES (1,'1.1 hello world','2017-10-25 21:59:00',2,'http://www.imooc.com/video/1430',0),(2,'1.2 基本概念','2017-10-25 22:02:00',2,'http://www.imooc.com/video/1430',0),(3,'2.1 test','2017-10-25 22:02:00',3,'http://www.imooc.com/video/1430',0),(4,'2.2 test2','2017-10-25 22:02:00',3,'http://www.imooc.com/video/1430',0),(5,'django settings.py 配置','2017-10-25 23:35:00',2,'http://imooc.com/',0),(6,'3.1 django app设计','2017-10-26 00:01:00',7,'http://imooc.com/',0),(7,'3.2 django model设计','2017-10-26 00:02:00',7,'http://imooc.com/',0),(8,'3.3 django users models设计','2017-10-26 00:02:00',7,'http://imooc.com/',0),(9,'3.4 django course models设计','2017-10-26 00:02:00',7,'http://imooc.com/',0),(10,'3.5 organization models设计','2017-10-26 00:02:00',7,'http://imooc.com/',0),(11,'4.1 django settings配置','2017-10-26 00:03:00',8,'http://imooc.com/',0),(12,'4.2 models设计','2017-10-26 00:04:00',8,'http://imooc.com/',20),(13,'5.1 django admin讲解','2017-10-26 00:05:00',9,'http://imooc.com/',10),(14,'5.2 xadmin的安装和注册','2017-10-26 00:05:00',9,'http://imooc.com/',0);
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-25 21:22:31','3','shenjihehe',1,'已添加。',7,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(7,'users','userprofile'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'users','emailverifyrecord'),(9,'users','banner'),(10,'courses','course'),(11,'courses','lesson'),(12,'courses','video'),(13,'courses','courseresource'),(14,'organization','citydict'),(15,'organization','courseorg'),(16,'organization','teacher'),(17,'operation','userask'),(18,'operation','coursecomments'),(19,'operation','userfavorite'),(20,'operation','usermessage'),(21,'operation','usercourse'),(22,'xadmin','bookmark'),(23,'xadmin','usersettings'),(24,'xadmin','userwidget'),(35,'xadmin','log'),(28,'captcha','captchastore'),(32,'courses','bannercourse');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-18 15:47:51'),(2,'auth','0001_initial','2017-10-18 15:47:51'),(3,'admin','0001_initial','2017-10-18 15:47:51'),(4,'admin','0002_logentry_remove_auto_add','2017-10-18 15:47:52'),(5,'contenttypes','0002_remove_content_type_name','2017-10-18 15:47:52'),(6,'auth','0002_alter_permission_name_max_length','2017-10-18 15:47:52'),(7,'auth','0003_alter_user_email_max_length','2017-10-18 15:47:52'),(8,'auth','0004_alter_user_username_opts','2017-10-18 15:47:52'),(9,'auth','0005_alter_user_last_login_null','2017-10-18 15:47:52'),(10,'auth','0006_require_contenttypes_0002','2017-10-18 15:47:52'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-18 15:47:52'),(12,'sessions','0001_initial','2017-10-18 15:47:53'),(13,'users','0001_initial','2017-10-18 16:36:59'),(14,'courses','0001_initial','2017-10-20 15:01:04'),(15,'operation','0001_initial','2017-10-20 15:01:05'),(16,'organization','0001_initial','2017-10-20 15:01:05'),(17,'users','0002_banner_emailverifyrecord','2017-10-20 15:01:05'),(18,'users','0003_auto_20161024_2337','2017-10-24 23:37:30'),(20,'users','0004_auto_20161025_2122','2017-10-25 21:22:31'),(66,'xadmin','0001_initial','2017-10-25 21:22:31'),(67,'xadmin','0002_log','2017-10-25 21:22:31'),(68,'xadmin','0003_auto_20160715_0100','2017-10-25 21:22:31'),(34,'captcha','0001_initial','2017-10-25 21:22:31'),(35,'courses','0002_auto_20161030_1928','2017-10-25 21:22:31'),(36,'organization','0002_auto_20161102_2224','2017-10-25 21:22:31'),(37,'organization','0003_auto_20161103_0056','2017-10-25 21:22:31'),(38,'courses','0003_course_course_org','2017-10-25 21:22:31'),(39,'organization','0004_auto_20161104_0022','2017-10-25 21:22:31'),(40,'organization','0005_auto_20161104_0024','2017-10-25 21:22:31'),(41,'courses','0004_course_category','2017-10-25 21:22:31'),(42,'courses','0005_course_tag','2017-10-25 21:22:31'),(44,'courses','0006_video_url','2017-10-25 21:22:31'),(45,'courses','0007_lesson_learn_times','2017-10-25 21:22:31'),(46,'courses','0008_video_learn_times','2017-10-25 21:22:31'),(47,'courses','0009_course_teacher','2017-10-25 21:22:31'),(48,'courses','0010_auto_20161105_2226','2017-10-25 21:22:31'),(49,'organization','0006_teacher_age','2017-10-25 21:22:31'),(50,'users','0005_auto_20161106_2007','2017-10-25 21:22:31'),(51,'courses','0011_course_is_banner','2017-10-25 21:22:31'),(52,'organization','0007_courseorg_tag','2017-10-25 21:22:31'),(53,'courses','0012_auto_20161113_1724','2017-10-25 21:22:31'),(54,'courses','0013_remove_course_detail2','2017-10-25 21:22:31'),(55,'courses','0014_auto_20161113_2218','2017-10-25 21:22:31'),(56,'organization','0008_auto_20161210_2353','2017-10-25 21:22:31'),(69,'auth','0008_alter_user_username_max_length','2017-10-25 21:22:31'),(70,'users','0006_auto_20171030_0847','2017-10-25 21:22:31');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2jam9b4q6flchzg7g3z43j9akxu7iio3','ODFkYTY2NzI2Y2EyYmNmZTQ2MzliZTg0NjZhNTQ0ZDVhMDg3NjI2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjRlZThlMGU2NWRmNmFkOGRkMTlkYjA2Y2RhNTNlNmQ3MDliYWYxNDIiLCJfYXV0aF91c2VyX2lkIjoiMiJ9','2017-10-25 01:11:13'),('qhgbcuuydbcvobjanwirbbqmf73rme81','ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==','2017-10-26 00:07:33'),('7vmowjzj0k4dpe0js1lh9dp0euq0tdx9','MjQ1ZGVjYmU4MDcxNmQ1MGFhNWE3YTE1Zjk3ODE5YTNlNWU1YWQxMjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZXJlc291cmNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJiN2ZjZjEyZTViOTNiMjg5MWUzOTA4MTZkYTZkZTYxOWUyZDEwMGYzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9','2017-10-26 22:55:43'),('nmjg2imxv7aps2830bubyduhh08g92dk','ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==','2017-10-27 18:58:54'),('9n51clhwi9wza9xsrxzxeggvk6rd73mp','OTQwNzViYzQ0MmMyYjQxNWFkYTFiMDMyZjhiYjU5MTUyOWNlZjE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIzYjNmYzA1ZTAxNWQ2NDIzNjc5NzY4ZmNjYzQ4OTM3NDU4YjA5ODA1IiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==','2017-10-27 22:53:41'),('r88zwg0ox2e86k5rbz3i8h189g2tljia','ZjIxOGI1MDRkMTA4ZTFlNGYxNzdkNzJjODY4YmNmODJkYmY0NTczMDp7IkxJU1RfUVVFUlkiOltbInhhZG1pbiIsImxvZyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjRiZDAwMTk3ZmFiYjc0MzZmNjNiNDQ5YjEyOGI1ZGNmY2U1ODI1NSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9','2016-12-28 22:08:53'),('yf81co91eveuj5rbl2acht37gdwptptw','ZWVkOTI3MDkzY2U3MjUxZTA0NmI0NTAzZWM1NDMzYTVkMzA5MDc1OTp7IkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJjb3Vyc2VyZXNvdXJjZSJdLCIiXSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY3OWI0MTg3ZWVkYzRiNjA5MjIwZDQwOWFlZTJlYWY1ZTZmMzc2MDQiLCJfYXV0aF91c2VyX2lkIjoiMiJ9','2017-11-13 15:43:08');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_ea134da7` (`course_id`),
  KEY `operation_coursecomments_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'给问问','2017-10-25 23:09:57',10,2),(2,'讲的很不错','2017-10-25 23:13:13',10,2),(3,'good ','2017-10-25 23:18:16',10,2),(4,'再来一次','2017-10-25 23:18:31',10,2),(5,'继续问','2017-10-26 22:06:57',5,2),(6,'快降价','2017-10-26 22:07:06',5,2),(7,'好','2017-10-26 22:07:14',5,2);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
INSERT INTO `operation_userask` VALUES (3,'shenjihehe','13548','django','2017-10-26 23:29:26'),(4,'shenjihehe','13018002680','django','2017-10-26 23:29:26');
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_ea134da7` (`course_id`),
  KEY `operation_usercourse_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2017-10-25 20:52:00',10,2),(2,'2017-10-25 20:54:00',7,2),(3,'2017-10-25 20:56:00',4,2),(4,'2017-10-25 20:58:00',1,2),(5,'2017-10-26 22:06:35',5,2),(6,'2017-10-26 22:09:54',9,2),(7,'2017-10-26 23:57:08',13,2);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` VALUES (28,1,3,'2017-10-25 20:52:00',2),(36,1,2,'2017-10-30 15:50:45',2),(32,12,1,'2017-10-25 20:52:00',2),(31,13,1,'2017-10-25 20:52:00',2),(33,2,2,'2017-10-25 20:52:00',2),(34,2,3,'2017-10-25 20:52:00',2),(35,12,1,'2017-10-30 14:22:34',3);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` VALUES (1,2,'欢迎注册',1,'2017-10-25 20:52:00'),(2,8,'欢迎注册eduonline在线网',1,'2017-10-25 20:52:00');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'北京市','北京市','2017-10-25 20:52:00'),(2,'上海市','上海市','2017-10-25 20:52:00'),(3,'广州市','广州市','2017-10-25 20:52:00'),(4,'深圳市','深圳市','2017-10-25 20:52:00'),(5,'天津市','天津市','2017-10-25 20:52:00'),(6,'银河系','哈哈哈','2017-11-04 14:56:00');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseorg_c7141997` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'慕课网','<p>&nbsp; &nbsp;</p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/></p><p><br/></p>',22,1,'org/2017/9/imooc.png','北京市','2017-10-25 21:28:00',1,'pxjg',4,0,'全国知名'),(2,'北京大学','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',1,1,'org/2017/9/bjdx.jpg','北京市','2017-10-25 18:50:00',3,'gx',5,0,'全国知名'),(3,'清华大学','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/qhdx-logo.png','北京市','2017-10-25 18:53:00',3,'pxjg',0,0,'全国知名'),(4,'南京大学','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/njdx.jpg','南京市','2017-10-25 18:53:00',4,'pxjg',0,0,'全国知名'),(5,'慕课网2','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',3,0,'org/2017/9/imooc_klgAUn5.png','深圳市','2017-10-25 18:54:00',5,'gr',0,0,'全国知名'),(6,'慕课网3','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/imooc_Gn1sRjp.png','天津市','2017-10-25 18:54:00',6,'pxjg',0,0,'全国知名'),(7,'慕课网3','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/imooc_Y2Tonsq.png','上海市','2017-10-25 18:54:00',3,'pxjg',0,0,'全国知名'),(8,'慕课网4','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/imooc_OO2ykYP.png','深圳市','2017-10-25 18:54:00',5,'gx',0,0,'全国知名'),(9,'慕课网5','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/imooc_V0TJOyb.png','北京市','2017-10-25 18:54:00',4,'pxjg',0,0,'全国知名'),(10,'慕课网666','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]',0,0,'org/2017/9/imooc_qEaMov1.png','深圳市','2017-10-25 18:54:00',2,'pxjg',0,0,'全国知名'),(11,'慕学网','慕学网慕学网\r\n慕学网慕学网慕学网\r\n慕学网慕学网慕学网\r\n\r\n慕学网慕学网慕学网\r\n\r\n慕学网',0,0,'org/2017/10/bjdx.jpg','北京市','2017-10-26 20:52:00',4,'pxjg',0,0,'全国知名'),(12,'python培训机构','python培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构',0,0,'org/2017/10/imooc_Gn1sRjp.png','北京市','2017-10-26 20:52:00',2,'gr',0,0,'全国知名'),(13,'vuejs培训','vuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训',0,0,'org/2017/10/bjdx_cCpdUw8.jpg','北京市','2017-10-26 20:52:00',2,'gr',0,0,'全国知名'),(14,'nodejs培训','nodejs培训nodejs培训nodejs培训nodejs培训nodejs培训\r\nnodejs培训nodejs培训nodejs培训nodejs培训nodejs培训',0,0,'org/2017/10/imooc_klgAUn5.png','北京市','2017-10-26 20:52:00',2,'gr',0,0,'全国知名'),(15,'eduonline在线','慕学在线慕学在线慕学在线慕学在线慕学在线\r\n慕学在线慕学在线慕学在线慕学在线慕学在线',0,0,'org/2017/10/bjdx_bcd0m07.jpg','北京市','2017-10-26 20:52:00',5,'gx',0,0,'全国知名');
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_9cf869aa` (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'shenjihehe',5,'xxx','xxx','xxx',22,1,'2017-10-24 23:43:00',1,'teacher/2017/10/aobama_CXWwMef.png',18),(2,'还是我',5,'xxx','xxx','xxx',2,1,'2017-10-24 23:44:00',1,'teacher/2017/10/aobama.png',18);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'第一个','banner/2017/10/57a801860001c34b12000460.jpg','http://www.imooc.com',1,'2016-11-07 22:55:00'),(2,'第二个','banner/2017/10/57aa86a0000145c512000460.jpg','http://www.projectsedu.com',2,'2016-11-07 22:56:00'),(3,'第三个','banner/2017/10/57a801860001c34b12000460_z4Vb8zl.jpg','http://www.projectsedu.com',3,'2016-11-07 22:57:00'),(4,'第四个','banner/2017/10//57aa86a0000145c512000460_nMwvoQD.jpg','http://www.projectsedu.com',4,'2016-11-07 22:57:00'),(5,'第五个','banner/2017/10/57aa86a0000145c512000460_GXIBATC.jpg','http://www.projectsedu.com',5,'2016-11-07 22:58:00');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (6,'admin','xxx@qq.com','register','2016-10-25 23:13:00'),(8,'bobby','admin@admin.com','forget','2016-10-25 23:26:00'),(9,'3XMbn5Owwv6tc6mc','projectsedu@sina.com','register','2016-10-30 22:52:56'),(10,'xul6s2tlQMW6o38E','projectsedu@sina.com','register','2016-10-30 22:57:43'),(11,'ekB9xHRNDng9wlHq','projectsedu@sina.com','register','2016-10-30 23:02:20'),(12,'RIGoVBtSxt3U01YP','projectsedu@sina.com','forget','2016-11-01 22:04:08'),(13,'73gYZCG4NID3hBIk','projectsedu@sina.com','forget','2016-11-01 22:06:23'),(14,'KIjhoogFyi8xu4TB','projectsedu@sina.com','update_ema','2016-11-06 19:46:49'),(15,'xrHe','projectsedu@sina.com','update_email','2016-11-06 19:50:45'),(16,'jCeSMseZ58DeGPDx','projectsedu@sina.com','forget','2016-11-08 22:39:08'),(17,'5H30ufawJkzjJtHc','13018002680@163.com','register','2017-10-30 10:16:08'),(18,'s7J3y6N2yxj3tk8y','13018002680@163.com','forget','2017-10-30 14:19:58'),(19,'aSW2EjHJuv9yiaeA','13018002680@163.com','forget','2017-10-30 14:20:04');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (2,'pbkdf2_sha256$36000$lXjVqJKfLeyB$RllnXmpgtD/m1sV5+xeKUPV/LZdPGgBr7bCeWp0RNZY=','2017-10-30 14:46:57',1,'admin','','','123456@sina.com',1,1,'2017-10-24 14:58:33','django','2017-10-11','female','我来自火星','','image/2017/10/default_big_14.png'),(3,'pbkdf2_sha256$36000$X9JmEWLr83ne$Y7n3jnIJzAVWH/Ry7aNgXFPBx7Xai1Nun4d5unihjtM=','2017-10-30 14:20:49',0,'test','','','13018002680@163.com',0,1,'2017-10-24 23:40:00','admin','2017-10-11','male','慕课网','1301800268','image/2017/10/5705d21e0001e4f106000338-240-135_47OzhEw.jpg'),(6,'pbkdf2_sha256$24000$fqNxJK7sfjE4$pcomeAWpo2AQtFIYq68wpqWszR+FMquouz731Xnc4q4=','2016-11-08 22:44:00',0,'hehe@sina.com','','','123@163.com',1,1,'2017-10-24 23:40:00','lalal','2017-10-11','female','我来自地球','','image/default.png'),(8,'pbkdf2_sha256$36000$X9JmEWLr83ne$Y7n3jnIJzAVWH/Ry7aNgXFPBx7Xai1Nun4d5unihjtM=','2017-10-30 10:17:36',0,'13018002680@163.com','','','13018002680@126.com',0,1,'2017-10-30 10:16:08','昏沉沉','2017-10-11','male','哈哈哈，不告诉你','1301800268','image/2017/10/5705d21e0001e4f106000338-240-135.jpg');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
INSERT INTO `users_userprofile_groups` VALUES (1,6,1);
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_417f1b1c` (`content_type_id`),
  KEY `xadmin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2017-10-30 14:56:54','127.0.0.1','6','银河系','create','已添加。',14,2);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',2);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-02 11:08:06
