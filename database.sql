-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: ASSIGNMENT_SOF3011
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `React`
--

DROP TABLE IF EXISTS `React`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `React` (
  `user_id` int DEFAULT NULL,
  `video_id` int DEFAULT NULL,
  `isLike` bit(1) DEFAULT NULL,
  KEY `FK_REACT_USER` (`user_id`),
  KEY `FK_REACT_VIDEO` (`video_id`),
  CONSTRAINT `FK_REACT_USER` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `FK_REACT_VIDEO` FOREIGN KEY (`video_id`) REFERENCES `Video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `React`
--

LOCK TABLES `React` WRITE;
/*!40000 ALTER TABLE `React` DISABLE KEYS */;
INSERT INTO `React` VALUES (3,3,_binary ''),(9,3,_binary '\0'),(9,4,_binary ''),(9,7,_binary '');
/*!40000 ALTER TABLE `React` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(299) DEFAULT NULL,
  `avatar` longtext,
  `gender` bit(1) DEFAULT b'0',
  `active` bit(1) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `User` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('Nguy???n V??n','S?????ng','suong@gmail.com',1,'12345678','user-image/user/suong@gmail.com.png',_binary '',_binary '',_binary '\0'),('Admin-Fake','','admin@gmail.com',2,'12345678','user-image/user/admin@gmail.com.png',_binary '',_binary '',_binary '\0'),('Ki???n th???c','th?? v??? Offical','kienthucthuvi@gmail.com',3,'12345678','user-image/user/kienthucthuvi@gmail.com.png',_binary '',_binary '',_binary '\0'),('S?????ng','Nguy???n','hanoi@gmail.com',4,'12345678','user-image/user/hanoi@gmail.com.png',_binary '',_binary '\0',_binary '\0'),('nguyen','suong','suongnguyen@gmail.com',5,'12345678','user-image/user/suongnguyen@gmail.com.png',_binary '',_binary '\0',_binary '\0'),('thanh','chuc','thanhchuc@gmail.com',6,'12345678','user-image/user/thanhchuc@gmail.com.png',_binary '',_binary '',_binary '\0'),('java','programming','java@gmail.com',8,'12345678','user-image/user/java@gmail.com.png',_binary '',_binary '\0',_binary '\0'),('google','chrome','chrome@google.com',9,'12345678','user-image/user/chrome@google.com.png',_binary '',_binary '\0',_binary '\0'),('ad','','ad@gmail.com',156,'12345678','user-image/user/admin@gmail.com.png',_binary '',_binary '\0',_binary ''),('van','nguyen','suongnguyenvan@gmail.com',157,'12345678','user-image/user/suongnguyenvan@gmail.com.png',_binary '',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Video`
--

DROP TABLE IF EXISTS `Video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `youtubeUrl` varchar(300) DEFAULT NULL,
  `thumbnail` longtext,
  `date` datetime DEFAULT NULL,
  `view` int DEFAULT '0',
  `user_id` int DEFAULT NULL,
  UNIQUE KEY `Video_pk` (`id`),
  KEY `FK_VIDEO_USER` (`user_id`),
  CONSTRAINT `FK_VIDEO_USER` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Video`
--

LOCK TABLES `Video` WRITE;
/*!40000 ALTER TABLE `Video` DISABLE KEYS */;
INSERT INTO `Video` VALUES (3,'C???ng ?????ng LGBT & Ki???n th???c 95% m???i ng?????i ??ang nh???m l???n','https://www.youtube.com/watch?v=xa7Sl5w5J1s','user-image/video/id-3.png','2021-04-04 00:07:59',34,3),(4,'Thi??n ???????ng ???m th???c 2 | t???p 2 full hd: Khi Tronie g???p to??n cao th???.','https://www.youtube.com/watch?v=v1Ey1lBuuHM','user-image/video/id-4.png','2021-04-04 00:32:47',72,3),(5,'S??? kh??c bi???t gi???a L???p tr??nh vi??n Th?????ng v?? Th??nh Code - Coding Life','https://www.youtube.com/watch?v=vdwoM6qviyA','user-image/video/id-5.png','2021-04-04 00:32:47',53,3),(7,'L??m front-end n??n l???a ch???n Angular hay ReactJS hay VueJS','https://www.youtube.com/watch?v=0vQWv_EKN6g','user-image/video/id-7.png','2021-04-04 00:32:48',14,3),(8,'H???c Vue js trong m???t video duy nh???t - learn vue js in one video','https://www.youtube.com/watch?v=j97QtHf0CHY','user-image/video/id-8.png','2021-04-04 00:32:48',21,3),(9,'???????NG L??N ?????NH OLYMPIA 17 | CU???C THI TU???N 2 TH??NG 3 QU?? 3 | VTV Go','https://www.youtube.com/watch?v=0SSceLu4VRo','user-image/video/id-9.png','2021-04-04 00:32:48',5,3),(26,'Nh???c Tr??? X??a 7X 8X 9X - LK Ph??t Bi???t Ly, ??nh Tr??ng L??? Loi - 1977 Nh???c Hoa L???i Vi???t V?????t Th???i Gian','https://www.youtube.com/watch?v=yrC3ej4WIo0','user-image/video/id-26.png','2021-04-11 00:00:00',10,2),(27,'KH??NG QU???NG C??O-Li??n Kh??c Nh???c Tr??? 8x 9x ?????i ?????u Hay Nh???t p1','https://www.youtube.com/watch?v=4rUdWo8r2d4','user-image/video/id-27.png','2021-04-11 00:00:00',3,2),(28,'Th??nh Ch???i Gia C??t L?????ng Ch??? C???n D??ng 3 T???t L?????i ???? ????nh B???i Qu??n Ng?? | Tam Qu???c | Ki???m Hi???p Hay','https://www.youtube.com/watch?v=P4DDWDe0AwU','user-image/video/id-28.png','2021-04-11 00:00:00',8,2),(29,'D??? B??o Th???i Ti???t ng??y 13/4, V??ng n??i B???c B??? m??a gi??ng, T??y Nguy??n, Nam B??? m??a tr??i m??a | VTV TSTC','https://www.youtube.com/watch?v=ho3Y70jFO2c','user-image/video/id-29.png','2021-04-12 00:00:00',0,6),(31,'PH??? N??Y C?? GI?? 2.300.000??. ??N C?? X???NG ????NG KH??NG?','https://www.youtube.com/watch?v=yuoff9jwilQ','user-image/video/id-31.png','2021-04-12 00:00:00',0,2),(32,'M??N TH?????NG H???I N??Y L??M ??? S??I G??N C??N NGON H??N C??? M??N G???C ??? TRUNG QU???C!','https://www.youtube.com/watch?v=8URrfcwUAEE','user-image/video/id-32.png','2021-04-12 00:00:00',0,6),(34,'D12 - S??? d???ng l???nh docker-compose ch???y v?? qu???n l?? c??c d???ch v??? Docker','https://www.youtube.com/watch?v=6s9VqKyG1Ig','user-image/video/id-34.png','2021-04-20 00:00:00',0,4);
/*!40000 ALTER TABLE `Video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 16:52:17
