-- MySQL dump 10.13  Distrib 5.1.34, for apple-darwin9.5.0 (i386)
--
-- Host: localhost    Database: dmc353_1
-- ------------------------------------------------------
-- Server version	5.5.9

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
-- Current Database: `dmc353_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dmc353_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dmc353_1`;

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
) ENGINE=MyISAM AUTO_INCREMENT=3079 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (3,'checking','3000000000.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(4,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(5,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(6,'checking','0.00','2011-07-13',0,0,0,0,'2.00',''),(7,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(8,'line of credit','-1000.00','2005-05-21',0,4,3,3,'1000.00',NULL),(9,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(10,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(11,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(12,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(13,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(14,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(15,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(16,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(17,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(18,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(19,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(20,'line of credit','-1000.00','2002-01-12',0,2,3,3,'1000.00',NULL),(21,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(22,'saving','50150.00','2001-01-04',1,1,2,2,NULL,NULL),(23,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(24,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(25,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(26,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(27,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(28,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(29,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(30,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(31,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(32,'line of credit','-1000.00','2005-05-21',0,2,3,3,'1000.00',NULL),(33,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(34,'saving','50150.00','2001-01-04',1,3,2,2,NULL,NULL),(35,'line of credit','-1000.00','2002-01-12',0,1,3,3,'1000.00',NULL),(36,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(37,'saving','50100.00','2001-01-03',1,5,2,2,NULL,NULL),(38,'line of credit','-1000.00','2002-01-12',0,4,3,3,'1000.00',NULL),(39,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(40,'saving','50150.00','2001-01-04',1,2,2,2,NULL,NULL),(41,'line of credit','-1000.00','2005-05-21',0,3,3,3,'1000.00',NULL),(42,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(43,'saving','50150.00','2001-01-04',1,4,2,2,NULL,NULL),(44,'line of credit','-1000.00','2002-01-12',0,1,3,3,'1000.00',NULL),(45,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(46,'saving','50200.00','2001-01-05',1,2,2,2,NULL,NULL),(47,'line of credit','-1000.00','2002-01-12',0,3,3,3,'1000.00',NULL),(48,'checking','0.00','2011-07-13',NULL,1,NULL,1,NULL,NULL),(49,'saving','50050.00','2001-01-02',1,3,2,2,NULL,NULL),(50,'line of credit','-1000.00','2005-05-21',0,4,3,3,'1000.00',NULL),(3073,'','0.00','0000-00-00',0,0,0,0,'0.00',''),(3074,'','0.00','2011-08-01',0,0,0,0,'0.00',''),(3075,'','45000.00','2011-08-01',0,0,0,0,'690.00',''),(3076,'','0.00','2011-08-01',0,0,0,0,'0.00',''),(3077,'credit card','0.00','2011-08-01',0,0,0,1,'0.00','personal'),(3078,'credit card','0.00','2011-08-01',0,0,0,0,'1.00','');
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Branch`
--

DROP TABLE IF EXISTS `Branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branch` (
  `branchId` int(11) NOT NULL AUTO_INCREMENT,
  `branchLocation` varchar(255) DEFAULT NULL,
  `branchFax` char(10) DEFAULT NULL,
  `branchPhone` char(10) DEFAULT NULL,
  `branchOpeningDate` date DEFAULT NULL,
  `branchManagedBy` int(11) DEFAULT NULL,
  `branchBanking` tinyint(1) DEFAULT NULL,
  `branchInvestment` tinyint(1) DEFAULT NULL,
  `branchInsurance` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`branchId`)
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
-- Table structure for table `Charge_plans`
--

DROP TABLE IF EXISTS `Charge_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge_plans` (
  `branchPlanId` int(11) NOT NULL AUTO_INCREMENT,
  `branchPlanLimit` int(11) DEFAULT NULL,
  `branchPlanOption` enum('Basic','Premuim','Ultimate') DEFAULT NULL,
  `branchCharge` decimal(10,2) DEFAULT NULL,
  `branchChargeExcessLimit` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`branchPlanId`)
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
) ENGINE=MyISAM AUTO_INCREMENT=6524 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (5,'Toronto, Canada','1985-03-01','2007-06-14','Christina R. Craig','Personal'),(6,'Waterloo, Canada','1962-04-02','2007-07-15','Albert maccafe','Personal'),(7,'Ottawa, Canada','1988-06-03','2008-08-16','Gretchen C. Mcintyre','Personal'),(8,'Montreal, Canada','1920-08-04','2009-09-17','Bonnie R. Brantley','Personal'),(9,'Toronto, Canada','1983-09-05','2008-10-22','George E. Kelly','Personal'),(10,'Ottawa, Canada','1989-08-06','2004-11-23','Barbra M. Smith','Personal'),(11,'British Columbia, Canada','1928-07-07','2005-12-25','Evelyn Y. Lyons','Personal'),(12,'Ottawa, Canada','1981-09-08','2006-01-26','Rita A. Wall','Personal'),(13,'Montreal, Canada','1982-11-09','2011-02-27','Franklin A. Watson','Personal'),(14,'Toronto, Canada','1983-12-10','2010-03-28','Ronnie T. Atkins','Personal'),(15,'Montreal, Canada','1972-05-11','2004-04-30','Amy O. Norman','Personal'),(16,'Montreal, Canada','1973-08-12','2010-05-31','Robert E. Reid','Personal'),(17,'Montreal, Canada','1978-09-23','0000-00-00','Pauline H. Chandler','Personal'),(18,'British Columbia, Canada','1969-03-21','2011-07-23','Lynn O. Robertson','Personal'),(19,'Toronto, Canada','1991-02-22','2010-08-21','Peggy O. Hobbs','Personal'),(20,'Ottawa, Canada','1952-05-24','2010-09-20','Doris I. Kinney','Personal'),(21,'British Columbia, Canada','1956-07-25','2009-10-01','Tracey A. Waters','Personal'),(22,'Toronto, Canada','1969-08-27','2004-11-02','Leo D. Adkins','Personal'),(23,'Toronto, Canada','1955-09-28','2005-12-02','Constance L. Black','Personal'),(24,'Ottawa, Canada','1975-10-29','2006-01-03','Sarah O. Fox','Personal'),(25,'Quebec, Canada','1962-11-30','2007-02-04','Hugh R. Arthur','Personal'),(26,'Sherbrooke, Canada','1974-01-31','2008-03-05','Mildred I. Gilbert','Personal'),(27,'Toronto, Canada','1981-02-01','2006-04-06','Seth E. Kern','Personal'),(28,'Toronto, Canada','1979-03-02','2009-05-07','Ted A. Mason','Personal'),(29,'Ottawa, Canada','1982-04-03','2010-06-08','Mildred I. Gilbert','Personal'),(30,'Ottawa, Canada','1964-05-04','2010-07-09','Jacob C. McIntyre','Personal'),(31,'British Columbia, Canada','1992-06-05','2010-08-10','Phyllis E.Hendricks','Personal'),(32,'Montreal, Canada','1959-05-06','2010-09-11','Slyvia A. Bailey','Personal'),(33,'British Columbia, Canada','1960-07-07','2004-10-22','Glenda A. Raynor','Personal'),(34,'British Columbia, Canada','1961-08-08','2005-11-21','Juan C. McLaughlin','Personal'),(35,'Sherbrooke, Canada','1962-09-11','2006-12-22','Ted A. Law','Personal'),(36,'British Columbia, Canada','1963-10-12','2007-01-02','Arthur. L. Glass','Personal'),(37,'Ottawa, Canada','1964-11-13','2008-02-02','Ron E. Hester','Personal'),(38,'Montreal, Canada','1932-05-21','2007-04-12','Kristina H. Chung','Personal'),(39,'Gracefield, Quebec','1956-03-21','2008-07-04','Ashley O. Coble','Personal'),(40,'Baie-Comeau, Quebec','1957-03-26','2001-06-06','Peggy O. Wong','Personal'),(41,'Kingston, Ontario','1974-04-02','2007-12-19','Peter O. Holden','Joint'),(42,'Chandler, Quebec','1964-10-24','2004-08-03','Rhonda U. Buckley','Personal'),(43,'Rivière-Rouge, Quebec','1962-08-21','2008-08-10','Lucy I. Dickinson','Personal'),(44,'Red Lake, Ontario','1993-02-14','2008-08-16','Gerald E. Reeves','Personal'),(45,'Northeastern Manitoulin and the Islands, Ontario','1954-11-15','2011-01-25','Lisa B. Abrams','Personal'),(46,'Saint John, New Brunswick','1993-02-05','2008-04-01','Toni C. McKinney','Personal'),(47,'Lakeshore, Ontario','1980-10-20','2005-05-17','Marsha O. Gold','Personal'),(48,'Elliot Lake','1953-12-11','2004-12-19','Doris I. Kinney','Personal'),(49,'Shawinigan, Quebec','1964-01-10','2011-03-07','Eva N. Snow','Personal'),(50,'Edmonton, Alberta','1975-06-13','2002-04-04','Jeremy U. Yu','Personal'),(6476,'0','0000-00-00','0000-00-00','0','0'),(6477,'0','0000-00-00','0000-00-00','0','0'),(6478,'0','0000-00-00','0000-00-00','0','0'),(6479,'0','0000-00-00','0000-00-00','0','0'),(6480,'0','0000-00-00','0000-00-00','0','0'),(6481,'0','0000-00-00','0000-00-00','0','0'),(6482,'0','0000-00-00','0000-00-00','0','0'),(6483,'0','0000-00-00','0000-00-00','0','0'),(6484,'0','0000-00-00','0000-00-00','0','0'),(6485,'0','0000-00-00','0000-00-00','0','0'),(6486,'0','0000-00-00','0000-00-00','0','0'),(6487,'0','0000-00-00','0000-00-00','0','0'),(6488,'0','0000-00-00','0000-00-00','0','0'),(6489,'0','0000-00-00','0000-00-00','0','0'),(6490,'0','0000-00-00','0000-00-00','0','0'),(6491,'0','0000-00-00','0000-00-00','0','0'),(6492,'0','0000-00-00','0000-00-00','0','0'),(6493,'0','0000-00-00','0000-00-00','0','0'),(6494,'0','0000-00-00','0000-00-00','0','0'),(6495,'0','0000-00-00','0000-00-00','0','0'),(6496,'0','0000-00-00','0000-00-00','0','0'),(6497,'0','0000-00-00','0000-00-00','0','0'),(6498,'0','0000-00-00','0000-00-00','0','0'),(6499,'0','0000-00-00','0000-00-00','0','0'),(6500,'0','0000-00-00','0000-00-00','0','0'),(6501,'0','0000-00-00','0000-00-00','0','0'),(6502,'0','0000-00-00','0000-00-00','0','0'),(6503,'0','0000-00-00','0000-00-00','0','0'),(6504,'0','0000-00-00','0000-00-00','0','0'),(6505,'0','0000-00-00','0000-00-00','0','0'),(6506,'0','0000-00-00','0000-00-00','0','0'),(6507,'0','0000-00-00','0000-00-00','0','0'),(6508,'0','0000-00-00','0000-00-00','0','0'),(6509,'0','0000-00-00','0000-00-00','0','0'),(6510,'','0000-00-00','0000-00-00','Mathieu',''),(6511,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6512,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6513,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6514,'4540-7 Clark','2011-01-01','2011-01-01','Mathieu','Personal'),(6515,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6516,'4540-7 Clark','2011-01-01','2011-08-01','Mathieu','Personal'),(6517,'','0000-00-00','2011-08-01','sdfdsf',''),(6518,'','0000-00-00','2011-08-01','sdfdsf',''),(6519,'','0000-00-00','2011-08-01','sdfdsf',''),(6520,'','0000-00-00','2011-08-01','',''),(6521,'','0000-00-00','2011-08-01','Jorges',''),(6522,'','0000-00-00','2011-08-01','Machine','Personal');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientCard`
--

DROP TABLE IF EXISTS `ClientCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientCard` (
  `clientCardNumber` char(25) NOT NULL,
  `clientId` int(11) NOT NULL,
  `clientPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`clientCardNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientCard`
--

LOCK TABLES `ClientCard` WRITE;
/*!40000 ALTER TABLE `ClientCard` DISABLE KEYS */;
INSERT INTO `ClientCard` VALUES ('5316625496891500',31,'user'),('5234673217449850',32,'user'),('5444698667572618',33,'user'),('5479396735697461',34,'user'),('5181879446019637',35,'user'),('5428624450048418',36,'user'),('5132802249268995',37,'user'),('5158476101551605',38,'user'),('5219338460953532',39,'user'),('5595915071231145',40,'user'),('4929230284827279',41,'user'),('4532586657888035',42,'user'),('4916824136974142',43,'user'),('4024007194660451',44,'user'),('4716185445297779',45,'user'),('4916261737772601',46,'user'),('4716435955632398',47,'user'),('4024007120757843',48,'user'),('4024007197456006',49,'user'),('4485015036883621',50,'user'),('347843549459076',51,'user'),('374949812235592',52,'user'),('370058802451807',53,'user'),('349778173154379',54,'user'),('373769765645881',55,'user'),('4539049359006',56,'user'),('4916514888406',57,'user'),('4024007177633',58,'user'),('4485580061579',59,'user'),('4716223500130',60,'user');
/*!40000 ALTER TABLE `ClientCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Client_Overview`
--

DROP TABLE IF EXISTS `Client_Overview`;
/*!50001 DROP VIEW IF EXISTS `Client_Overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Client_Overview` (
  `clientId` int(11),
  `clientAddress` text,
  `clientDateOfBirth` date,
  `clientJoiningDate` date,
  `clientName` varchar(255),
  `clientCategory` varchar(255),
  `accountCount` bigint(21),
  `netValue` decimal(37,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Clients_own_account`
--

DROP TABLE IF EXISTS `Clients_own_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clients_own_account` (
  `clientId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clientId`,`accountId`),
  KEY `account_id` (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients_own_account`
--

LOCK TABLES `Clients_own_account` WRITE;
/*!40000 ALTER TABLE `Clients_own_account` DISABLE KEYS */;
INSERT INTO `Clients_own_account` VALUES (1,1),(2,2),(3,3),(3,5),(4,4),(5,3),(5,5),(5,23),(5,34),(5,54),(5,3456),(6,6),(6,23),(6,55),(6,345),(7,7),(7,34),(7,35),(8,8),(9,9),(9,43),(10,6),(10,10),(11,10),(11,11),(12,4),(12,12),(12,987),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,0),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `Clients_own_account` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Financial Advisor','455 elm street','2011-09-30','Jhon Smith5','48000.00',1),(2,'teller','123 fake street','2001-02-28','Jane Smith','38372.00',2),(3,'Bank manager','123 rich street','1977-02-18','Wyatt Cenac','238372.00',3),(4,'Bank manager','123 richer street','1967-07-11','Jhon Stewart','258172.00',4),(5,'Bank manager','123 Boardwalk','1971-05-19','Steven Colbert','244444.00',1),(6,'Bank manager','123 Park Avenue','1981-05-19','Steven Colberto','144444.00',2),(7,'Bank manager','123 5th street','1951-01-19','George St.Pierre','222222.00',5),(8,'teller','123 poor street','1981-01-29','Jane Sanchez','28222.00',1),(9,'teller','123 poorer street','1982-08-20','Toni Zampino','18222.00',3),(10,'teller','123 1st street','1972-03-20','Jhon Oliver','58222.00',4),(11,'teller','123 Val de Bris','1969-10-01','Fabrizio Baraka','48123.00',5),(12,'Financial Advisor','123 Fake street','1989-12-25','Christopher Cringle','68123.00',2),(13,'Financial Advisor','123 Laval street','1972-02-11','Jason Jhonsson','52123.00',3),(14,'Financial Advisor','123 Montreal street','1988-02-11','Jesse Jameson','55123.00',4),(15,'Financial Advisor','123 Canada street','1968-02-11','Jenny Brodure','46123.00',5),(16,'Security Gaurd','123 Safe street','1939-02-11','James Masi','36123.00',1),(17,'Security Gaurd','123 Safer street','1945-02-11','Lisa Roberts','37123.00',2),(18,'Security Gaurd','123 Apple Avenue','1965-02-12','Steve Jobs','38123.00',3),(19,'Security Gaurd','123 Watergate street','1970-01-12','Richard Nixon','39123.00',4),(20,'Security Gaurd','123 Cama','1966-06-16','Jesse Ventura','40123.00',5),(22,'Financial Advisor','','2011-08-01','qwerty','0.00',1);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Payroll`
--

DROP TABLE IF EXISTS `Employee_Payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_Payroll` (
  `employeePayId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `employeePaymentDate` date NOT NULL,
  `employeePaymentAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`employeePayId`)
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
-- Table structure for table `Employee_Schedule`
--

DROP TABLE IF EXISTS `Employee_Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_Schedule` (
  `employeeId` int(11) NOT NULL,
  `employeeScheduleDay` date NOT NULL,
  `employeeScheduleCode` enum('working','holidays','sick_paid','sick_unpaid') NOT NULL,
  `employeeScheduleHours` decimal(10,2) NOT NULL,
  `employeeScheduleStartTime` datetime NOT NULL,
  PRIMARY KEY (`employeeId`)
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
-- Table structure for table `Employee_login`
--

DROP TABLE IF EXISTS `Employee_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_login` (
  `employeeId` int(11) NOT NULL,
  `employeeLoginPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_login`
--

LOCK TABLES `Employee_login` WRITE;
/*!40000 ALTER TABLE `Employee_login` DISABLE KEYS */;
INSERT INTO `Employee_login` VALUES (1,'admin'),(2,'admin'),(3,'admin'),(4,'admin'),(5,'admin'),(6,'admin'),(7,'admin'),(8,'admin'),(9,'admin'),(10,'admin'),(11,'admin'),(12,'admin'),(13,'admin'),(14,'admin'),(15,'admin'),(16,'admin'),(17,'admin'),(18,'admin'),(19,'admin'),(20,'admin');
/*!40000 ALTER TABLE `Employee_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interest_rate`
--

DROP TABLE IF EXISTS `Interest_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_rate` (
  `interestRateId` int(11) NOT NULL AUTO_INCREMENT,
  `interestRatePercentage` decimal(10,2) DEFAULT NULL,
  `typeOfAccount` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
  `typeOfService` enum('credit','non-credit') DEFAULT NULL,
  PRIMARY KEY (`interestRateId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 DATA DIRECTORY='./dmc353_1/' INDEX DIRECTORY='./dmc353_1/';
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
-- Temporary table structure for view `Password`
--

DROP TABLE IF EXISTS `Password`;
/*!50001 DROP VIEW IF EXISTS `Password`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Password` (
  `Username` char(25),
  `Password` varchar(45),
  `Type` varchar(7),
  `Id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `transactionId` int(11) NOT NULL AUTO_INCREMENT,
  `transactionType` enum('DEPOSIT','WITHDRAW','CHARGE','TRANSFER') NOT NULL,
  `transactionAmount` decimal(10,2) DEFAULT NULL,
  `transactionDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `accountNumber` int(11) DEFAULT NULL,
  `transactionFees` decimal(10,2) DEFAULT NULL,
  `transactionDescription` text,
  PRIMARY KEY (`transactionId`),
  KEY `account` (`accountNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,'DEPOSIT','50000.00','2001-01-01 05:00:00',5,'0.25','Hey ');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dmc353_1`
--

USE `dmc353_1`;

--
-- Final view structure for view `Client_Overview`
--

/*!50001 DROP TABLE `Client_Overview`*/;
/*!50001 DROP VIEW IF EXISTS `Client_Overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Client_Overview` AS select `Client`.`clientId` AS `clientId`,`Client`.`clientAddress` AS `clientAddress`,`Client`.`clientDateOfBirth` AS `clientDateOfBirth`,`Client`.`clientJoiningDate` AS `clientJoiningDate`,`Client`.`clientName` AS `clientName`,`Client`.`clientCategory` AS `clientCategory`,(select count(0) from `Clients_own_account` `cos` where (`cos`.`clientId` = `Client`.`clientId`)) AS `accountCount`,(select sum(`acc`.`accountBalance`) from (`Account` `acc` join `Clients_own_account` `cos` on((`acc`.`accountNumber` = `cos`.`accountId`))) where (`cos`.`clientId` = `Client`.`clientId`)) AS `netValue` from `Client` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Password`
--

/*!50001 DROP TABLE `Password`*/;
/*!50001 DROP VIEW IF EXISTS `Password`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Password` AS select `ClientCard`.`clientCardNumber` AS `Username`,`ClientCard`.`clientPassword` AS `Password`,'client' AS `Type`,`ClientCard`.`clientId` AS `Id` from `ClientCard` union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'manager' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where `e`.`employeeId` in (select `Branch`.`branchManagedBy` from `Branch`) union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'clerk' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where (not(`e`.`employeeId` in (select `Branch`.`branchManagedBy` from `Branch`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-08-03 23:19:40
