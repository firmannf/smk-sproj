-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2012 at 07:18 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_project_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `Id_Project` int(11) NOT NULL AUTO_INCREMENT,
  `Name_Project` varchar(100) NOT NULL,
  `Manager` varchar(100) DEFAULT NULL,
  `Notes` varchar(300) DEFAULT NULL,
  `Start_Date` varchar(20) NOT NULL,
  `Finish_Date` varchar(20) NOT NULL,
  `Priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`Id_Project`),
  UNIQUE KEY `Name_Project` (`Name_Project`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Id_Project`, `Name_Project`, `Manager`, `Notes`, `Start_Date`, `Finish_Date`, `Priority`) VALUES
(1, 'a', 'a', NULL, 'a', 'a', 500);

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `Id_Project` int(11) NOT NULL,
  `Id_Task` int(11) DEFAULT NULL,
  `Id_Resource` int(11) NOT NULL AUTO_INCREMENT,
  `Resource_Name` varchar(100) NOT NULL,
  `Tipe` varchar(20) DEFAULT NULL,
  `E-mail` varchar(100) DEFAULT NULL,
  `Material Label` varchar(50) DEFAULT NULL,
  `Initials` varchar(50) DEFAULT NULL,
  `Grup` varchar(100) DEFAULT NULL,
  `Standard_Rate` int(11) DEFAULT NULL,
  `Overtime_Rate` int(11) DEFAULT NULL,
  `Max_unit` int(11) DEFAULT NULL,
  `Cost_Per_Use` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Resource`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`Id_Project`, `Id_Task`, `Id_Resource`, `Resource_Name`, `Tipe`, `E-mail`, `Material Label`, `Initials`, `Grup`, `Standard_Rate`, `Overtime_Rate`, `Max_unit`, `Cost_Per_Use`) VALUES
(1, 0, 1, 'jsjdnsj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, NULL, 2, 'as', 'material', NULL, NULL, 'asas', 'asasa', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `Id_Project` int(11) NOT NULL,
  `Id_Task` int(11) NOT NULL AUTO_INCREMENT,
  `Name_Task` varchar(100) NOT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Start` varchar(20) DEFAULT NULL,
  `Finish` varchar(20) DEFAULT NULL,
  `Id_Resource` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Task`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`Id_Project`, `Id_Task`, `Name_Task`, `Duration`, `Start`, `Finish`, `Id_Resource`) VALUES
(1, 5, '123', 10, '01/11/12 5:49', '11/11/12 5:49', NULL),
(1, 2, 'wewewewekswdmkswe', 1, '1212', '12', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
