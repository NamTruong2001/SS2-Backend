CREATE DATABASE  IF NOT EXISTS `cosmetic_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cosmetic_ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cosmetic_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('1xdii4vkG0','Sữa Rửa Mặt'),('8olHRA6VtL','Chăm sóc da mật'),('9baOQdhkDG','Nước Tẩy Trang'),('9Qpehd6JAH','Son môi'),('BIhVbxbOc4','Serum'),('JRHfjyi7B9','Kem Chống Nắng'),('ncE3FRIUQk','Nước Hoa'),('RBgtBciusR','Mặt nạ'),('v6J2HUIr15','Chăm sóc tóc'),('xMGgXMuWmo','Kem Dưỡng');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_and_rate`
--

DROP TABLE IF EXISTS `comment_and_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_and_rate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `score` int NOT NULL,
  `text` longtext,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfngdb1r70d9he1v7vk4mvkgg3` (`product_id`),
  KEY `FK9ku3hp64bv1fc7mxxgc4t3osm` (`user_id`),
  CONSTRAINT `FK9ku3hp64bv1fc7mxxgc4t3osm` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKfngdb1r70d9he1v7vk4mvkgg3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_and_rate`
--

LOCK TABLES `comment_and_rate` WRITE;
/*!40000 ALTER TABLE `comment_and_rate` DISABLE KEYS */;
INSERT INTO `comment_and_rate` VALUES (1,'2023-04-07 09:14:02',4,'Sản phẩm quá tuyệt vời, 100 điểm','Al2fwjVbcv','S8qZgnGJUW'),(2,'2023-04-07 17:23:57',3,'Sản phẩm đẹp nhưng hơi mùi','Al2fwjVbcv','S8qZgnGJUW'),(3,'2023-04-07 17:24:27',1,'Lừa đảo vcl','Al2fwjVbcv',NULL),(4,'2023-04-09 21:56:18',4,'cũng được','Al2fwjVbcv',NULL);
/*!40000 ALTER TABLE `comment_and_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_and_rate_comment_image`
--

DROP TABLE IF EXISTS `comment_and_rate_comment_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_and_rate_comment_image` (
  `comment_and_rate_id` bigint NOT NULL,
  `comment_image_id` bigint NOT NULL,
  UNIQUE KEY `UK_6s0u9a5j5c6a3a3l53dd7sfoe` (`comment_image_id`),
  KEY `FKhk2cveglxd0d377sd7vmwyiaj` (`comment_and_rate_id`),
  CONSTRAINT `FKhk2cveglxd0d377sd7vmwyiaj` FOREIGN KEY (`comment_and_rate_id`) REFERENCES `comment_and_rate` (`id`),
  CONSTRAINT `FKr3ottyp7lhbhkwtwk5g759i9p` FOREIGN KEY (`comment_image_id`) REFERENCES `comment_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_and_rate_comment_image`
--

LOCK TABLES `comment_and_rate_comment_image` WRITE;
/*!40000 ALTER TABLE `comment_and_rate_comment_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_and_rate_comment_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_image`
--

DROP TABLE IF EXISTS `comment_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_image`
--

LOCK TABLES `comment_image` WRITE;
/*!40000 ALTER TABLE `comment_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `code` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('2VHhXj3WY0','2023-03-02 22:44:20','Giảm giá',10,'2023-03-05 05:04:01','2023-03-01 22:04:01'),('KQBoLBEt3M','2023-03-10 10:05:58','Giảm giá',40,'2023-09-12 22:04:01','2023-03-09 22:04:01'),('msWgBEHXPM','2023-04-30 20:59:49','Giảm giá cho 1 số mặt hàng mới nổi gần đây',10,'2023-05-30 22:04:01','2023-03-01 22:04:01'),('new1','2023-03-02 16:46:25','Gỉam giá cho nước hoa',20,'2023-03-16 04:46:57','2023-03-02 16:47:07'),('t2cKL9vr10','2023-03-27 10:10:45','Giảm giá',28,'2023-04-24 22:04:01','2023-03-01 22:04:01'),('test2','2023-03-02 23:34:00','Ko query',34,'2023-08-26 00:12:18','2023-03-01 20:34:31'),('xGXPQmveEn','2023-03-05 09:08:42','Giảm giá',20,'2023-03-11 22:04:01','2023-03-01 22:04:01'),('Z3Ec5duEe9','2023-03-13 15:22:01','Giảm giá cho 1 vài sản phẩm mặt nạ',30,'2023-08-31 00:00:00','2023-03-12 00:00:00');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_product`
--

DROP TABLE IF EXISTS `discount_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount_price` double DEFAULT NULL,
  `discount_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8lyd9d1knia589wshuokcqwnk` (`discount_id`),
  KEY `FKqib4d981go7tr8dpdp0hg0bf5` (`product_id`),
  CONSTRAINT `FK8lyd9d1knia589wshuokcqwnk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`code`),
  CONSTRAINT `FKqib4d981go7tr8dpdp0hg0bf5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_product`
--

LOCK TABLES `discount_product` WRITE;
/*!40000 ALTER TABLE `discount_product` DISABLE KEYS */;
INSERT INTO `discount_product` VALUES (1,40000,'new1','B9dpNp9HN5'),(2,234000,'2VHhXj3WY0','dsfsdffd'),(6,360000,'xGXPQmveEn',NULL),(7,156000,'KQBoLBEt3M','dsfsdffd'),(8,12000,'KQBoLBEt3M','sdfsdfsdf'),(9,910000,'Z3Ec5duEe9','FUBsefe43'),(10,188300,'Z3Ec5duEe9','NhDvPJvkRC'),(12,84000,'Z3Ec5duEe9','newsdsd'),(14,14000,'Z3Ec5duEe9','sdfsdfsdf'),(15,496080,'t2cKL9vr10','K8BLdrr58I'),(16,419400,'KQBoLBEt3M','9jf3u6i0bm'),(17,413400,'KQBoLBEt3M','K8BLdrr58I'),(18,85800,'KQBoLBEt3M','zoiuv8krdt'),(19,413100,'msWgBEHXPM','xIRCvIkIPw'),(20,240300,'msWgBEHXPM','Xp5jCMsVLe');
/*!40000 ALTER TABLE `discount_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_money` double NOT NULL,
  `wards` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5ds52cnxjw9c99ovccne0axk0` (`user_id`),
  CONSTRAINT `FK5ds52cnxjw9c99ovccne0axk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('2h4Ka17v8Y','124 Hoàn Kiếm','2023-04-21 10:06:35',NULL,'0987143522',NULL,'PENDING',7859900,NULL,'S8qZgnGJUW'),('3RNbYnQ1Sk','124 Hoàn Kiếm','2023-04-20 22:46:54',NULL,'0987143522',NULL,'DELIVERING',359900,NULL,'S8qZgnGJUW'),('4ITbIVFNjT','Số 3 ngõ 12 Nặc','2023-04-24 15:25:30','Quận Hoàn Kiếm','0976554321','Thành phố Hà Nội','PENDING',2787780,'Phường Hàng Mã','S8qZgnGJUW'),('5KAMYHSMyQ','312 Kim Giang','2023-04-22 18:45:37',NULL,'0987654321',NULL,'CANCEL',7500000,NULL,'S8qZgnGJUW'),('6icvl6AOGa','Trường','2023-04-22 18:42:23',NULL,'0987137433',NULL,'PENDING',2774540,NULL,'S8qZgnGJUW'),('9G9jpyEBUj','Ngách 14 Thượng Láng','2023-04-24 14:26:10','Huyện Chiêm Hóa','0976543321','Tỉnh Tuyên Quang','PENDING',2820620,'Xã Hà Lang','S8qZgnGJUW'),('9GoclfQGDa','Mỹ Đình pearl','2023-04-25 21:57:25','Thị xã Phú Thọ','0365000282','Tỉnh Phú Thọ','PENDING',832800,'Phường Phong Châu','GmL1YVZ188'),('bq6PRzvpWw','324 T','2023-04-22 09:19:00',NULL,'097623443',NULL,'PENDING',580080,NULL,'S8qZgnGJUW'),('Bqi008PmHj','312 Kim Giang, Hoang Mai','2023-04-20 21:16:39',NULL,'0987143522',NULL,'CANCEL',2669760,NULL,'S8qZgnGJUW'),('DtxSzeteaq','333 Thanh Mai','2023-04-29 00:55:30','Huyện Yên Minh','0987654321','Tỉnh Hà Giang','PENDING',4559200,'Xã Sủng Tráng','S8qZgnGJUW'),('fbPrvw3kVL','','2023-04-24 09:42:07',NULL,'',NULL,'CANCEL',2820620,NULL,'S8qZgnGJUW'),('FnRBimsKnj','124 Hoàn Kiếm','2023-04-20 22:41:20',NULL,'0987143522',NULL,'COMPLETE',760300,NULL,'S8qZgnGJUW'),('IKiwi7YZdX','','2023-04-24 14:20:26','Huyện Bảo Lạc','','Huyện Bảo Lạc','PENDING',2820620,'Xã Bảo Toàn','S8qZgnGJUW'),('jbpuID4hNi','Ngách 14 Thượng Láng','2023-04-24 14:27:43','Huyện Chiêm Hóa','0976543321','Tỉnh Tuyên Quang','PENDING',2820620,'Xã Hà Lang','S8qZgnGJUW'),('kRIjyfij06','0987654321','2023-04-22 18:40:07',NULL,'0987654321',NULL,'PENDING',2774540,NULL,'S8qZgnGJUW'),('lKG9VFQBKT','111 Tôn Thất thuyết','2023-04-30 21:21:29','Quận Tây Hồ','0987776543','Thành phố Hà Nội','PENDING',3557000,'Phường Quảng An','S8qZgnGJUW'),('MA5HldvK8h','312 Tôn Thất Thuyết','2023-04-22 18:37:05',NULL,'0986543321',NULL,'PENDING',2774540,NULL,'S8qZgnGJUW'),('O2QINqWl6v','333 Nan','2023-04-24 15:00:29','Huyện Yên Sơn','098543221','Tỉnh Tuyên Quang','CANCEL',2820620,'Xã Trung Minh','S8qZgnGJUW'),('ogXM03GSj5',NULL,'2023-03-20 14:42:08',NULL,NULL,NULL,'COMPLETE',593000,NULL,'S8qZgnGJUW'),('OOQdPkNJHU','312 Kim Guiang','2023-04-22 18:38:24',NULL,'0985664443',NULL,'PENDING',2774540,NULL,'S8qZgnGJUW'),('pHIM5dpi7p','Ngách 14 Thượng Láng','2023-04-24 14:21:23','Huyện Chiêm Hóa','0976543321','Huyện Chiêm Hóa','PENDING',2820620,'Xã Hà Lang','S8qZgnGJUW'),('pMisRqf2jC',NULL,'2023-03-11 19:31:16',NULL,NULL,NULL,'COMPLETE',340000,NULL,'S8qZgnGJUW'),('pYqeawtclV','333 Thanh Đô','2023-04-25 13:19:39','Quận Hoàn Kiếm','0987654321','Thành phố Hà Nội','PENDING',583200,'Phường Hàng Buồm','S8qZgnGJUW'),('q49ZzRP6ws','Thanh Mai 123','2023-04-29 01:02:30','Huyện Mèo Vạc','0987654321','Tỉnh Hà Giang','PENDING',3121100,'Xã Pả Vi','bw70cL4bzo'),('qpL0TK6eCe',NULL,'2023-03-11 19:31:20',NULL,NULL,NULL,'CANCEL',828000,NULL,'bw70cL4bzo'),('qWPdxpPlRS','Ngách 14 Thượng Láng','2023-04-24 14:28:30','Huyện Chiêm Hóa','0976543321','Tỉnh Tuyên Quang','PENDING',2820620,'Xã Hà Lang','S8qZgnGJUW'),('rJqNx6kpJt','124 Hoàn Kiếm','2023-04-21 10:06:48',NULL,'0987143522',NULL,'PENDING',7500000,NULL,'S8qZgnGJUW'),('UhHeUtNxvn',NULL,'2023-03-13 15:37:52',NULL,NULL,NULL,'PENDING',1513500,NULL,'bw70cL4bzo'),('Vnnmbclpeu',NULL,'2023-03-20 10:40:18',NULL,NULL,NULL,'COMPLETE',1475000,NULL,'S8qZgnGJUW'),('vrJkrbMiUl','Bô 12','2023-04-24 15:36:19','Huyện Đồng Văn','0987776432','Tỉnh Hà Giang','PENDING',1365480,'Xã Lũng Táo','S8qZgnGJUW'),('x7Ml8AWbNc',NULL,'2023-02-03 19:31:22',NULL,NULL,NULL,'CANCEL',2780000,NULL,'S8qZgnGJUW'),('Xxph7C7sCn',NULL,'2023-03-20 11:17:20',NULL,NULL,NULL,'COMPLETE',1475000,NULL,'S8qZgnGJUW'),('Yaloz0nSVw','312 Kim Giang, Hoang Mai','2023-04-20 22:15:54',NULL,'0987143522',NULL,'CANCEL',2858060,NULL,'S8qZgnGJUW'),('yXPTgylYi8','Mỹ Đình pearl','2023-04-25 21:48:40','Huyện Yên Minh','0365000282','Tỉnh Hà Giang','PENDING',2001000,'Xã Mậu Duệ','S8qZgnGJUW');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `discount_product_id` bigint DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl3hhqd87bd21vm6racvxshxlv` (`discount_product_id`),
  KEY `FKkkl8lqaxofq5cr97y5q9n6b0i` (`order_id`),
  KEY `FKj1gw0pqsdwms2nko96l26h0hv` (`product_id`),
  CONSTRAINT `FKj1gw0pqsdwms2nko96l26h0hv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKkkl8lqaxofq5cr97y5q9n6b0i` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FKl3hhqd87bd21vm6racvxshxlv` FOREIGN KEY (`discount_product_id`) REFERENCES `discount_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (10,4,NULL,'x7Ml8AWbNc','Al2fwjVbcv'),(11,1,NULL,'x7Ml8AWbNc','dsfsdffd'),(13,4,NULL,'pMisRqf2jC','sdfsdfsdf'),(14,1,NULL,'pMisRqf2jC','dsfsdffd'),(15,4,8,'qpL0TK6eCe','sdfsdfsdf'),(17,4,NULL,'UhHeUtNxvn','zoiuv8krdt'),(18,5,10,'UhHeUtNxvn','NhDvPJvkRC'),(19,2,NULL,'Vnnmbclpeu','ObKzjdfXhZ'),(20,1,NULL,'Vnnmbclpeu','Al2fwjVbcv'),(21,2,NULL,'Xxph7C7sCn','ObKzjdfXhZ'),(22,1,NULL,'Xxph7C7sCn','Al2fwjVbcv'),(23,1,NULL,'ogXM03GSj5','zoiuv8krdt'),(24,1,NULL,'ogXM03GSj5','CdBlInu3d4'),(25,4,16,'Bqi008PmHj','9jf3u6i0bm'),(26,2,15,'Bqi008PmHj','K8BLdrr58I'),(27,4,16,'Yaloz0nSVw','9jf3u6i0bm'),(28,2,15,'Yaloz0nSVw','K8BLdrr58I'),(29,1,10,'Yaloz0nSVw','NhDvPJvkRC'),(30,4,NULL,'FnRBimsKnj','zoiuv8krdt'),(31,1,10,'FnRBimsKnj','NhDvPJvkRC'),(32,2,18,'3RNbYnQ1Sk','zoiuv8krdt'),(33,1,10,'3RNbYnQ1Sk','NhDvPJvkRC'),(34,2,18,'2h4Ka17v8Y','zoiuv8krdt'),(35,1,10,'2h4Ka17v8Y','NhDvPJvkRC'),(36,15,NULL,'2h4Ka17v8Y','B9dpNp9HN5'),(37,15,NULL,'rJqNx6kpJt','B9dpNp9HN5'),(38,1,15,'bq6PRzvpWw','K8BLdrr58I'),(39,1,12,'bq6PRzvpWw','newsdsd'),(40,3,15,'MA5HldvK8h','K8BLdrr58I'),(41,1,NULL,'MA5HldvK8h','CdBlInu3d4'),(42,2,NULL,'MA5HldvK8h','afcmXiVUWT'),(43,1,10,'MA5HldvK8h','NhDvPJvkRC'),(44,3,15,'OOQdPkNJHU','K8BLdrr58I'),(45,1,NULL,'OOQdPkNJHU','CdBlInu3d4'),(46,2,NULL,'OOQdPkNJHU','afcmXiVUWT'),(47,1,10,'OOQdPkNJHU','NhDvPJvkRC'),(48,3,15,'kRIjyfij06','K8BLdrr58I'),(49,1,NULL,'kRIjyfij06','CdBlInu3d4'),(50,2,NULL,'kRIjyfij06','afcmXiVUWT'),(51,1,10,'kRIjyfij06','NhDvPJvkRC'),(52,3,15,'6icvl6AOGa','K8BLdrr58I'),(53,1,NULL,'6icvl6AOGa','CdBlInu3d4'),(54,2,NULL,'6icvl6AOGa','afcmXiVUWT'),(55,1,10,'6icvl6AOGa','NhDvPJvkRC'),(56,15,NULL,'5KAMYHSMyQ','B9dpNp9HN5'),(57,4,15,'fbPrvw3kVL','K8BLdrr58I'),(58,2,NULL,'fbPrvw3kVL','afcmXiVUWT'),(59,1,10,'fbPrvw3kVL','NhDvPJvkRC'),(69,4,15,'IKiwi7YZdX','K8BLdrr58I'),(70,2,NULL,'IKiwi7YZdX','afcmXiVUWT'),(71,1,10,'IKiwi7YZdX','NhDvPJvkRC'),(72,4,15,'pHIM5dpi7p','K8BLdrr58I'),(73,2,NULL,'pHIM5dpi7p','afcmXiVUWT'),(74,1,10,'pHIM5dpi7p','NhDvPJvkRC'),(75,4,15,'9G9jpyEBUj','K8BLdrr58I'),(76,2,NULL,'9G9jpyEBUj','afcmXiVUWT'),(77,1,10,'9G9jpyEBUj','NhDvPJvkRC'),(78,4,15,'jbpuID4hNi','K8BLdrr58I'),(79,2,NULL,'jbpuID4hNi','afcmXiVUWT'),(80,1,10,'jbpuID4hNi','NhDvPJvkRC'),(81,4,15,'qWPdxpPlRS','K8BLdrr58I'),(82,2,NULL,'qWPdxpPlRS','afcmXiVUWT'),(83,1,10,'qWPdxpPlRS','NhDvPJvkRC'),(84,4,15,'O2QINqWl6v','K8BLdrr58I'),(85,2,NULL,'O2QINqWl6v','afcmXiVUWT'),(86,1,10,'O2QINqWl6v','NhDvPJvkRC'),(87,1,15,'4ITbIVFNjT','K8BLdrr58I'),(88,1,NULL,'4ITbIVFNjT','afcmXiVUWT'),(89,1,10,'4ITbIVFNjT','NhDvPJvkRC'),(90,1,16,'4ITbIVFNjT','9jf3u6i0bm'),(91,1,NULL,'4ITbIVFNjT','CdBlInu3d4'),(92,1,9,'4ITbIVFNjT','FUBsefe43'),(93,1,16,'vrJkrbMiUl','9jf3u6i0bm'),(94,1,15,'vrJkrbMiUl','K8BLdrr58I'),(95,1,NULL,'vrJkrbMiUl','CdBlInu3d4'),(96,1,17,'pYqeawtclV','K8BLdrr58I'),(97,1,12,'pYqeawtclV','newsdsd'),(98,1,18,'pYqeawtclV','zoiuv8krdt'),(99,3,12,'yXPTgylYi8','newsdsd'),(100,4,10,'yXPTgylYi8','NhDvPJvkRC'),(101,1,18,'yXPTgylYi8','zoiuv8krdt'),(102,1,9,'yXPTgylYi8','FUBsefe43'),(103,1,16,'9GoclfQGDa','9jf3u6i0bm'),(104,1,17,'9GoclfQGDa','K8BLdrr58I'),(105,4,16,'DtxSzeteaq','9jf3u6i0bm'),(106,4,17,'DtxSzeteaq','K8BLdrr58I'),(107,5,8,'DtxSzeteaq','sdfsdfsdf'),(108,3,7,'DtxSzeteaq','dsfsdffd'),(109,1,NULL,'DtxSzeteaq','ObKzjdfXhZ'),(110,1,17,'q49ZzRP6ws','K8BLdrr58I'),(111,1,16,'q49ZzRP6ws','9jf3u6i0bm'),(112,1,10,'q49ZzRP6ws','NhDvPJvkRC'),(113,6,NULL,'q49ZzRP6ws','afcmXiVUWT'),(114,1,7,'q49ZzRP6ws','dsfsdffd'),(115,1,19,'lKG9VFQBKT','xIRCvIkIPw'),(116,3,20,'lKG9VFQBKT','Xp5jCMsVLe'),(117,3,NULL,'lKG9VFQBKT','eWHhzSPZn4'),(118,1,NULL,'lKG9VFQBKT','4IZ7OT7jTT'),(119,1,NULL,'lKG9VFQBKT','wv5i1EpuKs'),(120,3,NULL,'lKG9VFQBKT','kNKLovjTHf');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `history_order_status` varchar(255) DEFAULT NULL,
  `info` longtext,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmw2gg8j92gm7ntsg2a5ncarmw` (`order_id`),
  KEY `FKoe13fmmb80s5wr65m22qa325i` (`user_id`),
  CONSTRAINT `FKmw2gg8j92gm7ntsg2a5ncarmw` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FKoe13fmmb80s5wr65m22qa325i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (3,'2023-03-20 10:40:18','PENDING','Nguời dùng đặt hàng thành công','Vnnmbclpeu','S8qZgnGJUW'),(5,'2023-03-20 10:51:38','DELIVERING','Đơn hàng đang được vận chuyển bởi đơn vị FastNinja','x7Ml8AWbNc','xcsFASDs'),(6,'2023-03-20 11:17:20','PENDING','Nguời dùng đặt hàng thành công','Xxph7C7sCn','S8qZgnGJUW'),(9,'2023-03-20 14:42:08','PENDING','Nguời dùng đặt hàng thành công','ogXM03GSj5','S8qZgnGJUW'),(10,'2023-03-20 14:43:14','COMPLETE','Order đã đc hoàn thành','ogXM03GSj5','xcsFASDs'),(11,'2023-03-20 14:43:39','COMPLETE','Order đã đc hoàn thành','Xxph7C7sCn','xcsFASDs'),(12,'2023-03-20 14:43:52','COMPLETE','Order đã đc hoàn thành','Vnnmbclpeu','xcsFASDs'),(13,'2023-03-21 21:06:08','COMPLETE','Order đã được gửi đến địa chỉ','x7Ml8AWbNc','S8qZgnGJUW'),(14,'2023-04-20 21:16:39','PENDING','Nguời dùng đặt hàng thành công','Bqi008PmHj','S8qZgnGJUW'),(16,'2023-04-20 22:15:54','PENDING','Nguời dùng đặt hàng thành công','Yaloz0nSVw','S8qZgnGJUW'),(20,'2023-04-20 22:33:41','CANCEL','Tao thích','Bqi008PmHj','S8qZgnGJUW'),(21,'2023-04-20 22:41:20','PENDING','Nguời dùng đặt hàng thành công','FnRBimsKnj','S8qZgnGJUW'),(22,'2023-04-20 22:44:49','DELIVERING','Đơn hàng đang được vận chuyển bởi đơn vị SLow','FnRBimsKnj','xcsFASDs'),(23,'2023-04-20 22:46:54','PENDING','Nguời dùng đặt hàng thành công','3RNbYnQ1Sk','S8qZgnGJUW'),(24,'2023-04-21 10:06:35','PENDING','Nguời dùng đặt hàng thành công','2h4Ka17v8Y','S8qZgnGJUW'),(25,'2023-04-21 10:06:48','PENDING','Nguời dùng đặt hàng thành công','rJqNx6kpJt','S8qZgnGJUW'),(26,'2023-04-21 10:30:05','CANCEL','Test huy don hang backend ma van giu nguyen trang','x7Ml8AWbNc','S8qZgnGJUW'),(27,'2023-04-21 11:59:17','COMPLETE','Đơn hàng đã được hoàn thành','FnRBimsKnj','xcsFASDs'),(28,'2023-04-21 12:00:17','DELIVERING','Đơn hàng đang được vận chuyển bởi đơn vị NinjaTurtle','3RNbYnQ1Sk','xcsFASDs'),(29,'2023-04-22 09:19:00','PENDING','Nguời dùng đặt hàng thành công','bq6PRzvpWw','S8qZgnGJUW'),(30,'2023-04-22 18:37:05','PENDING','Nguời dùng đặt hàng thành công','MA5HldvK8h','S8qZgnGJUW'),(31,'2023-04-22 18:38:24','PENDING','Nguời dùng đặt hàng thành công','OOQdPkNJHU','S8qZgnGJUW'),(32,'2023-04-22 18:40:07','PENDING','Nguời dùng đặt hàng thành công','kRIjyfij06','S8qZgnGJUW'),(33,'2023-04-22 18:42:23','PENDING','Nguời dùng đặt hàng thành công','6icvl6AOGa','S8qZgnGJUW'),(34,'2023-04-22 18:45:37','PENDING','Nguời dùng đặt hàng thành công','5KAMYHSMyQ','S8qZgnGJUW'),(35,'2023-04-22 18:59:18','CANCEL','Tao thích','5KAMYHSMyQ','S8qZgnGJUW'),(36,'2023-04-24 09:42:07','PENDING','Nguời dùng đặt hàng thành công','fbPrvw3kVL','S8qZgnGJUW'),(40,'2023-04-24 14:20:26','PENDING','Nguời dùng đặt hàng thành công','IKiwi7YZdX','S8qZgnGJUW'),(41,'2023-04-24 14:21:23','PENDING','Nguời dùng đặt hàng thành công','pHIM5dpi7p','S8qZgnGJUW'),(42,'2023-04-24 14:26:10','PENDING','Nguời dùng đặt hàng thành công','9G9jpyEBUj','S8qZgnGJUW'),(43,'2023-04-24 14:27:43','PENDING','Nguời dùng đặt hàng thành công','jbpuID4hNi','S8qZgnGJUW'),(44,'2023-04-24 14:28:30','PENDING','Nguời dùng đặt hàng thành công','qWPdxpPlRS','S8qZgnGJUW'),(45,'2023-04-24 15:00:29','PENDING','Nguời dùng đặt hàng thành công','O2QINqWl6v','S8qZgnGJUW'),(46,'2023-04-24 15:25:30','PENDING','Nguời dùng đặt hàng thành công','4ITbIVFNjT','S8qZgnGJUW'),(48,'2023-04-24 15:36:19','PENDING','Nguời dùng đặt hàng thành công','vrJkrbMiUl','S8qZgnGJUW'),(49,'2023-04-25 13:19:39','PENDING','Nguời dùng đặt hàng thành công','pYqeawtclV','S8qZgnGJUW'),(50,'2023-04-25 13:42:55','CANCEL','Tao cứ thích','O2QINqWl6v','S8qZgnGJUW'),(51,'2023-04-25 13:43:16','CANCEL','Tao thích again','Yaloz0nSVw','S8qZgnGJUW'),(52,'2023-04-25 21:48:40','PENDING','Nguời dùng đặt hàng thành công','yXPTgylYi8','S8qZgnGJUW'),(53,'2023-04-25 21:57:25','PENDING','Nguời dùng đặt hàng thành công','9GoclfQGDa','GmL1YVZ188'),(54,'2023-04-29 00:55:30','PENDING','Nguời dùng đặt hàng thành công','DtxSzeteaq','S8qZgnGJUW'),(55,'2023-04-29 01:02:30','PENDING','Nguời dùng đặt hàng thành công','q49ZzRP6ws','bw70cL4bzo'),(56,'2023-04-30 17:52:45','CANCEL','Tôi không thích','fbPrvw3kVL','S8qZgnGJUW'),(57,'2023-04-30 21:21:29','PENDING','Nguời dùng đặt hàng thành công','lKG9VFQBKT','S8qZgnGJUW');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7l29ekt1x29jup80y2iigimyy` (`category_id`),
  CONSTRAINT `FK7l29ekt1x29jup80y2iigimyy` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('0o9wgtoixV','2023-04-30 00:02:55','Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.','Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới)\nGentle Skin Cleanser (New)',329000,100,'1xdii4vkG0'),('4IZ7OT7jTT','2023-04-30 00:11:00','Sữa Rửa Mặt Simple Refreshing Facial Wash là sản phẩm sữa rửa mặt dạng gel dành cho mọi loại da nổi tiếng của thương hiệu mỹ phẩm Simple. Với công thức dịu nhẹ không chứa xà phòng cùng thành phần Pro-Vitamin B5 và Vitamin E, sản phẩm giúp làm sạch da hiệu quả, cuốn đi chất nhờn, bụi bẩn và các tạp chất khác mà không gây kích ứng, cho da mềm mịn, đồng thời mang lại cảm giác tươi mát và sạch thoáng cho da.','Sữa Rửa Mặt Simple Giúp Da Sạch Thoáng 150ml\nKind To Skin Refreshing Facial Wash Gel',87000,99,'1xdii4vkG0'),('5R53F9dVgN','2023-04-30 00:03:43','Nước Tẩy Trang L\'Oréal là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu L\'Oreal Paris, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông thoáng, mềm mượt mà không hề khô căng.','Nước Tẩy Trang L\'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml\nMicellar Water 3-in-1 Refreshing Even For Sensitive Skin',159000,100,'9baOQdhkDG'),('9jf3u6i0bm','2023-04-07 10:58:21','If you are not getting any error message, it is possible that the validation is actually passing successfully.\n\nYou can add some logging statements in your code to check if the createComment object is being validated or not. You can add the following code snippet at the beginning of your create method:\n\nless\nCopy code\nimport org.slf4j.Logger;\nimport org.slf4j.LoggerFactory;\n\nprivate static final Logger logger = LoggerFactory.getLogger(CommentController.class);\n\nIf you are still not able to find the issue, you can try disabling the @Valid annotation temporarily and check if you are able to receive the createComment object successfully.','Nước Hoa Le Labo 13 100ml Another Eau de Parfum Unisex',699000,143,'ncE3FRIUQk'),('afcmXiVUWT','2023-03-04 17:06:42','Bộ gội xả có hương thơm đặc trưng của gừng kết hợp với hương Vanilla ấm áp mang đến cảm giác thư giãn sau khi gội. Bên trong dầu gội gừng ngăn rụng tóc Weilaiya là những tép gừng tươi vàng sóng sánh\n\nCác thành phần có trong dầu gội gừng Weilaiya\n\nChiết xuất gừng tươi Vân Nam: Ngăn rụng tóc gấp 3 lần gừng thông thường\nHyaluronic Acid: Hấp thụ nước gấp 1000 lần, giữ nước và dưỡng ẩm cho da\nTocopherol: Chính là Vitamin E, có khả năng chống oxy hóa mạnh, làm chậm quá trình lão hóa của da đầu','Bộ Dầu Gội Xả Chiết Xuất Gừng Weilaiya Ginger Shampoo & Conditioner (tặng set mini Weilaiya)',324000,85,'v6J2HUIr15'),('Aff3I9DxX0','2023-04-30 00:09:32','Tinh chất cấp ẩm cho da nhạy cảm Rich Moist Soothing Serum đến từ thương hiệu mỹ phẩm Dear, Klairs là sản phẩm tinh chất (serum) giúp cung cấp độ ẩm chuyên sâu dành cho tình trạng da khô mất nước, giúp da trở nên căng mọng ngay tức thì, đồng thời hỗ trợ làm dịu mát da, xoa dịu mẩn đỏ và hỗ trợ ngăn ngừa các dấu hiệu lão hóa.','Serum Klairs Cấp Ẩm Cho Da Khô, Nhạy Cảm 80ml\nRich Moist Soothing Serum',276000,100,'BIhVbxbOc4'),('Al2fwjVbcv','2023-03-04 16:55:33','Kem Ủ Tóc Boya Q10 là sản phẩm thuộc thương hiệu BOYA từ công ty Karmart Thái Lan. Tất cả công nghệ và thành phần trong sản phẩm đều được chuyển giao từ Hàn Quốc. Các tiêu chuẩn an toàn quốc tế như GMP hay FDA đều được ứng dụng.\n\nNhắc tới Karmart thì không người dân Thái nào không biết và họ rất ưa chuộng các sản phẩm chăm sóc da, chăm sóc toàn thân và trang điểm của hàng vì tính đa dạng, an toàn và thân thiện với làn da.','Kem Ủ Tóc BOYA Hair Treatment Q10 500gr',75000,14,'v6J2HUIr15'),('B9dpNp9HN5','2023-03-02 16:19:19','Nước Hoa chính hãng chất lượng cao','Nước Hoa Hương Downy',500000,45,'ncE3FRIUQk'),('bhsE3BRena','2023-04-30 00:11:51','Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp là dòng sữa rửa mặt đến từ thương hiệu mỹ phẩm Cosrx của Hàn Quốc, với độ pH lý tưởng 4.5 - 5.5 sản phẩm an toàn và dịu nhẹ trên mọi làn da ngay cả làn da nhạy cảm và da mụn. Gel rửa mặt chứa 0,5% BHA tự nhiên và chiết xuất tràm trà làm sạch sâu lỗ chân lông, hỗ trợ kháng khuẩn, làm sạch mụn đồng thời tẩy da chết nhẹ nhàng.','Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp 150ml\nLow pH Good Morning Gel Cleanser',127000,100,'1xdii4vkG0'),('CdBlInu3d4','2023-03-04 16:57:55','Thời tiết nóng bức của mùa hè ảnh hưởng trực tiếp đến sức khỏe mái tóc\n\nHơn nữa, cột tóc, búi tóc quá nhiều để tìm cảm giác mát mẻ trong mùa nóng cũng chính là nguyên nhân khiến mái tóc kém bồng bềnh.\n\nKem ủ tóc cao cấp Wellmate với thành phần protein, keratin và tinh dầu argan chính là giải pháp chăm sóc mái tóc chắc khỏe và mượt mà.\n\n','Kem Ủ Tóc Cao Cấp Wellmate',450000,3,'v6J2HUIr15'),('dsfsdffd','2023-03-02 22:04:01',' Thương hiệu mỹ phẩm NARUKO đến từ Đài Loan nổi tiếng với các dòng sản phẩm mặt nạ giấy dưỡng da được chiết xuất từ các thành phần thiên nhiên như Tràm Trà, Bạch Ngọc Lan, Ý Dĩ Nhân Đỏ, Hoa Hồng, Hoa Thủy Tiên... giúp dưỡng da chuyên sâu và hỗ trợ cải thiện các vấn đề về da khác nhau.\n\n       Mặt Nạ NARUKO hiện đã có mặt tại Hasaki với các phân loại như sau cho bạn lựa chọn:\n\n       Naruko Raw Job’s Tears Brightening Mask – Ý dĩ nhân đỏ sáng da mới – Mặt nạ se khít lỗ chân lông, sáng da\n\n       Naruko RJT Pore Minimizing and Brightening Mask – Ý dĩ nhân đỏ – Mặt nạ se khít lỗ chân lông\n\n       Naruko Narcissus Repairing Mask – Hoa thủy tiên – Mặt nạ tế bào gốc thực vật DNA phục hồi da\n\n       Naruko Rose and BOTANIC HA Aqua Cubic Hydrating Mask EX – Hoa hồng nhung – Mặt nạ cấp nước\n\n       Naruko Tea Tree Shine Control and Blemish Clear Mask – Trà tràm – Mặt nạ trà tràm kiểm soát dầu và mụn\n\n       Naruko Taiwan Magnolia Brightening and Firming Mask EX – Bạch ngọc lan – Mặt nạ dưỡng sáng và săn chắc da','Hộp 8 Miếng Mặt Nạ Naruko Tràm Trà Kiềm Dầu Giảm Mụn 26ml/M\nTea Tree Shine Control and Blemish Clear Mask',260000,42,'RBgtBciusR'),('eirVpG6qz8','2023-03-02 21:04:29','Mặt Nạ Dưỡng Săn Chắc Da BNBG Vita Genic Jelly Mask 30ml\nMặt nạ được xem như vị cứu tinh đối với làn da bạn. BNBG Vita Genic Jelly Mask chứa dưỡng chất Vitamin dạng gel đậm đặc, hàm lượng lên đến 20.000ppm được chiết xuất từ các trái cây tươi ở hòn đảo Jeju xinh đẹp. Mang đến làn da khỏe mạnh, bóng mượt đầy sức sống, phục hồi độ đàn hồi, ngăn ngừa quá trình lão hóa đồng thời cung cấp đủ ẩm cho da luôn mềm, mịn màng. Khi sử dụng BNBG Vita Genic Jelly Mask, bạn sẽ được trải nghiệm cảm giác thư giãn và sảng khoái.\nBNBG được biết đến là một bệnh viện thẩm mỹ nổi tiếng với đội ngũ bác sĩ có tay nghề hàng đầu tại Hàn Quốc.\n Là bệnh viện ứng dụng các công nghệ hiện đại tại Châu Á để nghiên cứu ra các loại mỹ phẩm chăm sóc da\n cũng như các phương pháp phẫu thuật mới để mang lại vẻ đẹp hoàn thiện cho phụ nữ. Chương trình \n làm đẹp uy tín tại Hàn Quốc \'Get It Beauty\' đã đẩy cơn sốt mặt nạ jelly này lên đỉnh điểm khi\n có một chị da đẹp thật đẹp, căng mọng đã cho biết sử dụng mặt nạ này.','Mặt nạ dưỡng da NARUKO',700000,75,'RBgtBciusR'),('eWHhzSPZn4','2023-04-30 00:14:14','Kem Dưỡng Ẩm, Làm Dịu Da Ban Đêm Midnight Blue Calming Cream là kem dưỡng dành cho da nhạy cảm đến từ thương hiệu Dear, Klairs trực thuộc By Wishtrend. Với thành phần Guaiazulene được chiết xuất từ dầu hoa cúc tạo màu xanh dịu mát tự nhiên, giúp làm dịu da kích ứng vô cùng hiệu quả, kết hợp cùng chiết xuất rau má cấp ẩm, làm dịu da và hỗ trợ phục hồi da mụn rất tốt.','Kem Dưỡng Ẩm Klairs Làm Dịu & Phục Hồi Da Ban Đêm 60ml\nMidnight Blue Calming Cream',367000,97,'xMGgXMuWmo'),('FUBsefe43','2023-03-11 23:56:18','Có trụ sở tại các Tiểu vương quốc Ả Rập thống nhất, bậc thầy mùi hương Armaf hiện nắm giữ hàng tá mùi hương khác nhau vô cùng nổi tiếng ở thị trường châu Âu và nhận được sự ưa chuộng của cả nam giới lẫn nữ giới. Giữ trong mình hương thơm đáng yêu, tinh tế tác hợp cùng hương trái cây gợi lên một mùa xuân ấm áp, dịu nhẹ và mát mẻ.\n\nĐược ra mắt vào năm 2015, Armaf Club De nuit Women là một kỳ công vang dội khi mang tới những mùi hương khẳng định đẳng cấp của sự xa xỉ, sang trọng đến với giới thượng lưu cũng như những người yêu thích nước hoa trên toàn thế giới.','Nước Hoa Armaf Club De Nuit Women EDP 105ml',1300000,10,'ncE3FRIUQk'),('GlXVUzrPf2','2023-04-30 00:07:34','Tinh Chất GoodnDoc Hydra B5 Serum là sản phẩm serum dưỡng da đến từ thương hiệu GoodnDoc của Hàn Quốc, chứa thành phần Pro-Vitamin B5 kết hợp cùng Hyaluronic Acid, Adenosine và Niacinamide giúp dưỡng ẩm chuyên sâu và hỗ trợ phục hồi làn da tổn thương, kích ứng. Giúp da luôn căng đầy sức sống, trẻ hóa và căng mịn da. Bảo vệ làn da của bạn khỏi cháy nắng, nám tàn nhang da. Phục hồi tăng cường độ đàn hồi cho da, giúp da khô ráp trở nên mịn màng và trẻ trung hơn.','Serum GoodnDoc Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da 30ml\nHydra B5 Serum',348000,100,'BIhVbxbOc4'),('gSY0unVGhh','2023-04-29 23:06:47','Sữa Rửa Mặt Cerave Sạch Sâu là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Cerave của Mỹ, với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.','Sữa Rửa Mặt CeraVe Cho Da Thường Đến Khô 473ml\nHydrating Cleanser',355000,100,'1xdii4vkG0'),('K8BLdrr58I','2023-03-27 10:00:39','Nước Hoa Hồng Obagi Clenziderm MD Pore Therapy là sản phẩm Toner chuyên biệt giúp làm sạch sâu lỗ chân lông và giảm nhờn, mụn đến từ thương hiệu dược mỹ phẩm Obagi Medical. Với hoạt chất chính là 2% Salicylic Acid (BHA), sản phẩm giúp lấy đi lượng tế bào chết làm tắc nghẽn lỗ chân lông, giúp da hấp thu hiệu quả các bước chăm sóc tiếp theo. Làn da được làm sạch sâu, thoáng nhẹ, đồng thời cải thiện tình trạng mụn và giúp lỗ chân lông nhỏ đi trông thấy.\n\nBảo quản:\nNơi khô ráo, thoáng mát tránh ánh nắng mặt trời và nhiệt độ cao.\n\nTránh xa tầm tay trẻ em.\n\nĐậy nắp kín sau khi sử dụng.\n\nThông số sản phẩm:\nDung tích: 148ml\n\nThương hiệu: Obagi Medical\n\nXuất xứ thương hiệu: Mỹ\n\nNơi sản xuất: Mỹ','Nước Hoa Hồng Obagi BHA 2% Giảm Nhờn Mụn 148ml\nClenziderm MD Pore Therapy Salicylic Acid 2% Acne Treatment',689000,266,'ncE3FRIUQk'),('kNKLovjTHf','2023-04-30 00:13:09','Kem Dưỡng La Roche-Posay Cicaplast Baume B5 Soothing Repairing Balm là sản phẩm kem dưỡng dành cho da nhạy cảm đến từ thương hiệu La Roche-Posay, giúp dưỡng ẩm và làm dịu tình trạng da kích ứng, tổn thương, hỗ trợ phục hồi làn da. Sản phẩm được khuyên dùng sau các liệu trình điều trị thẩm mỹ & kích ứng da nhẹ ở người lớn, trẻ em và trẻ sơ sinh.','Kem Dưỡng La Roche-Posay Làm Dịu, Hỗ Trợ Phục Hồi Da 40ml\nCicaplast Baume B5 Soothing Repairing Balm',292000,97,'xMGgXMuWmo'),('newsdsd','2023-03-26 21:18:41','Ko có gì cả','new 2',120000,5,NULL),('NhDvPJvkRC','2023-03-13 15:18:29','Mặt Nạ Tóc Cao Cấp Phục Hồi Hư Tổn TSUBAKI Premium Repair Mask đến từ thương hiệu chăm sóc tóc nổi tiếng TSUBAKI Nhật Bản mang đến trải nghiệm dưỡng tóc chuẩn Salon mà không mất thời gian chờ đợi, mái tóc suôn mượt và mềm mại với các thành phần giàu dưỡng chất và công thức phục hồi tiên tiến vượt bậc.\n\nHiện sản phẩm TSUBAKI Premium Repair Mask 180g đã có mặt tại Hasaki.','Mặt Nạ Tóc Tsubaki Cao Cấp Phục Hồi Hư Tổn 180g\nPremium Repair Mask',269000,182,'v6J2HUIr15'),('Niayrow9Th','2023-04-30 00:10:19','Purifying Gel Wash là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Simple, giúp kiềm dầu, ngừa mụn cho da dầu dễ nổi mụn. Sản phẩm với chất gel thanh khiết, chứa chiết xuất Cây Phỉ (Witch Hazel), Kẽm, Prebiotic từ thực vật, Niacinamide (Vitamin B3) sẽ giúp cuốn đi bụi bẩn, tạp chất và dầu thừa, làm sạch da và giảm bóng nhờn, ngừa mụn hiệu quả.','Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml\nPurifying Gel Wash',94000,100,'1xdii4vkG0'),('ObKzjdfXhZ','2023-03-02 16:22:45','Nước Hoa xịn ','Nước Hoa Trường NN',700000,74,'ncE3FRIUQk'),('sdfsdfsdf','2023-03-02 22:04:01','Vớ vẩn 1','Vớ 1',20000,9,NULL),('SkdAd99Bm4','2023-04-30 00:00:40','Kem Chống Nắng La Roche-Posay Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+ đến từ thương hiệu dược mỹ phẩm La Roche-Posay là sản phẩm kem chống nắng dành cho làn da dầu mụn, sở hữu công nghệ cải tiến XL-Protect cùng kết cấu kem gel dịu nhẹ & không nhờn rít, giúp ngăn ngừa tia UVA/UVB + tia hồng ngoại + tác hại từ ô nhiễm, bảo vệ toàn diện cho làn da luôn khỏe mạnh.','Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml\nAnthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+',399000,100,'JRHfjyi7B9'),('TMl4XmCoiR','2023-04-30 00:04:58','Tinh Chất Siêu Cấp Ẩm Sáng Da L\'Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum là dòng sản phẩm serum đến từ thương hiệu L\'Oréal Paris nổi tiếng của Pháp, với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt ở nồng độ 1.5% sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô & lão hóa, giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì. Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.','Serum L\'Oreal Hyaluronic Acid Cấp Ẩm Sáng Da 30ml\nRevitalift Hyaluronic Acid 1.5% Hyaluron Serum',359000,100,'BIhVbxbOc4'),('wv5i1EpuKs','2023-04-30 00:06:50','Timeless Vitamin B5 Serum là sản phẩm tinh chất (serum) dưỡng da đa công dụng đến từ thương hiệu Timeless nổi tiếng của Mỹ, với công thức lỏng nhẹ, không chứa dầu, giúp làm dịu và hỗ trợ phục hồi làn da đang gặp vấn đề. Công thức chứa thành phần Vitamin B5 có tác dụng thúc đẩy chữa lành các tổn thương do mụn, làm giảm mẩn đỏ và giảm thiểu sẹo, hỗ trợ khôi phục hàng rào bảo vệ tự nhiên của da. Kết hợp cùng thành phần Hyaluronic Acid cấp nước và cân bằng độ ẩm cho làn da sáng khỏe.','Serum Timeless Vitamin B5 Làm Dịu & Phục Hồi Da 30ml\nVitamin B5 Serum',359000,99,'BIhVbxbOc4'),('xIRCvIkIPw','2023-04-30 00:15:27','Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo là sản phẩm chống nắng phiên bản mới nhất năm 2022 đến từ thương hiệu chống nắng dưỡng da ANESSA hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV & bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.','Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml\nPerfect UV Sunscreen Skincare Milk N SPF50+ PA++++',459000,99,'JRHfjyi7B9'),('Xp5jCMsVLe','2023-04-30 00:14:55','Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml là sản phẩm kem chống nắng đến từ thương hiệu mỹ phẩm Skin1004 của Hàn Quốc, là kem chống nắng vật lý với chiết xuất rau má và chất kem mỏng nhẹ có màu giúp che phủ nhẹ khuyết điểm cho da. Công thức đa năng vừa chống nắng vừa đều màu da lại dưỡng ẩm chính là sản phẩm mà những cô nàng da mụn hay da dầu nhạy cảm cần vì không cần sử dụng quá nhiều bước lỉnh kỉnh.','Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml\nMadagascar Centella Air-Fit Suncream Plus SPF50+ PA++++',267000,97,'JRHfjyi7B9'),('YaxBYgunjR','2023-04-30 00:01:47','Nước Tẩy Trang Dành Cho Da Nhạy Cảm Bioderma Sensibio H2O là sản phẩm nước tẩy trang công nghệ Micellar đầu tiên trên thế giới, do thương hiệu dược mỹ phẩm Bioderma nổi tiếng của Pháp phát minh. Dung dịch giúp làm sạch sâu da và loại bỏ lớp trang điểm nhanh chóng mà không cần rửa lại bằng nước. Công thức dịu nhẹ, không kích ứng, không gây khô căng da, đặc biệt phù hợp với làn da nhạy cảm.','Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm 500ml\nSensibio H2O',393000,100,'9baOQdhkDG'),('zJ4rdxymQg','2023-04-30 00:05:50','Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml là sản phẩm tinh chất đến từ thương hiệu Klairs của Hàn Quốc, tiếp thêm sinh lực trẻ hóa làn da với sức mạnh của 5% Vitamin C dạng Acid L-ascorbic nhẹ dịu; cùng chiết xuất Rau Má không gây kích ứng nhưng vẫn hiệu quả trong việc làm mờ các vết mụn và vết nám, cải thiện làn da xỉn và không đều màu','Serum Klairs Vitamin C Cho Da Nhạy Cảm 35ml\nFreshly Juiced Vitamin Drop',280000,100,'BIhVbxbOc4'),('zoiuv8krdt','2023-03-13 15:33:21','Son Dưỡng Môi Mediheal 10ml là sản phẩm son dưỡng môi đến từ thương hiệu mỹ phẩm Mediheal của Hàn Quốc, chứa thành phần Dexpanthenol (tiền chất Vitamin B5), Vitamin B5, tinh chất cây tầm xuân, Ceramide cải thiện tình trạng khô ráp của môi giúp cho đôi môi trở nên mềm mại, cải thiện sắc tố môi, hạn chế các tế bào melanin làm môi trở nên thâm sạm môi, giúp môi sáng màu hơn.','Son Dưỡng Mediheal Hỗ Trợ Giảm Thâm Môi Ban Ngày 10ml\nLabocare Pantenolips Healssence',143000,289,'9Qpehd6JAH');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK404iut26wg4pq85osw3vn0kwd` (`product_id`),
  CONSTRAINT `FK404iut26wg4pq85osw3vn0kwd` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (34,'/images/well_mate.png','CdBlInu3d4'),(35,'/images/well_mate2.png','CdBlInu3d4'),(36,'/images/acda8979-0945-4cc4-864c-809553d71173.png','NhDvPJvkRC'),(37,'/images/35807fd8-b015-4d94-bcd9-4eb336f3fc6e.png','zoiuv8krdt'),(38,'/images/6e4f670d-9ef3-42d6-b95b-ded204e6a2e5.png','zoiuv8krdt'),(39,'/images/3de7b002-d6f1-4011-8c7a-cc79d6c9a1f9.jpeg','ObKzjdfXhZ'),(40,'/images/c0092a5a-3a2d-4361-b07a-df0fa64de8eb.png','ObKzjdfXhZ'),(42,'/images/obagi1.png','K8BLdrr58I'),(43,'/images/obagi2.png','K8BLdrr58I'),(50,'/images/1fb9d05b-07da-422e-a4b5-48f14b615636.jpeg','9jf3u6i0bm'),(51,'/images/7028d7fd-064d-4595-9048-edbc22acd04d.png','9jf3u6i0bm'),(52,'/images/well_mate2.png','B9dpNp9HN5'),(53,'images/well_mate.png','B9dpNp9HN5'),(54,'/images/6a7d7b32-d504-4b27-a359-a7ab81defdc4.jpg','gSY0unVGhh'),(55,'/images/4dd98861-3dcd-41ca-8729-06aa5398d803.jpg','gSY0unVGhh'),(56,'/images/9671613f-a674-42fe-8d7a-aaf7cec17548.jpg','SkdAd99Bm4'),(57,'/images/9eb39bd8-fc8d-4f1e-bdf2-400300f770c8.jpg','YaxBYgunjR'),(58,'/images/e2d6b6a6-fd06-4ce7-87a9-1620e61c8c30.jpg','0o9wgtoixV'),(59,'/images/1c6626c5-6b38-4534-9783-07a8c29b3197.jpg','5R53F9dVgN'),(60,'/images/8084eaa5-01bf-4cf6-9ed4-9422f2de4d24.jpg','TMl4XmCoiR'),(61,'/images/2b3c2307-f818-4e1b-87ac-a333c00b8984.jpg','zJ4rdxymQg'),(62,'/images/63f21373-16a7-46be-a374-59ef03fb6e47.jpg','wv5i1EpuKs'),(63,'/images/ccfcd8f2-bc34-416b-bf74-cec1bd0ba8f9.jpg','GlXVUzrPf2'),(64,'/images/43677272-6bef-4271-98e8-d866f7949892.jpg','Aff3I9DxX0'),(65,'/images/7433259e-d7a8-4e19-9914-c780301ccd09.jpg','Niayrow9Th'),(66,'/images/3be3418c-2df2-489f-a0d6-cfef459854de.jpg','4IZ7OT7jTT'),(67,'/images/ac552e14-7b16-400e-b2a1-6299478c5ac5.jpg','bhsE3BRena'),(68,'/images/b841da3e-97e5-4b87-a53b-08118eaf5913.jpg','kNKLovjTHf'),(69,'/images/a24f21b1-013e-4c7a-b061-fd7ceb28dd66.jpg','eWHhzSPZn4'),(70,'/images/bf19179f-92f6-4e15-99ea-707ded0ae17d.jpg','eWHhzSPZn4'),(71,'/images/e6f5a20c-4205-4416-bdc6-1dc460450459.jpg','Xp5jCMsVLe'),(72,'/images/7aabb646-cdea-476f-ab13-7939f2e54871.jpg','xIRCvIkIPw');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER'),(2,'STAFF'),(3,'ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatarurl` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqma1bk4dj5dfirnbdu1ris1gs` (`username`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1KoJFShiwH',NULL,NULL,'2023-04-19 09:09:37',NULL,'Chien','Dao','$2a$10$V1S798yjUln1j4JGnOw2o.O7wr9plf8KqSpwFp1Xjw2ljVBlRrSB.',NULL,'chiendq'),('7H2N7VPKcS',NULL,NULL,'2023-05-13 23:01:17','2111-11-11 00:00:00','Lập','Nguyễn','$2a$10$IBX3PKPc5RYAUOZbftouy.AWhRl2fqGFyxmR3XHfHESfYHXDnG64i',NULL,'hack'),('7jGmZkC8co',NULL,'/images/248b3a31-dc0d-4fd6-affb-dfd61b914a52.png','2023-05-01 21:40:24','2001-12-22 00:00:00','Nguyễn Nam','Trường','$2a$10$Mxma0Mw8kxpGkJXobO5CuO9PdfN0bRVucIlnLZw.AOFstmzoZM9DO',NULL,'thai'),('AnoxPIx4Ab',NULL,NULL,'2023-03-24 09:45:50',NULL,'le','thanh','$2a$10$ulQ2jhrcRo5GuU/qamPH6.RcX5XRO286kJY73WS5PdEF.lFNNPdfu',NULL,'ddddd'),('bw70cL4bzo',NULL,'/images/4e20ef35-a7be-4185-8bcc-d839400536c0.jpg','2023-03-10 10:03:30',NULL,'Nam','Khanh','$2a$10$QeBGg2bWOft6cYRz8BoLfeLXl/JI0G5VbtDWBfz37BMPppn90j/6y','0982233456','khanh23'),('CgsL873Raa','Mỹ Đình pearl, ha noi',NULL,'2023-05-13 23:10:08','2001-11-11 00:00:00','Lập','Nguyễn','$2a$10$3cFcdcwUa05dbXXoIqQoQeLoThKo51Jx/SYZ0hoGiTN3dORAPBF1K',NULL,'test1'),('GmL1YVZ188',NULL,NULL,'2023-04-25 21:56:57',NULL,'Lập','Nguyễn','$2a$10$5ZctqxpxknQJbeVVgLEXzuga5/JZTKqt4fqjW48CYeMGsjhEv8zIe',NULL,'hacknicktaoah3'),('HqtErUIkhb',NULL,NULL,'2023-03-13 08:12:33',NULL,'Nam','Anh','$2a$10$I1BYVXc0pKf2cfhRut0jpuPg8PrTIUDqaIans67/SCv86LJfqECGa',NULL,'bimbim234'),('S8qZgnGJUW','Thanh Ba Phú Thọ','/images/69f25176-c963-4ce2-9db4-94c8ad76c6ea.png','2023-03-06 16:38:24','2001-04-10 15:08:33','Nam','Truong','$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi','0324456655','truong'),('SmadmnCo7R',NULL,NULL,'2023-03-24 09:48:01',NULL,'thanh','le','$2a$10$YWp1cuD82UBOjO5RmJwsD.XIhye5ACHpTs91hhKYloanBhlYVpm3O',NULL,'thanhle'),('VWgA6g15xk',NULL,NULL,'2023-03-24 09:16:42',NULL,'Nam','BIN','$2a$10$l6KWBGmzGPHhtIH/ifxdb.m4bW1txMLCtjBbIwnJG0585uUYqeJTm',NULL,'xxxin'),('wxa7rwk9O9','hacknickta0',NULL,'2023-05-13 23:44:59','0011-11-11 00:00:00','hacknickta0','hacknickta0','$2a$10$9E8rud/WnFup/lH/uPk82OI9KYmaeP29cUBH1GITjLl4WUvNLhoKq',NULL,'hacknickta0'),('xcsFASDs',NULL,NULL,'2023-03-11 21:48:02',NULL,'Nam ','Truong','$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi','0987654321','truongAdmin'),('XO9rjrlFq6','Mỹ Đình pearl',NULL,'2023-05-13 23:39:17','1111-11-11 00:00:00','Lập','Nguyễn','$2a$10$ndaL6jFp86xZeBnb9uvFSuAesl3k1XME9Cbq7czRw1PLEIwVnNm5m',NULL,'hacknicktaoah');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKka3w3atry4amefp94rblb52n7` (`role_id`),
  CONSTRAINT `FKhjx9nk20h4mo745tdqj8t8n9d` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKka3w3atry4amefp94rblb52n7` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('1KoJFShiwH',1),('7H2N7VPKcS',1),('7jGmZkC8co',1),('AnoxPIx4Ab',1),('bw70cL4bzo',1),('CgsL873Raa',1),('GmL1YVZ188',1),('HqtErUIkhb',1),('S8qZgnGJUW',1),('SmadmnCo7R',1),('VWgA6g15xk',1),('wxa7rwk9O9',1),('XO9rjrlFq6',1),('xcsFASDs',2),('xcsFASDs',3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 17:11:11
