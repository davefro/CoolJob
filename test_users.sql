-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: test
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dawid','dawid','david55@gmail.com',NULL),(2,'Dawid','dawid','dawid@gmail.com',NULL),(3,'','','',NULL),(4,'','','',NULL),(5,'John','Doe','qwerty1','johndoe@gmail.com'),(6,'Tom','Fisher','qwerty12','tomfisher@example.com'),(7,'Bruce','Amstrong','bruce123','bruceams@gmail.com'),(8,'Ann','Khan','annkhan','annkhan@gmail.com'),(9,'Adam','Smith','adamsmith','adamsmith@gmail.com'),(10,'John','Atkins','johnatkins','johnatkins@gmail.com'),(11,'Andrew','Johnson','andrew','andrewjohnson@gmail.com'),(12,'Adam','Smith','adam123','adamsmith@gmail.com'),(13,'asd','asd','asd123','asdasd@gmail.com'),(14,'Dawid','Froncisz','dsdsdsd','dsds@gmail.com'),(15,'asd','asd','asd','aasd@gmail.com'),(16,'asd','asd','asd','aasd@gmail.com'),(17,'asd','asd','asd123','asd@gmail.com'),(18,'asd','asd','asd123','asd@gmail.com'),(19,'asd','asd','asd123','asd@gmail.com'),(20,'asd','asd','asd123','asd@gmail.com'),(21,'Dakota','Nail','dakota','dakota@gmail.com'),(22,'Jim','Soul','12345','jimsoul@example.com'),(23,'Luke','Allen','luke123','lukeallen@gmial.com'),(24,'aaa','aaa','sssss','aas@fmf.com'),(25,'ddd','ddd','dd','dd'),(26,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL),(29,'ssss','ssss','sasas','ssss@gmail.com'),(30,'john','smart','john12345','johnsmart@gmail.com'),(31,'ssss','sssss','ssssssss','sssss@gmai.com'),(32,'Andrew','Luton','luton123','luton@gmail.com'),(33,'dawid','dawid','dawid','dawid@gmail.com'),(34,'dddccc','dddccc','123456','dadada@gmail.com'),(35,'Matthew','Anders','anders123','anders@gmail.com'),(36,'sas','sas','ddddddd','aasas@dkdd.com'),(37,'Don','John','donjohn','donjohn@gmail.com'),(38,'Joan','Ant','ant1234','ant@gmail.com'),(39,'John1 ','Doe2','qwerty123','johndoe2@gmail.com'),(40,'John2','Doe2','qwerty12345','johndoe123@gmial.com'),(41,'Andrew','Anderson','123456789','andrewanderson@gmail.com'),(42,'Andrew','Johnson','1234567','andrewjohnson@gmail.com'),(43,'Andrew','Doe','123456789','andrewdoe@gmail.com');
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

-- Dump completed on 2023-04-27 19:02:49
