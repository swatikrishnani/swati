-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: checklist
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `checklist_transactions`
--

DROP TABLE IF EXISTS `checklist_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklist_transactions` (
  `Transaction_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sprint_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `CLR_ID` int(11) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Sprint_ID_idx` (`Sprint_ID`),
  KEY `CLR_ID_idx` (`CLR_ID`),
  KEY `Emp_ID_idx` (`Employee_ID`),
  CONSTRAINT `CLR_ID` FOREIGN KEY (`CLR_ID`) REFERENCES `checkpoint_roles` (`CPR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Emp_ID` FOREIGN KEY (`Employee_ID`) REFERENCES `users` (`Employee_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Sprint_ID` FOREIGN KEY (`Sprint_ID`) REFERENCES `sprint` (`Sprint_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist_transactions`
--

LOCK TABLES `checklist_transactions` WRITE;
/*!40000 ALTER TABLE `checklist_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklist_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-04 18:04:52
