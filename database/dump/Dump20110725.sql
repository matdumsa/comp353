-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2011 at 07:10 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dmc353_1`
--
CREATE DATABASE `dmc353_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dmc353_1`;

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3073 ;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` VALUES(1, 'checking', 50000.00, '2001-01-01', 1, 1, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(2, 'line of credit', -1000.00, '2005-12-31', 0, 2, 3, 3, 25000.00, NULL);
INSERT INTO `Account` VALUES(3, 'checking', 3000000000.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(4, 'saving', 50050.00, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(5, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(6, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(7, 'saving', 50050.00, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(8, 'line of credit', -1000.00, '2005-05-21', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(9, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(10, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(11, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(12, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(13, 'saving', 50050.00, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(14, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(15, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(16, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(17, 'line of credit', -1000.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(18, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(19, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(20, 'line of credit', -1000.00, '2002-01-12', 0, 2, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(21, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(22, 'saving', 50150.00, '2001-01-04', 1, 1, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(23, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(24, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(25, 'saving', 50050.00, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(26, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(27, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(28, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(29, 'line of credit', -1000.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(30, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(31, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(32, 'line of credit', -1000.00, '2005-05-21', 0, 2, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(33, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(34, 'saving', 50150.00, '2001-01-04', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(35, 'line of credit', -1000.00, '2002-01-12', 0, 1, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(36, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(37, 'saving', 50100.00, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(38, 'line of credit', -1000.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(39, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(40, 'saving', 50150.00, '2001-01-04', 1, 2, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(41, 'line of credit', -1000.00, '2005-05-21', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(42, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(43, 'saving', 50150.00, '2001-01-04', 1, 4, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(44, 'line of credit', -1000.00, '2002-01-12', 0, 1, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(45, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(46, 'saving', 50200.00, '2001-01-05', 1, 2, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(47, 'line of credit', -1000.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(48, 'checking', 0.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(49, 'saving', 50050.00, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(50, 'line of credit', -1000.00, '2005-05-21', 0, 4, 3, 3, 1000.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch`
--

CREATE TABLE `Branch` (
  `branchId` int(11) NOT NULL AUTO_INCREMENT,
  `banchLocation` varchar(255) DEFAULT NULL,
  `branchFax` char(10) DEFAULT NULL,
  `branchPhone` char(10) DEFAULT NULL,
  `branchOpeningDate` date DEFAULT NULL,
  `branchManagedBy` int(11) DEFAULT NULL,
  `branchBanking` tinyint(1) DEFAULT NULL,
  `branchInvestment` tinyint(1) DEFAULT NULL,
  `branchInsurance` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`branchId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Branch`
--

INSERT INTO `Branch` VALUES(1, 'SaintCatherine', '5149999999', '5146666666', '2010-09-10', 3, 1, 1, 0);
INSERT INTO `Branch` VALUES(2, 'Montreal', '5148877777', '5148777345', '2011-06-15', 4, 1, 0, 0);
INSERT INTO `Branch` VALUES(3, 'Laval', '4875443443', '4382343256', '2007-11-15', 5, 0, 0, 1);
INSERT INTO `Branch` VALUES(4, 'Laval', '4872232222', '4383484934', '2005-02-13', 6, 1, 1, 1);
INSERT INTO `Branch` VALUES(5, 'Torronto', '4163345353', '4172342353', '2001-07-15', 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Charge_plans`
--

CREATE TABLE `Charge_plans` (
  `branchPlanId` int(11) NOT NULL AUTO_INCREMENT,
  `branchPlanLimit` int(11) DEFAULT NULL,
  `branchPlanOption` enum('Basic','Premuim','Ultimate') DEFAULT NULL,
  `branchCharge` decimal(10,2) DEFAULT NULL,
  `branchChargeExcessLimit` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`branchPlanId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Charge_plans`
--

INSERT INTO `Charge_plans` VALUES(1, 25, 'Basic', 0.25, 0.00);
INSERT INTO `Charge_plans` VALUES(2, 50, 'Premuim', 0.15, 0.00);
INSERT INTO `Charge_plans` VALUES(3, 100, 'Ultimate', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `clientAddress` text,
  `clientDateOfBirth` date DEFAULT NULL,
  `clientJoiningDate` date DEFAULT NULL,
  `clientName` varchar(255) DEFAULT NULL,
  `clientCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6480 ;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` VALUES(1, 'Montreal, Canada', '1982-05-21', '2011-01-01', 'Kristina H. Chung', 'Personal');
INSERT INTO `Client` VALUES(2, 'Montreal, Canada', '1904-01-04', '1988-01-01', 'Clark, Joe', 'Personal');
INSERT INTO `Client` VALUES(3, 'Baie-Comeau, Canada', '1905-01-28', '2001-02-03', 'Savard, Michel', 'Personal');
INSERT INTO `Client` VALUES(4, 'Montreal, Canada', '1932-05-21', '2007-04-12', 'Kristina H. Chung', 'Personal');
INSERT INTO `Client` VALUES(5, 'Toronto, Canada', '1985-03-01', '2007-06-14', 'Christina R. Craig', 'Personal');
INSERT INTO `Client` VALUES(6, 'Waterloo, Canada', '1962-04-02', '2007-07-15', 'Albert maccafe', 'Personal');
INSERT INTO `Client` VALUES(7, 'Ottawa, Canada', '1988-06-03', '2008-08-16', 'Gretchen C. Mcintyre', 'Personal');
INSERT INTO `Client` VALUES(8, 'Montreal, Canada', '1920-08-04', '2009-09-17', 'Bonnie R. Brantley', 'Personal');
INSERT INTO `Client` VALUES(9, 'Toronto, Canada', '1983-09-05', '2008-10-22', 'George E. Kelly', 'Personal');
INSERT INTO `Client` VALUES(10, 'Ottawa, Canada', '1989-08-06', '2004-11-23', 'Barbra M. Smith', 'Personal');
INSERT INTO `Client` VALUES(11, 'British Columbia, Canada', '1928-07-07', '2005-12-25', 'Evelyn Y. Lyons', 'Personal');
INSERT INTO `Client` VALUES(12, 'Ottawa, Canada', '1981-09-08', '2006-01-26', 'Rita A. Wall', 'Personal');
INSERT INTO `Client` VALUES(13, 'Montreal, Canada', '1982-11-09', '2011-02-27', 'Franklin A. Watson', 'Personal');
INSERT INTO `Client` VALUES(14, 'Toronto, Canada', '1983-12-10', '2010-03-28', 'Ronnie T. Atkins', 'Personal');
INSERT INTO `Client` VALUES(15, 'Montreal, Canada', '1972-05-11', '2004-04-30', 'Amy O. Norman', 'Personal');
INSERT INTO `Client` VALUES(16, 'Montreal, Canada', '1973-08-12', '2010-05-31', 'Robert E. Reid', 'Personal');
INSERT INTO `Client` VALUES(17, 'Montreal, Canada', '1978-09-23', '0000-00-00', 'Pauline H. Chandler', 'Personal');
INSERT INTO `Client` VALUES(18, 'British Columbia, Canada', '1969-03-21', '2011-07-23', 'Lynn O. Robertson', 'Personal');
INSERT INTO `Client` VALUES(19, 'Toronto, Canada', '1991-02-22', '2010-08-21', 'Peggy O. Hobbs', 'Personal');
INSERT INTO `Client` VALUES(20, 'Ottawa, Canada', '1952-05-24', '2010-09-20', 'Doris I. Kinney', 'Personal');
INSERT INTO `Client` VALUES(21, 'British Columbia, Canada', '1956-07-25', '2009-10-01', 'Tracey A. Waters', 'Personal');
INSERT INTO `Client` VALUES(22, 'Toronto, Canada', '1969-08-27', '2004-11-02', 'Leo D. Adkins', 'Personal');
INSERT INTO `Client` VALUES(23, 'Toronto, Canada', '1955-09-28', '2005-12-02', 'Constance L. Black', 'Personal');
INSERT INTO `Client` VALUES(24, 'Ottawa, Canada', '1975-10-29', '2006-01-03', 'Sarah O. Fox', 'Personal');
INSERT INTO `Client` VALUES(25, 'Quebec, Canada', '1962-11-30', '2007-02-04', 'Hugh R. Arthur', 'Personal');
INSERT INTO `Client` VALUES(26, 'Sherbrooke, Canada', '1974-01-31', '2008-03-05', 'Mildred I. Gilbert', 'Personal');
INSERT INTO `Client` VALUES(27, 'Toronto, Canada', '1981-02-01', '2006-04-06', 'Seth E. Kern', 'Personal');
INSERT INTO `Client` VALUES(28, 'Toronto, Canada', '1979-03-02', '2009-05-07', 'Ted A. Mason', 'Personal');
INSERT INTO `Client` VALUES(29, 'Ottawa, Canada', '1982-04-03', '2010-06-08', 'Mildred I. Gilbert', 'Personal');
INSERT INTO `Client` VALUES(30, 'Ottawa, Canada', '1964-05-04', '2010-07-09', 'Jacob C. McIntyre', 'Personal');
INSERT INTO `Client` VALUES(31, 'British Columbia, Canada', '1992-06-05', '2010-08-10', 'Phyllis E.Hendricks', 'Personal');
INSERT INTO `Client` VALUES(32, 'Montreal, Canada', '1959-05-06', '2010-09-11', 'Slyvia A. Bailey', 'Personal');
INSERT INTO `Client` VALUES(33, 'British Columbia, Canada', '1960-07-07', '2004-10-22', 'Glenda A. Raynor', 'Personal');
INSERT INTO `Client` VALUES(34, 'British Columbia, Canada', '1961-08-08', '2005-11-21', 'Juan C. McLaughlin', 'Personal');
INSERT INTO `Client` VALUES(35, 'Sherbrooke, Canada', '1962-09-11', '2006-12-22', 'Ted A. Law', 'Personal');
INSERT INTO `Client` VALUES(36, 'British Columbia, Canada', '1963-10-12', '2007-01-02', 'Arthur. L. Glass', 'Personal');
INSERT INTO `Client` VALUES(37, 'Ottawa, Canada', '1964-11-13', '2008-02-02', 'Ron E. Hester', 'Personal');
INSERT INTO `Client` VALUES(38, 'Montreal, Canada', '1932-05-21', '2007-04-12', 'Kristina H. Chung', 'Personal');
INSERT INTO `Client` VALUES(39, 'Gracefield, Quebec', '1956-03-21', '2008-07-04', 'Ashley O. Coble', 'Personal');
INSERT INTO `Client` VALUES(40, 'Baie-Comeau, Quebec', '1957-03-26', '2001-06-06', 'Peggy O. Wong', 'Personal');
INSERT INTO `Client` VALUES(41, 'Kingston, Ontario', '1974-04-02', '2007-12-19', 'Peter O. Holden', 'Joint');
INSERT INTO `Client` VALUES(42, 'Chandler, Quebec', '1964-10-24', '2004-08-03', 'Rhonda U. Buckley', 'Personal');
INSERT INTO `Client` VALUES(43, 'Rivière-Rouge, Quebec', '1962-08-21', '2008-08-10', 'Lucy I. Dickinson', 'Personal');
INSERT INTO `Client` VALUES(44, 'Red Lake, Ontario', '1993-02-14', '2008-08-16', 'Gerald E. Reeves', 'Personal');
INSERT INTO `Client` VALUES(45, 'Northeastern Manitoulin and the Islands, Ontario', '1954-11-15', '2011-01-25', 'Lisa B. Abrams', 'Personal');
INSERT INTO `Client` VALUES(46, 'Saint John, New Brunswick', '1993-02-05', '2008-04-01', 'Toni C. McKinney', 'Personal');
INSERT INTO `Client` VALUES(47, 'Lakeshore, Ontario', '1980-10-20', '2005-05-17', 'Marsha O. Gold', 'Personal');
INSERT INTO `Client` VALUES(48, 'Elliot Lake', '1953-12-11', '2004-12-19', 'Doris I. Kinney', 'Personal');
INSERT INTO `Client` VALUES(49, 'Shawinigan, Quebec', '1964-01-10', '2011-03-07', 'Eva N. Snow', 'Personal');
INSERT INTO `Client` VALUES(50, 'Edmonton, Alberta', '1975-06-13', '2002-04-04', 'Jeremy U. Yu', 'Personal');
INSERT INTO `Client` VALUES(6477, 'sfsdf', '0000-00-00', '2011-08-01', 'ramez', 'test');
INSERT INTO `Client` VALUES(6478, '', '0000-00-00', '2011-08-02', 'ramez', '');

-- --------------------------------------------------------

--
-- Table structure for table `ClientCard`
--

CREATE TABLE `ClientCard` (
  `clientCardNumber` char(25) NOT NULL,
  `clientId` varchar(45) NOT NULL,
  `clientPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`clientCardNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClientCard`
--

INSERT INTO `ClientCard` VALUES('5316625496891500', '', 'user');
INSERT INTO `ClientCard` VALUES('5234673217449850', '', 'user');
INSERT INTO `ClientCard` VALUES('5444698667572618', '', 'user');
INSERT INTO `ClientCard` VALUES('5479396735697461', '', 'user');
INSERT INTO `ClientCard` VALUES('5181879446019637', '', 'user');
INSERT INTO `ClientCard` VALUES('5428624450048418', '', 'user');
INSERT INTO `ClientCard` VALUES('5132802249268995', '', 'user');
INSERT INTO `ClientCard` VALUES('5158476101551605', '', 'user');
INSERT INTO `ClientCard` VALUES('5219338460953532', '', 'user');
INSERT INTO `ClientCard` VALUES('5595915071231145', '', 'user');
INSERT INTO `ClientCard` VALUES('4929230284827279', '', 'user');
INSERT INTO `ClientCard` VALUES('4532586657888035', '', 'user');
INSERT INTO `ClientCard` VALUES('4916824136974142', '', 'user');
INSERT INTO `ClientCard` VALUES('4024007194660451', '', 'user');
INSERT INTO `ClientCard` VALUES('4716185445297779', '', 'user');
INSERT INTO `ClientCard` VALUES('4916261737772601', '', 'user');
INSERT INTO `ClientCard` VALUES('4716435955632398', '', 'user');
INSERT INTO `ClientCard` VALUES('4024007120757843', '', 'user');
INSERT INTO `ClientCard` VALUES('4024007197456006', '', 'user');
INSERT INTO `ClientCard` VALUES('4485015036883621', '', 'user');
INSERT INTO `ClientCard` VALUES('347843549459076', '', 'user');
INSERT INTO `ClientCard` VALUES('374949812235592', '', 'user');
INSERT INTO `ClientCard` VALUES('370058802451807', '', 'user');
INSERT INTO `ClientCard` VALUES('349778173154379', '', 'user');
INSERT INTO `ClientCard` VALUES('373769765645881', '', 'user');
INSERT INTO `ClientCard` VALUES('4539049359006', '', 'user');
INSERT INTO `ClientCard` VALUES('4916514888406', '', 'user');
INSERT INTO `ClientCard` VALUES('4024007177633', '', 'user');
INSERT INTO `ClientCard` VALUES('4485580061579', '', 'user');
INSERT INTO `ClientCard` VALUES('4716223500130', '', 'user');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Client_Overview`
--
CREATE TABLE `Client_Overview` (
`clientId` int(11)
,`clientAddress` text
,`clientDateOfBirth` date
,`clientJoiningDate` date
,`clientName` varchar(255)
,`clientCategory` varchar(255)
,`accountCount` bigint(21)
,`netValue` decimal(37,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `Clients_own_account`
--

CREATE TABLE `Clients_own_account` (
  `clientId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clientId`,`accountId`),
  KEY `account_id` (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clients_own_account`
--

INSERT INTO `Clients_own_account` VALUES(1, 1);
INSERT INTO `Clients_own_account` VALUES(2, 2);
INSERT INTO `Clients_own_account` VALUES(3, 3);
INSERT INTO `Clients_own_account` VALUES(3, 5);
INSERT INTO `Clients_own_account` VALUES(3, 6);
INSERT INTO `Clients_own_account` VALUES(3, 8);
INSERT INTO `Clients_own_account` VALUES(4, 4);
INSERT INTO `Clients_own_account` VALUES(5, 5);
INSERT INTO `Clients_own_account` VALUES(6, 6);
INSERT INTO `Clients_own_account` VALUES(7, 7);
INSERT INTO `Clients_own_account` VALUES(8, 8);
INSERT INTO `Clients_own_account` VALUES(9, 9);
INSERT INTO `Clients_own_account` VALUES(10, 10);
INSERT INTO `Clients_own_account` VALUES(11, 11);
INSERT INTO `Clients_own_account` VALUES(12, 12);
INSERT INTO `Clients_own_account` VALUES(13, 13);
INSERT INTO `Clients_own_account` VALUES(14, 14);
INSERT INTO `Clients_own_account` VALUES(15, 15);
INSERT INTO `Clients_own_account` VALUES(16, 16);
INSERT INTO `Clients_own_account` VALUES(17, 17);
INSERT INTO `Clients_own_account` VALUES(18, 18);
INSERT INTO `Clients_own_account` VALUES(19, 19);
INSERT INTO `Clients_own_account` VALUES(20, 20);
INSERT INTO `Clients_own_account` VALUES(21, 21);
INSERT INTO `Clients_own_account` VALUES(22, 22);
INSERT INTO `Clients_own_account` VALUES(23, 23);
INSERT INTO `Clients_own_account` VALUES(24, 24);
INSERT INTO `Clients_own_account` VALUES(25, 25);
INSERT INTO `Clients_own_account` VALUES(26, 26);
INSERT INTO `Clients_own_account` VALUES(27, 27);
INSERT INTO `Clients_own_account` VALUES(28, 28);
INSERT INTO `Clients_own_account` VALUES(29, 29);
INSERT INTO `Clients_own_account` VALUES(30, 30);
INSERT INTO `Clients_own_account` VALUES(31, 31);
INSERT INTO `Clients_own_account` VALUES(32, 9);
INSERT INTO `Clients_own_account` VALUES(32, 32);
INSERT INTO `Clients_own_account` VALUES(33, 33);
INSERT INTO `Clients_own_account` VALUES(34, 34);
INSERT INTO `Clients_own_account` VALUES(35, 35);
INSERT INTO `Clients_own_account` VALUES(36, 36);
INSERT INTO `Clients_own_account` VALUES(37, 37);
INSERT INTO `Clients_own_account` VALUES(38, 38);
INSERT INTO `Clients_own_account` VALUES(39, 39);
INSERT INTO `Clients_own_account` VALUES(40, 40);
INSERT INTO `Clients_own_account` VALUES(41, 41);
INSERT INTO `Clients_own_account` VALUES(42, 42);
INSERT INTO `Clients_own_account` VALUES(43, 43);
INSERT INTO `Clients_own_account` VALUES(44, 44);
INSERT INTO `Clients_own_account` VALUES(45, 45);
INSERT INTO `Clients_own_account` VALUES(46, 46);
INSERT INTO `Clients_own_account` VALUES(47, 47);
INSERT INTO `Clients_own_account` VALUES(48, 48);
INSERT INTO `Clients_own_account` VALUES(49, 49);
INSERT INTO `Clients_own_account` VALUES(50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` VALUES(1, 'Financial Advisor', '455 elm street', '2011-09-30', 'Jhon Smith', 48000.00, 1);
INSERT INTO `Employee` VALUES(2, 'Financial Advisor', '123 fake street', '2001-02-28', 'Jane Smith', 38372.00, 2);
INSERT INTO `Employee` VALUES(3, 'Bank manager', '123 rich street', '1977-02-18', 'Wyatt Cenac', 238372.00, 3);
INSERT INTO `Employee` VALUES(4, 'Bank manager', '123 richer street', '1967-07-11', 'Jhon Stewart', 258172.00, 4);
INSERT INTO `Employee` VALUES(5, 'Bank manager', '123 Boardwalk', '1971-05-19', 'Steven Colbert', 244444.00, 1);
INSERT INTO `Employee` VALUES(6, 'Bank manager', '123 Park Avenue', '1981-05-19', 'Steven Colberto', 144444.00, 2);
INSERT INTO `Employee` VALUES(7, 'Bank manager', '123 5th street', '1951-01-19', 'George St.Pierre', 222222.00, 5);
INSERT INTO `Employee` VALUES(8, 'teller', '123 poor street', '1981-01-29', 'Jane Sanchez', 28222.00, 1);
INSERT INTO `Employee` VALUES(9, 'teller', '123 poorer street', '1982-08-20', 'Toni Zampino', 18222.00, 3);
INSERT INTO `Employee` VALUES(10, 'teller', '123 1st street', '1972-03-20', 'Jhon Oliver', 58222.00, 4);
INSERT INTO `Employee` VALUES(11, 'teller', '123 Val de Bris', '1969-10-01', 'Fabrizio Baraka', 48123.00, 5);
INSERT INTO `Employee` VALUES(12, 'Financial Advisor', '123 Fake street', '1989-12-25', 'Christopher Cringle', 68123.00, 2);
INSERT INTO `Employee` VALUES(13, 'Financial Advisor', '123 Laval street', '1972-02-11', 'Jason Jhonsson', 52123.00, 3);
INSERT INTO `Employee` VALUES(14, 'Financial Advisor', '123 Montreal street', '1988-02-11', 'Jesse Jameson', 55123.00, 4);
INSERT INTO `Employee` VALUES(15, 'Financial Advisor', '123 Canada street', '1968-02-11', 'Jenny Brodure', 46123.00, 5);
INSERT INTO `Employee` VALUES(16, 'Security Gaurd', '123 Safe street', '1939-02-11', 'James Masi', 36123.00, 1);
INSERT INTO `Employee` VALUES(17, 'Security Gaurd', '123 Safer street', '1945-02-11', 'Lisa Roberts', 37123.00, 2);
INSERT INTO `Employee` VALUES(18, 'Security Gaurd', '123 Apple Avenue', '1965-02-12', 'Steve Jobs', 38123.00, 3);
INSERT INTO `Employee` VALUES(19, 'Security Gaurd', '123 Watergate street', '1970-01-12', 'Richard Nixon', 39123.00, 4);
INSERT INTO `Employee` VALUES(20, 'Security Gaurd', '123 Cama', '1966-06-16', 'Jesse Ventura', 40123.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Payroll`
--

CREATE TABLE `Employee_Payroll` (
  `employeePayId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `employeePaymentDate` date NOT NULL,
  `employeePaymentAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`employeePayId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Employee_Payroll`
--


-- --------------------------------------------------------

--
-- Table structure for table `Employee_Schedule`
--

CREATE TABLE `Employee_Schedule` (
  `employeeId` int(11) NOT NULL,
  `employeeScheduleDay` date NOT NULL,
  `employeeScheduleCode` enum('working','holidays','sick_paid','sick_unpaid') NOT NULL,
  `employeeScheduleHours` decimal(10,2) NOT NULL,
  `employeeScheduleStartTime` datetime NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_Schedule`
--


-- --------------------------------------------------------

--
-- Table structure for table `Employee_login`
--

CREATE TABLE `Employee_login` (
  `employeeId` int(11) NOT NULL,
  `employeeLoginPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_login`
--

INSERT INTO `Employee_login` VALUES(1, 'admin');
INSERT INTO `Employee_login` VALUES(2, 'admin');
INSERT INTO `Employee_login` VALUES(3, 'admin');
INSERT INTO `Employee_login` VALUES(4, 'admin');
INSERT INTO `Employee_login` VALUES(5, 'admin');
INSERT INTO `Employee_login` VALUES(6, 'admin');
INSERT INTO `Employee_login` VALUES(7, 'admin');
INSERT INTO `Employee_login` VALUES(8, 'admin');
INSERT INTO `Employee_login` VALUES(9, 'admin');
INSERT INTO `Employee_login` VALUES(10, 'admin');
INSERT INTO `Employee_login` VALUES(11, 'admin');
INSERT INTO `Employee_login` VALUES(12, 'admin');
INSERT INTO `Employee_login` VALUES(13, 'admin');
INSERT INTO `Employee_login` VALUES(14, 'admin');
INSERT INTO `Employee_login` VALUES(15, 'admin');
INSERT INTO `Employee_login` VALUES(16, 'admin');
INSERT INTO `Employee_login` VALUES(17, 'admin');
INSERT INTO `Employee_login` VALUES(18, 'admin');
INSERT INTO `Employee_login` VALUES(19, 'admin');
INSERT INTO `Employee_login` VALUES(20, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `Interest_rate`
--

CREATE TABLE `Interest_rate` (
  `interestRateId` int(11) NOT NULL AUTO_INCREMENT,
  `interestRatePercentage` decimal(10,2) DEFAULT NULL,
  `typeOfAccount` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
  `typeOfService` enum('credit','non-credit') DEFAULT NULL,
  PRIMARY KEY (`interestRateId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 DATA DIRECTORY='./dmc353_1/' INDEX DIRECTORY='./dmc353_1/' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Interest_rate`
--

INSERT INTO `Interest_rate` VALUES(1, 0.06, 'credit card', 'credit');
INSERT INTO `Interest_rate` VALUES(2, 0.02, 'saving', 'non-credit');
INSERT INTO `Interest_rate` VALUES(3, 0.04, 'line of credit', 'credit');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Password`
--
CREATE TABLE `Password` (
`Username` char(25)
,`Password` varchar(45)
,`Type` varchar(7)
,`Id` varchar(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Transaction`
--

INSERT INTO `Transaction` VALUES(1, 'DEPOSIT', 1000.00, '0000-00-00 00:00:00', 5, 1.15, 'DEPOSIT');

-- --------------------------------------------------------

--
-- Structure for view `Client_Overview`
--
DROP TABLE IF EXISTS `Client_Overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Client_Overview` AS select `Client`.`clientId` AS `clientId`,`Client`.`clientAddress` AS `clientAddress`,`Client`.`clientDateOfBirth` AS `clientDateOfBirth`,`Client`.`clientJoiningDate` AS `clientJoiningDate`,`Client`.`clientName` AS `clientName`,`Client`.`clientCategory` AS `clientCategory`,(select count(0) from `Clients_own_account` `cos` where (`cos`.`clientId` = `Client`.`clientId`)) AS `accountCount`,(select sum(`acc`.`accountBalance`) from (`Account` `acc` join `Clients_own_account` `cos` on((`acc`.`accountNumber` = `cos`.`accountId`))) where (`cos`.`clientId` = `Client`.`clientId`)) AS `netValue` from `Client`;

-- --------------------------------------------------------

--
-- Structure for view `Password`
--
DROP TABLE IF EXISTS `Password`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Password` AS select `ClientCard`.`clientCardNumber` AS `Username`,`ClientCard`.`clientPassword` AS `Password`,'client' AS `Type`,'clientId' AS `Id` from `ClientCard` union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'manager' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where `e`.`employeeId` in (select `Branch`.`branchManagedBy` from `Branch`) union all select `el`.`employeeId` AS `employeeId`,`el`.`employeeLoginPassword` AS `employeeLoginPassword`,'clerk' AS `Type`,`el`.`employeeId` AS `Id` from (`Employee_login` `el` join `Employee` `e` on((`e`.`employeeId` = `el`.`employeeId`))) where (not(`e`.`employeeId` in (select `Branch`.`branchManagedBy` from `Branch`)));
