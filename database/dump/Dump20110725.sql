CREATE DATABASE  IF NOT EXISTS `dmc353_1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dmc353_1`;
-- MySQL dump 10.13  Distrib 5.1.34, for apple-darwin9.5.0 (i386)
--
-- Host: localhost    Database: dmc353_1
-- ------------------------------------------------------
-- Server version	5.1.38

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
-- Table structure for table `Employee_login`
--

DROP TABLE IF EXISTS `Employee_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_login` (
  `employee_id` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_login`
--

LOCK TABLES `Employee_login` WRITE;
/*!40000 ALTER TABLE `Employee_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account` (
  `accountNumber` int(11) NOT NULL AUTO_INCREMENT,
  `accountType` enum('credit card','checking','saving','line of credit','loan','USD') DEFAULT NULL,
  `accountBalance` decimal(15,2) DEFAULT NULL,
  `accountCreationDate` date DEFAULT NULL,
  `accountOption` tinyint(1) DEFAULT NULL,
  `accountBranchId` int(11) DEFAULT NULL,
  `accountRateId` int(11) DEFAULT NULL,
  `accountPlanId` int(11) DEFAULT NULL,
  `accountCreditLimit` decimal(15,2) DEFAULT NULL,
  `accountLevel` enum('personal','business','corporate') DEFAULT NULL,
  PRIMARY KEY (`accountNumber`),
  KEY `branch_id` (`accountBranchId`),
  KEY `rate_id` (`accountRateId`),
  KEY `plan_id` (`accountPlanId`)
) ENGINE=MyISAM AUTO_INCREMENT=3073 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (1,'checking','50000.00','2001-01-01',1,1,2,2,NULL,NULL),(2,'line of credit','-1000.00','2005-12-31',0,2,3,3,'25000.00',NULL),(3,'checking','3000000000.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(4,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(5,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(6,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(7,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(8,'line of credit','-1000.00','2005-05-21',0,4,3,3,'1000.00',NULL),(9,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(10,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(11,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(12,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(13,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(14,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(15,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(16,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(17,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(18,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(19,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(20,'line of credit','-1000.00','2002-01-12',0,2,3,3,'1000.00',NULL),(21,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(22,'saving','50150.00','2001-01-04',1,1,2,2,NULL,NULL),(23,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(24,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(25,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(26,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(27,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(28,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(29,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(30,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(31,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(32,'line of credit','-1000.00','2005-05-21',0,2,3,3,'1000.00',NULL),(33,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(34,'saving','50150.00','2001-01-04',1,3,2,2,NULL,NULL),(35,'line of credit','-1000.00','2002-01-12',0,1,3,3,'1000.00',NULL),(36,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(37,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(38,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(39,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(40,'saving','50150.00','2001-01-04',1,2,2,2,NULL,NULL),(41,'line of credit','-1000.00','2005-05-21',0,3,3,3,'1000.00',NULL),(42,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(43,'saving','50150.00','2001-01-04',1,4,2,2,NULL,NULL),(44,'line of credit','-1000.00','2002-01-12',0,1,3,3,'1000.00',NULL),(45,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(46,'saving','50200.00','2001-01-05',1,2,2,2,NULL,NULL),(47,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(48,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(49,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(50,'line of credit','-1000.00','2005-05-21',0,4,3,3,'1000.00',NULL);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type` enum('DEPOSIT','WITHDRAW','CHARGE','TRANSFER') NOT NULL,
  `transaction_amount` decimal(10,2) DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `account_number` int(11) DEFAULT NULL,
  `transaction_fees` decimal(10,2) DEFAULT NULL,
  `transaction_description` text,
  PRIMARY KEY (`transaction_id`),
  KEY `account` (`account_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Payroll`
--

DROP TABLE IF EXISTS `Employee_Payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_Payroll` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Payroll`
--

LOCK TABLES `Employee_Payroll` WRITE;
/*!40000 ALTER TABLE `Employee_Payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee_Payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Charge_plans`
--

DROP TABLE IF EXISTS `Charge_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge_plans` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_limit` int(11) DEFAULT NULL,
  `plan_option` enum('Basic','Premuim','Ultimate') DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `charge_excess_limit` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`plan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charge_plans`
--

LOCK TABLES `Charge_plans` WRITE;
/*!40000 ALTER TABLE `Charge_plans` DISABLE KEYS */;
INSERT INTO `Charge_plans` VALUES (1,25,'Basic','0.25','0.00'),(2,50,'Premuim','0.15','0.00'),(3,100,'Ultimate',NULL,'0.00');
/*!40000 ALTER TABLE `Charge_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest_rate`
--

DROP TABLE IF EXISTS `Interest_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `percentage` decimal(10,2) DEFAULT NULL,
  `type_of_account` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
  `type_of_service` enum('credit','non-credit') DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_rate`
--

LOCK TABLES `Interest_rate` WRITE;
/*!40000 ALTER TABLE `Interest_rate` DISABLE KEYS */;
INSERT INTO `Interest_rate` VALUES (1,'0.06','credit card','credit'),(2,'0.02','saving','non-credit'),(3,'0.04','line of credit','credit');
/*!40000 ALTER TABLE `Interest_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Schedule`
--

DROP TABLE IF EXISTS `Employee_Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_Schedule` (
  `employee_id` int(11) NOT NULL,
  `day` date NOT NULL,
  `code` enum('working','holidays','sick_paid','sick_unpaid') NOT NULL,
  `hours` decimal(10,2) NOT NULL,
  `start_time` datetime NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Schedule`
--

LOCK TABLES `Employee_Schedule` WRITE;
/*!40000 ALTER TABLE `Employee_Schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee_Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client_Card`
--

DROP TABLE IF EXISTS `Client_Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client_Card` (
  `client_card_number` char(16) NOT NULL,
  `client_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`client_card_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client_Card`
--

LOCK TABLES `Client_Card` WRITE;
/*!40000 ALTER TABLE `Client_Card` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client_Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `clientAddress` text,
  `clientDateOfBirth` date DEFAULT NULL,
  `clientJoiningDate` date DEFAULT NULL,
  `clientName` varchar(255) DEFAULT NULL,
  `clientCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=6476 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Montreal, Canada','1982-05-21','2011-01-01','Kristina H. Chung','Personal'),(2,'Montreal, Canada','1904-01-04','1988-01-01','Clark, Joe','Personal'),(3,'Baie-Comeau, Canada','1905-01-28','2001-02-03','Savard, Michel','Personal'),(4,'Montreal, Canada','1932-05-21','2007-04-12','Kristina H. Chung','Personal'),(5,'Toronto, Canada','1985-03-01','2007-06-14','Christina R. Craig','Personal'),(6,'Waterloo, Canada','1962-04-02','2007-07-15','Albert maccafe','Personal'),(7,'Ottawa, Canada','1988-06-03','2008-08-16','Gretchen C. Mcintyre','Personal'),(8,'Montreal, Canada','1920-08-04','2009-09-17','Bonnie R. Brantley','Personal'),(9,'Toronto, Canada','1983-09-05','2008-10-22','George E. Kelly','Personal'),(10,'Ottawa, Canada','1989-08-06','2004-11-23','Barbra M. Smith','Personal'),(11,'British Columbia, Canada','1928-07-07','2005-12-25','Evelyn Y. Lyons','Personal'),(12,'Ottawa, Canada','1981-09-08','2006-01-26','Rita A. Wall','Personal'),(13,'Montreal, Canada','1982-11-09','2011-02-27','Franklin A. Watson','Personal'),(14,'Toronto, Canada','1983-12-10','2010-03-28','Ronnie T. Atkins','Personal'),(15,'Montreal, Canada','1972-05-11','2004-04-30','Amy O. Norman','Personal'),(16,'Montreal, Canada','1973-08-12','2010-05-31','Robert E. Reid','Personal'),(17,'Montreal, Canada','1978-09-23','0000-00-00','Pauline H. Chandler','Personal'),(18,'British Columbia, Canada','1969-03-21','2011-07-23','Lynn O. Robertson','Personal'),(19,'Toronto, Canada','1991-02-22','2010-08-21','Peggy O. Hobbs','Personal'),(20,'Ottawa, Canada','1952-05-24','2010-09-20','Doris I. Kinney','Personal'),(21,'British Columbia, Canada','1956-07-25','2009-10-01','Tracey A. Waters','Personal'),(22,'Toronto, Canada','1969-08-27','2004-11-02','Leo D. Adkins','Personal'),(23,'Toronto, Canada','1955-09-28','2005-12-02','Constance L. Black','Personal'),(24,'Ottawa, Canada','1975-10-29','2006-01-03','Sarah O. Fox','Personal'),(25,'Quebec, Canada','1962-11-30','2007-02-04','Hugh R. Arthur','Personal'),(26,'Sherbrooke, Canada','1974-01-31','2008-03-05','Mildred I. Gilbert','Personal'),(27,'Toronto, Canada','1981-02-01','2006-04-06','Seth E. Kern','Personal'),(28,'Toronto, Canada','1979-03-02','2009-05-07','Ted A. Mason','Personal'),(29,'Ottawa, Canada','1982-04-03','2010-06-08','Mildred I. Gilbert','Personal'),(30,'Ottawa, Canada','1964-05-04','2010-07-09','Jacob C. McIntyre','Personal'),(31,'British Columbia, Canada','1992-06-05','2010-08-10','Phyllis E.Hendricks','Personal'),(32,'Montreal, Canada','1959-05-06','2010-09-11','Slyvia A. Bailey','Personal'),(33,'British Columbia, Canada','1960-07-07','2004-10-22','Glenda A. Raynor','Personal'),(34,'British Columbia, Canada','1961-08-08','2005-11-21','Juan C. McLaughlin','Personal'),(35,'Sherbrooke, Canada','1962-09-11','2006-12-22','Ted A. Law','Personal'),(36,'British Columbia, Canada','1963-10-12','2007-01-02','Arthur. L. Glass','Personal'),(37,'Ottawa, Canada','1964-11-13','2008-02-02','Ron E. Hester','Personal'),(38,'Montreal, Canada','1932-05-21','2007-04-12','Kristina H. Chung','Personal'),(39,'Gracefield, Quebec','1956-03-21','2008-07-04','Ashley O. Coble','Personal'),(40,'Baie-Comeau, Quebec','1957-03-26','2001-06-06','Peggy O. Wong','Personal'),(41,'Kingston, Ontario','1974-04-02','2007-12-19','Peter O. Holden','Joint'),(42,'Chandler, Quebec','1964-10-24','2004-08-03','Rhonda U. Buckley','Personal'),(43,'Rivière-Rouge, Quebec','1962-08-21','2008-08-10','Lucy I. Dickinson','Personal'),(44,'Red Lake, Ontario','1993-02-14','2008-08-16','Gerald E. Reeves','Personal'),(45,'Northeastern Manitoulin and the Islands, Ontario','1954-11-15','2011-01-25','Lisa B. Abrams','Personal'),(46,'Saint John, New Brunswick','1993-02-05','2008-04-01','Toni C. McKinney','Personal'),(47,'Lakeshore, Ontario','1980-10-20','2005-05-17','Marsha O. Gold','Personal'),(48,'Elliot Lake','1953-12-11','2004-12-19','Doris I. Kinney','Personal'),(49,'Shawinigan, Quebec','1964-01-10','2011-03-07','Eva N. Snow','Personal'),(50,'Edmonton, Alberta','1975-06-13','2002-04-04','Jeremy U. Yu','Personal');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Branch`
--

DROP TABLE IF EXISTS `Branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `fax` char(10) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `managed_by` int(11) DEFAULT NULL,
  `banking` tinyint(1) DEFAULT NULL,
  `investment` tinyint(1) DEFAULT NULL,
  `insurance` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branch`
--

LOCK TABLES `Branch` WRITE;
/*!40000 ALTER TABLE `Branch` DISABLE KEYS */;
INSERT INTO `Branch` VALUES (1,'SaintCatherine','5149999999','5146666666','2010-09-10',3,1,1,0),(2,'Montreal','5148877777','5148777345','2011-06-15',4,1,0,0),(3,'Laval','4875443443','4382343256','2007-11-15',5,0,0,1),(4,'Laval','4872232222','4383484934','2005-02-13',6,1,1,1),(5,'Torronto','4163345353','4172342353','2001-07-15',7,1,1,1);
/*!40000 ALTER TABLE `Branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeTitle` varchar(255) DEFAULT NULL,
  `employeeAddress` text,
  `employeeStartDate` date DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  `employeeHourlySalary` decimal(10,2) DEFAULT NULL,
  `employeeBranchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `branch_id` (`employeeBranchId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Financial Advisor','455 elm street','2011-09-30','Jhon Smith','48000.00',1),(2,'teller','123 fake street','2001-02-28','Jane Smith','38372.00',2),(3,'Bank manager','123 rich street','1977-02-18','Wyatt Cenac','238372.00',3),(4,'Bank manager','123 richer street','1967-07-11','Jhon Stewart','258172.00',4),(5,'Bank manager','123 Boardwalk','1971-05-19','Steven Colbert','244444.00',1),(6,'Bank manager','123 Park Avenue','1981-05-19','Steven Colberto','144444.00',2),(7,'Bank manager','123 5th street','1951-01-19','George St.Pierre','222222.00',5),(8,'teller','123 poor street','1981-01-29','Jane Sanchez','28222.00',1),(9,'teller','123 poorer street','1982-08-20','Toni Zampino','18222.00',3),(10,'teller','123 1st street','1972-03-20','Jhon Oliver','58222.00',4),(11,'teller','123 Val de Bris','1969-10-01','Fabrizio Baraka','48123.00',5),(12,'Financial Advisor','123 Fake street','1989-12-25','Christopher Cringle','68123.00',2),(13,'Financial Advisor','123 Laval street','1972-02-11','Jason Jhonsson','52123.00',3),(14,'Financial Advisor','123 Montreal street','1988-02-11','Jesse Jameson','55123.00',4),(15,'Financial Advisor','123 Canada street','1968-02-11','Jenny Brodure','46123.00',5),(16,'Security Gaurd','123 Safe street','1939-02-11','James Masi','36123.00',1),(17,'Security Gaurd','123 Safer street','1945-02-11','Lisa Roberts','37123.00',2),(18,'Security Gaurd','123 Apple Avenue','1965-02-12','Steve Jobs','38123.00',3),(19,'Security Gaurd','123 Watergate street','1970-01-12','Richard Nixon','39123.00',4),(20,'Security Gaurd','123 Cama','1966-06-16','Jesse Ventura','40123.00',5);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clients_own_account`
--

DROP TABLE IF EXISTS `Clients_own_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clients_own_account` (
  `client_id` int(11) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`,`account_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients_own_account`
--

LOCK TABLES `Clients_own_account` WRITE;
/*!40000 ALTER TABLE `Clients_own_account` DISABLE KEYS */;
INSERT INTO `Clients_own_account` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `Clients_own_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dmc353_1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-26  0:38:06
