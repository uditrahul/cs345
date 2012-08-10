CREATE DATABASE `lab2_CS345` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab2_CS345`;

CREATE TABLE IF NOT EXISTS `dept` (
  `did` int(11) NOT NULL,
  `dname` text NOT NULL,
  `budget` double NOT NULL,
  `managerid` int(11) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `managerid` (`managerid`),
  KEY `did` (`did`),
  KEY `did_2` (`did`),
  KEY `managerid_2` (`managerid`)
) 



CREATE TABLE IF NOT EXISTS `emp` (
  `eid` int(11) NOT NULL,
  `ename` text NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`eid`)
) 



INSERT INTO `emp` (`eid`, `ename`, `age`, `salary`) VALUES
(101, 'John Doe', 32, 16500);


CREATE TABLE IF NOT EXISTS `works` (
  `eid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `pcttime` int(11) NOT NULL,
  KEY `eid` (`eid`),
  KEY `did` (`did`),
  KEY `did_2` (`did`),
  KEY `did_3` (`did`),
  KEY `eid_2` (`eid`)
) 

--
ALTER TABLE `dept`
  ADD CONSTRAINT `dept_ibfk_2` FOREIGN KEY (`managerid`) REFERENCES `emp` (`eid`) ON DELETE CASCADE;


--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE CASCADE;


