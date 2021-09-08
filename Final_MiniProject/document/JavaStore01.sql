-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: javastore01
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Fullname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Available` bit(1) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('philh','123','Lê Hoàng Phi','philhpc00552@fpt.edu.vn',_binary ''),('role_admin','123','Admin','Admin@gmail.com',_binary ''),('role_pm','123','Pm','Pm@gmail.com',_binary ''),('role_user','123','User','user@gmail.com',_binary '');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RoleId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UKhtk0tjw6uf67w0vkhy5n3j1oq` (`Username`,`RoleId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`),
  CONSTRAINT `authorities_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (4,'philh','ADMIN'),(3,'role_admin','ADMIN'),(2,'role_pm','PM');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Id` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('1001','Linh Kiện Máy Tính'),('1002','Màn Hình Máy Tính'),('1003','Thiết Bị Âm Thanh'),('1004','Thiết Bị Văn Phòng'),('1005','Thiết Bị Thông Minh');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderid` bigint DEFAULT NULL,
  `productid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj4gc2ja2otvwemf4rho2lp3s8` (`orderid`),
  KEY `FKaltatpxipsjtcih4d1h6bn0xr` (`productid`),
  CONSTRAINT `FKaltatpxipsjtcih4d1h6bn0xr` FOREIGN KEY (`productid`) REFERENCES `products` (`Id`),
  CONSTRAINT `FKj4gc2ja2otvwemf4rho2lp3s8` FOREIGN KEY (`orderid`) REFERENCES `orders` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,2890000,1,1,7),(2,2790000,1,2,2),(3,3890000,1,2,6),(4,3890000,1,3,6),(5,2890000,1,3,7),(6,2890000,1,4,7),(7,3890000,1,5,6),(8,2890000,1,6,7),(9,3890000,1,6,6),(10,2890000,1,7,7),(11,3890000,1,7,6),(12,3890000,1,8,6),(13,2890000,1,9,7),(14,3890000,1,9,6),(15,5290000,1,10,12),(16,730000,1,10,13);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Createdate` datetime NOT NULL,
  `Address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Username` (`Username`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'philh','2021-09-02 00:00:00','Bạc Liêu'),(2,'philh','2021-09-03 00:00:00','Bạc Liêu'),(3,'philh','2021-09-03 00:00:00','Sóc Trăng'),(4,'philh','2021-09-03 00:00:00','Cần Thơ'),(5,'philh','2021-09-03 00:00:00','Sóc Trăng'),(6,'philh','2021-09-03 00:00:00','Cà Mau'),(7,'philh','2021-09-03 00:00:00','An Giang'),(8,'philh','2021-09-03 00:00:00','Kiên Giang'),(9,'philh','2021-09-04 00:00:00','Trà Vinh'),(10,'philh','2021-09-04 00:00:00','Sóc Trăng');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Image` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Price` float NOT NULL,
  `Available` bit(1) NOT NULL,
  `CategoryId` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdate` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Màn Hình Acer 19.5\" K202HQL (1600x900/TN/60Hz/5ms)','1001.webp',2790000,_binary '\0','1002','2021-09-02'),(6,'Màn Hình Samsung 23.5\" LS24F350FHEXXV (1920x1080/PLS/60Hz/4ms/FreeSync)','1003.webp',3890000,_binary '\0','1002','2021-09-02'),(7,'Màn Hình Acer 18.5\" EB192QA (1366x768/TN/60Hz/5ms)','1004.webp',2890000,_binary '\0','1002','2021-09-02'),(8,'Màn Hình LG 23.8\" 24MP88HV-S (1920x1080/IPS/60Hz/5ms)','1005.webp',4820000,_binary '\0','1002','2021-09-02'),(10,'Ổ cứng SSD Kingston A400 240GB Sata 3 (SA400S37/240G)','1007.webp',1130000,_binary '\0','1001','2021-09-02'),(12,'CPU INTEL Core i5-10400 (6C/12T, 2.90 GHz Up to 4.30 GHz, 12MB) - 1200','1008.webp',5290000,_binary '','1001','2021-09-02'),(13,'Ổ cứng SSD Gigabyte 128GB M.2 2280 NVMe Gen3 x4 (GP-GSM2NE3128GNTD)','1009.webp',730000,_binary '','1001','2021-09-02'),(14,'Ổ cứng SSD Western Digital Green 240GB 2.5\" SATA 3 - WDS240G2G0A','1010.webp',890000,_binary '','1001','2021-09-02'),(15,'Mainboard GIGABYTE H410M-H V2','1011.webp',1670000,_binary '','1001','2021-09-02'),(17,'Loa 2.1 Microlab FC361 (Đen)','1012.webp',1599000,_binary '','1003','2021-09-02'),(18,'Tai nghe Over-ear SoundMAX AH 302 (Đen)','1013.webp',259000,_binary '','1003','2021-09-02'),(19,'Loa Microlab B51 (Đen)','1014.webp',250000,_binary '','1003','2021-09-02'),(20,'Loa bluetooth Microlab MD215 (Vàng,Đen)','1015.webp',787000,_binary '','1003','2021-09-02'),(21,'Tai nghe On-ear Sony MDRZX110APWCE (Trắng)','1016.webp',540000,_binary '','1003','2021-09-02'),(22,'Tai nghe Over-ear Kingston Cloud II - KHX-HSCP-GM (Xám)','1017.webp',2490000,_binary '','1003','2021-09-02'),(23,'Phần mềm Microsoft Windows 10 Home 32bit 1pk DSP OEI DVD (KW9-00185)','1018.webp',2650000,_binary '','1004','2021-09-02'),(24,'Cáp nguồn','1019.webp',15000,_binary '','1004','2021-09-02'),(25,'Cáp máy in 10m','1020.webp',149000,_binary '','1004','2021-09-02'),(26,'Cáp HDMI Unitek YC 120 (116a) (10m)','1021.webp',587000,_binary '','1004','2021-09-02'),(27,'Cáp VGA 5m','1022.webp',65000,_binary '','1004','2021-09-02'),(28,'Adapter Xiaomi chuyển USB Type C sang VGA - Ethernet (JGQ4005TY)','1023.webp',940000,_binary '','1004','2021-09-02'),(29,'Điện Thoại Di Động Samsung Galaxy Note 10 (Aura Glow)','1024.webp',22990000,_binary '','1005','2021-09-02'),(30,'Máy Hút Bụi (VACUUM) XIAOMI MI ROBOT_SKV4022GL (Trắng)','1025.webp',7290000,_binary '','1005','2021-09-02'),(31,'Đồng hồ thông minh Garmin Instinct, GPS, Seafoam_010-02064-64','1026.webp',7590000,_binary '','1005','2021-09-02'),(32,'Khóa Điện Tử YALE YDM3109+ Silver (Xám)','1027.webp',9361000,_binary '','1005','2021-09-02'),(33,'Gậy chống rung CAMERA XIAOMI (BGX4020GL) (Đen)','1028.webp',3090000,_binary '','1005','2021-09-02'),(34,'Camera Xiaomi SPHERE KIT (ZRM4030GL) (Đen)','1029.webp',7520000,_binary '','1005','2021-09-02');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('ADMIN','ROLE_ADMIN'),('PM','ROLE_PM'),('USER','ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08  9:34:04
