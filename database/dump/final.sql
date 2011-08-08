
	 Mathieu Dumais-Savard <matdumsa@gmail.com>
(no subject)
Mathieu Dumais-Savard <ma_dum@encs.concordia.ca>	 Mon, Aug 8, 2011 at 2:31 PM
To: body.txt@encs.concordia.ca, matdumsa@gmail.com
-- MySQL dump 10.13  Distrib 5.1.38, for pc-linux-gnu (i686)
--
-- Host: clipper.encs.concordia.ca    Database: dmc353_1
-- ------------------------------------------------------
-- Server version       5.1.38

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
) ENGINE=MyISAM AUTO_INCREMENT=3080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (3,'checking','348.00','2011-07-13',NULL,1,2,1,NULL,NULL),(4,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(5,'line of credit','-107806884.26','2002-01-12',0,4,3,3,'1000.00',NULL),(6,'checking','51.00','2011-07-13',0,0,2,0,'2.00',''),(7,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(8,'line of credit','-1252.53','2005-05-21',0,4,3,3,'1000.00',NULL),(9,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(10,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(11,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(12,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(13,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(14,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(15,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(16,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(17,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(18,'checking','71.40','2011-07-13',NULL,1,2,1,NU!
 LL,NULL),(19,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(20,'line of credit','-1252.53','2002-01-12',0,2,3,3,'1000.00',NULL),(21,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(22,'saving','58492.72','2001-01-04',1,1,2,2,NULL,NULL),(23,'line of credit','-108269546.87','2002-01-12',0,4,3,3,'1000.00',NULL),(24,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(25,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(26,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(27,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(28,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(29,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(30,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(31,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(32,'line of credit','-1252.53','2005-05-21',0,2,3,3,'1000.00',NULL),(33,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(34,'saving','493.66','2001-01-04',1,3,2,2,NULL,NULL),(35,'!
 line of credit','-1252.53','2002-01-12',0,1,3,3,'1000.00',NULL!
 ),(36,'c
hecking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(37,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(38,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(39,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(40,'saving','58492.72','2001-01-04',1,2,2,2,NULL,NULL),(41,'line of credit','-1252.53','2005-05-21',0,3,3,3,'1000.00',NULL),(42,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(43,'saving','58492.72','2001-01-04',1,4,2,2,NULL,NULL),(44,'line of credit','-1252.53','2002-01-12',0,1,3,3,'1000.00',NULL),(45,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(46,'saving','58550.98','2001-01-05',1,2,2,2,NULL,NULL),(47,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(48,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(49,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(50,'line of credit','-1252.53','2005-05-21',0,4,3,3,'1000.00',NULL),(3073,'','0.00','0000-00-00',0,0,0,0,'0.00',''),(3074,'','0.00','2011-08-01',0,0!
 ,0,0,'0.00',''),(3075,'','0.00','2011-08-01',0,0,0,0,'690.00',''),(3076,'','0.00','2011-08-01',0,0,0,0,'0.00',''),(3077,'credit card','20.00','2011-08-01',0,0,0,1,'0.00','personal'),(3078,'credit card','0.00','2011-08-01',0,0,0,0,'1.00',''),(3079,'checking','33450.35','2011-08-08',0,1,2,1,'500.00','personal');
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
INSERT INTO `Charge_plans` VALUES (1,25,'Basic','10.00','1.00'),(2,50,'Premuim','17.00','0.50'),(3,100,'Ultimate','25.00','0.25');
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
) ENGINE=MyISAM AUTO_INCREMENT=6526 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (5,'Toronto, Canada','1985-03-01','2007-06-14','Christina R. Craig','Personal'),(6,'Waterloo, Canada','1962-04-02','2007-07-15','Albert maccafe','Personal'),(7,'Ottawa, Canada','1988-06-03','2008-08-16','Gretchen C. Mcintyre','Personal'),(8,'Montreal, Canada','1920-08-04','2009-09-17','Bonnie R. Brantley','Personal'),(9,'Toronto, Canada','1983-09-05','2008-10-22','George E. Kelly','Personal'),(10,'Ottawa, Canada','1989-08-06','2004-11-23','Barbra M. Smith','Personal'),(11,'British Columbia, Canada','1928-07-07','2005-12-25','Evelyn Y. Lyons','Personal'),(12,'Ottawa, Canada','1981-09-08','2006-01-26','Rita A. Wall','Personal'),(13,'Montreal, Canada','1982-11-09','2011-02-27','Franklin A. Watson','Personal'),(14,'Toronto, Canada','1983-12-10','2010-03-28','Ronnie T. Atkins','Personal'),(15,'Montreal, Canada','1972-05-11','2004-04-30','Amy O. Norman','Personal'),(16,'Montreal, Canada','1973-08-12','2010-05-31','Robert E. Reid','Personal'),(17,'Montre!
 al, Canada','1978-09-23','0000-00-00','Pauline H. Chandler','Personal'),(18,'British Columbia, Canada','1969-03-21','2011-07-23','Lynn O. Robertson','Personal'),(19,'Toronto, Canada','1991-02-22','2010-08-21','Peggy O. Hobbs','Personal'),(20,'Ottawa, Canada','1952-05-24','2010-09-20','Doris I. Kinney','Personal'),(21,'British Columbia, Canada','1956-07-25','2009-10-01','Tracey A. Waters','Personal'),(22,'Toronto, Canada','1969-08-27','2004-11-02','Leo D. Adkins','Personal'),(23,'Toronto, Canada','1955-09-28','2005-12-02','Constance L. Black','Personal'),(24,'Ottawa, Canada','1975-10-29','2006-01-03','Sarah O. Fox','Personal'),(25,'Quebec, Canada','1962-11-30','2007-02-04','Hugh R. Arthur','Personal'),(26,'Sherbrooke, Canada','1974-01-31','2008-03-05','Mildred I. Gilbert','Personal'),(27,'Toronto, Canada','1981-02-01','2006-04-06','Seth E. Kern','Personal'),(28,'Toronto, Canada','1979-03-02','2009-05-07','Ted A. Mason','Personal'),(29,'Ottawa, Canada','1982-04-03','2010-06-0!
 8','Mildred I. Gilbert','Personal'),(30,'Ottawa, Canada','1964!
 -05-04',
'2010-07-09','Jacob C. McIntyre','Personal'),(31,'British Columbia, Canada','1992-06-05','2010-08-10','Phyllis E.Hendricks','Personal'),(32,'Montreal, Canada','1959-05-06','2010-09-11','Slyvia A. Bailey','Personal'),(33,'British Columbia, Canada','1960-07-07','2004-10-22','Glenda A. Raynor','Personal'),(34,'British Columbia, Canada','1961-08-08','2005-11-21','Juan C. McLaughlin','Personal'),(35,'Sherbrooke, Canada','1962-09-11','2006-12-22','Ted A. Law','Personal'),(36,'British Columbia, Canada','1963-10-12','2007-01-02','Arthur. L. Glass','Personal'),(37,'Ottawa, Canada','1964-11-13','2008-02-02','Ron E. Hester','Personal'),(38,'Montreal, Canada','1932-05-21','2007-04-12','Kristina H. Chung','Personal'),(39,'Gracefield, Quebec','1956-03-21','2008-07-04','Ashley O. Coble','Personal'),(40,'Baie-Comeau, Quebec','1957-03-26','2001-06-06','Peggy O. Wong','Personal'),(41,'Kingston, Ontario','1974-04-02','2007-12-19','Peter O. Holden','Joint'),(42,'Chandler, Quebec','1964-10-24','!
 2004-08-03','Rhonda U. Buckley','Personal'),(43,'RiviÃ¨re-Rouge, Quebec','1962-08-21','2008-08-10','Lucy I. Dickinson','Personal'),(44,'Red Lake, Ontario','1993-02-14','2008-08-16','Gerald E. Reeves','Personal'),(45,'Northeastern Manitoulin and the Islands, Ontario','1954-11-15','2011-01-25','Lisa B. Abrams','Personal'),(46,'Saint John, New Brunswick','1993-02-05','2008-04-01','Toni C. McKinney','Personal'),(47,'Lakeshore, Ontario','1980-10-20','2005-05-17','Marsha O. Gold','Personal'),(48,'Elliot Lake','1953-12-11','2004-12-19','Doris I. Kinney','Personal'),(49,'Shawinigan, Quebec','1964-01-10','2011-03-07','Eva N. Snow','Personal'),(50,'Edmonton, Alberta','1975-06-13','2002-04-04','Jeremy U. Yu','Personal'),(6476,'0','0000-00-00','0000-00-00','0','0'),(6477,'0','0000-00-00','0000-00-00','0','0'),(6478,'0','0000-00-00','0000-00-00','0','0'),(6479,'0','0000-00-00','0000-00-00','0','0'),(6480,'0','0000-00-00','0000-00-00','0','0'),(6481,'0','0000-00-00','0000-00-00','0','0!
 '),(6482,'0','0000-00-00','0000-00-00','0','0'),(6483,'0','000!
 0-00-00'
,'0000-00-00','0','0'),(6484,'0','0000-00-00','0000-00-00','0','0'),(6485,'0','0000-00-00','0000-00-00','0','0'),(6486,'0','0000-00-00','0000-00-00','0','0'),(6487,'0','0000-00-00','0000-00-00','0','0'),(6488,'0','0000-00-00','0000-00-00','0','0'),(6489,'0','0000-00-00','0000-00-00','0','0'),(6490,'0','0000-00-00','0000-00-00','0','0'),(6491,'0','0000-00-00','0000-00-00','0','0'),(6492,'0','0000-00-00','0000-00-00','0','0'),(6493,'0','0000-00-00','0000-00-00','0','0'),(6494,'0','0000-00-00','0000-00-00','0','0'),(6495,'0','0000-00-00','0000-00-00','0','0'),(6496,'0','0000-00-00','0000-00-00','0','0'),(6497,'0','0000-00-00','0000-00-00','0','0'),(6498,'0','0000-00-00','0000-00-00','0','0'),(6499,'0','0000-00-00','0000-00-00','0','0'),(6500,'0','0000-00-00','0000-00-00','0','0'),(6501,'0','0000-00-00','0000-00-00','0','0'),(6502,'0','0000-00-00','0000-00-00','0','0'),(6503,'0','0000-00-00','0000-00-00','0','0'),(6504,'0','0000-00-00','0000-00-00','0','0'),(6505,'0','0000-00-00!
 ','0000-00-00','0','0'),(6506,'0','0000-00-00','0000-00-00','0','0'),(6507,'0','0000-00-00','0000-00-00','0','0'),(6508,'0','0000-00-00','0000-00-00','0','0'),(6509,'0','0000-00-00','0000-00-00','0','0'),(6510,'','0000-00-00','0000-00-00','Mathieu',''),(6511,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6512,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6513,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6514,'4540-7 Clark','2011-01-01','2011-01-01','Mathieu','Personal'),(6515,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6516,'4540-7 Clark','2011-01-01','2011-08-01','Mathieu','Personal'),(6517,'','0000-00-00','2011-08-01','sdfdsf',''),(6518,'','0000-00-00','2011-08-01','sdfdsf',''),(6519,'','0000-00-00','2011-08-01','sdfdsf',''),(6520,'','0000-00-00','2011-08-01','',''),(6521,'','0000-00-00','2011-08-01','Jorges',''),(6522,'','0000-00-00','2011-08-01','Machine','Personal'),(6524,'445645','2001-01-01','2!
 011-08-08','Mathieu','Personal'),(6525,'123 asdf','0000-00-00'!
 ,'2011-0
8-08','shmed','allo');
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
 PRIMARY KEY (`clientCardNumber`),
 KEY `Owns` (`clientId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientCard`
--

LOCK TABLES `ClientCard` WRITE;
/*!40000 ALTER TABLE `ClientCard` DISABLE KEYS */;
INSERT INTO `ClientCard` VALUES ('5316625496891500',1,'user'),('5234673217449850',2,'user'),('5444698667572618',3,'user'),('5479396735697461',4,'user'),('5181879446019637',5,'user'),('5428624450048418',6,'user'),('5132802249268995',7,'user'),('5158476101551605',8,'user'),('5219338460953532',9,'user'),('5595915071231145',10,'user'),('4929230284827279',11,'user'),('4532586657888035',12,'user'),('4916824136974142',13,'user'),('4024007194660451',14,'user'),('4716185445297779',15,'user'),('4916261737772601',16,'user'),('4716435955632398',17,'user'),('4024007120757843',18,'user'),('4024007197456006',19,'user'),('4485015036883621',20,'user'),('347843549459076',21,'user'),('374949812235592',22,'user'),('370058802451807',23,'user'),('349778173154379',24,'user'),('373769765645881',25,'user'),('4539049359006',26,'user'),('4916514888406',27,'user'),('4024007177633',28,'user'),('4485580061579',29,'user'),('4716223500130',30,'user');
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
INSERT INTO `Clients_own_account` VALUES (1,1),(2,2),(3,3),(3,5),(4,4),(5,3),(5,5),(5,23),(5,34),(5,54),(5,3456),(6,6),(6,23),(6,55),(6,345),(7,3),(7,7),(7,34),(7,35),(8,0),(8,8),(9,9),(9,43),(10,6),(10,10),(11,10),(11,11),(12,4),(12,12),(12,987),(13,13),(13,24),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,0),(47,47),(48,48),(49,49),(50,50),(6490,55),(6511,12);
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
INSERT INTO `Employee` VALUES (1,'Financial Advisor','455 elm street','2011-09-30','Jhon Smith5','23.08',1),(2,'teller','123 fake street','2001-02-28','Jane Smith','18.45',2),(3,'Bank manager','123 rich street','1977-02-18','Wyatt Cenac','114.60',3),(4,'Bank manager','123 richer street','1967-07-11','Jhon Stewart','124.12',4),(5,'Bank manager','123 Boardwalk','1971-05-19','Steven Colbert','117.52',1),(6,'Bank manager','123 Park Avenue','1981-05-19','Steven Colberto','69.44',2),(7,'Bank manager','123 5th street','1951-01-19','George St.Pierre','106.84',5),(8,'teller','123 poor street','1981-01-29','Jane Sanchez','13.57',1),(9,'teller','123 poorer street','1982-08-20','Toni Zampino','8.76',3),(10,'teller','123 1st street','1972-03-20','Jhon Oliver','27.99',4),(11,'teller','123 Val de Bris','1969-10-01','Fabrizio Baraka','23.14',5),(12,'Financial Advisor','123 Fake street','1989-12-25','Christopher Cringle','32.75',2),(13,'Financial Advisor','123 Laval street','1972-02-11','Jas!
 on Jhonsson','25.06',3),(14,'Financial Advisor','123 Montreal street','1988-02-11','Jesse Jameson','26.50',4),(15,'Financial Advisor','123 Canada street','1968-02-11','Jenny Brodure','22.17',5),(16,'Security Gaurd','123 Safe street','1939-02-11','James Masi','17.37',1),(17,'Security Gaurd','123 Safer street','1945-02-11','Lisa Roberts','17.85',2),(18,'Security Gaurd','123 Apple Avenue','1965-02-12','Steve Jobs','18.33',3),(19,'Security Gaurd','123 Watergate street','1970-01-12','Richard Nixon','18.81',4),(20,'Security Gaurd','123 Cama','1966-06-16','Jesse Ventura','19.29',5);
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
 `employeePaymentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `employeePaymentAmount` decimal(10,2) NOT NULL,
 PRIMARY KEY (`employeePayId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Payroll`
--

LOCK TABLES `Employee_Payroll` WRITE;
/*!40000 ALTER TABLE `Employee_Payroll` DISABLE KEYS */;
INSERT INTO `Employee_Payroll` VALUES (1,1,'2001-01-01 05:00:00','2000.00'),(2,1,'2011-08-08 04:42:08','323.12'),(3,2,'2010-03-05 02:21:21','1000000.00'),(4,2,'2011-08-08 17:36:28','904.05'),(5,3,'2011-08-08 17:36:28','5615.40'),(6,4,'2011-08-08 17:36:28','6081.88'),(7,5,'2011-08-08 17:36:28','5758.48'),(8,6,'2011-08-08 17:36:28','3610.88'),(9,7,'2011-08-08 17:36:28','4487.28'),(10,8,'2011-08-08 17:36:28','569.94'),(11,9,'2011-08-08 17:36:28','367.92'),(12,10,'2011-08-08 17:36:28','1175.58'),(13,11,'2011-08-08 17:36:28','971.88'),(14,12,'2011-08-08 17:36:28','1375.50'),(15,13,'2011-08-08 17:36:28','1052.52'),(16,14,'2011-08-08 17:36:28','1113.00'),(17,15,'2011-08-08 17:36:28','931.14'),(18,16,'2011-08-08 17:36:28','729.54'),(19,17,'2011-08-08 17:36:28','749.70'),(20,18,'2011-08-08 17:36:28','769.86'),(21,19,'2011-08-08 17:36:28','790.02'),(22,20,'2011-08-08 17:36:28','810.18');
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
 PRIMARY KEY (`employeeId`,`employeeScheduleDay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Schedule`
--

LOCK TABLES `Employee_Schedule` WRITE;
/*!40000 ALTER TABLE `Employee_Schedule` DISABLE KEYS */;
INSERT INTO `Employee_Schedule` VALUES (1,'2011-08-01','working','7.00','0000-00-00 00:00:00'),(2,'2011-08-01','working','7.00','2011-08-03 20:32:34'),(3,'0000-00-00','','0.00','0000-00-00 00:00:00'),(0,'0000-00-00','','0.00','0000-00-00 00:00:00'),(4,'2011-08-02','','8.00','0000-00-00 00:00:00'),(5,'2011-08-02','working','8.00','2010-04-03 20:11:11'),(6,'2011-07-05','working','10.00','2010-03-04 11:01:01'),(1,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-01',!
 'working','7.00','0000-00-00 00:00:00'),(12,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-02','working','7.00','0000-00-0!
 0 00:00:00'),(9,'2011-07-02','working','7.00','0000-00-00 00:0!
 0:00'),(
10,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-03','working','!
 7.00','0000-00-00 00:00:00'),(8,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-04','working','7.00','0000-00-00 00:00:0!
 0'),(5,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(6!
 ,'2011-0
7-04','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-05','working','7.00','00!
 00-00-00 00:00:00'),(4,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(16,'2011-!
 07-06','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-06!
 ','worki
ng','7.00','0000-00-00 00:00:00'),(18,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-09','working','7.00','0000-00-00 00:00:!
 00'),(15,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-09','working','7.00','0000-00-00 00:00:00');
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
-- Table structure for table `Interest_Rate`
--

DROP TABLE IF EXISTS `Interest_Rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_Rate` (
 `interestRateId` int(11) NOT NULL AUTO_INCREMENT,
 `interestRatePercentage` decimal(10,2) DEFAULT NULL,
 `typeOfAccount` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
 `typeOfService` enum('credit','non-credit') DEFAULT NULL,
 PRIMARY KEY (`interestRateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_Rate`
--

LOCK TABLES `Interest_Rate` WRITE;
/*!40000 ALTER TABLE `Interest_Rate` DISABLE KEYS */;
INSERT INTO `Interest_Rate` VALUES (1,'0.06','credit card','credit'),(2,'0.02','saving','non-credit'),(3,'0.04','line of credit','credit');
/*!40000 ALTER TABLE `Interest_Rate` ENABLE KEYS */;
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
-- Temporary table structure for view `Password`
--

DROP TABLE IF EXISTS `Password`;
/*!50001 DROP VIEW IF EXISTS `Password`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Password` (
 `Username` varbinary(25),
 `Password` varchar(45),
 `Type` varchar(7),
 `Id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reports_Month`
--

DROP TABLE IF EXISTS `Reports_Month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports_Month` (
 `year` int(11) DEFAULT NULL,
 `month` int(11) DEFAULT NULL,
 `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports_Month`
--

LOCK TABLES `Reports_Month` WRITE;
/*!40000 ALTER TABLE `Reports_Month` DISABLE KEYS */;
INSERT INTO `Reports_Month` VALUES (2011,1,'2011-01'),(2011,2,'2011-02'),(2011,3,'2011-03'),(2011,4,'2011-04'),(2011,5,'2011-05'),(2011,6,'2011-06'),(2011,7,'2011-07'),(2011,8,'2011-08'),(2011,9,'2011-09'),(2011,10,'2011-10'),(2011,11,'2011-11'),(2011,12,'2011-12');
/*!40000 ALTER TABLE `Reports_Month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
 `transactionId` int(11) NOT NULL AUTO_INCREMENT,
 `transactionType` enum('DEPOSIT','WITHDRAW','CHARGE','TRANSFER','INTEREST') NOT NULL,
 `transactionAmount` decimal(10,2) DEFAULT NULL,
 `transactionDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 `accountNumber` int(11) DEFAULT NULL,
 `transactionFees` decimal(10,2) DEFAULT NULL,
 `transactionDescription` text,
 PRIMARY KEY (`transactionId`),
 KEY `account` (`accountNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=602 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,'DEPOSIT','50000.00','2001-01-01 05:00:00',5,'0.25','Hey '),(2,'TRANSFER','-500.00','2011-08-04 01:16:12',NULL,'0.00','Internet transfer, money leaving'),(3,'TRANSFER','500.00','2011-08-04 01:16:12',NULL,'0.00','Internet transfer, money leaving'),(4,'TRANSFER','-500.00','2011-08-04 01:16:42',NULL,'0.00','Internet transfer, money leaving'),(5,'TRANSFER','500.00','2011-08-04 01:16:42',NULL,'0.00','Internet transfer, money leaving'),(6,'TRANSFER','-500.00','2011-08-04 01:23:26',3,'0.00','Internet transfer, money leaving'),(7,'TRANSFER','500.00','2011-08-04 01:23:26',5,'0.00','Internet transfer, money leaving'),(8,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(9,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(10,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(11,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet !
 transfer, money leaving'),(12,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(13,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(14,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(15,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(16,'TRANSFER','-500.00','2011-08-04 01:23:53',3,'0.00','Internet transfer, money leaving'),(17,'TRANSFER','500.00','2011-08-04 01:23:53',5,'0.00','Internet transfer, money leaving'),(18,'TRANSFER','-5.00','2011-08-04 01:26:01',3,'0.00','Internet transfer, money leaving'),(19,'TRANSFER','5.00','2011-08-04 01:26:01',5,'0.00','Internet transfer, money leaving'),(20,'TRANSFER','-5.00','2011-08-04 01:26:24',3,'0.00','Internet transfer, money leaving'),(21,'TRANSFER','5.00','2011-08-04 01:26:24',5,'0.00','Internet transfer, money leaving'),(22,'TRANSFER','-5.00','2011-08-04 01:26:25',3,'0.00','!
 Internet transfer, money leaving'),(23,'TRANSFER','5.00','2011!
 -08-04 0
1:26:25',5,'0.00','Internet transfer, money leaving'),(24,'TRANSFER','-5.00','2011-08-04 01:26:25',3,'0.00','Internet transfer, money leaving'),(25,'TRANSFER','5.00','2011-08-04 01:26:25',5,'0.00','Internet transfer, money leaving'),(26,'TRANSFER','-5.00','2011-08-04 01:26:58',3,'0.00','Internet transfer, money leaving'),(27,'TRANSFER','5.00','2011-08-04 01:26:58',5,'0.00','Internet transfer, money leaving'),(28,'TRANSFER','-5.00','2011-08-04 01:26:59',3,'0.00','Internet transfer, money leaving'),(29,'TRANSFER','5.00','2011-08-04 01:26:59',5,'0.00','Internet transfer, money leaving'),(30,'TRANSFER','-5.00','2011-08-04 01:26:59',3,'0.00','Internet transfer, money leaving'),(31,'TRANSFER','5.00','2011-08-04 01:26:59',5,'0.00','Internet transfer, money leaving'),(32,'TRANSFER','-5.00','2011-08-04 01:27:02',3,'0.00','Internet transfer, money leaving'),(33,'TRANSFER','5.00','2011-08-04 01:27:02',5,'0.00','Internet transfer, money leaving'),(34,'TRANSFER','-5.00','2011-08-04 01:27!
 :03',3,'0.00','Internet transfer, money leaving'),(35,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(36,'TRANSFER','-5.00','2011-08-04 01:27:03',3,'0.00','Internet transfer, money leaving'),(37,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(38,'TRANSFER','-5.00','2011-08-04 01:27:03',3,'0.00','Internet transfer, money leaving'),(39,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(40,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(41,'TRANSFER','5.00','2011-08-04 01:27:05',5,'0.00','Internet transfer, money leaving'),(42,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(43,'TRANSFER','5.00','2011-08-04 01:27:05',5,'0.00','Internet transfer, money leaving'),(44,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(45,'TRANSFER','5.00','2011-08-04 01:27:05'!
 ,5,'0.00','Internet transfer, money leaving'),(46,'TRANSFER','!
 -5.00','
2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(47,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(48,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(49,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(50,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(51,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(52,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(53,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(54,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(55,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(56,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(57,'TRANSFER','5.00','2011-!
 08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(58,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(59,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(60,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(61,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(62,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(63,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(64,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(65,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(66,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(67,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(68,'TRANSFER','-5.00','2011-08-!
 04 01:27:07',3,'0.00','Internet transfer, money leaving'),(69,!
 'TRANSFE
R','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(70,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(71,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(72,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(73,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(74,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(75,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(76,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(77,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(78,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(79,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(80,'TRANSFER','-!
 5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(81,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(82,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(83,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(84,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(85,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(86,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(87,'TRANSFER','5.00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money leaving'),(88,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(89,'TRANSFER','5.00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money leaving'),(90,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(91,'TRANSFER','5.!
 00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money !
 leaving'
),(
92,'TRANSFER','-5.00','2011-08-04 01:27:11',3,'0.00','Internet transfer, money leaving'),(93,'TRANSFER','5.00','2011-08-04 01:27:11',23,'0.00','Internet transfer, money leaving'),(94,'TRANSFER','-5.00','2011-08-04 01:27:12',3,'0.00','Internet transfer, money leaving'),(95,'TRANSFER','5.00','2011-08-04 01:27:12',34,'0.00','Internet transfer, money leaving'),(96,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(97,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(98,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(99,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(100,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(101,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(102,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving!
 '),(103,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(104,'TRANSFER','-500.00','2011-08-04 01:27:36',3,'0.00','Internet transfer, money leaving'),(105,'TRANSFER','500.00','2011-08-04 01:27:36',34,'0.00','Internet transfer, money arriving'),(106,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(107,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(108,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(109,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(110,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(111,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(112,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(113,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.!
 00','Internet transfer, money arriving'),(114,'TRANSFER','-500!
 .00','20
11-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(115,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(116,'TRANSFER','-500.00','2011-08-04 01:27:38',3,'0.00','Internet transfer, money leaving'),(117,'TRANSFER','500.00','2011-08-04 01:27:38',34,'0.00','Internet transfer, money arriving'),(118,'TRANSFER','-500.00','2011-08-04 01:27:38',3,'0.00','Internet transfer, money leaving'),(119,'TRANSFER','500.00','2011-08-04 01:27:38',34,'0.00','Internet transfer, money arriving'),(120,'TRANSFER','-330.00','2011-08-04 01:27:56',3,'0.00','Internet transfer, money leaving'),(121,'TRANSFER','330.00','2011-08-04 01:27:56',5,'0.00','Internet transfer, money arriving'),(122,'TRANSFER','-980.00','2011-08-04 01:28:01',3,'0.00','Internet transfer, money leaving'),(123,'TRANSFER','980.00','2011-08-04 01:28:01',23,'0.00','Internet transfer, money arriving'),(124,'TRANSFER','-667.00','2011-08-04 01:28:10',5,'0.00','Internet transfer, money l!
 eaving'),(125,'TRANSFER','667.00','2011-08-04 01:28:10',3,'0.00','Internet transfer, money arriving'),(126,'TRANSFER','-5.00','2011-08-04 01:30:59',3,'0.00','Internet transfer, money leaving'),(127,'TRANSFER','5.00','2011-08-04 01:30:59',34,'0.00','Internet transfer, money arriving'),(128,'TRANSFER','-5.00','2011-08-04 01:31:01',3,'0.00','Internet transfer, money leaving'),(129,'TRANSFER','5.00','2011-08-04 01:31:01',34,'0.00','Internet transfer, money arriving'),(130,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(131,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(132,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(133,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(134,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(135,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Interne!
 t transfer, money arriving'),(136,'TRANSFER','-5.00','2011-08-!
 04 01:31
:02',3,'0.00','Internet transfer, money leaving'),(137,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(138,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(139,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(140,'TRANSFER','-5.00','2011-08-04 01:31:03',3,'0.00','Internet transfer, money leaving'),(141,'TRANSFER','5.00','2011-08-04 01:31:03',34,'0.00','Internet transfer, money arriving'),(142,'TRANSFER','-5.00','2011-08-04 01:31:03',3,'0.00','Internet transfer, money leaving'),(143,'TRANSFER','5.00','2011-08-04 01:31:03',34,'0.00','Internet transfer, money arriving'),(144,'TRANSFER','-5.00','2011-08-04 01:31:08',3,'0.00','Internet transfer, money leaving'),(145,'TRANSFER','5.00','2011-08-04 01:31:08',23,'0.00','Internet transfer, money arriving'),(146,'TRANSFER','-5.00','2011-08-04 01:31:08',3,'0.00','Internet transfer, money leaving'),(147,'TRANSFER','5.00','!
 2011-08-04 01:31:08',23,'0.00','Internet transfer, money arriving'),(148,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(149,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(150,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(151,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(152,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(153,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(154,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(155,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(156,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(157,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(158,!
 'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet tr!
 ansfer,
money leaving'),(159,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(160,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(161,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(162,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(163,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(164,'TRANSFER','-345.00','2011-08-04 01:31:28',3,'0.00','Internet transfer, money leaving'),(165,'TRANSFER','345.00','2011-08-04 01:31:28',34,'0.00','Internet transfer, money arriving'),(166,'TRANSFER','-345.00','2011-08-04 01:31:28',3,'0.00','Internet transfer, money leaving'),(167,'TRANSFER','345.00','2011-08-04 01:31:28',34,'0.00','Internet transfer, money arriving'),(168,'TRANSFER','-345.00','2011-08-04 01:31:29',3,'0.00','Internet transfer, money leaving'),(169,'TRANSFER','345.00','2011-08-04 01:31:29',3!
 4,'0.00','Internet transfer, money arriving'),(170,'TRANSFER','-345.00','2011-08-04 01:31:29',3,'0.00','Internet transfer, money leaving'),(171,'TRANSFER','345.00','2011-08-04 01:31:29',34,'0.00','Internet transfer, money arriving'),(172,'TRANSFER','-345.00','2011-08-04 01:31:30',3,'0.00','Internet transfer, money leaving'),(173,'TRANSFER','345.00','2011-08-04 01:31:30',34,'0.00','Internet transfer, money arriving'),(174,'TRANSFER','-45.00','2011-08-04 01:32:04',3,'0.00','Internet transfer, money leaving'),(175,'TRANSFER','45.00','2011-08-04 01:32:04',23,'0.00','Internet transfer, money arriving'),(176,'TRANSFER','-500.00','2011-08-04 01:34:12',3,'0.00','Internet transfer, money leaving'),(177,'TRANSFER','500.00','2011-08-04 01:34:12',34,'0.00','Internet transfer, money arriving'),(178,'TRANSFER','-500.00','2011-08-04 01:34:34',3,'0.00','Internet transfer, money leaving'),(179,'TRANSFER','500.00','2011-08-04 01:34:34',23,'0.00','Internet transfer, money arriving'),(180,'TRA!
 NSFER','-435.00','2011-08-04 01:34:48',5,'0.00','Internet tran!
 sfer, mo
ney
 leaving'),(181,'TRANSFER','435.00','2011-08-04 01:34:48',23,'0.00','Internet transfer, money arriving'),(182,'TRANSFER','-45.00','2011-08-04 01:35:02',3,'0.00','Internet transfer, money leaving'),(183,'TRANSFER','45.00','2011-08-04 01:35:02',34,'0.00','Internet transfer, money arriving'),(184,'TRANSFER','-3234.00','2011-08-04 01:35:05',3,'0.00','Internet transfer, money leaving'),(185,'TRANSFER','3234.00','2011-08-04 01:35:05',34,'0.00','Internet transfer, money arriving'),(186,'TRANSFER','-344535.00','2011-08-04 02:48:40',3,'0.00','Internet transfer, money leaving'),(187,'TRANSFER','344535.00','2011-08-04 02:48:40',5,'0.00','Internet transfer, money arriving'),(188,'TRANSFER','-50.00','2011-08-04 02:56:21',3,'1.00','Internet transfer, money leaving'),(189,'TRANSFER','50.00','2011-08-04 02:56:21',5,'0.00','Internet transfer, money arriving'),(190,'TRANSFER','-1.00','2011-08-04 02:56:45',3,'1.00','Internet transfer, money leaving'),(191,'TRANSFER','1.00','2011-08-04 02:56:45!
 ',5,'0.00','Internet transfer, money arriving'),(192,'TRANSFER','-50.00','2011-08-04 02:57:18',23,'0.00','Internet transfer, money leaving'),(193,'TRANSFER','50.00','2011-08-04 02:57:18',34,'0.00','Internet transfer, money arriving'),(194,'TRANSFER','-50.00','2011-08-04 02:58:15',23,'0.00','Internet transfer, money leaving'),(195,'TRANSFER','50.00','2011-08-04 02:58:15',34,'0.00','Internet transfer, money arriving'),(567,'TRANSFER','-1.00','2011-08-08 17:52:46',5,'0.00','Internet transfer, money leaving'),(566,'TRANSFER','150.00','2011-08-08 17:51:48',3,'0.00','Internet transfer, money arriving'),(565,'TRANSFER','-150.00','2011-08-08 17:51:48',5,'0.00','Internet transfer, money leaving'),(564,'INTEREST','-48.17','2011-08-08 17:44:48',50,'0.00','Interest'),(563,'INTEREST','-48.17','2011-08-08 17:44:48',47,'0.00','Interest'),(562,'INTEREST','-48.17','2011-08-08 17:44:48',44,'0.00','Interest'),(561,'INTEREST','-48.17','2011-08-08 17:44:48',41,'0.00','Interest'),(560,'INTEREST'!
 ,'-48.17','2011-08-08 17:44:48',38,'0.00','Interest'),(559,'IN!
 TEREST',
'-48.17','2011-08-08 17:44:48',35,'0.00','Interest'),(558,'INTEREST','-48.17','2011-08-08 17:44:48',32,'0.00','Interest'),(557,'INTEREST','-48.17','2011-08-08 17:44:48',29,'0.00','Interest'),(556,'INTEREST','-48.17','2011-08-08 17:44:48',26,'0.00','Interest'),(555,'INTEREST','-4164213.34','2011-08-08 17:44:48',23,'0.00','Interest'),(554,'INTEREST','-48.17','2011-08-08 17:44:48',20,'0.00','Interest'),(553,'INTEREST','-48.17','2011-08-08 17:44:48',17,'0.00','Interest'),(552,'INTEREST','-48.17','2011-08-08 17:44:48',14,'0.00','Interest'),(551,'INTEREST','-48.17','2011-08-08 17:44:48',11,'0.00','Interest'),(550,'INTEREST','-48.17','2011-08-08 17:44:48',8,'0.00','Interest'),(549,'INTEREST','-4146420.79','2011-08-08 17:44:48',5,'0.00','Interest'),(466,'WITHDRAW','-99999999.99','2011-08-08 14:11:04',34,'0.00','Internet Withdraw'),(465,'TRANSFER','99999999.99','2011-08-08 14:10:34',34,'0.00','Internet transfer, money arriving'),(464,'TRANSFER','-99999999.99','2011-08-08 14:10:34',3,!
 '1.00','Internet transfer, money leaving'),(463,'TRANSFER','100.00','2011-08-08 14:09:53',5,'0.00','Internet transfer, money arriving'),(462,'TRANSFER','-100.00','2011-08-08 14:09:53',3,'1.00','Internet transfer, money leaving'),(548,'INTEREST','655.89','2011-08-08 17:44:48',3079,'0.00','Interest'),(547,'INTEREST','1144.63','2011-08-08 17:44:48',49,'0.00','Interest'),(546,'INTEREST','1.40','2011-08-08 17:44:48',48,'0.00','Interest'),(545,'INTEREST','1148.06','2011-08-08 17:44:48',46,'0.00','Interest'),(544,'INTEREST','1.40','2011-08-08 17:44:48',45,'0.00','Interest'),(543,'INTEREST','1146.92','2011-08-08 17:44:48',43,'0.00','Interest'),(542,'INTEREST','1.40','2011-08-08 17:44:48',42,'0.00','Interest'),(541,'INTEREST','1146.92','2011-08-08 17:44:48',40,'0.00','Interest'),(540,'INTEREST','1.40','2011-08-08 17:44:48',39,'0.00','Interest'),(539,'INTEREST','1145.77','2011-08-08 17:44:48',37,'0.00','Interest'),(538,'INTEREST','1.40','2011-08-08 17:44:48',36,'0.00','Interest'),(53!
 7,'INTEREST','-0.34','2011-08-08 17:44:48',34,'0.00','Interest!
 '),(536,
'INTEREST','1.40','2011-08-08 17:44:48',33,'0.00','Interest'),(535,'INTEREST','1145.77','2011-08-08 17:44:48',31,'0.00','Interest'),(534,'INTEREST','1.40','2011-08-08 17:44:48',30,'0.00','Interest'),(533,'INTEREST','1145.77','2011-08-08 17:44:48',28,'0.00','Interest'),(532,'INTEREST','1.40','2011-08-08 17:44:48',27,'0.00','Interest'),(531,'INTEREST','1144.63','2011-08-08 17:44:48',25,'0.00','Interest'),(530,'INTEREST','1.40','2011-08-08 17:44:48',24,'0.00','Interest'),(529,'INTEREST','1146.92','2011-08-08 17:44:48',22,'0.00','Interest'),(528,'INTEREST','1.40','2011-08-08 17:44:48',21,'0.00','Interest'),(527,'INTEREST','1145.77','2011-08-08 17:44:48',19,'0.00','Interest'),(526,'INTEREST','1.40','2011-08-08 17:44:48',18,'0.00','Interest'),(525,'INTEREST','1145.77','2011-08-08 17:44:48',16,'0.00','Interest'),(524,'INTEREST','1.40','2011-08-08 17:44:48',15,'0.00','Interest'),(523,'INTEREST','1144.63','2011-08-08 17:44:48',13,'0.00','Interest'),(522,'INTEREST','1.40','2011-08-08 !
 17:44:48',12,'0.00','Interest'),(521,'INTEREST','1145.77','2011-08-08 17:44:48',10,'0.00','Interest'),(520,'INTEREST','1.40','2011-08-08 17:44:48',9,'0.00','Interest'),(519,'INTEREST','1144.63','2011-08-08 17:44:48',7,'0.00','Interest'),(518,'INTEREST','1.00','2011-08-08 17:44:48',6,'0.00','Interest'),(517,'INTEREST','1144.63','2011-08-08 17:44:48',4,'0.00','Interest'),(516,'INTEREST','4.79','2011-08-08 17:44:48',3,'0.00','Interest'),(515,'CHARGE','-25.00','2011-08-08 17:44:48',50,'0.00','Charge for your plan Ultimate'),(514,'CHARGE','-25.00','2011-08-08 17:44:48',47,'0.00','Charge for your plan Ultimate'),(513,'CHARGE','-25.00','2011-08-08 17:44:48',44,'0.00','Charge for your plan Ultimate'),(512,'CHARGE','-25.00','2011-08-08 17:44:48',41,'0.00','Charge for your plan Ultimate'),(511,'CHARGE','-25.00','2011-08-08 17:44:48',38,'0.00','Charge for your plan Ultimate'),(510,'CHARGE','-25.00','2011-08-08 17:44:48',35,'0.00','Charge for your plan Ultimate'),(509,'CHARGE','-25.00'!
 ,'2011-08-08 17:44:48',32,'0.00','Charge for your plan Ultimat!
 e'),(508
,'CHARGE','-25.00','2011-08-08 17:44:48',29,'0.00','Charge for your plan Ultimate'),(507,'CHARGE','-25.00','2011-08-08 17:44:48',26,'0.00','Charge for your plan Ultimate'),(506,'CHARGE','-25.00','2011-08-08 17:44:48',23,'0.00','Charge for your plan Ultimate'),(505,'CHARGE','-25.00','2011-08-08 17:44:48',20,'0.00','Charge for your plan Ultimate'),(504,'CHARGE','-25.00','2011-08-08 17:44:48',17,'0.00','Charge for your plan Ultimate'),(503,'CHARGE','-25.00','2011-08-08 17:44:48',14,'0.00','Charge for your plan Ultimate'),(502,'CHARGE','-25.00','2011-08-08 17:44:48',11,'0.00','Charge for your plan Ultimate'),(501,'CHARGE','-25.00','2011-08-08 17:44:48',8,'0.00','Charge for your plan Ultimate'),(500,'CHARGE','-25.00','2011-08-08 17:44:48',5,'0.00','Charge for your plan Ultimate'),(499,'CHARGE','-17.00','2011-08-08 17:44:48',49,'0.00','Charge for your plan Premuim'),(498,'CHARGE','-17.00','2011-08-08 17:44:48',46,'0.00','Charge for your plan Premuim'),(497,'CHARGE','-17.00','2011-!
 08-08 17:44:48',43,'0.00','Charge for your plan Premuim'),(496,'CHARGE','-17.00','2011-08-08 17:44:48',40,'0.00','Charge for your plan Premuim'),(495,'CHARGE','-17.00','2011-08-08 17:44:48',37,'0.00','Charge for your plan Premuim'),(494,'CHARGE','-17.00','2011-08-08 17:44:48',34,'0.00','Charge for your plan Premuim'),(493,'CHARGE','-17.00','2011-08-08 17:44:48',31,'0.00','Charge for your plan Premuim'),(492,'CHARGE','-17.00','2011-08-08 17:44:48',28,'0.00','Charge for your plan Premuim'),(491,'CHARGE','-17.00','2011-08-08 17:44:48',25,'0.00','Charge for your plan Premuim'),(490,'CHARGE','-17.00','2011-08-08 17:44:48',22,'0.00','Charge for your plan Premuim'),(489,'CHARGE','-17.00','2011-08-08 17:44:48',19,'0.00','Charge for your plan Premuim'),(488,'CHARGE','-17.00','2011-08-08 17:44:48',16,'0.00','Charge for your plan Premuim'),(487,'CHARGE','-17.00','2011-08-08 17:44:48',13,'0.00','Charge for your plan Premuim'),(486,'CHARGE','-17.00','2011-08-08 17:44:48',10,'0.00','Char!
 ge for your plan Premuim'),(485,'CHARGE','-17.00','2011-08-08 !
 17:44:48
',7
,'0.00','Charge for your plan Premuim'),(484,'CHARGE','-17.00','2011-08-08 17:44:48',4,'0.00','Charge for your plan Premuim'),(483,'CHARGE','-10.00','2011-08-08 17:44:48',3079,'0.00','Charge for your plan Basic'),(482,'CHARGE','-10.00','2011-08-08 17:44:48',3077,'0.00','Charge for your plan Basic'),(481,'CHARGE','-10.00','2011-08-08 17:44:48',48,'0.00','Charge for your plan Basic'),(480,'CHARGE','-10.00','2011-08-08 17:44:48',45,'0.00','Charge for your plan Basic'),(479,'CHARGE','-10.00','2011-08-08 17:44:48',42,'0.00','Charge for your plan Basic'),(478,'CHARGE','-10.00','2011-08-08 17:44:48',39,'0.00','Charge for your plan Basic'),(477,'CHARGE','-10.00','2011-08-08 17:44:48',36,'0.00','Charge for your plan Basic'),(476,'CHARGE','-10.00','2011-08-08 17:44:48',33,'0.00','Charge for your plan Basic'),(475,'CHARGE','-10.00','2011-08-08 17:44:48',30,'0.00','Charge for your plan Basic'),(474,'CHARGE','-10.00','2011-08-08 17:44:48',27,'0.00','Charge for your plan Basic'),(473,'CHA!
 RGE','-10.00','2011-08-08 17:44:48',24,'0.00','Charge for your plan Basic'),(472,'CHARGE','-10.00','2011-08-08 17:44:48',21,'0.00','Charge for your plan Basic'),(471,'CHARGE','-10.00','2011-08-08 17:44:48',18,'0.00','Charge for your plan Basic'),(470,'CHARGE','-10.00','2011-08-08 17:44:48',15,'0.00','Charge for your plan Basic'),(469,'CHARGE','-10.00','2011-08-08 17:44:48',12,'0.00','Charge for your plan Basic'),(468,'CHARGE','-10.00','2011-08-08 17:44:48',9,'0.00','Charge for your plan Basic'),(372,'TRANSFER','-324.00','2011-08-04 05:08:03',3,'1.00','Internet transfer, money leaving'),(373,'TRANSFER','324.00','2011-08-04 05:08:03',5,'0.00','Internet transfer, money arriving'),(374,'TRANSFER','-100000.00','2011-08-04 05:10:14',5,'0.00','Internet transfer, money leaving'),(375,'TRANSFER','100000.00','2011-08-04 05:10:14',23,'0.00','Internet transfer, money arriving'),(376,'TRANSFER','-99999999.00','2011-08-04 05:10:18',5,'0.00','Internet transfer, money leaving'),(377,'TRANS!
 FER','99999999.00','2011-08-04 05:10:18',23,'0.00','Internet t!
 ransfer,
 money arriving'),(467,'CHARGE','-10.00','2011-08-08 17:44:48',3,'0.00','Charge for your plan Basic'),(568,'TRANSFER','1.00','2011-08-08 17:52:46',3,'0.00','Internet transfer, money arriving'),(569,'TRANSFER','-5.00','2011-08-08 17:53:40',5,'0.00','Internet transfer, money leaving'),(570,'TRANSFER','5.00','2011-08-08 17:53:40',3,'0.00','Internet transfer, money arriving'),(571,'TRANSFER','-15.00','2011-08-08 17:53:58',5,'0.00','Internet transfer, money leaving'),(572,'TRANSFER','15.00','2011-08-08 17:53:58',3,'0.00','Internet transfer, money arriving'),(573,'TRANSFER','-1.00','2011-08-08 17:54:13',5,'0.00','Internet transfer, money leaving'),(574,'TRANSFER','1.00','2011-08-08 17:54:13',3,'0.00','Internet transfer, money arriving'),(575,'TRANSFER','-1.00','2011-08-08 17:54:23',5,'0.00','Internet transfer, money leaving'),(576,'TRANSFER','1.00','2011-08-08 17:54:23',3,'0.00','Internet transfer, money arriving'),(577,'TRANSFER','-1.00','2011-08-08 17:54:24',5,'0.00','Internet t!
 ransfer, money leaving'),(578,'TRANSFER','1.00','2011-08-08 17:54:24',3,'0.00','Internet transfer, money arriving'),(579,'TRANSFER','-1.00','2011-08-08 17:54:25',5,'0.00','Internet transfer, money leaving'),(580,'TRANSFER','1.00','2011-08-08 17:54:25',3,'0.00','Internet transfer, money arriving'),(581,'TRANSFER','-20.00','2011-08-08 17:54:39',5,'0.00','Internet transfer, money leaving'),(582,'TRANSFER','20.00','2011-08-08 17:54:39',3,'0.00','Internet transfer, money arriving'),(583,'TRANSFER','-239.32','2011-08-08 17:54:52',3,'1.00','Internet transfer, money leaving'),(584,'TRANSFER','239.32','2011-08-08 17:54:52',5,'0.00','Internet transfer, money arriving'),(585,'TRANSFER','-30.00','2011-08-08 18:06:16',3,'1.00','Internet transfer, money leaving'),(586,'TRANSFER','30.00','2011-08-08 18:06:16',34,'0.00','Internet transfer, money arriving'),(587,'TRANSFER','-1.00','2011-08-08 18:20:01',34,'0.00','Internet transfer, money leaving'),(588,'TRANSFER','1.00','2011-08-08 18:20:01!
 ',3,'0.00','Internet transfer, money arriving'),(589,'DEPOSIT'!
 ,'500.00
','2011-08-08 18:20:27',34,'0.00','Internet Deposit'),(590,'DEPOSIT','20.00','2011-08-08 18:22:14',34,'0.00','Internet Deposit'),(591,'TRANSFER','-12.00','2011-08-08 18:22:41',3,'1.00','Internet transfer, money leaving'),(592,'TRANSFER','12.00','2011-08-08 18:22:41',5,'0.00','Internet transfer, money arriving'),(593,'DEPOSIT','0.00','2011-08-08 18:22:46',34,'0.00','Internet Deposit'),(594,'DEPOSIT','12.00','2011-08-08 18:22:57',34,'0.00','Internet Deposit'),(595,'WITHDRAW','-156.00','2011-08-08 18:23:25',3,'1.00','Internet Withdraw'),(596,'TRANSFER','-30.00','2011-08-08 18:23:43',34,'0.00','Internet transfer, money leaving'),(597,'TRANSFER','30.00','2011-08-08 18:23:43',3,'0.00','Internet transfer, money arriving'),(598,'TRANSFER','-20.00','2011-08-08 18:23:47',34,'0.00','Internet transfer, money leaving'),(599,'TRANSFER','20.00','2011-08-08 18:23:47',3,'0.00','Internet transfer, money arriving'),(600,'DEPOSIT','500.00','2011-08-08 18:25:50',3,'0.00','Internet Deposit'),(601!
 ,'WITHDRAW','-200.00','2011-08-08 18:26:09',3,'1.00','Internet Withdraw');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `account_detail`
--

DROP TABLE IF EXISTS `account_detail`;
/*!50001 DROP VIEW IF EXISTS `account_detail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `account_detail` (
 `accountNumber` int(11),
 `accountType` enum('credit card','checking','saving','line of credit','loan','USD'),
 `accountBalance` decimal(15,2),
 `accountCreationDate` date,
 `accountOption` tinyint(1),
 `accountBranchId` int(11),
 `accountRateId` int(11),
 `accountPlanId` int(11),
 `accountCreditLimit` decimal(15,2),
 `accountLevel` enum('personal','business','corporate'),
 `transactionCount` bigint(21),
 `branchPlanId` int(11),
 `branchPlanLimit` int(11),
 `branchPlanOption` enum('Basic','Premuim','Ultimate'),
 `branchCharge` decimal(10,2),
 `branchChargeExcessLimit` decimal(10,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `billableTransactionSoFarThisMonth`
--

DROP TABLE IF EXISTS `billableTransactionSoFarThisMonth`;
/*!50001 DROP VIEW IF EXISTS `billableTransactionSoFarThisMonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `billableTransactionSoFarThisMonth` (
 `accountNumber` int(11),
 `transactionCount` bigint(21)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `profitability_report`
--

DROP TABLE IF EXISTS `profitability_report`;
/*!50001 DROP VIEW IF EXISTS `profitability_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `profitability_report` (
 `branchId` int(11),
 `name` varchar(50),
 `FeesReceived` decimal(35,3),
 `InterestReceived` decimal(33,2),
 `PayGivenToEmployees` decimal(32,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Client_Overview`
--

/*!50001 DROP TABLE IF EXISTS `Client_Overview`*/;
/*!50001 DROP VIEW IF EXISTS `Client_Overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmc353_1`@`132.205.%.%` SQL SECURITY DEFINER */
/*!50001 VIEW `Client_Overview` AS select `Client`.`clientId` AS `clientId`,`Client`.`clientAddress` AS `clientAddress`,`Client`.`clientDateOfBirth` AS `clientDateOfBirth`,`Client`.`clientJoiningDate` AS `clientJoiningDate`,`Client`.`clientName` AS `clientName`,`Client`.`clientCategory` AS `clientCategory`,(select count(0) AS `count(0)` from `Clients_own_account` `cos` where (`cos`.`clientId` = `Client`.`clientId`)) AS `accountCount`,(select sum(`acc`.`accountBalance`) AS `sum(``acc``.``accountBalance``)` from (`Account` `acc` join `Clients_own_account` `cos` on((`acc`.`accountNumber` = `cos`.`accountId`))) where (`cos`.`clientId` = `Client`.`clientId`)) AS `netValue` from `Client` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Password`
--

/*!50001 DROP TABLE IF EXISTS `Password`*/;
/*!50001 DROP VIEW IF EXISTS `Password`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmc353_1`@`132.205.%.%` SQL SECURITY DEFINER */
/*!50001 VIEW `Password` AS select concat(`ClientCard`.`clientCardNumber`,'') AS `Username`,`ClientCard`.`clientPassword` AS `Password`,'client' AS `Type`,`ClientCard`.`clientId` AS `Id` from `ClientCard` union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'manager' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where `e`.`employeeId` in (select `Branch`.`branchManagedBy` AS `branchManagedBy` from `Branch`) union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'clerk' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where (not(`e`.`employeeId` in (select `Branch`.`branchManagedBy` AS `branchManagedBy` from `Branch`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `account_detail`
--

/*!50001 DROP TABLE IF EXISTS `account_detail`*/;
/*!50001 DROP VIEW IF EXISTS `account_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmc353_1`@`132.205.%.%` SQL SECURITY DEFINER */
/*!50001 VIEW `account_detail` AS select `Account`.`accountNumber` AS `accountNumber`,`Account`.`accountType` AS `accountType`,`Account`.`accountBalance` AS `accountBalance`,`Account`.`accountCreationDate` AS `accountCreationDate`,`Account`.`accountOption` AS `accountOption`,`Account`.`accountBranchId` AS `accountBranchId`,`Account`.`accountRateId` AS `accountRateId`,`Account`.`accountPlanId` AS `accountPlanId`,`Account`.`accountCreditLimit` AS `accountCreditLimit`,`Account`.`accountLevel` AS `accountLevel`,`b`.`transactionCount` AS `transactionCount`,`p`.`branchPlanId` AS `branchPlanId`,`p`.`branchPlanLimit` AS `branchPlanLimit`,`p`.`branchPlanOption` AS `branchPlanOption`,`p`.`branchCharge` AS `branchCharge`,`p`.`branchChargeExcessLimit` AS `branchChargeExcessLimit` from ((`Account` left join `billableTransactionSoFarThisMonth` `b` on((`b`.`accountNumber` = `Account`.`accountNumber`))) join `Charge_plans` `p` on((`p`.`branchPlanId` = `Account`.`accountPlanId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `billableTransactionSoFarThisMonth`
--

/*!50001 DROP TABLE IF EXISTS `billableTransactionSoFarThisMonth`*/;
/*!50001 DROP VIEW IF EXISTS `billableTransactionSoFarThisMonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmc353_1`@`132.205.%.%` SQL SECURITY DEFINER */
/*!50001 VIEW `billableTransactionSoFarThisMonth` AS select `Transaction`.`accountNumber` AS `accountNumber`,count(0) AS `transactionCount` from `Transaction` where (((`Transaction`.`transactionType` = 'WITHDRAW') or ((`Transaction`.`transactionType` = 'TRANSFER') and (`Transaction`.`transactionAmount` < 0))) and (month(`Transaction`.`transactionDate`) = month(curdate())) and (year(`Transaction`.`transactionDate`) = year(curdate()))) group by `Transaction`.`accountNumber` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `profitability_report`
--

/*!50001 DROP TABLE IF EXISTS `profitability_report`*/;
/*!50001 DROP VIEW IF EXISTS `profitability_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmc353_1`@`132.205.%.%` SQL SECURITY DEFINER */
/*!50001 VIEW `profitability_report` AS select `m`.`branchId` AS `branchId`,`rm`.`name` AS `name`,(select (sum(`Transaction`.`transactionFees`) + sum((case when (`Transaction`.`transactionType` = 'CHARGE') then (-(1.0) * `Transaction`.`transactionAmount`) else 0.0 end))) AS `sum(transactionFees)+sum(case when transactionType='CHARGE' then -1.0*transactionAmount else 0.0 end)` from (`Account` join `Transaction`) where ((`Account`.`accountBranchId` = `m`.`branchId`) and (`Transaction`.`accountNumber` = `Account`.`accountNumber`) and (year(`Transaction`.`transactionDate`) = `rm`.`year`) and (month(`Transaction`.`transactionDate`) = `rm`.`month`))) AS `FeesReceived`,(select sum((-(1) * `Transaction`.`transactionAmount`)) AS `sum(-1*transactionAmount)` from (`Account` join `Transaction`) where ((`Account`.`accountBranchId` = `m`.`branchId`) and (`Transaction`.`accountNumber` = `Account`.`accountNumber`) and (`Transaction`.`transactionType` = 'INTEREST') and (year(`Transaction`.`t!
 ransactionDate`) = `rm`.`year`) and (month(`Transaction`.`transactionDate`) = `rm`.`month`))) AS `InterestReceived`,(select sum(`Employee_Payroll`.`employeePaymentAmount`) AS `sum(employeePaymentAmount)` from (`Employee_Payroll` join `Employee`) where ((`Employee`.`employeeId` = `Employee_Payroll`.`employeeId`) and (`Employee`.`employeeBranchId` = `m`.`branchId`) and (year(`Employee_Payroll`.`employeePaymentDate`) = `rm`.`year`) and (month(`Employee_Payroll`.`employeePaymentDate`) = `rm`.`month`))) AS `PayGivenToEmployees` from (`Branch` `m` join `Reports_Month` `rm`) */;
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

-- Dump completed on 2011-08-08 14:27:20
-- MySQL dump 10.13  Distrib 5.1.38, for pc-linux-gnu (i686)
--
-- Host: clipper.encs.concordia.ca    Database: dmc353_1
-- ------------------------------------------------------
-- Server version       5.1.38

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
) ENGINE=MyISAM AUTO_INCREMENT=3080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (3,'checking','348.00','2011-07-13',NULL,1,2,1,NULL,NULL),(4,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(5,'line of credit','-107806884.26','2002-01-12',0,4,3,3,'1000.00',NULL),(6,'checking','51.00','2011-07-13',0,0,2,0,'2.00',''),(7,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(8,'line of credit','-1252.53','2005-05-21',0,4,3,3,'1000.00',NULL),(9,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(10,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(11,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(12,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(13,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(14,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(15,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(16,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(17,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(18,'checking','71.40','2011-07-13',NULL,1,2,1,NU!
 LL,NULL),(19,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(20,'line of credit','-1252.53','2002-01-12',0,2,3,3,'1000.00',NULL),(21,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(22,'saving','58492.72','2001-01-04',1,1,2,2,NULL,NULL),(23,'line of credit','-108269546.87','2002-01-12',0,4,3,3,'1000.00',NULL),(24,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(25,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(26,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(27,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(28,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(29,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(30,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(31,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(32,'line of credit','-1252.53','2005-05-21',0,2,3,3,'1000.00',NULL),(33,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(34,'saving','493.66','2001-01-04',1,3,2,2,NULL,NULL),(35,'!
 line of credit','-1252.53','2002-01-12',0,1,3,3,'1000.00',NULL!
 ),(36,'c
hecking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(37,'saving','58434.45','2001-01-03',1,5,2,2,NULL,NULL),(38,'line of credit','-1252.53','2002-01-12',0,4,3,3,'1000.00',NULL),(39,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(40,'saving','58492.72','2001-01-04',1,2,2,2,NULL,NULL),(41,'line of credit','-1252.53','2005-05-21',0,3,3,3,'1000.00',NULL),(42,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(43,'saving','58492.72','2001-01-04',1,4,2,2,NULL,NULL),(44,'line of credit','-1252.53','2002-01-12',0,1,3,3,'1000.00',NULL),(45,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(46,'saving','58550.98','2001-01-05',1,2,2,2,NULL,NULL),(47,'line of credit','-1252.53','2002-01-12',0,3,3,3,'1000.00',NULL),(48,'checking','71.40','2011-07-13',NULL,1,2,1,NULL,NULL),(49,'saving','58376.19','2001-01-02',1,3,2,2,NULL,NULL),(50,'line of credit','-1252.53','2005-05-21',0,4,3,3,'1000.00',NULL),(3073,'','0.00','0000-00-00',0,0,0,0,'0.00',''),(3074,'','0.00','2011-08-01',0,0!
 ,0,0,'0.00',''),(3075,'','0.00','2011-08-01',0,0,0,0,'690.00',''),(3076,'','0.00','2011-08-01',0,0,0,0,'0.00',''),(3077,'credit card','20.00','2011-08-01',0,0,0,1,'0.00','personal'),(3078,'credit card','0.00','2011-08-01',0,0,0,0,'1.00',''),(3079,'checking','33450.35','2011-08-08',0,1,2,1,'500.00','personal');
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
INSERT INTO `Charge_plans` VALUES (1,25,'Basic','10.00','1.00'),(2,50,'Premuim','17.00','0.50'),(3,100,'Ultimate','25.00','0.25');
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
) ENGINE=MyISAM AUTO_INCREMENT=6526 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (5,'Toronto, Canada','1985-03-01','2007-06-14','Christina R. Craig','Personal'),(6,'Waterloo, Canada','1962-04-02','2007-07-15','Albert maccafe','Personal'),(7,'Ottawa, Canada','1988-06-03','2008-08-16','Gretchen C. Mcintyre','Personal'),(8,'Montreal, Canada','1920-08-04','2009-09-17','Bonnie R. Brantley','Personal'),(9,'Toronto, Canada','1983-09-05','2008-10-22','George E. Kelly','Personal'),(10,'Ottawa, Canada','1989-08-06','2004-11-23','Barbra M. Smith','Personal'),(11,'British Columbia, Canada','1928-07-07','2005-12-25','Evelyn Y. Lyons','Personal'),(12,'Ottawa, Canada','1981-09-08','2006-01-26','Rita A. Wall','Personal'),(13,'Montreal, Canada','1982-11-09','2011-02-27','Franklin A. Watson','Personal'),(14,'Toronto, Canada','1983-12-10','2010-03-28','Ronnie T. Atkins','Personal'),(15,'Montreal, Canada','1972-05-11','2004-04-30','Amy O. Norman','Personal'),(16,'Montreal, Canada','1973-08-12','2010-05-31','Robert E. Reid','Personal'),(17,'Montre!
 al, Canada','1978-09-23','0000-00-00','Pauline H. Chandler','Personal'),(18,'British Columbia, Canada','1969-03-21','2011-07-23','Lynn O. Robertson','Personal'),(19,'Toronto, Canada','1991-02-22','2010-08-21','Peggy O. Hobbs','Personal'),(20,'Ottawa, Canada','1952-05-24','2010-09-20','Doris I. Kinney','Personal'),(21,'British Columbia, Canada','1956-07-25','2009-10-01','Tracey A. Waters','Personal'),(22,'Toronto, Canada','1969-08-27','2004-11-02','Leo D. Adkins','Personal'),(23,'Toronto, Canada','1955-09-28','2005-12-02','Constance L. Black','Personal'),(24,'Ottawa, Canada','1975-10-29','2006-01-03','Sarah O. Fox','Personal'),(25,'Quebec, Canada','1962-11-30','2007-02-04','Hugh R. Arthur','Personal'),(26,'Sherbrooke, Canada','1974-01-31','2008-03-05','Mildred I. Gilbert','Personal'),(27,'Toronto, Canada','1981-02-01','2006-04-06','Seth E. Kern','Personal'),(28,'Toronto, Canada','1979-03-02','2009-05-07','Ted A. Mason','Personal'),(29,'Ottawa, Canada','1982-04-03','2010-06-0!
 8','Mildred I. Gilbert','Personal'),(30,'Ottawa, Canada','1964!
 -05-04',
'2010-07-09','Jacob C. McIntyre','Personal'),(31,'British Columbia, Canada','1992-06-05','2010-08-10','Phyllis E.Hendricks','Personal'),(32,'Montreal, Canada','1959-05-06','2010-09-11','Slyvia A. Bailey','Personal'),(33,'British Columbia, Canada','1960-07-07','2004-10-22','Glenda A. Raynor','Personal'),(34,'British Columbia, Canada','1961-08-08','2005-11-21','Juan C. McLaughlin','Personal'),(35,'Sherbrooke, Canada','1962-09-11','2006-12-22','Ted A. Law','Personal'),(36,'British Columbia, Canada','1963-10-12','2007-01-02','Arthur. L. Glass','Personal'),(37,'Ottawa, Canada','1964-11-13','2008-02-02','Ron E. Hester','Personal'),(38,'Montreal, Canada','1932-05-21','2007-04-12','Kristina H. Chung','Personal'),(39,'Gracefield, Quebec','1956-03-21','2008-07-04','Ashley O. Coble','Personal'),(40,'Baie-Comeau, Quebec','1957-03-26','2001-06-06','Peggy O. Wong','Personal'),(41,'Kingston, Ontario','1974-04-02','2007-12-19','Peter O. Holden','Joint'),(42,'Chandler, Quebec','1964-10-24','!
 2004-08-03','Rhonda U. Buckley','Personal'),(43,'RiviÃ¨re-Rouge, Quebec','1962-08-21','2008-08-10','Lucy I. Dickinson','Personal'),(44,'Red Lake, Ontario','1993-02-14','2008-08-16','Gerald E. Reeves','Personal'),(45,'Northeastern Manitoulin and the Islands, Ontario','1954-11-15','2011-01-25','Lisa B. Abrams','Personal'),(46,'Saint John, New Brunswick','1993-02-05','2008-04-01','Toni C. McKinney','Personal'),(47,'Lakeshore, Ontario','1980-10-20','2005-05-17','Marsha O. Gold','Personal'),(48,'Elliot Lake','1953-12-11','2004-12-19','Doris I. Kinney','Personal'),(49,'Shawinigan, Quebec','1964-01-10','2011-03-07','Eva N. Snow','Personal'),(50,'Edmonton, Alberta','1975-06-13','2002-04-04','Jeremy U. Yu','Personal'),(6476,'0','0000-00-00','0000-00-00','0','0'),(6477,'0','0000-00-00','0000-00-00','0','0'),(6478,'0','0000-00-00','0000-00-00','0','0'),(6479,'0','0000-00-00','0000-00-00','0','0'),(6480,'0','0000-00-00','0000-00-00','0','0'),(6481,'0','0000-00-00','0000-00-00','0','0!
 '),(6482,'0','0000-00-00','0000-00-00','0','0'),(6483,'0','000!
 0-00-00'
,'0000-00-00','0','0'),(6484,'0','0000-00-00','0000-00-00','0','0'),(6485,'0','0000-00-00','0000-00-00','0','0'),(6486,'0','0000-00-00','0000-00-00','0','0'),(6487,'0','0000-00-00','0000-00-00','0','0'),(6488,'0','0000-00-00','0000-00-00','0','0'),(6489,'0','0000-00-00','0000-00-00','0','0'),(6490,'0','0000-00-00','0000-00-00','0','0'),(6491,'0','0000-00-00','0000-00-00','0','0'),(6492,'0','0000-00-00','0000-00-00','0','0'),(6493,'0','0000-00-00','0000-00-00','0','0'),(6494,'0','0000-00-00','0000-00-00','0','0'),(6495,'0','0000-00-00','0000-00-00','0','0'),(6496,'0','0000-00-00','0000-00-00','0','0'),(6497,'0','0000-00-00','0000-00-00','0','0'),(6498,'0','0000-00-00','0000-00-00','0','0'),(6499,'0','0000-00-00','0000-00-00','0','0'),(6500,'0','0000-00-00','0000-00-00','0','0'),(6501,'0','0000-00-00','0000-00-00','0','0'),(6502,'0','0000-00-00','0000-00-00','0','0'),(6503,'0','0000-00-00','0000-00-00','0','0'),(6504,'0','0000-00-00','0000-00-00','0','0'),(6505,'0','0000-00-00!
 ','0000-00-00','0','0'),(6506,'0','0000-00-00','0000-00-00','0','0'),(6507,'0','0000-00-00','0000-00-00','0','0'),(6508,'0','0000-00-00','0000-00-00','0','0'),(6509,'0','0000-00-00','0000-00-00','0','0'),(6510,'','0000-00-00','0000-00-00','Mathieu',''),(6511,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6512,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6513,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6514,'4540-7 Clark','2011-01-01','2011-01-01','Mathieu','Personal'),(6515,'4540-7 Clark','2011-01-01','0000-00-00','Mathieu','Personal'),(6516,'4540-7 Clark','2011-01-01','2011-08-01','Mathieu','Personal'),(6517,'','0000-00-00','2011-08-01','sdfdsf',''),(6518,'','0000-00-00','2011-08-01','sdfdsf',''),(6519,'','0000-00-00','2011-08-01','sdfdsf',''),(6520,'','0000-00-00','2011-08-01','',''),(6521,'','0000-00-00','2011-08-01','Jorges',''),(6522,'','0000-00-00','2011-08-01','Machine','Personal'),(6524,'445645','2001-01-01','2!
 011-08-08','Mathieu','Personal'),(6525,'123 asdf','0000-00-00'!
 ,'2011-0
8-08','shmed','allo');
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
 PRIMARY KEY (`clientCardNumber`),
 KEY `Owns` (`clientId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientCard`
--

LOCK TABLES `ClientCard` WRITE;
/*!40000 ALTER TABLE `ClientCard` DISABLE KEYS */;
INSERT INTO `ClientCard` VALUES ('5316625496891500',1,'user'),('5234673217449850',2,'user'),('5444698667572618',3,'user'),('5479396735697461',4,'user'),('5181879446019637',5,'user'),('5428624450048418',6,'user'),('5132802249268995',7,'user'),('5158476101551605',8,'user'),('5219338460953532',9,'user'),('5595915071231145',10,'user'),('4929230284827279',11,'user'),('4532586657888035',12,'user'),('4916824136974142',13,'user'),('4024007194660451',14,'user'),('4716185445297779',15,'user'),('4916261737772601',16,'user'),('4716435955632398',17,'user'),('4024007120757843',18,'user'),('4024007197456006',19,'user'),('4485015036883621',20,'user'),('347843549459076',21,'user'),('374949812235592',22,'user'),('370058802451807',23,'user'),('349778173154379',24,'user'),('373769765645881',25,'user'),('4539049359006',26,'user'),('4916514888406',27,'user'),('4024007177633',28,'user'),('4485580061579',29,'user'),('4716223500130',30,'user');
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
INSERT INTO `Clients_own_account` VALUES (1,1),(2,2),(3,3),(3,5),(4,4),(5,3),(5,5),(5,23),(5,34),(5,54),(5,3456),(6,6),(6,23),(6,55),(6,345),(7,3),(7,7),(7,34),(7,35),(8,0),(8,8),(9,9),(9,43),(10,6),(10,10),(11,10),(11,11),(12,4),(12,12),(12,987),(13,13),(13,24),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,0),(47,47),(48,48),(49,49),(50,50),(6490,55),(6511,12);
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
INSERT INTO `Employee` VALUES (1,'Financial Advisor','455 elm street','2011-09-30','Jhon Smith5','23.08',1),(2,'teller','123 fake street','2001-02-28','Jane Smith','18.45',2),(3,'Bank manager','123 rich street','1977-02-18','Wyatt Cenac','114.60',3),(4,'Bank manager','123 richer street','1967-07-11','Jhon Stewart','124.12',4),(5,'Bank manager','123 Boardwalk','1971-05-19','Steven Colbert','117.52',1),(6,'Bank manager','123 Park Avenue','1981-05-19','Steven Colberto','69.44',2),(7,'Bank manager','123 5th street','1951-01-19','George St.Pierre','106.84',5),(8,'teller','123 poor street','1981-01-29','Jane Sanchez','13.57',1),(9,'teller','123 poorer street','1982-08-20','Toni Zampino','8.76',3),(10,'teller','123 1st street','1972-03-20','Jhon Oliver','27.99',4),(11,'teller','123 Val de Bris','1969-10-01','Fabrizio Baraka','23.14',5),(12,'Financial Advisor','123 Fake street','1989-12-25','Christopher Cringle','32.75',2),(13,'Financial Advisor','123 Laval street','1972-02-11','Jas!
 on Jhonsson','25.06',3),(14,'Financial Advisor','123 Montreal street','1988-02-11','Jesse Jameson','26.50',4),(15,'Financial Advisor','123 Canada street','1968-02-11','Jenny Brodure','22.17',5),(16,'Security Gaurd','123 Safe street','1939-02-11','James Masi','17.37',1),(17,'Security Gaurd','123 Safer street','1945-02-11','Lisa Roberts','17.85',2),(18,'Security Gaurd','123 Apple Avenue','1965-02-12','Steve Jobs','18.33',3),(19,'Security Gaurd','123 Watergate street','1970-01-12','Richard Nixon','18.81',4),(20,'Security Gaurd','123 Cama','1966-06-16','Jesse Ventura','19.29',5);
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
 `employeePaymentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `employeePaymentAmount` decimal(10,2) NOT NULL,
 PRIMARY KEY (`employeePayId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Payroll`
--

LOCK TABLES `Employee_Payroll` WRITE;
/*!40000 ALTER TABLE `Employee_Payroll` DISABLE KEYS */;
INSERT INTO `Employee_Payroll` VALUES (1,1,'2001-01-01 05:00:00','2000.00'),(2,1,'2011-08-08 04:42:08','323.12'),(3,2,'2010-03-05 02:21:21','1000000.00'),(4,2,'2011-08-08 17:36:28','904.05'),(5,3,'2011-08-08 17:36:28','5615.40'),(6,4,'2011-08-08 17:36:28','6081.88'),(7,5,'2011-08-08 17:36:28','5758.48'),(8,6,'2011-08-08 17:36:28','3610.88'),(9,7,'2011-08-08 17:36:28','4487.28'),(10,8,'2011-08-08 17:36:28','569.94'),(11,9,'2011-08-08 17:36:28','367.92'),(12,10,'2011-08-08 17:36:28','1175.58'),(13,11,'2011-08-08 17:36:28','971.88'),(14,12,'2011-08-08 17:36:28','1375.50'),(15,13,'2011-08-08 17:36:28','1052.52'),(16,14,'2011-08-08 17:36:28','1113.00'),(17,15,'2011-08-08 17:36:28','931.14'),(18,16,'2011-08-08 17:36:28','729.54'),(19,17,'2011-08-08 17:36:28','749.70'),(20,18,'2011-08-08 17:36:28','769.86'),(21,19,'2011-08-08 17:36:28','790.02'),(22,20,'2011-08-08 17:36:28','810.18');
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
 PRIMARY KEY (`employeeId`,`employeeScheduleDay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Schedule`
--

LOCK TABLES `Employee_Schedule` WRITE;
/*!40000 ALTER TABLE `Employee_Schedule` DISABLE KEYS */;
INSERT INTO `Employee_Schedule` VALUES (1,'2011-08-01','working','7.00','0000-00-00 00:00:00'),(2,'2011-08-01','working','7.00','2011-08-03 20:32:34'),(3,'0000-00-00','','0.00','0000-00-00 00:00:00'),(0,'0000-00-00','','0.00','0000-00-00 00:00:00'),(4,'2011-08-02','','8.00','0000-00-00 00:00:00'),(5,'2011-08-02','working','8.00','2010-04-03 20:11:11'),(6,'2011-07-05','working','10.00','2010-03-04 11:01:01'),(1,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-01',!
 'working','7.00','0000-00-00 00:00:00'),(12,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-01','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-02','working','7.00','0000-00-0!
 0 00:00:00'),(9,'2011-07-02','working','7.00','0000-00-00 00:0!
 0:00'),(
10,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-02','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-03','working','!
 7.00','0000-00-00 00:00:00'),(8,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-03','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-04','working','7.00','0000-00-00 00:00:0!
 0'),(5,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(6!
 ,'2011-0
7-04','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-04','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-05','working','7.00','00!
 00-00-00 00:00:00'),(4,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-05','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(15,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(16,'2011-!
 07-06','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-06!
 ','worki
ng','7.00','0000-00-00 00:00:00'),(18,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-06','working','7.00','0000-00-00 00:00:00'),(1,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(2,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(3,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(4,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(5,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(6,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(7,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(8,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(9,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(10,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(11,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(12,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(13,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(14,'2011-07-09','working','7.00','0000-00-00 00:00:!
 00'),(15,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(16,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(17,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(18,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(19,'2011-07-09','working','7.00','0000-00-00 00:00:00'),(20,'2011-07-09','working','7.00','0000-00-00 00:00:00');
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
-- Table structure for table `Interest_Rate`
--

DROP TABLE IF EXISTS `Interest_Rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Interest_Rate` (
 `interestRateId` int(11) NOT NULL AUTO_INCREMENT,
 `interestRatePercentage` decimal(10,2) DEFAULT NULL,
 `typeOfAccount` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
 `typeOfService` enum('credit','non-credit') DEFAULT NULL,
 PRIMARY KEY (`interestRateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interest_Rate`
--

LOCK TABLES `Interest_Rate` WRITE;
/*!40000 ALTER TABLE `Interest_Rate` DISABLE KEYS */;
INSERT INTO `Interest_Rate` VALUES (1,'0.06','credit card','credit'),(2,'0.02','saving','non-credit'),(3,'0.04','line of credit','credit');
/*!40000 ALTER TABLE `Interest_Rate` ENABLE KEYS */;
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
-- Temporary table structure for view `Password`
--

DROP TABLE IF EXISTS `Password`;
/*!50001 DROP VIEW IF EXISTS `Password`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Password` (
 `Username` varbinary(25),
 `Password` varchar(45),
 `Type` varchar(7),
 `Id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reports_Month`
--

DROP TABLE IF EXISTS `Reports_Month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports_Month` (
 `year` int(11) DEFAULT NULL,
 `month` int(11) DEFAULT NULL,
 `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports_Month`
--

LOCK TABLES `Reports_Month` WRITE;
/*!40000 ALTER TABLE `Reports_Month` DISABLE KEYS */;
INSERT INTO `Reports_Month` VALUES (2011,1,'2011-01'),(2011,2,'2011-02'),(2011,3,'2011-03'),(2011,4,'2011-04'),(2011,5,'2011-05'),(2011,6,'2011-06'),(2011,7,'2011-07'),(2011,8,'2011-08'),(2011,9,'2011-09'),(2011,10,'2011-10'),(2011,11,'2011-11'),(2011,12,'2011-12');
/*!40000 ALTER TABLE `Reports_Month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
 `transactionId` int(11) NOT NULL AUTO_INCREMENT,
 `transactionType` enum('DEPOSIT','WITHDRAW','CHARGE','TRANSFER','INTEREST') NOT NULL,
 `transactionAmount` decimal(10,2) DEFAULT NULL,
 `transactionDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 `accountNumber` int(11) DEFAULT NULL,
 `transactionFees` decimal(10,2) DEFAULT NULL,
 `transactionDescription` text,
 PRIMARY KEY (`transactionId`),
 KEY `account` (`accountNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=602 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,'DEPOSIT','50000.00','2001-01-01 05:00:00',5,'0.25','Hey '),(2,'TRANSFER','-500.00','2011-08-04 01:16:12',NULL,'0.00','Internet transfer, money leaving'),(3,'TRANSFER','500.00','2011-08-04 01:16:12',NULL,'0.00','Internet transfer, money leaving'),(4,'TRANSFER','-500.00','2011-08-04 01:16:42',NULL,'0.00','Internet transfer, money leaving'),(5,'TRANSFER','500.00','2011-08-04 01:16:42',NULL,'0.00','Internet transfer, money leaving'),(6,'TRANSFER','-500.00','2011-08-04 01:23:26',3,'0.00','Internet transfer, money leaving'),(7,'TRANSFER','500.00','2011-08-04 01:23:26',5,'0.00','Internet transfer, money leaving'),(8,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(9,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(10,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(11,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet !
 transfer, money leaving'),(12,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(13,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(14,'TRANSFER','-500.00','2011-08-04 01:23:27',3,'0.00','Internet transfer, money leaving'),(15,'TRANSFER','500.00','2011-08-04 01:23:27',5,'0.00','Internet transfer, money leaving'),(16,'TRANSFER','-500.00','2011-08-04 01:23:53',3,'0.00','Internet transfer, money leaving'),(17,'TRANSFER','500.00','2011-08-04 01:23:53',5,'0.00','Internet transfer, money leaving'),(18,'TRANSFER','-5.00','2011-08-04 01:26:01',3,'0.00','Internet transfer, money leaving'),(19,'TRANSFER','5.00','2011-08-04 01:26:01',5,'0.00','Internet transfer, money leaving'),(20,'TRANSFER','-5.00','2011-08-04 01:26:24',3,'0.00','Internet transfer, money leaving'),(21,'TRANSFER','5.00','2011-08-04 01:26:24',5,'0.00','Internet transfer, money leaving'),(22,'TRANSFER','-5.00','2011-08-04 01:26:25',3,'0.00','!
 Internet transfer, money leaving'),(23,'TRANSFER','5.00','2011!
 -08-04 0
1:26:25',5,'0.00','Internet transfer, money leaving'),(24,'TRANSFER','-5.00','2011-08-04 01:26:25',3,'0.00','Internet transfer, money leaving'),(25,'TRANSFER','5.00','2011-08-04 01:26:25',5,'0.00','Internet transfer, money leaving'),(26,'TRANSFER','-5.00','2011-08-04 01:26:58',3,'0.00','Internet transfer, money leaving'),(27,'TRANSFER','5.00','2011-08-04 01:26:58',5,'0.00','Internet transfer, money leaving'),(28,'TRANSFER','-5.00','2011-08-04 01:26:59',3,'0.00','Internet transfer, money leaving'),(29,'TRANSFER','5.00','2011-08-04 01:26:59',5,'0.00','Internet transfer, money leaving'),(30,'TRANSFER','-5.00','2011-08-04 01:26:59',3,'0.00','Internet transfer, money leaving'),(31,'TRANSFER','5.00','2011-08-04 01:26:59',5,'0.00','Internet transfer, money leaving'),(32,'TRANSFER','-5.00','2011-08-04 01:27:02',3,'0.00','Internet transfer, money leaving'),(33,'TRANSFER','5.00','2011-08-04 01:27:02',5,'0.00','Internet transfer, money leaving'),(34,'TRANSFER','-5.00','2011-08-04 01:27!
 :03',3,'0.00','Internet transfer, money leaving'),(35,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(36,'TRANSFER','-5.00','2011-08-04 01:27:03',3,'0.00','Internet transfer, money leaving'),(37,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(38,'TRANSFER','-5.00','2011-08-04 01:27:03',3,'0.00','Internet transfer, money leaving'),(39,'TRANSFER','5.00','2011-08-04 01:27:03',5,'0.00','Internet transfer, money leaving'),(40,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(41,'TRANSFER','5.00','2011-08-04 01:27:05',5,'0.00','Internet transfer, money leaving'),(42,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(43,'TRANSFER','5.00','2011-08-04 01:27:05',5,'0.00','Internet transfer, money leaving'),(44,'TRANSFER','-5.00','2011-08-04 01:27:05',3,'0.00','Internet transfer, money leaving'),(45,'TRANSFER','5.00','2011-08-04 01:27:05'!
 ,5,'0.00','Internet transfer, money leaving'),(46,'TRANSFER','!
 -5.00','
2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(47,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(48,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(49,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(50,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(51,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(52,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(53,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(54,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(55,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(56,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(57,'TRANSFER','5.00','2011-!
 08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(58,'TRANSFER','-5.00','2011-08-04 01:27:06',3,'0.00','Internet transfer, money leaving'),(59,'TRANSFER','5.00','2011-08-04 01:27:06',5,'0.00','Internet transfer, money leaving'),(60,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(61,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(62,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(63,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(64,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(65,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(66,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(67,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(68,'TRANSFER','-5.00','2011-08-!
 04 01:27:07',3,'0.00','Internet transfer, money leaving'),(69,!
 'TRANSFE
R','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(70,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(71,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(72,'TRANSFER','-5.00','2011-08-04 01:27:07',3,'0.00','Internet transfer, money leaving'),(73,'TRANSFER','5.00','2011-08-04 01:27:07',5,'0.00','Internet transfer, money leaving'),(74,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(75,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(76,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(77,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(78,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(79,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(80,'TRANSFER','-!
 5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(81,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(82,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(83,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(84,'TRANSFER','-5.00','2011-08-04 01:27:08',3,'0.00','Internet transfer, money leaving'),(85,'TRANSFER','5.00','2011-08-04 01:27:08',5,'0.00','Internet transfer, money leaving'),(86,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(87,'TRANSFER','5.00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money leaving'),(88,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(89,'TRANSFER','5.00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money leaving'),(90,'TRANSFER','-5.00','2011-08-04 01:27:10',3,'0.00','Internet transfer, money leaving'),(91,'TRANSFER','5.!
 00','2011-08-04 01:27:10',23,'0.00','Internet transfer, money !
 leaving'
),(
92,'TRANSFER','-5.00','2011-08-04 01:27:11',3,'0.00','Internet transfer, money leaving'),(93,'TRANSFER','5.00','2011-08-04 01:27:11',23,'0.00','Internet transfer, money leaving'),(94,'TRANSFER','-5.00','2011-08-04 01:27:12',3,'0.00','Internet transfer, money leaving'),(95,'TRANSFER','5.00','2011-08-04 01:27:12',34,'0.00','Internet transfer, money leaving'),(96,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(97,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(98,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(99,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(100,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving'),(101,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(102,'TRANSFER','-5.00','2011-08-04 01:27:13',3,'0.00','Internet transfer, money leaving!
 '),(103,'TRANSFER','5.00','2011-08-04 01:27:13',34,'0.00','Internet transfer, money leaving'),(104,'TRANSFER','-500.00','2011-08-04 01:27:36',3,'0.00','Internet transfer, money leaving'),(105,'TRANSFER','500.00','2011-08-04 01:27:36',34,'0.00','Internet transfer, money arriving'),(106,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(107,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(108,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(109,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(110,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(111,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(112,'TRANSFER','-500.00','2011-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(113,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.!
 00','Internet transfer, money arriving'),(114,'TRANSFER','-500!
 .00','20
11-08-04 01:27:37',3,'0.00','Internet transfer, money leaving'),(115,'TRANSFER','500.00','2011-08-04 01:27:37',34,'0.00','Internet transfer, money arriving'),(116,'TRANSFER','-500.00','2011-08-04 01:27:38',3,'0.00','Internet transfer, money leaving'),(117,'TRANSFER','500.00','2011-08-04 01:27:38',34,'0.00','Internet transfer, money arriving'),(118,'TRANSFER','-500.00','2011-08-04 01:27:38',3,'0.00','Internet transfer, money leaving'),(119,'TRANSFER','500.00','2011-08-04 01:27:38',34,'0.00','Internet transfer, money arriving'),(120,'TRANSFER','-330.00','2011-08-04 01:27:56',3,'0.00','Internet transfer, money leaving'),(121,'TRANSFER','330.00','2011-08-04 01:27:56',5,'0.00','Internet transfer, money arriving'),(122,'TRANSFER','-980.00','2011-08-04 01:28:01',3,'0.00','Internet transfer, money leaving'),(123,'TRANSFER','980.00','2011-08-04 01:28:01',23,'0.00','Internet transfer, money arriving'),(124,'TRANSFER','-667.00','2011-08-04 01:28:10',5,'0.00','Internet transfer, money l!
 eaving'),(125,'TRANSFER','667.00','2011-08-04 01:28:10',3,'0.00','Internet transfer, money arriving'),(126,'TRANSFER','-5.00','2011-08-04 01:30:59',3,'0.00','Internet transfer, money leaving'),(127,'TRANSFER','5.00','2011-08-04 01:30:59',34,'0.00','Internet transfer, money arriving'),(128,'TRANSFER','-5.00','2011-08-04 01:31:01',3,'0.00','Internet transfer, money leaving'),(129,'TRANSFER','5.00','2011-08-04 01:31:01',34,'0.00','Internet transfer, money arriving'),(130,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(131,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(132,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(133,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(134,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(135,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Interne!
 t transfer, money arriving'),(136,'TRANSFER','-5.00','2011-08-!
 04 01:31
:02',3,'0.00','Internet transfer, money leaving'),(137,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(138,'TRANSFER','-5.00','2011-08-04 01:31:02',3,'0.00','Internet transfer, money leaving'),(139,'TRANSFER','5.00','2011-08-04 01:31:02',34,'0.00','Internet transfer, money arriving'),(140,'TRANSFER','-5.00','2011-08-04 01:31:03',3,'0.00','Internet transfer, money leaving'),(141,'TRANSFER','5.00','2011-08-04 01:31:03',34,'0.00','Internet transfer, money arriving'),(142,'TRANSFER','-5.00','2011-08-04 01:31:03',3,'0.00','Internet transfer, money leaving'),(143,'TRANSFER','5.00','2011-08-04 01:31:03',34,'0.00','Internet transfer, money arriving'),(144,'TRANSFER','-5.00','2011-08-04 01:31:08',3,'0.00','Internet transfer, money leaving'),(145,'TRANSFER','5.00','2011-08-04 01:31:08',23,'0.00','Internet transfer, money arriving'),(146,'TRANSFER','-5.00','2011-08-04 01:31:08',3,'0.00','Internet transfer, money leaving'),(147,'TRANSFER','5.00','!
 2011-08-04 01:31:08',23,'0.00','Internet transfer, money arriving'),(148,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(149,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(150,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(151,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(152,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(153,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(154,'TRANSFER','-5.00','2011-08-04 01:31:09',3,'0.00','Internet transfer, money leaving'),(155,'TRANSFER','5.00','2011-08-04 01:31:09',23,'0.00','Internet transfer, money arriving'),(156,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(157,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(158,!
 'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet tr!
 ansfer,
money leaving'),(159,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(160,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(161,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(162,'TRANSFER','-5.00','2011-08-04 01:31:10',3,'0.00','Internet transfer, money leaving'),(163,'TRANSFER','5.00','2011-08-04 01:31:10',23,'0.00','Internet transfer, money arriving'),(164,'TRANSFER','-345.00','2011-08-04 01:31:28',3,'0.00','Internet transfer, money leaving'),(165,'TRANSFER','345.00','2011-08-04 01:31:28',34,'0.00','Internet transfer, money arriving'),(166,'TRANSFER','-345.00','2011-08-04 01:31:28',3,'0.00','Internet transfer, money leaving'),(167,'TRANSFER','345.00','2011-08-04 01:31:28',34,'0.00','Internet transfer, money arriving'),(168,'TRANSFER','-345.00','2011-08-04 01:31:29',3,'0.00','Internet transfer, money leaving'),(169,'TRANSFER','345.00','2011-08-04 01:31:29',3!
 4,'0.00','Internet transfer, money arriving'),(170,'TRANSFER','-345.00','2011-08-04 01:31:29',3,'0.00','Internet transfer, money leaving'),(171,'TRANSFER','345.00','2011-08-04 01:31:29',34,'0.00','Internet transfer, money arriving'),(172,'TRANSFER','-345.00','2011-08-04 01:31:30',3,'0.00','Internet transfer, money leaving'),(173,'TRANSFER','345.00','2011-08-04 01:31:30',34,'0.00','Internet transfer, money arriving'),(174,'TRANSFER','-45.00','2011-08-04 01:32:04',3,'0.00','Internet transfer, money leaving'),(175,'TRANSFER','45.00','2011-08-04 01:32:04',23,'0.00','Internet transfer, money arriving'),(176,'TRANSFER','-500.00','2011-08-04 01:34:12',3,'0.00','Internet transfer, money leaving'),(177,'TRANSFER','500.00','2011-08-04 01:34:12',34,'0.00','Internet transfer, money arriving'),(178,'TRANSFER','-500.00','2011-08-04 01:34:34',3,'0.00','Internet transfer, money leaving'),(179,'TRANSFER','500.00','2011-08-04 01:34:34',23,'0.00','Internet transfer, money arriving'),(180,'TRA!
 NSFER','-435.00','2011-08-04 01:34:48',5,'0.00','Internet tran!
 sfer, mo
ney
 leaving'),(181,'TRANSFER','435.00','2011-08-04 01:34:48',23,'0.00','Internet transfer, money arriving'),(182,'TRANSFER','-45.00','2011-08-04 01:35:02',3,'0.00','Internet transfer, money leaving'),(183,'TRANSFER','45.00','2011-08-04 01:35:02',34,'0.00','Internet transfer, money arriving'),(184,'TRANSFER','-3234.00','2011-08-04 01:35:05',3,'0.00','Internet transfer, money leaving'),(185,'TRANSFER','3234.00','2011-08-04 01:35:05',34,'0.00','Internet transfer, money arriving'),(186,'TRANSFER','-344535.00','2011-08-04 02:48:40',3,'0.00','Internet transfer, money leaving'),(187,'TRANSFER','344535.00','2011-08-04 02:48:40',5,'0.00','Internet transfer, money arriving'),(188,'TRANSFER','-50.00','2011-08-04 02:56:21',3,'1.00','Internet transfer, money leaving'),(189,'TRANSFER','50.00','2011-08-04 02:56:21',5,'0.00','Internet transfer, money arriving'),(190,'TRANSFER','-1.00','2011-08-04 02:56:45',3,'1.00','Internet transfer, money leaving'),(191,'TRANSFER','1.00','2011-08-04 02:56:45!
 ',5,'0.00','Internet transfer, money arriving'),(192,'TRANSFER','-50.00','2011-08-04 02:57:18',23,'0.00','Internet transfer, money leaving'),(193,'TRANSFER','50.00','2011-08-04 02:57:18',34,'0.00','Internet transfer, money arriving'),(194,'TRANSFER','-50.00','2011-08-04 02:58:15',23,'0.00','Internet transfer, money leaving'),(195,'TRANSFER','50.00','2011-08-04 02:58:15',34,'0.00','Internet transfer, money arriving'),(567,'TRANSFER','-1.00','2011-08-08 17:52:46',5,'0.00','Internet transfer, money leaving'),(566,'TRANSFER','150.00','2011-08-08 17:51:48',3,'0.00','Internet transfer, money arriving'),(565,'TRANSFER','-150.00','2011-08-08 17:51:48',5,'0.00','Internet transfer, money leaving'),(564,'INTEREST','-48.17','2011-08-08 17:44:48',50,'0.00','Interest'),(563,'INTEREST','-48.17','2011-08-08 17:44:48',47,'0.00','Interest'),(562,'INTEREST','-48.17','2011-08-08 17:44:48',44,'0.00','Interest'),(561,'INTEREST','-48.17','2011-08-08 17:44:48',41,'0.00','Interest'),(560,'INTEREST'!
 ,'-48.17','2011-08-08 17:44:48',38,'0.00','Interest'),(559,'IN!
 TEREST',
'-48.17','2011-08-08 17:44:48',35,'0.00','Interest'),(558,'INTEREST','-48.17','2011-08-08 17:44:48',32,'0.00','Interest'),(557,'INTEREST','-48.17','2011-08-08 17:44:48',29,'0.00','Interest'),(556,'INTEREST','-48.17','2011-08-08 17:44:48',26,'0.00','Interest'),(555,'INTEREST','-4164213.34','2011-08-08 17:44:48',23,'0.00','Interest'),(554,'INTEREST','-48.17','2011-08-08 17:44:48',20,'0.00','Interest'),(553,'INTEREST','-48.17','2011-08-08 17:44:48',17,'0.00','Interest'),(552,'INTEREST','-48.17','2011-08-08 17:44:48',14,'0.00','Interest'),(551,'INTEREST','-48.17','2011-08-08 17:44:48',11,'0.00','Interest'),(550,'INTEREST','-48.17','2011-08-08 17:44:48',8,'0.00','Interest'),(549,'INTEREST','-4146420.79','2011-08-08 17:44:48',5,'0.00','Interest'),(466,'WITHDRAW','-99999999.99','2011-08-08 14:11:04',34,'0.00','Internet Withdraw'),(465,'TRANSFER','99999999.99','2011-08-08 14:10:34',34,'0.00','Internet transfer, money arriving'),(464,'TRANSFER','-99999999.99','2011-08-08 14:10:34',3,!
 '1.00','Internet transfer, money leaving'),(463,'TRANSFER','100.00','2011-08-08 14:09:53',5,'0.00','Internet transfer, money arriving'),(462,'TRANSFER','-100.00','2011-08-08 14:09:53',3,'1.00','Internet transfer, money leaving'),(548,'INTEREST','655.89','2011-08-08 17:44:48',3079,'0.00','Interest'),(547,'INTEREST','1144.63','2011-08-08 17:44:48',49,'0.00','Interest'),(546,'INTEREST','1.40','2011-08-08 17:44:48',48,'0.00','Interest'),(545,'INTEREST','1148.06','2011-08-08 17:44:48',46,'0.00','Interest'),(544,'INTEREST','1.40','2011-08-08 17:44:48',45,'0.00','Interest'),(543,'INTEREST','1146.92','2011-08-08 17:44:48',43,'0.00','Interest'),(542,'INTEREST','1.40','2011-08-08 17:44:48',42,'0.00','Interest'),(541,'INTEREST','1146.92','2011-08-08 17:44:48',40,'0.00','Interest'),(540,'INTEREST','1.40','2011-08-08 17:44:48',39,'0.00','Interest'),(539,'INTEREST','1145.77','2011-08-08 17:44:48',37,'0.00','Interest'),(538,'INTEREST','1.40','2011-08-08 17:44:48',36,'0.00','Interest'),(53!
 7,'INTEREST','-0.34','2011-08-08 17:44:48',34,'0.00','Interest!
 '),(536,
'INTEREST','1.40','2011-08-08 17:44:48',33,'0.00','Interest'),(535,'INTEREST','1145.77','2011-08-08 17:44:48',31,'0.00','Interest'),(534,'INTEREST','1.40','2011-08-08 17:44:48',30,'0.00','Interest'),(533,'INTEREST','1145.77','2011-08-08 17:44:48',28,'0.00','Interest'),(532,'INTEREST','1.40','2011-08-08 17:44:48',27,'0.00','Interest'),(531,'INTEREST','1144.63','2011-08-08 17:44:48',25,'0.00','Interest'),(530,'INTEREST','1.40','2011-08-08 17:44:48',24,'0.00','Interest'),(529,'INTEREST','1146.92','2011-08-08 17:44:48',22,'0.00','Interest'),(528,'INTEREST','1.40','2011-08-08 17:44:48',21,'0.00','Interest'),(527,'INTEREST','1145.77','2011-08-08 17:44:48',19,'0.00','Interest'),(526,'INTEREST','1.40','2011-08-08 17:44:48',18,'0.00','Interest'),(525,'INTEREST','1145.77','2011-08-08 17:44:48',16,'0.00','Interest'),(524,'INTEREST','1.40','2011-08-08 17:44:48',15,'0.00','Interest'),(523,'INTEREST','1144.63','2011-08-08 17:44:48',13,'0.00','Interest'),(522,'INTEREST','1.40','2011-08-08 !
 17:44:48',12,'0.00','Interest'),(521,'INTEREST','1145.77','2011-08-08 17:44:48',10,'0.00','Interest'),(520,'INTEREST','1.40','2011-08-08 17:44:48',9,'0.00','Interest'),(519,'INTEREST','1144.63','2011-08-08 17:44:48',7,'0.00','Interest'),(518,'INTEREST','1.00','2011-08-08 17:44:48',6,'0.00','Interest'),(517,'INTEREST','1144.63','2011-08-08 17:44:48',4,'0.00','Interest'),(516,'INTEREST','4.79','2011-08-08 17:44:48',3,'0.00','Interest'),(515,'CHARGE','-25.00','2011-08-08 17:44:48',50,'0.00','Charge for your plan Ultimate'),(514,'CHARGE','-25.00','2011-08-08 17:44:48',47,'0.00','Charge for your plan Ultimate'),(513,'CHARGE','-25.00','2011-08-08 17:44:48',44,'0.00','Charge for your plan Ultimate'),(512,'CHARGE','-25.00','2011-08-08 17:44:48',41,'0.00','Charge for your plan Ultimate'),(511,'CHARGE','-25.00','2011-08-08 17:44:48',38,'0.00','Charge for your plan Ultimate'),(510,'CHARGE','-25.00','2011-08-08 17:44:48',35,'0.00','Charge for your plan Ultimate'),(509,'CHARGE','-25.00'!
 ,'2011-08-08 17:44:48',32,'0.00','Charge for your plan Ultimat!
 e'),(508
,'CHARGE','-25.00','2011-08-08 17:44:48',29,'0.00','Charge for your plan Ultimate'),(507,'CHARGE','-25.00','2011-08-08 17:44:48',26,'0.00','Charge for your plan Ultimate'),(506,'CHARGE','-25.00','2011-08-08 17:44:48',23,'0.00','Charge for your plan Ultimate'),(505,'CHARGE','-25.00','2011-08-08 17:44:48',20,'0.00','Charge for your plan Ultimate'),(504,'CHARGE','-25.00','2011-08-08 17:44:48',17,'0.00','Charge for your plan Ultimate'),(503,'CHARGE','-25.00','2011-08-08 17:44:48',14,'0.00','Charge for your plan Ultimate'),(502,'CHARGE','-25.00','2011-08-08 17:44:48',11,'0.00','Charge for your plan Ultimate'),(501,'CHARGE','-25.00','2011-08-08 17:44:48',8,'0.00','Charge for your plan Ultimate'),(500,'CHARGE','-25.00','2011-08-08 17:44:48',5,'0.00','Charge for your plan Ultimate'),(499,'CHARGE','-17.00','2011-08-08 17:44:48',49,'0.00','Charge for your plan Premuim'),(498,'CHARGE','-17.00','2011-08-08 17:44:48',46,'0.00','Charge for your plan Premuim'),(497,'CHARGE','-17.00','2011-!
 08-08 17:44:48',43,'0.00','Charge for your plan Premuim'),(496,'CHARGE','-17.00','2011-08-08 17:44:48',40,'0.00','Charge for your plan Premuim'),(495,'CHARGE','-17.00','2011-08-08 17:44:48',37,'0.00','Charge for your plan Premuim'),(494,'CHARGE','-17.00','2011-08-08 17:44:48',34,'0.00','Charge for your plan Premuim'),(493,'CHARGE','-17.00','2011-08-08 17:44:48',31,'0.00','Charge for your plan Premuim'),(492,'CHARGE','-17.00','2011-08-08 17:44:48',28,'0.00','Charge for your plan Premuim'),(491,'CHARGE','-17.00','2011-08-08 17:44:48',25,'0.00','Charge for your plan Premuim'),(490,'CHARGE','-17.00','2011-08-08 17:44:48',22,'0.00','Charge for your plan Premuim'),(489,'CHARGE','-17.00','2011-08-08 17:44:48',19,'0.00','Charge for your plan Premuim'),(488,'CHARGE','-17.00','2011-08-08 17:44:48',16,'0.00','Charge for your plan Premuim'),(487,'CHARGE','-17.00','2011-08-08 17:44:48',13,'0.00','Charge for your plan Premuim'),(486,'CHARGE','-17.00','2011-08-08 17:44:48',10,'0.00','Char!
 ge for your plan Premuim'),(485,'CHARGE','-17.00','2011-08-08 !
 17:44:48
',7
,'0.00','Charge for your plan Premuim'),(484,'CHARGE','-17.00','2011-08-08 17:44:48',4,'0.00','Charge for your plan Premuim'),(483,'CHARGE','-10.00','2011-08-08 17:44:48',3079,'0.00','Charge for your plan Basic'),(482,'CHARGE','-10.00','2011-08-08 17:44:48',3077,'0.00','Charge for your plan Basic'),(481,'CHARGE','-10.00','2011-08-08 17:44:48',48,'0.00','Charge for your plan Basic'),(480,'CHARGE','-10.00','2011-08-08 17:44:48',45,'0.00','Charge for your plan Basic'),(479,'CHARGE','-10.00','2011-08-08 17:44:48',42,'0.00','Charge for your plan Basic'),(478,'CHARGE','-10.00','2011-08-08 17:44:48',39,'0.00','Charge for your plan Basic'),(477,'CHARGE','-10.00','2011-08-08 17:44:48',36,'0.00','Charge for your plan Basic'),(476,'CHARGE','-10.00','2011-08-08 17:44:48',33,'0.00','Charge for your plan Basic'),(475,'CHARGE','-10.00','2011-08-08 17:44:48',30,'0.00','Charge for your plan Basic'),(474,'CHARGE','-10.00','2011-08-08 17:44:48',27,'0.00','Charge for your plan Basic'),(473,'CHA!
 RGE','-10.00','2011-08-08 17:44:48',24,'0.00','Charge for your plan Basic'),(472,'CHARGE','-10.00','2011-08-08 17:44:48',21,'0.00','Charge for your plan Basic'),(471,'CHARGE','-10.00','2011-08-08 17:44:48',18,'0.00','Charge for your plan Basic'),(470,'CHARGE','-10.00','2011-08-08 17:44:48',15,'0.00','Charge for your plan Basic'),(469,'CHARGE','-10.00','2011-08-08 17:44:48',12,'0.00','Charge for your plan Basic'),(468,'CHARGE','-10.00','2011-08-08 17:44:48',9,'0.00','Charge for your plan Basic'),(372,'TRANSFER','-324.00','2011-08-04 05:08:03',3,'1.00','Internet transfer, money leaving'),(373,'TRANSFER','324.00','2011-08-04 05:08:03',5,'0.00','Internet transfer, money arriving'),(374,'TRANSFER','-100000.00','2011-08-04 05:10:14',5,'0.00','Internet transfer, money leaving'),(375,'TRANSFER','100000.00','2011-08-04 05:10:14',23,'0.00','Internet transfer, money arriving'),(376,'TRANSFER','-99999999.00','2011-08-04 05:10:18',5,'0.00','Internet transfer, money leaving'),(377,'TRANS!
 FER','99999999.00','2011-08-04 05:10:18',23,'0.00','Internet t!
 ransfer,
 money arriving'),(467,'CHARGE','-10.00','2011-08-08 17:44:48',3,'0.00','Charge for your plan Basic'),(568,'TRANSFER','1.00','2011-08-08 17:52:46',3,'0.00','Internet transfer, money arriving'),(569,'TRANSFER','-5.00','2011-08-08 17:53:40',5,'0.00','Internet transfer, money leaving'),(570,'TRANSFER','5.00','2011-08-08 17:53:40',3,'0.00','Internet transfer, money arriving'),(571,'TRANSFER','-15.00','2011-08-08 17:53:58',5,'0.00','Internet transfer, money leaving'),(572,'TRANSFER','15.00','2011-08-08 17:53:58',3,'0.00','Internet transfer, money arriving'),(573,'TRANSFER','-1.00','2011-08-08 17:54:13',5,'0.00','Internet transfer, money leaving'),(574,'TRANSFER','1.00','2011-08-08 17:54:13',3,'0.00','Internet transfer, money arriving'),(575,'TRANSFER','-1.00','2011-08-08 17:54:23',5,'0.00','Internet transfer, money leaving'),(576,'TRANSFER','1.00','2011-08-08 17:54:23',3,'0.00','Internet transfer, money arriving'),(577,'TRANSFER','-1.00','2011-08-08 17:54:24',5,'0.00','Internet t!
 ransfer, money leaving'),(578,'TRANSFER','1.00','2011-08-08 17:54:24',3,'0.00','Internet transfer, money arriving'),(579,'TRANSFER','-1.00','2011-08-08 17:54:25',5,'0.00','Internet transfer, money leaving'),(580,'TRANSFER','1.00','2011-08-08 17:54:25',3,'0.00','Internet transfer, money arriving'),(581,'TRANSFER','-20.00','2011-08-08 17:54:39',5,'0.00','Internet transfer, money leaving'),(582,'TRANSFER','20.00','2011-08-08 17:54:39',3,'0.00','Internet transfer, money arriving'),(583,'TRANSFER','-239.32','2011-08-08 17:54:52',3,'1.00','Internet transfer, money leaving'),(584,'TRANSFER','239.32','2011-08-08 17:54:52',5,'0.00','Internet transfer, money arriving'),(585,'TRANSFER','-30.00','2011-08-08 18:06:16',3,'1.00','Internet transfer, money leaving'),(586,'TRANSFER','30.00','2011-08-08 18:06:16',34,'0.00','Internet transfer, money arriving'),(587,'TRANSFER','-1.00','2011-08-08 18:20:01',34,'0.00','Internet transfer, money leaving'),(588,'TRANSFER','1.00','2011-08-08 18:20:01!
 ',3,'0.00','Internet transfer, money arriving'),(589,'DEPOSIT'!
 ,'500.00
','2011-08-08 18:20:27',34,'0.00','Internet Deposit'),(590,'DEPOSIT','20.00','2011-08-08 18:22:14',34,'0.00','Internet Deposit'),(591,'TRANSFER','-12.00','2011-08-08 18:22:41',3,'1.00','Internet transfer, money leaving'),(592,'TRANSFER','12.00','2011-08-08 18:22:41',5,'0.00','Internet transfer, money arriving'),(593,'DEPOSIT','0.00','2011-08-08 18:22:46',34,'0.00','Internet Deposit'),(594,'DEPOSIT','12.00','2011-08-08 18:22:57',34,'0.00','Internet Deposit'),(595,'WITHDRAW','-156.00','2011-08-08 18:23:25',3,'1.00','Internet Withdraw'),(596,'TRANSFER','-30.00','2011-08-08 18:23:43',34,'0.00','Internet transfer, money leaving'),(597,'TRANSFER','30.00','2011-08-08 18:23:43',3,'0.00','Internet transfer, money arriving'),(598,'TRANSFER','-20.00','2011-08-08 18:23:47',34,'0.00','Internet transfer, money leaving'),(599,'TRANSFER','20.00','2011-08-08 18:23:47',3,'0.00','Internet transfer, money arriving'),(600,'DEPOSIT','500.00','2011-08-08 18:25:50',3,'0.00','Internet Deposit'),(601!
 ,'WITHDRAW','-200.00','2011-08-08 18:26:09',3,'1.00','Internet Withdraw');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2011-08-08 14:27:20
