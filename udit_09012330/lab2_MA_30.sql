-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2012 at 05:54 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lab2_MA_30`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dept`
--

CREATE TABLE IF NOT EXISTS `Dept` (
  `did` int(11) NOT NULL,
  `dname` text NOT NULL,
  `budget` double NOT NULL,
  `managerid` int(11) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `managerid` (`managerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Emp`
--

CREATE TABLE IF NOT EXISTS `Emp` (
  `eid` int(11) NOT NULL,
  `ename` text NOT NULL,
  `age` int(11) NOT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Works`
--

CREATE TABLE IF NOT EXISTS `Works` (
  `eid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `pcttime` int(11) NOT NULL,
  KEY `eid` (`eid`),
  KEY `did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
