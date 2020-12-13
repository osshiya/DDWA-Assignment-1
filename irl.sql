-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2020 at 02:49 PM
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
  `Type` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `ID` varchar(30) NOT NULL,
  `PWD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`Type`, `Name`, `ID`, `PWD`) VALUES
('administrator', 'admin', 'admin', 'adminpwd');

-- --------------------------------------------------------

--
-- Table structure for table `fulllist`
--

CREATE TABLE `fulllist` (
  `Type` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `ID` varchar(30) NOT NULL,
  `PWD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `fulllist`
--

INSERT INTO `fulllist` (`Type`, `Name`, `ID`, `PWD`) VALUES
('administrator', 'Admin', 'admin', 'adminpwd'),
('staff', 'Elvis Millar', 'elvis', 'elvispwd'),
('student', 'Marlie Dale', 'marlie', 'marliepwd'),
('staff', 'Staff', 'staff', 'staff'),
('student', 'Student', 'student', 'studentpwd'),
('staff', 'Uwais Moody', 'uwais', 'uwaispwd');

-- --------------------------------------------------------

--
-- Table structure for table `notebookreq`
--

CREATE TABLE `notebookreq` (
  `Make` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Processor` varchar(30) NOT NULL,
  `HardDiskCap` int(11) NOT NULL,
  `AmtOfRAM` int(11) NOT NULL,
  `OS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `notebookreq`
--

INSERT INTO `notebookreq` (`Make`, `Model`, `Processor`, `HardDiskCap`, `AmtOfRAM`, `OS`) VALUES
('Lenovo', 'ThinkPad L13', 'Intel Core i5-10210U', 512, 8, 'Windows 10 Pro 64'),
('Microsoft', 'Surface Laptop 3', 'Intel Core i5-1035G7', 256, 8, 'Windows 10 Home 64');

-- --------------------------------------------------------

--
-- Table structure for table `projectlist`
--

CREATE TABLE `projectlist` (
  `ProjectNo` varchar(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `ShortDesc` varchar(30) NOT NULL,
  `StartDate` date NOT NULL,
  `CompletionDate` date NOT NULL,
  `BudgetAllocated` int(11) NOT NULL,
  `CompanyName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `softwarelist`
--

CREATE TABLE `softwarelist` (
  `SerialNo` varchar(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `NoOfLicenseCopies` int(11) NOT NULL,
  `DatePurchased` date NOT NULL,
  `PricePerLicenseCopy` int(11) NOT NULL,
  `Publisher` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `softwarelist`
--

INSERT INTO `softwarelist` (`SerialNo`, `Title`, `NoOfLicenseCopies`, `DatePurchased`, `PricePerLicenseCopy`, `Publisher`) VALUES
('p6LFpAFX', 'Adobe Photoshop', 8, '2020-03-11', 55, 'Adobe');

-- --------------------------------------------------------

--
-- Table structure for table `stafflist`
--

CREATE TABLE `stafflist` (
  `Type` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `ID` varchar(30) NOT NULL,
  `PWD` varchar(30) NOT NULL,
  `DateJoined` date DEFAULT NULL,
  `OfficeLocation` varchar(30) NOT NULL,
  `ContactNo` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `stafflist`
--

INSERT INTO `stafflist` (`Type`, `Name`, `ID`, `PWD`, `DateJoined`, `OfficeLocation`, `ContactNo`) VALUES
('staff', 'Elvis Millar', 'elvis', 'elvispwd', '2020-12-01', 'East', 94455234),
('staff', 'Uwais Moody', 'uwais', 'uwaispwd', '2019-08-05', 'West', 97324588);

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `YearEnrolled` year(4) NOT NULL,
  `ContactNo` int(8) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`type`, `name`, `id`, `password`, `YearEnrolled`, `ContactNo`, `status`) VALUES
('student', 'Marlie Dale', 'marlie', 'marliepwd', 2018, 88453774, 'active'),
('student', 'Student', 'student', 'studentpwd', 2021, 94542255, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlist`
--
ALTER TABLE `adminlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fulllist`
--
ALTER TABLE `fulllist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notebookreq`
--
ALTER TABLE `notebookreq`
  ADD PRIMARY KEY (`Make`,`Model`,`Processor`,`HardDiskCap`,`AmtOfRAM`,`OS`);

--
-- Indexes for table `projectlist`
--
ALTER TABLE `projectlist`
  ADD PRIMARY KEY (`ProjectNo`);

--
-- Indexes for table `softwarelist`
--
ALTER TABLE `softwarelist`
  ADD PRIMARY KEY (`SerialNo`);

--
-- Indexes for table `stafflist`
--
ALTER TABLE `stafflist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
  ADD PRIMARY KEY (`type`,`name`,`id`,`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
