-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 04 Août 2011 à 01:35
-- Version du serveur: 5.5.9
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `dmc353_1`
--

-- --------------------------------------------------------

--
-- Structure de la table `Account`
--

DROP TABLE IF EXISTS `Account`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3079 ;

--
-- Contenu de la table `Account`
--

INSERT INTO `Account` VALUES(3, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(4, 'saving', 52069.68, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(5, 'line of credit', -99728685.28, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(6, 'checking', 50.00, '2011-07-13', 0, 0, 0, 0, 2.00, '');
INSERT INTO `Account` VALUES(7, 'saving', 52069.68, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(8, 'line of credit', -1053.00, '2005-05-21', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(9, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(10, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(11, 'line of credit', -1053.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(12, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(13, 'saving', 52069.68, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(14, 'line of credit', -1053.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(15, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(16, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(17, 'line of credit', -1053.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(18, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(19, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(20, 'line of credit', -1053.00, '2002-01-12', 0, 2, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(21, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(22, 'saving', 52173.68, '2001-01-04', 1, 1, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(23, 'line of credit', 100101030.40, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(24, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(25, 'saving', 52069.68, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(26, 'line of credit', -1053.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(27, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(28, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(29, 'line of credit', -1053.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(30, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(31, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(32, 'line of credit', -1053.00, '2005-05-21', 0, 2, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(33, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(34, 'saving', 62234.64, '2001-01-04', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(35, 'line of credit', -1053.00, '2002-01-12', 0, 1, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(36, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(37, 'saving', 52121.68, '2001-01-03', 1, 5, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(38, 'line of credit', -1053.00, '2002-01-12', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(39, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(40, 'saving', 52173.68, '2001-01-04', 1, 2, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(41, 'line of credit', -1053.00, '2005-05-21', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(42, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(43, 'saving', 52173.68, '2001-01-04', 1, 4, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(44, 'line of credit', -1053.00, '2002-01-12', 0, 1, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(45, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(46, 'saving', 52225.68, '2001-01-05', 1, 2, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(47, 'line of credit', -1053.00, '2002-01-12', 0, 3, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(48, 'checking', 50.00, '2011-07-13', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO `Account` VALUES(49, 'saving', 52069.68, '2001-01-02', 1, 3, 2, 2, NULL, NULL);
INSERT INTO `Account` VALUES(50, 'line of credit', -1053.00, '2005-05-21', 0, 4, 3, 3, 1000.00, NULL);
INSERT INTO `Account` VALUES(3073, '', 0.00, '0000-00-00', 0, 0, 0, 0, 0.00, '');
INSERT INTO `Account` VALUES(3074, '', 0.00, '2011-08-01', 0, 0, 0, 0, 0.00, '');
INSERT INTO `Account` VALUES(3075, '', 0.00, '2011-08-01', 0, 0, 0, 0, 690.00, '');
INSERT INTO `Account` VALUES(3076, '', 0.00, '2011-08-01', 0, 0, 0, 0, 0.00, '');
INSERT INTO `Account` VALUES(3077, 'credit card', 0.00, '2011-08-01', 0, 0, 0, 1, 0.00, 'personal');
INSERT INTO `Account` VALUES(3078, 'credit card', 0.00, '2011-08-01', 0, 0, 0, 0, 1.00, '');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `billableTransactionSoFarThisMonth`
--
DROP VIEW IF EXISTS `billableTransactionSoFarThisMonth`;
CREATE TABLE `billableTransactionSoFarThisMonth` (
`accountNumber` int(11)
,`transactionCount` bigint(21)
);
-- --------------------------------------------------------

--
-- Structure de la table `Branch`
--

DROP TABLE IF EXISTS `Branch`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `Branch`
--

INSERT INTO `Branch` VALUES(1, 'SaintCatherine', '5149999999', '5146666666', '2010-09-10', 3, 1, 1, 0);
INSERT INTO `Branch` VALUES(2, 'Montreal', '5148877777', '5148777345', '2011-06-15', 4, 1, 0, 0);
INSERT INTO `Branch` VALUES(3, 'Laval', '4875443443', '4382343256', '2007-11-15', 5, 0, 0, 1);
INSERT INTO `Branch` VALUES(4, 'Laval', '4872232222', '4383484934', '2005-02-13', 6, 1, 1, 1);
INSERT INTO `Branch` VALUES(5, 'Torronto', '4163345353', '4172342353', '2001-07-15', 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Charge_plans`
--

DROP TABLE IF EXISTS `Charge_plans`;
CREATE TABLE `Charge_plans` (
  `branchPlanId` int(11) NOT NULL AUTO_INCREMENT,
  `branchPlanLimit` int(11) DEFAULT NULL,
  `branchPlanOption` enum('Basic','Premuim','Ultimate') DEFAULT NULL,
  `branchCharge` decimal(10,2) DEFAULT NULL,
  `branchChargeExcessLimit` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`branchPlanId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Charge_plans`
--

INSERT INTO `Charge_plans` VALUES(1, 25, 'Basic', 10.00, 1.00);
INSERT INTO `Charge_plans` VALUES(2, 50, 'Premuim', 17.00, 0.50);
INSERT INTO `Charge_plans` VALUES(3, 100, 'Ultimate', 25.00, 0.25);

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

DROP TABLE IF EXISTS `Client`;
CREATE TABLE `Client` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `clientAddress` text,
  `clientDateOfBirth` date DEFAULT NULL,
  `clientJoiningDate` date DEFAULT NULL,
  `clientName` varchar(255) DEFAULT NULL,
  `clientCategory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6524 ;

--
-- Contenu de la table `Client`
--

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
INSERT INTO `Client` VALUES(6476, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6477, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6478, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6479, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6480, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6481, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6482, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6483, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6484, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6485, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6486, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6487, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6488, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6489, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6490, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6491, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6492, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6493, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6494, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6495, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6496, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6497, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6498, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6499, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6500, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6501, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6502, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6503, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6504, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6505, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6506, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6507, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6508, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6509, '0', '0000-00-00', '0000-00-00', '0', '0');
INSERT INTO `Client` VALUES(6510, '', '0000-00-00', '0000-00-00', 'Mathieu', '');
INSERT INTO `Client` VALUES(6511, '4540-7 Clark', '2011-01-01', '0000-00-00', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6512, '4540-7 Clark', '2011-01-01', '0000-00-00', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6513, '4540-7 Clark', '2011-01-01', '0000-00-00', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6514, '4540-7 Clark', '2011-01-01', '2011-01-01', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6515, '4540-7 Clark', '2011-01-01', '0000-00-00', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6516, '4540-7 Clark', '2011-01-01', '2011-08-01', 'Mathieu', 'Personal');
INSERT INTO `Client` VALUES(6517, '', '0000-00-00', '2011-08-01', 'sdfdsf', '');
INSERT INTO `Client` VALUES(6518, '', '0000-00-00', '2011-08-01', 'sdfdsf', '');
INSERT INTO `Client` VALUES(6519, '', '0000-00-00', '2011-08-01', 'sdfdsf', '');
INSERT INTO `Client` VALUES(6520, '', '0000-00-00', '2011-08-01', '', '');
INSERT INTO `Client` VALUES(6521, '', '0000-00-00', '2011-08-01', 'Jorges', '');
INSERT INTO `Client` VALUES(6522, '', '0000-00-00', '2011-08-01', 'Machine', 'Personal');

-- --------------------------------------------------------

--
-- Structure de la table `ClientCard`
--

DROP TABLE IF EXISTS `ClientCard`;
CREATE TABLE `ClientCard` (
  `clientCardNumber` char(25) NOT NULL,
  `clientId` int(11) NOT NULL,
  `clientPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`clientCardNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ClientCard`
--

INSERT INTO `ClientCard` VALUES('5316625496891500', 1, 'user');
INSERT INTO `ClientCard` VALUES('5234673217449850', 2, 'user');
INSERT INTO `ClientCard` VALUES('5444698667572618', 3, 'user');
INSERT INTO `ClientCard` VALUES('5479396735697461', 4, 'user');
INSERT INTO `ClientCard` VALUES('5181879446019637', 5, 'user');
INSERT INTO `ClientCard` VALUES('5428624450048418', 6, 'user');
INSERT INTO `ClientCard` VALUES('5132802249268995', 7, 'user');
INSERT INTO `ClientCard` VALUES('5158476101551605', 8, 'user');
INSERT INTO `ClientCard` VALUES('5219338460953532', 9, 'user');
INSERT INTO `ClientCard` VALUES('5595915071231145', 10, 'user');
INSERT INTO `ClientCard` VALUES('4929230284827279', 11, 'user');
INSERT INTO `ClientCard` VALUES('4532586657888035', 12, 'user');
INSERT INTO `ClientCard` VALUES('4916824136974142', 13, 'user');
INSERT INTO `ClientCard` VALUES('4024007194660451', 14, 'user');
INSERT INTO `ClientCard` VALUES('4716185445297779', 15, 'user');
INSERT INTO `ClientCard` VALUES('4916261737772601', 16, 'user');
INSERT INTO `ClientCard` VALUES('4716435955632398', 17, 'user');
INSERT INTO `ClientCard` VALUES('4024007120757843', 18, 'user');
INSERT INTO `ClientCard` VALUES('4024007197456006', 19, 'user');
INSERT INTO `ClientCard` VALUES('4485015036883621', 20, 'user');
INSERT INTO `ClientCard` VALUES('347843549459076', 21, 'user');
INSERT INTO `ClientCard` VALUES('374949812235592', 22, 'user');
INSERT INTO `ClientCard` VALUES('370058802451807', 23, 'user');
INSERT INTO `ClientCard` VALUES('349778173154379', 24, 'user');
INSERT INTO `ClientCard` VALUES('373769765645881', 25, 'user');
INSERT INTO `ClientCard` VALUES('4539049359006', 26, 'user');
INSERT INTO `ClientCard` VALUES('4916514888406', 27, 'user');
INSERT INTO `ClientCard` VALUES('4024007177633', 28, 'user');
INSERT INTO `ClientCard` VALUES('4485580061579', 29, 'user');
INSERT INTO `ClientCard` VALUES('4716223500130', 30, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `Clients_own_account`
--

DROP TABLE IF EXISTS `Clients_own_account`;
CREATE TABLE `Clients_own_account` (
  `clientId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clientId`,`accountId`),
  KEY `account_id` (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Clients_own_account`
--

INSERT INTO `Clients_own_account` VALUES(1, 1);
INSERT INTO `Clients_own_account` VALUES(2, 2);
INSERT INTO `Clients_own_account` VALUES(3, 3);
INSERT INTO `Clients_own_account` VALUES(3, 5);
INSERT INTO `Clients_own_account` VALUES(4, 4);
INSERT INTO `Clients_own_account` VALUES(5, 3);
INSERT INTO `Clients_own_account` VALUES(5, 5);
INSERT INTO `Clients_own_account` VALUES(5, 23);
INSERT INTO `Clients_own_account` VALUES(5, 34);
INSERT INTO `Clients_own_account` VALUES(5, 54);
INSERT INTO `Clients_own_account` VALUES(5, 3456);
INSERT INTO `Clients_own_account` VALUES(6, 6);
INSERT INTO `Clients_own_account` VALUES(6, 23);
INSERT INTO `Clients_own_account` VALUES(6, 55);
INSERT INTO `Clients_own_account` VALUES(6, 345);
INSERT INTO `Clients_own_account` VALUES(7, 7);
INSERT INTO `Clients_own_account` VALUES(7, 34);
INSERT INTO `Clients_own_account` VALUES(7, 35);
INSERT INTO `Clients_own_account` VALUES(8, 8);
INSERT INTO `Clients_own_account` VALUES(9, 9);
INSERT INTO `Clients_own_account` VALUES(9, 43);
INSERT INTO `Clients_own_account` VALUES(10, 6);
INSERT INTO `Clients_own_account` VALUES(10, 10);
INSERT INTO `Clients_own_account` VALUES(11, 10);
INSERT INTO `Clients_own_account` VALUES(11, 11);
INSERT INTO `Clients_own_account` VALUES(12, 4);
INSERT INTO `Clients_own_account` VALUES(12, 12);
INSERT INTO `Clients_own_account` VALUES(12, 987);
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
INSERT INTO `Clients_own_account` VALUES(47, 0);
INSERT INTO `Clients_own_account` VALUES(47, 47);
INSERT INTO `Clients_own_account` VALUES(48, 48);
INSERT INTO `Clients_own_account` VALUES(49, 49);
INSERT INTO `Clients_own_account` VALUES(50, 50);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Client_Overview`
--
DROP VIEW IF EXISTS `Client_Overview`;
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
-- Structure de la table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `Employee`
--

INSERT INTO `Employee` VALUES(1, 'Financial Advisor', '455 elm street', '2011-09-30', 'Jhon Smith5', 23.08, 1);
INSERT INTO `Employee` VALUES(2, 'teller', '123 fake street', '2001-02-28', 'Jane Smith', 18.45, 2);
INSERT INTO `Employee` VALUES(3, 'Bank manager', '123 rich street', '1977-02-18', 'Wyatt Cenac', 114.60, 3);
INSERT INTO `Employee` VALUES(4, 'Bank manager', '123 richer street', '1967-07-11', 'Jhon Stewart', 124.12, 4);
INSERT INTO `Employee` VALUES(5, 'Bank manager', '123 Boardwalk', '1971-05-19', 'Steven Colbert', 117.52, 1);
INSERT INTO `Employee` VALUES(6, 'Bank manager', '123 Park Avenue', '1981-05-19', 'Steven Colberto', 69.44, 2);
INSERT INTO `Employee` VALUES(7, 'Bank manager', '123 5th street', '1951-01-19', 'George St.Pierre', 106.84, 5);
INSERT INTO `Employee` VALUES(8, 'teller', '123 poor street', '1981-01-29', 'Jane Sanchez', 13.57, 1);
INSERT INTO `Employee` VALUES(9, 'teller', '123 poorer street', '1982-08-20', 'Toni Zampino', 8.76, 3);
INSERT INTO `Employee` VALUES(10, 'teller', '123 1st street', '1972-03-20', 'Jhon Oliver', 27.99, 4);
INSERT INTO `Employee` VALUES(11, 'teller', '123 Val de Bris', '1969-10-01', 'Fabrizio Baraka', 23.14, 5);
INSERT INTO `Employee` VALUES(12, 'Financial Advisor', '123 Fake street', '1989-12-25', 'Christopher Cringle', 32.75, 2);
INSERT INTO `Employee` VALUES(13, 'Financial Advisor', '123 Laval street', '1972-02-11', 'Jason Jhonsson', 25.06, 3);
INSERT INTO `Employee` VALUES(14, 'Financial Advisor', '123 Montreal street', '1988-02-11', 'Jesse Jameson', 26.50, 4);
INSERT INTO `Employee` VALUES(15, 'Financial Advisor', '123 Canada street', '1968-02-11', 'Jenny Brodure', 22.17, 5);
INSERT INTO `Employee` VALUES(16, 'Security Gaurd', '123 Safe street', '1939-02-11', 'James Masi', 17.37, 1);
INSERT INTO `Employee` VALUES(17, 'Security Gaurd', '123 Safer street', '1945-02-11', 'Lisa Roberts', 17.85, 2);
INSERT INTO `Employee` VALUES(18, 'Security Gaurd', '123 Apple Avenue', '1965-02-12', 'Steve Jobs', 18.33, 3);
INSERT INTO `Employee` VALUES(19, 'Security Gaurd', '123 Watergate street', '1970-01-12', 'Richard Nixon', 18.81, 4);
INSERT INTO `Employee` VALUES(20, 'Security Gaurd', '123 Cama', '1966-06-16', 'Jesse Ventura', 19.29, 5);
INSERT INTO `Employee` VALUES(22, 'Financial Advisor', '', '2011-08-01', 'qwerty', 0.00, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Employee_login`
--

DROP TABLE IF EXISTS `Employee_login`;
CREATE TABLE `Employee_login` (
  `employeeId` int(11) NOT NULL,
  `employeeLoginPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Employee_login`
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
-- Structure de la table `Employee_Payroll`
--

DROP TABLE IF EXISTS `Employee_Payroll`;
CREATE TABLE `Employee_Payroll` (
  `employeePayId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `employeePaymentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employeePaymentAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`employeePayId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `Employee_Payroll`
--

INSERT INTO `Employee_Payroll` VALUES(1, 1, '2001-01-01 00:00:00', 2000.00);

-- --------------------------------------------------------

--
-- Structure de la table `Employee_Schedule`
--

DROP TABLE IF EXISTS `Employee_Schedule`;
CREATE TABLE `Employee_Schedule` (
  `employeeId` int(11) NOT NULL,
  `employeeScheduleDay` date NOT NULL,
  `employeeScheduleCode` enum('working','holidays','sick_paid','sick_unpaid') NOT NULL,
  `employeeScheduleHours` decimal(10,2) NOT NULL,
  `employeeScheduleStartTime` datetime NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Employee_Schedule`
--

INSERT INTO `Employee_Schedule` VALUES(1, '2011-01-01', 'working', 7.00, '0000-00-00 00:00:00');
INSERT INTO `Employee_Schedule` VALUES(2, '2011-01-01', 'working', 7.00, '2011-08-03 20:32:34');

-- --------------------------------------------------------

--
-- Structure de la table `Interest_Rate`
--

DROP TABLE IF EXISTS `Interest_Rate`;
CREATE TABLE `Interest_Rate` (
  `interestRateId` int(11) NOT NULL AUTO_INCREMENT,
  `interestRatePercentage` decimal(10,2) DEFAULT NULL,
  `typeOfAccount` enum('credit card','checking','saving','line of credit','loan') DEFAULT NULL,
  `typeOfService` enum('credit','non-credit') DEFAULT NULL,
  PRIMARY KEY (`interestRateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Interest_Rate`
--

INSERT INTO `Interest_Rate` VALUES(1, 0.06, 'credit card', 'credit');
INSERT INTO `Interest_Rate` VALUES(2, 0.02, 'saving', 'non-credit');
INSERT INTO `Interest_Rate` VALUES(3, 0.04, 'line of credit', 'credit');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Password`
--
DROP VIEW IF EXISTS `Password`;
CREATE TABLE `Password` (
`Username` char(25)
,`Password` varchar(45)
,`Type` varchar(7)
,`Id` int(11)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `profitability_report`
--
DROP VIEW IF EXISTS `profitability_report`;
CREATE TABLE `profitability_report` (
`branchId` int(11)
,`name` varchar(50)
,`FeesReceived` decimal(32,2)
,`InterestReceived` decimal(33,2)
,`PayGivenToEmployees` decimal(32,2)
);
-- --------------------------------------------------------

--
-- Structure de la table `Reports_Month`
--

DROP TABLE IF EXISTS `Reports_Month`;
CREATE TABLE `Reports_Month` (
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Reports_Month`
--

INSERT INTO `Reports_Month` VALUES(2011, 1, '2011-01');
INSERT INTO `Reports_Month` VALUES(2011, 2, '2011-02');
INSERT INTO `Reports_Month` VALUES(2011, 3, '2011-03');
INSERT INTO `Reports_Month` VALUES(2011, 4, '2011-04');
INSERT INTO `Reports_Month` VALUES(2011, 5, '2011-05');
INSERT INTO `Reports_Month` VALUES(2011, 6, '2011-06');
INSERT INTO `Reports_Month` VALUES(2011, 7, '2011-07');
INSERT INTO `Reports_Month` VALUES(2011, 8, '2011-08');
INSERT INTO `Reports_Month` VALUES(2011, 9, '2011-09');
INSERT INTO `Reports_Month` VALUES(2011, 10, '2011-10');
INSERT INTO `Reports_Month` VALUES(2011, 11, '2011-11');
INSERT INTO `Reports_Month` VALUES(2011, 12, '2011-12');

-- --------------------------------------------------------

--
-- Structure de la table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=378 ;

--
-- Contenu de la table `Transaction`
--

INSERT INTO `Transaction` VALUES(1, 'DEPOSIT', 50000.00, '2001-01-01 00:00:00', 5, 0.25, 'Hey ');
INSERT INTO `Transaction` VALUES(2, 'TRANSFER', -500.00, '2011-08-03 21:16:12', NULL, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(3, 'TRANSFER', 500.00, '2011-08-03 21:16:12', NULL, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(4, 'TRANSFER', -500.00, '2011-08-03 21:16:42', NULL, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(5, 'TRANSFER', 500.00, '2011-08-03 21:16:42', NULL, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(6, 'TRANSFER', -500.00, '2011-08-03 21:23:26', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(7, 'TRANSFER', 500.00, '2011-08-03 21:23:26', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(8, 'TRANSFER', -500.00, '2011-08-03 21:23:27', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(9, 'TRANSFER', 500.00, '2011-08-03 21:23:27', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(10, 'TRANSFER', -500.00, '2011-08-03 21:23:27', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(11, 'TRANSFER', 500.00, '2011-08-03 21:23:27', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(12, 'TRANSFER', -500.00, '2011-08-03 21:23:27', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(13, 'TRANSFER', 500.00, '2011-08-03 21:23:27', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(14, 'TRANSFER', -500.00, '2011-08-03 21:23:27', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(15, 'TRANSFER', 500.00, '2011-08-03 21:23:27', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(16, 'TRANSFER', -500.00, '2011-08-03 21:23:53', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(17, 'TRANSFER', 500.00, '2011-08-03 21:23:53', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(18, 'TRANSFER', -5.00, '2011-08-03 21:26:01', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(19, 'TRANSFER', 5.00, '2011-08-03 21:26:01', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(20, 'TRANSFER', -5.00, '2011-08-03 21:26:24', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(21, 'TRANSFER', 5.00, '2011-08-03 21:26:24', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(22, 'TRANSFER', -5.00, '2011-08-03 21:26:25', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(23, 'TRANSFER', 5.00, '2011-08-03 21:26:25', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(24, 'TRANSFER', -5.00, '2011-08-03 21:26:25', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(25, 'TRANSFER', 5.00, '2011-08-03 21:26:25', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(26, 'TRANSFER', -5.00, '2011-08-03 21:26:58', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(27, 'TRANSFER', 5.00, '2011-08-03 21:26:58', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(28, 'TRANSFER', -5.00, '2011-08-03 21:26:59', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(29, 'TRANSFER', 5.00, '2011-08-03 21:26:59', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(30, 'TRANSFER', -5.00, '2011-08-03 21:26:59', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(31, 'TRANSFER', 5.00, '2011-08-03 21:26:59', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(32, 'TRANSFER', -5.00, '2011-08-03 21:27:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(33, 'TRANSFER', 5.00, '2011-08-03 21:27:02', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(34, 'TRANSFER', -5.00, '2011-08-03 21:27:03', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(35, 'TRANSFER', 5.00, '2011-08-03 21:27:03', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(36, 'TRANSFER', -5.00, '2011-08-03 21:27:03', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(37, 'TRANSFER', 5.00, '2011-08-03 21:27:03', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(38, 'TRANSFER', -5.00, '2011-08-03 21:27:03', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(39, 'TRANSFER', 5.00, '2011-08-03 21:27:03', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(40, 'TRANSFER', -5.00, '2011-08-03 21:27:05', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(41, 'TRANSFER', 5.00, '2011-08-03 21:27:05', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(42, 'TRANSFER', -5.00, '2011-08-03 21:27:05', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(43, 'TRANSFER', 5.00, '2011-08-03 21:27:05', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(44, 'TRANSFER', -5.00, '2011-08-03 21:27:05', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(45, 'TRANSFER', 5.00, '2011-08-03 21:27:05', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(46, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(47, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(48, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(49, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(50, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(51, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(52, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(53, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(54, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(55, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(56, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(57, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(58, 'TRANSFER', -5.00, '2011-08-03 21:27:06', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(59, 'TRANSFER', 5.00, '2011-08-03 21:27:06', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(60, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(61, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(62, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(63, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(64, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(65, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(66, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(67, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(68, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(69, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(70, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(71, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(72, 'TRANSFER', -5.00, '2011-08-03 21:27:07', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(73, 'TRANSFER', 5.00, '2011-08-03 21:27:07', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(74, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(75, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(76, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(77, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(78, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(79, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(80, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(81, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(82, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(83, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(84, 'TRANSFER', -5.00, '2011-08-03 21:27:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(85, 'TRANSFER', 5.00, '2011-08-03 21:27:08', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(86, 'TRANSFER', -5.00, '2011-08-03 21:27:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(87, 'TRANSFER', 5.00, '2011-08-03 21:27:10', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(88, 'TRANSFER', -5.00, '2011-08-03 21:27:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(89, 'TRANSFER', 5.00, '2011-08-03 21:27:10', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(90, 'TRANSFER', -5.00, '2011-08-03 21:27:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(91, 'TRANSFER', 5.00, '2011-08-03 21:27:10', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(92, 'TRANSFER', -5.00, '2011-08-03 21:27:11', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(93, 'TRANSFER', 5.00, '2011-08-03 21:27:11', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(94, 'TRANSFER', -5.00, '2011-08-03 21:27:12', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(95, 'TRANSFER', 5.00, '2011-08-03 21:27:12', 34, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(96, 'TRANSFER', -5.00, '2011-08-03 21:27:13', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(97, 'TRANSFER', 5.00, '2011-08-03 21:27:13', 34, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(98, 'TRANSFER', -5.00, '2011-08-03 21:27:13', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(99, 'TRANSFER', 5.00, '2011-08-03 21:27:13', 34, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(100, 'TRANSFER', -5.00, '2011-08-03 21:27:13', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(101, 'TRANSFER', 5.00, '2011-08-03 21:27:13', 34, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(102, 'TRANSFER', -5.00, '2011-08-03 21:27:13', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(103, 'TRANSFER', 5.00, '2011-08-03 21:27:13', 34, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(104, 'TRANSFER', -500.00, '2011-08-03 21:27:36', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(105, 'TRANSFER', 500.00, '2011-08-03 21:27:36', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(106, 'TRANSFER', -500.00, '2011-08-03 21:27:37', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(107, 'TRANSFER', 500.00, '2011-08-03 21:27:37', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(108, 'TRANSFER', -500.00, '2011-08-03 21:27:37', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(109, 'TRANSFER', 500.00, '2011-08-03 21:27:37', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(110, 'TRANSFER', -500.00, '2011-08-03 21:27:37', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(111, 'TRANSFER', 500.00, '2011-08-03 21:27:37', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(112, 'TRANSFER', -500.00, '2011-08-03 21:27:37', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(113, 'TRANSFER', 500.00, '2011-08-03 21:27:37', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(114, 'TRANSFER', -500.00, '2011-08-03 21:27:37', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(115, 'TRANSFER', 500.00, '2011-08-03 21:27:37', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(116, 'TRANSFER', -500.00, '2011-08-03 21:27:38', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(117, 'TRANSFER', 500.00, '2011-08-03 21:27:38', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(118, 'TRANSFER', -500.00, '2011-08-03 21:27:38', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(119, 'TRANSFER', 500.00, '2011-08-03 21:27:38', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(120, 'TRANSFER', -330.00, '2011-08-03 21:27:56', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(121, 'TRANSFER', 330.00, '2011-08-03 21:27:56', 5, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(122, 'TRANSFER', -980.00, '2011-08-03 21:28:01', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(123, 'TRANSFER', 980.00, '2011-08-03 21:28:01', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(124, 'TRANSFER', -667.00, '2011-08-03 21:28:10', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(125, 'TRANSFER', 667.00, '2011-08-03 21:28:10', 3, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(126, 'TRANSFER', -5.00, '2011-08-03 21:30:59', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(127, 'TRANSFER', 5.00, '2011-08-03 21:30:59', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(128, 'TRANSFER', -5.00, '2011-08-03 21:31:01', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(129, 'TRANSFER', 5.00, '2011-08-03 21:31:01', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(130, 'TRANSFER', -5.00, '2011-08-03 21:31:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(131, 'TRANSFER', 5.00, '2011-08-03 21:31:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(132, 'TRANSFER', -5.00, '2011-08-03 21:31:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(133, 'TRANSFER', 5.00, '2011-08-03 21:31:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(134, 'TRANSFER', -5.00, '2011-08-03 21:31:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(135, 'TRANSFER', 5.00, '2011-08-03 21:31:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(136, 'TRANSFER', -5.00, '2011-08-03 21:31:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(137, 'TRANSFER', 5.00, '2011-08-03 21:31:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(138, 'TRANSFER', -5.00, '2011-08-03 21:31:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(139, 'TRANSFER', 5.00, '2011-08-03 21:31:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(140, 'TRANSFER', -5.00, '2011-08-03 21:31:03', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(141, 'TRANSFER', 5.00, '2011-08-03 21:31:03', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(142, 'TRANSFER', -5.00, '2011-08-03 21:31:03', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(143, 'TRANSFER', 5.00, '2011-08-03 21:31:03', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(144, 'TRANSFER', -5.00, '2011-08-03 21:31:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(145, 'TRANSFER', 5.00, '2011-08-03 21:31:08', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(146, 'TRANSFER', -5.00, '2011-08-03 21:31:08', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(147, 'TRANSFER', 5.00, '2011-08-03 21:31:08', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(148, 'TRANSFER', -5.00, '2011-08-03 21:31:09', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(149, 'TRANSFER', 5.00, '2011-08-03 21:31:09', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(150, 'TRANSFER', -5.00, '2011-08-03 21:31:09', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(151, 'TRANSFER', 5.00, '2011-08-03 21:31:09', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(152, 'TRANSFER', -5.00, '2011-08-03 21:31:09', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(153, 'TRANSFER', 5.00, '2011-08-03 21:31:09', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(154, 'TRANSFER', -5.00, '2011-08-03 21:31:09', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(155, 'TRANSFER', 5.00, '2011-08-03 21:31:09', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(156, 'TRANSFER', -5.00, '2011-08-03 21:31:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(157, 'TRANSFER', 5.00, '2011-08-03 21:31:10', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(158, 'TRANSFER', -5.00, '2011-08-03 21:31:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(159, 'TRANSFER', 5.00, '2011-08-03 21:31:10', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(160, 'TRANSFER', -5.00, '2011-08-03 21:31:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(161, 'TRANSFER', 5.00, '2011-08-03 21:31:10', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(162, 'TRANSFER', -5.00, '2011-08-03 21:31:10', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(163, 'TRANSFER', 5.00, '2011-08-03 21:31:10', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(164, 'TRANSFER', -345.00, '2011-08-03 21:31:28', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(165, 'TRANSFER', 345.00, '2011-08-03 21:31:28', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(166, 'TRANSFER', -345.00, '2011-08-03 21:31:28', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(167, 'TRANSFER', 345.00, '2011-08-03 21:31:28', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(168, 'TRANSFER', -345.00, '2011-08-03 21:31:29', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(169, 'TRANSFER', 345.00, '2011-08-03 21:31:29', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(170, 'TRANSFER', -345.00, '2011-08-03 21:31:29', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(171, 'TRANSFER', 345.00, '2011-08-03 21:31:29', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(172, 'TRANSFER', -345.00, '2011-08-03 21:31:30', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(173, 'TRANSFER', 345.00, '2011-08-03 21:31:30', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(174, 'TRANSFER', -45.00, '2011-08-03 21:32:04', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(175, 'TRANSFER', 45.00, '2011-08-03 21:32:04', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(176, 'TRANSFER', -500.00, '2011-08-03 21:34:12', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(177, 'TRANSFER', 500.00, '2011-08-03 21:34:12', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(178, 'TRANSFER', -500.00, '2011-08-03 21:34:34', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(179, 'TRANSFER', 500.00, '2011-08-03 21:34:34', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(180, 'TRANSFER', -435.00, '2011-08-03 21:34:48', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(181, 'TRANSFER', 435.00, '2011-08-03 21:34:48', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(182, 'TRANSFER', -45.00, '2011-08-03 21:35:02', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(183, 'TRANSFER', 45.00, '2011-08-03 21:35:02', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(184, 'TRANSFER', -3234.00, '2011-08-03 21:35:05', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(185, 'TRANSFER', 3234.00, '2011-08-03 21:35:05', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(186, 'TRANSFER', -344535.00, '2011-08-03 22:48:40', 3, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(187, 'TRANSFER', 344535.00, '2011-08-03 22:48:40', 5, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(188, 'TRANSFER', -50.00, '2011-08-03 22:56:21', 3, 1.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(189, 'TRANSFER', 50.00, '2011-08-03 22:56:21', 5, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(190, 'TRANSFER', -1.00, '2011-08-03 22:56:45', 3, 1.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(191, 'TRANSFER', 1.00, '2011-08-03 22:56:45', 5, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(192, 'TRANSFER', -50.00, '2011-08-03 22:57:18', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(193, 'TRANSFER', 50.00, '2011-08-03 22:57:18', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(194, 'TRANSFER', -50.00, '2011-08-03 22:58:15', 23, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(195, 'TRANSFER', 50.00, '2011-08-03 22:58:15', 34, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(259, 'CHARGE', 10.00, '2011-08-03 23:08:14', 3077, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(258, 'CHARGE', 10.00, '2011-08-03 23:08:14', 48, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(257, 'CHARGE', 10.00, '2011-08-03 23:08:14', 45, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(256, 'CHARGE', 10.00, '2011-08-03 23:08:14', 42, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(255, 'CHARGE', 10.00, '2011-08-03 23:08:14', 39, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(254, 'CHARGE', 10.00, '2011-08-03 23:08:14', 36, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(253, 'CHARGE', 10.00, '2011-08-03 23:08:14', 33, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(252, 'CHARGE', 10.00, '2011-08-03 23:08:14', 30, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(251, 'CHARGE', 10.00, '2011-08-03 23:08:14', 27, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(250, 'CHARGE', 10.00, '2011-08-03 23:08:14', 24, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(249, 'CHARGE', 10.00, '2011-08-03 23:08:14', 21, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(248, 'CHARGE', 10.00, '2011-08-03 23:08:14', 18, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(247, 'CHARGE', 10.00, '2011-08-03 23:08:14', 15, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(246, 'CHARGE', 10.00, '2011-08-03 23:08:14', 12, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(245, 'CHARGE', 10.00, '2011-08-03 23:08:14', 9, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(244, 'CHARGE', 10.00, '2011-08-03 23:08:14', 3, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(260, 'CHARGE', 17.00, '2011-08-03 23:08:14', 4, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(261, 'CHARGE', 17.00, '2011-08-03 23:08:14', 7, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(262, 'CHARGE', 17.00, '2011-08-03 23:08:14', 10, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(263, 'CHARGE', 17.00, '2011-08-03 23:08:14', 13, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(264, 'CHARGE', 17.00, '2011-08-03 23:08:14', 16, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(265, 'CHARGE', 17.00, '2011-08-03 23:08:14', 19, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(266, 'CHARGE', 17.00, '2011-08-03 23:08:14', 22, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(267, 'CHARGE', 17.00, '2011-08-03 23:08:14', 25, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(268, 'CHARGE', 17.00, '2011-08-03 23:08:14', 28, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(269, 'CHARGE', 17.00, '2011-08-03 23:08:14', 31, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(270, 'CHARGE', 17.00, '2011-08-03 23:08:14', 34, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(271, 'CHARGE', 17.00, '2011-08-03 23:08:14', 37, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(272, 'CHARGE', 17.00, '2011-08-03 23:08:14', 40, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(273, 'CHARGE', 17.00, '2011-08-03 23:08:14', 43, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(274, 'CHARGE', 17.00, '2011-08-03 23:08:14', 46, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(275, 'CHARGE', 17.00, '2011-08-03 23:08:14', 49, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(276, 'CHARGE', 25.00, '2011-08-03 23:08:14', 5, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(277, 'CHARGE', 25.00, '2011-08-03 23:08:14', 8, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(278, 'CHARGE', 25.00, '2011-08-03 23:08:14', 11, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(279, 'CHARGE', 25.00, '2011-08-03 23:08:14', 14, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(280, 'CHARGE', 25.00, '2011-08-03 23:08:14', 17, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(281, 'CHARGE', 25.00, '2011-08-03 23:08:14', 20, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(282, 'CHARGE', 25.00, '2011-08-03 23:08:14', 23, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(283, 'CHARGE', 25.00, '2011-08-03 23:08:14', 26, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(284, 'CHARGE', 25.00, '2011-08-03 23:08:14', 29, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(285, 'CHARGE', 25.00, '2011-08-03 23:08:14', 32, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(286, 'CHARGE', 25.00, '2011-08-03 23:08:14', 35, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(287, 'CHARGE', 25.00, '2011-08-03 23:08:14', 38, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(288, 'CHARGE', 25.00, '2011-08-03 23:08:14', 41, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(289, 'CHARGE', 25.00, '2011-08-03 23:08:14', 44, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(290, 'CHARGE', 25.00, '2011-08-03 23:08:14', 47, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(291, 'CHARGE', 25.00, '2011-08-03 23:08:14', 50, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(292, 'CHARGE', 10.00, '2011-09-03 23:10:32', 3, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(293, 'CHARGE', 10.00, '2011-09-03 23:10:32', 9, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(294, 'CHARGE', 10.00, '2011-09-03 23:10:32', 12, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(295, 'CHARGE', 10.00, '2011-09-03 23:10:32', 15, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(296, 'CHARGE', 10.00, '2011-09-03 23:10:32', 18, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(297, 'CHARGE', 10.00, '2011-09-03 23:10:32', 21, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(298, 'CHARGE', 10.00, '2011-09-03 23:10:32', 24, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(299, 'CHARGE', 10.00, '2011-09-03 23:10:32', 27, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(300, 'CHARGE', 10.00, '2011-09-03 23:10:32', 30, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(301, 'CHARGE', 10.00, '2011-09-03 23:10:32', 33, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(302, 'CHARGE', 10.00, '2011-09-03 23:10:32', 36, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(303, 'CHARGE', 10.00, '2011-09-03 23:10:32', 39, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(304, 'CHARGE', 10.00, '2011-09-03 23:10:32', 42, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(305, 'CHARGE', 10.00, '2011-09-03 23:10:32', 45, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(306, 'CHARGE', 10.00, '2011-09-03 23:10:32', 48, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(307, 'CHARGE', 10.00, '2011-09-03 23:10:32', 3077, 0.00, 'Charge for your plan Basic');
INSERT INTO `Transaction` VALUES(308, 'CHARGE', 17.00, '2011-09-03 23:10:32', 4, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(309, 'CHARGE', 17.00, '2011-09-03 23:10:32', 7, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(310, 'CHARGE', 17.00, '2011-09-03 23:10:32', 10, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(311, 'CHARGE', 17.00, '2011-09-03 23:10:32', 13, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(312, 'CHARGE', 17.00, '2011-09-03 23:10:32', 16, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(313, 'CHARGE', 17.00, '2011-09-03 23:10:32', 19, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(314, 'CHARGE', 17.00, '2011-09-03 23:10:32', 22, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(315, 'CHARGE', 17.00, '2011-09-03 23:10:32', 25, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(316, 'CHARGE', 17.00, '2011-09-03 23:10:32', 28, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(317, 'CHARGE', 17.00, '2011-09-03 23:10:32', 31, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(318, 'CHARGE', 17.00, '2011-09-03 23:10:32', 34, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(319, 'CHARGE', 17.00, '2011-09-03 23:10:32', 37, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(320, 'CHARGE', 17.00, '2011-09-03 23:10:32', 40, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(321, 'CHARGE', 17.00, '2011-09-03 23:10:32', 43, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(322, 'CHARGE', 17.00, '2011-09-03 23:10:32', 46, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(323, 'CHARGE', 17.00, '2011-09-03 23:10:32', 49, 0.00, 'Charge for your plan Premuim');
INSERT INTO `Transaction` VALUES(324, 'CHARGE', 25.00, '2011-09-03 23:10:32', 5, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(325, 'CHARGE', 25.00, '2011-09-03 23:10:32', 8, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(326, 'CHARGE', 25.00, '2011-09-03 23:10:32', 11, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(327, 'CHARGE', 25.00, '2011-09-03 23:10:32', 14, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(328, 'CHARGE', 25.00, '2011-09-03 23:10:32', 17, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(329, 'CHARGE', 25.00, '2011-09-03 23:10:32', 20, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(330, 'CHARGE', 25.00, '2011-09-03 23:10:32', 23, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(331, 'CHARGE', 25.00, '2011-09-03 23:10:32', 26, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(332, 'CHARGE', 25.00, '2011-09-03 23:10:32', 29, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(333, 'CHARGE', 25.00, '2011-09-03 23:10:32', 32, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(334, 'CHARGE', 25.00, '2011-09-03 23:10:32', 35, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(335, 'CHARGE', 25.00, '2011-09-03 23:10:32', 38, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(336, 'CHARGE', 25.00, '2011-09-03 23:10:32', 41, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(337, 'CHARGE', 25.00, '2011-09-03 23:10:32', 44, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(338, 'CHARGE', 25.00, '2011-09-03 23:10:32', 47, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(339, 'CHARGE', 25.00, '2011-09-03 23:10:32', 50, 0.00, 'Charge for your plan Ultimate');
INSERT INTO `Transaction` VALUES(340, 'INTEREST', 1001.34, '2011-08-04 01:02:28', 4, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(341, 'INTEREST', 1001.34, '2011-08-04 01:02:28', 7, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(342, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 10, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(343, 'INTEREST', 1001.34, '2011-08-04 01:02:28', 13, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(344, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 16, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(345, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 19, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(346, 'INTEREST', 1003.34, '2011-08-04 01:02:28', 22, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(347, 'INTEREST', 1001.34, '2011-08-04 01:02:28', 25, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(348, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 28, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(349, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 31, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(350, 'INTEREST', 1196.82, '2011-08-04 01:02:28', 34, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(351, 'INTEREST', 1002.34, '2011-08-04 01:02:28', 37, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(352, 'INTEREST', 1003.34, '2011-08-04 01:02:28', 40, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(353, 'INTEREST', 1003.34, '2011-08-04 01:02:28', 43, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(354, 'INTEREST', 1004.34, '2011-08-04 01:02:28', 46, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(355, 'INTEREST', 1001.34, '2011-08-04 01:02:28', 49, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(356, 'INTEREST', 13740.36, '2011-08-04 01:02:28', 5, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(357, 'INTEREST', -39.00, '2011-08-04 01:02:28', 8, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(358, 'INTEREST', -39.00, '2011-08-04 01:02:28', 11, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(359, 'INTEREST', -39.00, '2011-08-04 01:02:28', 14, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(360, 'INTEREST', -39.00, '2011-08-04 01:02:28', 17, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(361, 'INTEREST', -39.00, '2011-08-04 01:02:28', 20, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(362, 'INTEREST', 38.20, '2011-08-04 01:02:28', 23, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(363, 'INTEREST', -39.00, '2011-08-04 01:02:28', 26, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(364, 'INTEREST', -39.00, '2011-08-04 01:02:28', 29, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(365, 'INTEREST', -39.00, '2011-08-04 01:02:28', 32, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(366, 'INTEREST', -39.00, '2011-08-04 01:02:28', 35, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(367, 'INTEREST', -39.00, '2011-08-04 01:02:28', 38, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(368, 'INTEREST', -39.00, '2011-08-04 01:02:28', 41, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(369, 'INTEREST', -39.00, '2011-08-04 01:02:28', 44, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(370, 'INTEREST', -39.00, '2011-08-04 01:02:28', 47, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(371, 'INTEREST', -39.00, '2011-08-04 01:02:28', 50, 0.00, 'Interest');
INSERT INTO `Transaction` VALUES(372, 'TRANSFER', -324.00, '2011-08-04 01:08:03', 3, 1.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(373, 'TRANSFER', 324.00, '2011-08-04 01:08:03', 5, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(374, 'TRANSFER', -100000.00, '2011-08-04 01:10:14', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(375, 'TRANSFER', 100000.00, '2011-08-04 01:10:14', 23, 0.00, 'Internet transfer, money arriving');
INSERT INTO `Transaction` VALUES(376, 'TRANSFER', -99999999.00, '2011-08-04 01:10:18', 5, 0.00, 'Internet transfer, money leaving');
INSERT INTO `Transaction` VALUES(377, 'TRANSFER', 99999999.00, '2011-08-04 01:10:18', 23, 0.00, 'Internet transfer, money arriving');
