-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2020 at 12:01 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irl`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlist`
--

CREATE TABLE `adminlist` (
  `type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`type`, `name`, `id`, `password`) VALUES
('administrator', 'admin', 'admin', 'adminpwd');

-- --------------------------------------------------------

--
-- Table structure for table `fulllist`
--

CREATE TABLE `fulllist` (
  `type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `fulllist`
--

INSERT INTO `fulllist` (`type`, `name`, `id`, `password`) VALUES
('administrator', 'Admin', 'admin', 'adminpwd'),
('staff', 'Elvis Millar', 'elvis', 'elvispwd'),
('student', 'Marlie Dale', 'marlie', 'marliepwd'),
('staff', 'Staff', 'staff', 'staffpwd'),
('student', 'Student', 'student', 'studentpwd'),
('staff', 'Uwais Moody', 'uwais', 'uwaispwd');

-- --------------------------------------------------------

--
-- Table structure for table `notebookreq`
--

CREATE TABLE `notebookreq` (
  `make` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `processor` varchar(30) NOT NULL,
  `cap` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `os` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `notebookreq`
--

INSERT INTO `notebookreq` (`make`, `model`, `processor`, `cap`, `ram`, `os`) VALUES
('Lenovo', 'ThinkPad L13', 'Intel Core i5-10210U', 512, 8, 'Windows 10 Pro 64'),
('Microsoft', 'Surface Laptop 3', 'Intel Core i5-1035G7', 256, 8, 'Windows 10 Home 64');

-- --------------------------------------------------------

--
-- Table structure for table `projectlist`
--

CREATE TABLE `projectlist` (
  `projectno` varchar(10) NOT NULL,
  `projecttitle` varchar(30) NOT NULL,
  `shortdesc` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `completiondate` date NOT NULL,
  `budgetallocated` int(11) NOT NULL,
  `companyname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `projectlist`
--

INSERT INTO `projectlist` (`projectno`, `projecttitle`, `shortdesc`, `startdate`, `completiondate`, `budgetallocated`, `companyname`) VALUES
('76799943', 'Go Green', 'Go Green today by 3R', '2016-07-09', '2018-02-04', 1000, 'EconoBug');

-- --------------------------------------------------------

--
-- Table structure for table `softwarelist`
--

CREATE TABLE `softwarelist` (
  `serialno` varchar(10) NOT NULL,
  `softwaretitle` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `copiesno` int(11) NOT NULL,
  `copiesprice` int(11) NOT NULL,
  `datepurchased` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `softwarelist`
--

INSERT INTO `softwarelist` (`serialno`, `softwaretitle`, `publisher`, `copiesno`, `copiesprice`, `datepurchased`) VALUES
('p6LFpAFX', 'Adobe Photoshop', 'Adobe', 8, 55, '2020-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `stafflist`
--

CREATE TABLE `stafflist` (
  `type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `datejoined` date DEFAULT NULL,
  `contactno` int(8) NOT NULL,
  `officelocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `stafflist`
--

INSERT INTO `stafflist` (`type`, `name`, `id`, `password`, `datejoined`, `contactno`, `officelocation`) VALUES
('staff', 'Elvis Millar', 'elvis', 'elvispwd', '2020-12-01', 94455234, 'East'),
('staff', 'Staff', 'staff', 'staffpwd', '2000-01-01', 99645775, 'Central'),
('staff', 'Uwais Moody', 'uwais', 'uwaispwd', '2019-08-05', 97324588, 'West');

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `yearenrolled` year(4) NOT NULL,
  `contactno` int(8) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`type`, `name`, `id`, `password`, `yearenrolled`, `contactno`, `status`) VALUES
('student', 'Marlie Dale', 'marlie', 'marliepwd', 2018, 88453774, 'active'),
('student', 'Student', 'student', 'studentpwd', 2021, 94542255, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlist`
--
ALTER TABLE `adminlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fulllist`
--
ALTER TABLE `fulllist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notebookreq`
--
ALTER TABLE `notebookreq`
  ADD PRIMARY KEY (`make`,`model`,`processor`,`cap`,`ram`,`os`);

--
-- Indexes for table `projectlist`
--
ALTER TABLE `projectlist`
  ADD PRIMARY KEY (`projectno`);

--
-- Indexes for table `softwarelist`
--
ALTER TABLE `softwarelist`
  ADD PRIMARY KEY (`serialno`);

--
-- Indexes for table `stafflist`
--
ALTER TABLE `stafflist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
  ADD PRIMARY KEY (`type`,`name`,`id`,`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
