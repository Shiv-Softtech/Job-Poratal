-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 10:24 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activityid` bigint(20) NOT NULL,
  `activitynature` varchar(125) NOT NULL,
  `activityowner` varchar(100) NOT NULL,
  `activityuserid` int(11) NOT NULL,
  `ActivityJobID` int(11) DEFAULT NULL,
  `activityresult` varchar(100) DEFAULT NULL,
  `activitydate` date NOT NULL,
  `activitytime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `empid` int(11) NOT NULL,
  `cmpname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `link` varchar(125) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `category` varchar(100) NOT NULL,
  `about` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`empid`, `cmpname`, `email`, `contactno`, `link`, `address`, `city`, `state`, `category`, `about`) VALUES
(1, 'TechCiti', 'career@techciti.in', '9876543219', 'http://www.techciti.in', 'JP Nagar', 'Begaluru', 'Karnatka', 'Internet Technologies / Web / E-Commerce', 'hsdjf sdfjjsd skfjs kd');

-- --------------------------------------------------------

--
-- Table structure for table `jobdetails`
--

CREATE TABLE `jobdetails` (
  `jobid` int(11) NOT NULL,
  `jobprofile` varchar(125) NOT NULL,
  `jobcategory` varchar(100) NOT NULL,
  `jobtype` varchar(100) NOT NULL,
  `jobopening` varchar(5) NOT NULL,
  `workexperience` varchar(50) NOT NULL,
  `salaryexpected` varchar(100) NOT NULL,
  `noticeperiod` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `state` varchar(125) NOT NULL,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobresult`
--

CREATE TABLE `jobresult` (
  `empid` int(11) DEFAULT NULL,
  `jskid` int(11) DEFAULT NULL,
  `jobid` int(11) NOT NULL,
  `jobstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `jskid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `school10` varchar(100) NOT NULL,
  `percent10` varchar(5) NOT NULL,
  `school12` varchar(100) NOT NULL,
  `percent12` varchar(5) DEFAULT NULL,
  `education` varchar(45) NOT NULL,
  `College` varchar(100) DEFAULT NULL,
  `address` varchar(125) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `workexp` varchar(45) NOT NULL,
  `category` varchar(100) NOT NULL,
  `skills` text NOT NULL,
  `resumefile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`jskid`, `username`, `firstname`, `lastname`, `contactno`, `gender`, `dob`, `email`, `school10`, `percent10`, `school12`, `percent12`, `education`, `College`, `address`, `city`, `state`, `workexp`, `category`, `skills`, `resumefile`) VALUES
(1, 'keerthi', 'keerthi', 'sri', '987654320', 'Female', '1993-12-31', 'keerthi@gmail.vom', 'AV', '92', 'AV', NULL, 'BE', 'SIT', 'JP', 'Bengaluru', 'Karnatka', '1-3 Years', 'Internet Technologies / Web / E-Commerce', 'Java', 'resume');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `authorization` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `type`, `authorization`) VALUES
(1, 'keerthi', '12345', 'Jobseeker', 'Accepted'),
(1, 'TechCiti', '12345', 'Employer', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activityid`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `username_UNIQUE` (`cmpname`);

--
-- Indexes for table `jobdetails`
--
ALTER TABLE `jobdetails`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`jskid`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activityid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobdetails`
--
ALTER TABLE `jobdetails`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `jskid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
