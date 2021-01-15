CREATE DATABASE  IF NOT EXISTS `doan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `doan`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doan
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'Máy tính',0,'may-tinh','2020-12-18 05:18:05','2020-12-18 05:18:05',NULL),(13,'Điện Thoại',0,'dien-thoai','2020-12-18 05:18:15','2020-12-18 05:18:15',NULL),(14,'Đồng hồ',0,'dong-ho','2020-12-18 05:18:22','2020-12-18 05:18:22',NULL),(15,'Loa',0,'loa','2020-12-18 05:18:33','2020-12-18 05:18:33',NULL),(16,'Tai nghe',0,'tai-nghe','2020-12-18 05:19:07','2020-12-18 05:19:07',NULL),(17,'Asus',12,'asus','2020-12-18 05:19:21','2020-12-18 05:19:21',NULL),(18,'Del',12,'del','2020-12-18 05:19:28','2020-12-18 05:19:28',NULL),(19,'Apple',13,'apple','2020-12-18 05:19:45','2020-12-18 05:19:45',NULL),(20,'Samsung',13,'samsung','2020-12-18 05:19:55','2020-12-18 05:19:55',NULL),(21,'Oppo',13,'oppo','2020-12-18 05:20:12','2020-12-18 05:20:12',NULL),(22,'Apple Watch',14,'apple-watch','2020-12-18 05:20:47','2020-12-18 05:20:47',NULL),(23,'LG',15,'lg','2020-12-18 05:21:04','2020-12-18 05:21:04',NULL),(24,'Harman - JBL',15,'harman-jbl','2020-12-18 05:21:38','2020-12-18 05:21:38',NULL),(25,'Logitech',16,'logitech','2020-12-18 05:22:09','2020-12-18 05:22:09',NULL),(26,'Razer Krakennn',16,'razer-krakennn','2020-12-18 05:22:43','2020-12-18 19:53:29','2020-12-18 19:53:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (3,'Sevice',0,'2020-12-18 09:33:09','2020-12-18 09:33:09',NULL,'sevice'),(4,'Iphone',0,'2020-12-18 17:41:31','2020-12-18 17:41:31',NULL,'iphone');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_12_16_203915_create_categories_table',1),(4,'2020_12_16_213823_add_column_deleted_at_table_categories',2),(5,'2020_12_16_214423_create_menus_table',3),(6,'2020_12_16_220431_add_column_slug_to_menus_table',4),(7,'2020_12_16_222441_add_column_soft_delete_to_menus_table',5),(8,'2020_12_16_225139_create_products_table',6),(9,'2020_12_16_225315_create_product_images_table',6),(10,'2020_12_16_225413_create_tags_table',6),(11,'2020_12_16_225511_create_product_tags_table',6),(12,'2020_12_17_075047_add_column_feature_image_name',7),(13,'2020_12_17_080214_add_column_image_name_to_table_product_image',8),(14,'2020_12_17_090818_add_column_deletet_at_to_product_table',9),(15,'2020_12_17_101424_create_sliders_table',10),(16,'2020_12_17_133034_create_sliders_table',11),(17,'2020_12_17_134543_add_column_deleted_at_to_sliders',12),(18,'2020_12_17_135248_create_settings_table',13),(19,'2020_12_17_140705_create_settings_table',14),(20,'2020_12_17_141519_add_column_type_settings_table',15),(21,'2020_12_17_161612_create_roles_table',16),(22,'2020_12_17_161649_create_permissions_table',16),(23,'2020_12_17_161756_create_table_user_role',16),(24,'2020_12_17_161852_create_table_permission',16),(25,'2020_12_17_181552_add_column_deleted_at_table_users',17),(26,'2020_12_17_184522_add_column_parent_id_permission',18),(27,'2020_12_17_192028_add_column_key_permission_table',19),(28,'2020_12_17_222109_add_column_slug_to_menus_table',20),(29,'2020_12_18_141133_add_column_views_products',21);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Nguyễn Đức Âu','+84377524660','dsa',4,'2021-01-14 13:48:21','aund@tpb.com.vn','2021-01-14 13:48:21','2021-01-14 13:48:21',NULL),(2,'ggggggggggg','+84377524660','gdddddddddd',1,'2021-01-14 13:50:53','mr.au1992@gmail.com','2021-01-14 13:50:53','2021-01-14 13:50:53',NULL),(3,'Nguyễn Đức Âu 222','0377524660','asdasdsa',1,'2021-01-14 13:52:20','au.nguyen@sotatek.com','2021-01-14 13:52:20','2021-01-14 13:52:20',NULL),(4,'Nguyễn Đức Âu 222','0377524660','gdddddddddd',1,'2021-01-15 12:46:21','au.nguyen@sotatek.com','2021-01-15 12:46:21','2021-01-15 12:46:21',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_item`
--

DROP TABLE IF EXISTS `orders_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`order_id`),
  KEY `fk_product_idx` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_item`
--

LOCK TABLES `orders_item` WRITE;
/*!40000 ALTER TABLE `orders_item` DISABLE KEYS */;
INSERT INTO `orders_item` VALUES (1,1,28,2,500000.00,1000000.00,'2021-01-14 13:48:21','2021-01-14 13:48:21',NULL),(2,2,28,2,500000.00,1000000.00,'2021-01-14 13:50:53','2021-01-14 13:50:53',NULL),(3,2,24,1,12000000.00,12000000.00,'2021-01-14 13:50:53','2021-01-14 13:50:53',NULL),(4,3,23,1,27000000.00,27000000.00,'2021-01-14 13:52:20','2021-01-14 13:52:20',NULL),(5,4,28,1,500000.00,500000.00,'2021-01-15 12:46:21','2021-01-15 12:46:21',NULL),(6,4,27,1,1000000.00,1000000.00,'2021-01-15 12:46:21','2021-01-15 12:46:21',NULL),(7,4,26,1,4000000.00,4000000.00,'2021-01-15 12:46:21','2021-01-15 12:46:21',NULL);
/*!40000 ALTER TABLE `orders_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,5,2,NULL,NULL),(2,5,7,NULL,NULL),(3,5,8,NULL,NULL),(4,2,2,NULL,NULL),(38,1,18,NULL,NULL),(49,1,22,NULL,NULL),(50,1,23,NULL,NULL),(51,1,24,NULL,NULL),(52,1,25,NULL,NULL),(53,1,27,NULL,NULL),(54,1,28,NULL,NULL),(55,1,29,NULL,NULL),(56,1,30,NULL,NULL),(57,1,32,NULL,NULL),(58,1,33,NULL,NULL),(59,1,34,NULL,NULL),(60,1,35,NULL,NULL),(63,2,17,NULL,NULL),(90,1,19,NULL,NULL),(91,1,20,NULL,NULL),(92,3,2,NULL,NULL),(93,3,3,NULL,NULL),(94,3,4,NULL,NULL),(95,3,5,NULL,NULL),(96,3,7,NULL,NULL),(97,3,8,NULL,NULL),(98,3,9,NULL,NULL),(99,3,10,NULL,NULL),(100,3,12,NULL,NULL),(101,3,13,NULL,NULL),(102,3,14,NULL,NULL),(103,3,15,NULL,NULL),(104,3,17,NULL,NULL),(105,3,18,NULL,NULL),(106,3,19,NULL,NULL),(107,3,20,NULL,NULL),(108,3,22,NULL,NULL),(109,3,23,NULL,NULL),(110,3,24,NULL,NULL),(111,3,25,NULL,NULL),(112,3,27,NULL,NULL),(113,3,28,NULL,NULL),(114,3,29,NULL,NULL),(115,3,30,NULL,NULL),(116,3,32,NULL,NULL),(117,3,33,NULL,NULL),(118,3,34,NULL,NULL),(119,3,35,NULL,NULL),(120,4,4,NULL,NULL),(121,4,9,NULL,NULL),(122,4,14,NULL,NULL),(127,2,12,NULL,NULL),(131,2,7,NULL,NULL),(132,2,22,NULL,NULL),(133,2,27,NULL,NULL),(134,2,32,NULL,NULL),(135,1,2,NULL,NULL),(136,1,7,NULL,NULL),(137,1,12,NULL,NULL),(138,1,17,NULL,NULL),(139,1,3,NULL,NULL),(140,1,4,NULL,NULL),(141,1,5,NULL,NULL),(142,1,8,NULL,NULL),(143,1,9,NULL,NULL),(144,1,10,NULL,NULL),(145,1,13,NULL,NULL),(146,1,14,NULL,NULL),(147,1,15,NULL,NULL);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'category','category','2020-12-17 13:44:53','2020-12-17 13:44:53',0,''),(2,'list','list','2020-12-17 13:44:53','2020-12-17 13:44:53',1,'category_list'),(3,'add','add','2020-12-17 13:44:53','2020-12-17 13:44:53',1,'category_add'),(4,'edit','edit','2020-12-17 13:44:53','2020-12-17 13:44:53',1,'category_edit'),(5,'delete','delete','2020-12-17 13:44:53','2020-12-17 13:44:53',1,'category_delete'),(6,'slider','slider','2020-12-17 13:45:08','2020-12-17 13:45:08',0,''),(7,'list','list','2020-12-17 13:45:08','2020-12-17 13:45:08',6,'slider_list'),(8,'add','add','2020-12-17 13:45:08','2020-12-17 13:45:08',6,'slider_add'),(9,'edit','edit','2020-12-17 13:45:08','2020-12-17 13:45:08',6,'slider_edit'),(10,'delete','delete','2020-12-17 13:45:08','2020-12-17 13:45:08',6,'slider_delete'),(11,'menu','menu','2020-12-17 13:45:12','2020-12-17 13:45:12',0,''),(12,'list','list','2020-12-17 13:45:12','2020-12-17 13:45:12',11,'menu_list'),(13,'add','add','2020-12-17 13:45:12','2020-12-17 13:45:12',11,'menu_add'),(14,'edit','edit','2020-12-17 13:45:12','2020-12-17 13:45:12',11,'menu_edit'),(15,'delete','delete','2020-12-17 13:45:12','2020-12-17 13:45:12',11,'menu_delete'),(16,'product','product','2020-12-17 13:45:17','2020-12-17 13:45:17',0,''),(17,'list','list','2020-12-17 13:45:17','2020-12-17 13:45:17',16,'product_list'),(18,'add','add','2020-12-17 13:45:17','2020-12-17 13:45:17',16,'product_add'),(19,'edit','edit','2020-12-17 13:45:17','2020-12-17 13:45:17',16,'product_edit'),(20,'delete','delete','2020-12-17 13:45:17','2020-12-17 13:45:17',16,'product_delete'),(21,'setting','setting','2020-12-17 13:45:20','2020-12-17 13:45:20',0,''),(22,'list','list','2020-12-17 13:45:20','2020-12-17 13:45:20',21,'setting_list'),(23,'add','add','2020-12-17 13:45:20','2020-12-17 13:45:20',21,'setting_add'),(24,'edit','edit','2020-12-17 13:45:20','2020-12-17 13:45:20',21,'setting_edit'),(25,'delete','delete','2020-12-17 13:45:20','2020-12-17 13:45:20',21,'setting_delete'),(26,'user','user','2020-12-17 13:45:24','2020-12-17 13:45:24',0,''),(27,'list','list','2020-12-17 13:45:24','2020-12-17 13:45:24',26,'user_list'),(28,'add','add','2020-12-17 13:45:24','2020-12-17 13:45:24',26,'user_add'),(29,'edit','edit','2020-12-17 13:45:24','2020-12-17 13:45:24',26,'user_edit'),(30,'delete','delete','2020-12-17 13:45:24','2020-12-17 13:45:24',26,'user_delete'),(31,'role','role','2020-12-17 13:45:28','2020-12-17 13:45:28',0,''),(32,'list','list','2020-12-17 13:45:28','2020-12-17 13:45:28',31,'role_list'),(33,'add','add','2020-12-17 13:45:28','2020-12-17 13:45:28',31,'role_add'),(34,'edit','edit','2020-12-17 13:45:28','2020-12-17 13:45:28',31,'role_edit'),(35,'delete','delete','2020-12-17 13:45:28','2020-12-17 13:45:28',31,'role_delete'),(36,'category','category','2020-12-18 19:22:27','2020-12-18 19:22:27',0,''),(37,'list','list','2020-12-18 19:22:27','2020-12-18 19:22:27',36,'category_list'),(38,'add','add','2020-12-18 19:22:27','2020-12-18 19:22:27',36,'category_add'),(39,'edit','edit','2020-12-18 19:22:27','2020-12-18 19:22:27',36,'category_edit'),(40,'delete','delete','2020-12-18 19:22:27','2020-12-18 19:22:27',36,'category_delete');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'/storage/product/1/mp5dz80k2rkEBRd0AEj3.jpg',4,'2020-12-17 01:14:23','2020-12-17 01:14:23','edit1.jpg'),(2,'/storage/product/1/plPPKnceJnO4iNR3AudR.jpg',4,'2020-12-17 01:14:23','2020-12-17 01:14:23','edit2.jpg'),(3,'/storage/product/1/GMeftrHLWLouRjFrPqGQ.jpg',4,'2020-12-17 01:14:23','2020-12-17 01:14:23','images_edit.jpg'),(4,'/storage/product/1/gSwv0gnpISbPBJORJMiY.jpg',8,'2020-12-17 01:20:28','2020-12-17 01:20:28','edit1.jpg'),(5,'/storage/product/1/8Rq89BqiwW5I4ITCO727.jpg',8,'2020-12-17 01:20:28','2020-12-17 01:20:28','edit2.jpg'),(6,'/storage/product/1/0dwTKPEmCuFLsfcTnuwK.jpg',8,'2020-12-17 01:20:28','2020-12-17 01:20:28','poster.jpg'),(7,'/storage/product/1/l4ubrPmWIUVbjyZFRUIT.jpg',9,'2020-12-17 01:21:31','2020-12-17 01:21:31','edit1.jpg'),(8,'/storage/product/1/u6BpvCI8cipxJIDosjRk.jpg',9,'2020-12-17 01:21:31','2020-12-17 01:21:31','edit2.jpg'),(9,'/storage/product/1/ciNms0kQvCF0Wz3oba5M.jpg',9,'2020-12-17 01:21:31','2020-12-17 01:21:31','poster.jpg'),(10,'/storage/product/1/cTXyZGL6vmozqPxSYOqP.jpg',10,'2020-12-17 01:22:34','2020-12-17 01:22:34','edit1.jpg'),(11,'/storage/product/1/csZxMVGgpPCsQuyklHp8.jpg',10,'2020-12-17 01:22:34','2020-12-17 01:22:34','edit2.jpg'),(12,'/storage/product/1/pN75KspzFeOsfQZurgIs.jpg',10,'2020-12-17 01:22:34','2020-12-17 01:22:34','poster.jpg'),(13,'/storage/product/1/zQSB4CFGKZXOTUlewXWf.jpg',11,'2020-12-17 01:23:31','2020-12-17 01:23:31','edit1.jpg'),(14,'/storage/product/1/qGAtGCeiwDWDIOJyn3dr.jpg',11,'2020-12-17 01:23:31','2020-12-17 01:23:31','edit2.jpg'),(15,'/storage/product/1/6CXiiie1Yw8kEotM0bvM.jpg',11,'2020-12-17 01:23:31','2020-12-17 01:23:31','poster.jpg'),(16,'/storage/product/1/lUAQ4CDC8S0DaAn1xLus.jpg',12,'2020-12-17 01:27:36','2020-12-17 01:27:36','edit1.jpg'),(17,'/storage/product/1/9yVCHMWPFDFOPHBNtJ2F.jpg',12,'2020-12-17 01:27:36','2020-12-17 01:27:36','edit2.jpg'),(18,'/storage/product/1/9b42oHEwvkJRdwJWDNWu.jpg',12,'2020-12-17 01:27:36','2020-12-17 01:27:36','poster.jpg'),(19,'/storage/product/1/DxNLXM7S5GmPWEaXrlys.jpg',14,'2020-12-17 01:50:48','2020-12-17 01:50:48','12312.jpg'),(20,'/storage/product/1/wveO4esC0sxXlQ0Kxyvr.jpg',14,'2020-12-17 01:50:48','2020-12-17 01:50:48','23112.jpg'),(21,'/storage/product/1/3W2MOi8zL46AfMJechte.jpg',14,'2020-12-17 01:50:48','2020-12-17 01:50:48','maxresdefault.jpg'),(22,'/storage/product/1/N4Rb1ninxdDYEBK9hN2J.jpg',15,'2020-12-17 02:05:42','2020-12-17 02:05:42','12312 - Copy.jpg'),(23,'/storage/product/1/oRUU5a4vFbEey7w5rlpT.jpg',15,'2020-12-17 02:05:42','2020-12-17 02:05:42','23112 - Copy.jpg'),(24,'/storage/product/1/gDSwuxUCHvuXE0Apv8sr.jpg',15,'2020-12-17 02:05:42','2020-12-17 02:05:42','maxresdefault - Copy.jpg'),(28,'/storage/product/1/ObkcOhN1YfPE8smk5Zu9.jpg',17,'2020-12-17 02:47:43','2020-12-17 02:47:43','23112 - Copy.jpg'),(29,'/storage/product/1/L36vgIWa9FqEawgfJSwa.jpg',17,'2020-12-17 02:47:43','2020-12-17 02:47:43','23112.jpg'),(30,'/storage/product/1/I2Vb50DEQcQ13aoBJAsB.jpg',17,'2020-12-17 02:47:43','2020-12-17 02:47:43','maxresdefault - Copy.jpg'),(31,'/storage/product/1/mJDaHcuGfptxJ4IunixV.jpg',18,'2020-12-17 02:48:43','2020-12-17 02:48:43','23112 - Copy.jpg'),(32,'/storage/product/1/dklF0WDhRN7sKIzFWL8q.jpg',18,'2020-12-17 02:48:43','2020-12-17 02:48:43','maxresdefault - Copy.jpg'),(33,'/storage/product/1/QeZTj3beNQdUEFa0AWef.jpg',18,'2020-12-17 02:48:43','2020-12-17 02:48:43','maxresdefault.jpg'),(34,'/storage/product/1/j0lj2JC87HjUx0dT59BJ.jpg',19,'2020-12-17 07:31:03','2020-12-17 07:31:03','12312.jpg'),(35,'/storage/product/1/uw3vDRsyR7SSVBsM9PZJ.jpg',19,'2020-12-17 07:31:03','2020-12-17 07:31:03','23112 - Copy.jpg'),(36,'/storage/product/1/DSofKX0G8qmWHnRfGCl7.jpg',19,'2020-12-17 07:31:03','2020-12-17 07:31:03','23112.jpg'),(37,'/storage/product/7/l2AMTcAyNDPxqB69tKXZ.jpg',20,'2020-12-17 15:54:35','2020-12-17 15:54:35','23112 - Copy.jpg'),(38,'/storage/product/7/3m0uBHKod7d8a6Wzvxnn.jpg',20,'2020-12-17 15:54:35','2020-12-17 15:54:35','maxresdefault - Copy.jpg'),(39,'/storage/product/7/envPDG4gp5Bm4p9DjKXG.jpg',20,'2020-12-17 15:54:35','2020-12-17 15:54:35','maxresdefault.jpg'),(40,'/storage/product/8/INLdcjMU6PnCdzKX3Xzb.jpg',21,'2020-12-17 21:28:55','2020-12-17 21:28:55','12312 - Copy.jpg'),(41,'/storage/product/8/51ToRMvzVZ1xuQvGxLxq.jpg',21,'2020-12-17 21:28:55','2020-12-17 21:28:55','23112 - Copy.jpg'),(42,'/storage/product/8/PRUYSiFJ6TAVK96Icef2.jpg',21,'2020-12-17 21:28:55','2020-12-17 21:28:55','23112.jpg'),(43,'/storage/product/8/gQTFaUP8Xk7BanNBOnU4.jpg',22,'2020-12-17 22:18:31','2020-12-17 22:18:31','12312.jpg'),(44,'/storage/product/8/IBCybeisdBSlfRcpqFja.jpg',22,'2020-12-17 22:18:31','2020-12-17 22:18:31','23112 - Copy.jpg'),(45,'/storage/product/8/L3XykEbOOxVdZvFwqV2V.jpg',22,'2020-12-17 22:18:31','2020-12-17 22:18:31','23112.jpg'),(46,'/storage/product/7/Jb3PXQfM3DBQqKTzXxWI.jpg',23,'2020-12-18 06:31:20','2020-12-18 06:31:20','product1.jpg'),(47,'/storage/product/7/G4KBaf1ZU9isYt1C8EXW.jpg',23,'2020-12-18 06:31:20','2020-12-18 06:31:20','product2.jpg'),(48,'/storage/product/7/k4Rpt6r9QUw2KKleuHXS.jpg',24,'2020-12-18 06:34:28','2020-12-18 06:34:28','product8.jpg'),(49,'/storage/product/7/A3mFAEswYZ3hO8i4HNCd.jpg',25,'2020-12-18 06:36:17','2020-12-18 06:36:17','product11.jpg'),(50,'/storage/product/7/ZtJKRjX4tdgl11onIxUW.jpg',25,'2020-12-18 06:36:17','2020-12-18 06:36:17','product12.jpg'),(51,'/storage/product/7/AHKXw8BuSiM8yiwyfK6U.jpg',25,'2020-12-18 06:36:17','2020-12-18 06:36:17','product13.jpg'),(52,'/storage/product/7/K675fGErUvTPa2dyDAgn.jpg',26,'2020-12-18 06:38:48','2020-12-18 06:38:48','product6.jpg'),(53,'/storage/product/7/sCs5MaVtKcQyqHbGRRzK.jpg',26,'2020-12-18 06:38:48','2020-12-18 06:38:48','product7.jpg'),(54,'/storage/product/7/8M3VEoI0TnlFoagSGvtk.jpg',27,'2020-12-18 09:38:33','2020-12-18 09:38:33','product3.jpg'),(55,'/storage/product/7/1rBugpK5Pexbx2NjDf73.jpg',27,'2020-12-18 09:38:33','2020-12-18 09:38:33','product4.jpg'),(56,'/storage/product/7/O7Aq2auEJi9Xgh2mXRPA.jpg',27,'2020-12-18 09:38:33','2020-12-18 09:38:33','product5.jpg'),(61,'/storage/product/11/sm5PHTrkLi9Ngb0e3J2R.png',28,'2021-01-13 06:20:52','2021-01-13 06:20:52','Screenshot (1).png');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,11,5,'2020-12-17 01:23:31','2020-12-17 01:23:31'),(2,11,6,'2020-12-17 01:23:31','2020-12-17 01:23:31'),(3,12,7,'2020-12-17 01:27:36','2020-12-17 01:27:36'),(4,12,8,'2020-12-17 01:27:36','2020-12-17 01:27:36'),(5,13,9,'2020-12-17 01:46:28','2020-12-17 01:46:28'),(6,13,10,'2020-12-17 01:46:28','2020-12-17 01:46:28'),(7,14,11,'2020-12-17 01:50:48','2020-12-17 01:50:48'),(8,14,12,'2020-12-17 01:50:48','2020-12-17 01:50:48'),(9,15,13,'2020-12-17 02:05:42','2020-12-17 02:05:42'),(10,15,7,'2020-12-17 02:05:42','2020-12-17 02:05:42'),(11,17,14,'2020-12-17 02:47:43','2020-12-17 02:47:43'),(12,18,15,'2020-12-17 02:48:43','2020-12-17 02:48:43'),(13,19,16,'2020-12-17 07:31:03','2020-12-17 07:31:03'),(14,20,17,'2020-12-17 15:54:35','2020-12-17 15:54:35'),(15,21,18,'2020-12-17 21:28:55','2020-12-17 21:28:55'),(16,22,19,'2020-12-17 22:18:31','2020-12-17 22:18:31'),(17,23,20,'2020-12-18 06:31:20','2020-12-18 06:31:20'),(18,23,21,'2020-12-18 06:31:20','2020-12-18 06:31:20'),(19,24,22,'2020-12-18 06:34:28','2020-12-18 06:34:28'),(20,24,23,'2020-12-18 06:34:28','2020-12-18 06:34:28'),(21,24,24,'2020-12-18 06:34:28','2020-12-18 06:34:28'),(22,25,25,'2020-12-18 06:36:17','2020-12-18 06:36:17'),(23,25,23,'2020-12-18 06:36:17','2020-12-18 06:36:17'),(24,26,26,'2020-12-18 06:38:48','2020-12-18 06:38:48'),(25,26,27,'2020-12-18 06:38:48','2020-12-18 06:38:48'),(26,26,24,'2020-12-18 06:38:48','2020-12-18 06:38:48'),(27,27,28,'2020-12-18 09:38:33','2020-12-18 09:38:33'),(28,27,23,'2020-12-18 09:38:33','2020-12-18 09:38:33'),(29,28,29,'2020-12-18 19:31:11','2020-12-18 19:31:11'),(30,28,30,'2020-12-18 19:31:11','2020-12-18 19:31:11');
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (23,'Asus fx503vd','27000000','/storage/product/7/FCEl8NQI3lsrZQ16fcJf.jpg','<p>M&aacute;y t&iacute;nh gaming</p>',7,12,'2020-12-18 06:31:20','2020-12-18 06:31:40','product1.jpg',NULL,0),(24,'Airpods Pro','12000000','/storage/product/7/zW0JdTJHrxDzcQ2ZvnKZ.jpg','<ul>\r\n<li>AirPods mới sẽ c&oacute; t&ecirc;n l&agrave;&nbsp;<a href=\"https://img.mac8.vn/product-tag/airpods-pro\">Airpods Pro</a></li>\r\n<li>Tai kiểu in-ear với ven điều &aacute;p</li>\r\n<li>Thiết kế mới (một m&agrave;u trắng)</li>\r\n</ul>',7,16,'2020-12-18 06:34:28','2020-12-18 06:34:28','product8.jpg',NULL,0),(25,'Iphone 12 pro max','45000000','/storage/product/7/D6cbteDaDvs5t3wbtPTI.jpg','<p>cấu h&igrave;nh mạnh hơn, camera được n&acirc;ng cấp v&agrave; b&agrave;n ph&iacute;m Magic Keyboard được t&iacute;ch hợp.</p>',7,13,'2020-12-18 06:36:17','2020-12-18 09:40:10','product13.jpg',NULL,0),(26,'Loa LG g430hz','4000000','/storage/product/7/q8klRvpVqN0aMKlwMqfz.jpg','<p>Loa bluetooth mang lại trải nghiệm tốt cho người d&ugrave;ng</p>',7,15,'2020-12-18 06:38:48','2020-12-18 09:39:58','product6.jpg',NULL,0),(27,'Apple Watch Series 4','1000000','/storage/product/7/OmDgEPXTM8djIlydWpbV.jpg','<p>Thời trang giới trẻ</p>',7,14,'2020-12-18 09:38:33','2020-12-18 09:38:33','product4.jpg',NULL,0),(28,'đồng hồ đeo tay','500000','/storage/product/11/XkLCUP6bussFCLjf4GQX.png','<p>mang lại trải nghiệm tốt nhất cho người d&ugrave;ng <img src=\"http://localhost:8000//storage/photos/7/product5.jpg\" alt=\"dong ho\" /></p>',11,14,'2020-12-18 19:31:11','2021-01-13 06:19:30','Screenshot (1).png',NULL,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,3,1,NULL,NULL),(2,4,1,NULL,NULL),(3,5,2,NULL,NULL),(4,6,1,NULL,NULL),(5,7,1,NULL,NULL),(7,8,2,NULL,NULL),(8,9,2,NULL,NULL),(9,10,1,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Quản trị hệ thống',NULL,NULL),(2,'guest','Khách hàng',NULL,NULL),(3,'developer','Phát triển hệ thống',NULL,NULL),(4,'content','Chỉnh sửa nội dung',NULL,NULL),(5,'Editer1','Soạn thảo văn bản','2020-12-17 12:37:54','2020-12-17 12:44:23');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (14,'GIAO HÀNG TẬN NHÀ','Mua sắm thả ga','/storage/slider/7/g5qc3QDHa8FyN32u05L1.png','slider1.png','2020-12-18 04:59:06','2020-12-18 04:59:06',NULL),(15,'Iphone 12 mini 64g','Nhiều ưu đãi lớn','/storage/slider/7/LHg8Jol05lmtmLM31YLx.png','slider2.png','2020-12-18 05:09:55','2020-12-18 05:09:55',NULL),(16,'Đồng hồ thông minh Apple Watch Series 5','Mang đến trải nghiệm tốt nhất cho người dùng','/storage/slider/7/XZY81J4dpwnodF823XqV.jpg','Slider3.jpg','2020-12-18 05:14:25','2020-12-18 05:14:25',NULL),(17,'đồng hồ thông minh','trai nghiệm người dùng','/storage/slider/7/NXye6q6wrbX3t8aDCzxQ.jpg','product3.jpg','2020-12-18 19:24:12','2020-12-18 19:24:12',NULL);
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'123','2020-12-17 01:18:52','2020-12-17 01:18:52'),(2,'312','2020-12-17 01:18:52','2020-12-17 01:18:52'),(3,'23123','2020-12-17 01:20:28','2020-12-17 01:20:28'),(4,'23423','2020-12-17 01:20:28','2020-12-17 01:20:28'),(5,'32423','2020-12-17 01:21:31','2020-12-17 01:21:31'),(6,'4234','2020-12-17 01:21:31','2020-12-17 01:21:31'),(7,'342','2020-12-17 01:27:36','2020-12-17 01:27:36'),(8,'5645','2020-12-17 01:27:36','2020-12-17 01:27:36'),(9,'321321','2020-12-17 01:46:28','2020-12-17 01:46:28'),(10,'231','2020-12-17 01:46:28','2020-12-17 01:46:28'),(11,'213','2020-12-17 01:50:48','2020-12-17 01:50:48'),(12,'34543','2020-12-17 01:50:48','2020-12-17 01:50:48'),(13,'321','2020-12-17 02:05:42','2020-12-17 02:05:42'),(14,'434','2020-12-17 02:47:43','2020-12-17 02:47:43'),(15,'wqeqw','2020-12-17 02:48:43','2020-12-17 02:48:43'),(16,'32423423','2020-12-17 07:31:03','2020-12-17 07:31:03'),(17,'213123','2020-12-17 15:54:35','2020-12-17 15:54:35'),(18,'43','2020-12-17 21:28:55','2020-12-17 21:28:55'),(19,'2131231','2020-12-17 22:18:31','2020-12-17 22:18:31'),(20,'máy tính','2020-12-18 06:31:20','2020-12-18 06:31:20'),(21,'asus','2020-12-18 06:31:20','2020-12-18 06:31:20'),(22,'tai nghe','2020-12-18 06:34:28','2020-12-18 06:34:28'),(23,'apple','2020-12-18 06:34:28','2020-12-18 06:34:28'),(24,'bluetooth','2020-12-18 06:34:28','2020-12-18 06:34:28'),(25,'iphone','2020-12-18 06:36:17','2020-12-18 06:36:17'),(26,'LG','2020-12-18 06:38:48','2020-12-18 06:38:48'),(27,'Loa','2020-12-18 06:38:48','2020-12-18 06:38:48'),(28,'đồng hồ','2020-12-18 09:38:33','2020-12-18 09:38:33'),(29,'dong ho','2020-12-18 19:31:11','2020-12-18 19:31:11'),(30,'deo tay','2020-12-18 19:31:11','2020-12-18 19:31:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'Admin','trantrongvinh13122000@gmail.com',NULL,'$2y$10$d4j.tZf.VG0kX.ojwZL0fOXIqTOdMcFqNfYNtFexXc8ZIkxJKSolK',NULL,'2020-12-17 15:25:41','2020-12-17 15:25:41',NULL),(10,'Phan Dương Hưng','duonghung1272000@gmail.com',NULL,'$2y$10$RwiLKot0DcGVh69ewQ09mO3sEcyAL2jdEQsp3g3nfRiZ3N8I3bE/2',NULL,'2020-12-18 18:34:36','2020-12-18 18:34:36',NULL),(11,'admin','admin@gmail.com',NULL,'$2y$12$zYeE7n6BhFE1QQb8.fTPCOZM3jdFU6md3YEW6/umffCfaTmNqsKcu',NULL,'2020-12-18 18:34:36','2020-12-18 18:34:36',NULL);
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

-- Dump completed on 2021-01-15 20:56:36
