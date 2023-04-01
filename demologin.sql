-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 07:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demologin`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attachmentID` int(50) NOT NULL,
  `TaskID` int(50) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetype` varchar(255) NOT NULL,
  `filesize` bigint(50) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `Datesubmitted` date DEFAULT NULL,
  `Timesubmitted` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`attachmentID`, `TaskID`, `filename`, `filetype`, `filesize`, `filepath`, `Datesubmitted`, `Timesubmitted`) VALUES
(42, 12, 'asdasd22.PNG', 'image/png', 91652, 'admin/attachmentsdb/asdasd22.PNG', '2023-03-28', '11:19:18'),
(43, 16, '5.10 Exped.PNG', 'image/png', 761862, 'admin/attachmentsdb/5.10 Exped.PNG', '2023-03-28', '11:35:50'),
(44, 15, '5.10 Exped.PNG', 'image/png', 761862, 'admin/attachmentsdb/5.10 Exped.PNG', '2023-03-28', '11:36:00'),
(45, 17, '5.10 Exped.PNG', 'image/png', 761862, 'admin/attachmentsdb/5.10 Exped.PNG', '2023-03-28', '11:44:58'),
(46, 18, '5.10 Exped.PNG', 'image/png', 761862, 'admin/attachmentsdb/5.10 Exped.PNG', '2023-03-28', '11:57:36'),
(47, 14, 'Bothupper.png', 'image/png', 24042, 'admin/attachmentsdb/Bothupper.png', '2023-03-28', '11:57:44'),
(48, 21, 'Agnes Cap Sign.jpg', 'image/jpeg', 119658, 'admin/attachmentsdb/Agnes Cap Sign.jpg', '2023-03-30', '06:38:39'),
(49, 20, 'UC LOGO.png', 'image/png', 78988, 'admin/attachmentsdb/UC LOGO.png', '2023-03-30', '06:39:41'),
(50, 19, 'UC LOGO.png', 'image/png', 78988, 'admin/attachmentsdb/UC LOGO.png', '2023-03-30', '06:39:46'),
(51, 23, 'download.png', 'image/png', 8958, 'admin/attachmentsdb/download.png', '2023-03-30', '11:17:01'),
(52, 24, 'banilad.jpg', 'image/jpeg', 190434, 'admin/attachmentsdb/banilad.jpg', '2023-03-31', '08:41:24'),
(53, 25, 'banilad.jpg', 'image/jpeg', 190434, 'admin/attachmentsdb/banilad.jpg', '2023-03-31', '08:43:40'),
(54, 26, 'banilad.jpg', 'image/jpeg', 190434, 'admin/attachmentsdb/banilad.jpg', '2023-03-31', '09:40:27'),
(55, 27, 'Capture001.png', 'image/png', 1798795, 'admin/attachmentsdb/Capture001.png', '2023-04-01', '12:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(111) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `Name`, `UserID`, `Department`, `Date`, `Time`, `Status`) VALUES
(10068, 'Zandro Francis Delgado', 10001, 'Non-Teaching', '2023-03-26', '11:13:36', 'Absent'),
(10069, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-03-28', '11:17:32', 'Absent'),
(10070, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-03-26', '11:30:32', 'Present'),
(10071, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-03-26', '11:30:35', 'Present'),
(10072, 'Zandro Francis Delgado', 10001, 'Non-Teaching', '2023-03-28', '11:31:41', 'Present'),
(10073, 'Zandro Francis Delgado', 10001, 'Non-Teaching', '2023-03-28', '11:31:44', 'Present'),
(10074, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-03-28', '11:33:57', 'Present'),
(10075, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-03-28', '11:43:46', 'Present'),
(10076, 'Trishtian Capangpangan', 10003, 'Teaching', '2023-03-28', '11:52:02', 'Present'),
(10077, 'Trishtian Capangpangan', 10002, 'Teaching', '2023-03-28', '11:55:29', 'Present'),
(10078, '', 0, '', '2023-04-01', '11:34:21', ''),
(10079, 'Trishtian Capangpangan', 10002, 'Non-Teaching', '2023-04-01', '11:37:46', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `Password` int(50) NOT NULL,
  `Department` enum('Teaching','Non-Teaching','Maintenance','') NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `Status` char(20) NOT NULL,
  `Usertype` varchar(50) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`ID`, `Name`, `UserID`, `Password`, `Department`, `Occupation`, `Email`, `Contact`, `Date`, `Status`, `Usertype`) VALUES
(10039, 'Trishtian Capangpangan', 10002, 1234, 'Non-Teaching', 'Lead Developer', 'Ctrishtian@gmail.com', 9478109715, NULL, 'Present', 'User'),
(10041, 'Philip Johnny Mendaros', 10004, 0, 'Maintenance', 'Smoker', 'Pjohn@gmail.com', 9999999, NULL, '', 'User'),
(10042, '123', 123, 123, 'Maintenance', '123', '213313@gmail.com', 2123, NULL, '', 'User'),
(10043, 'asdasd', 0, 0, 'Teaching', 'dasdas', 'ads@gmail.com', 0, NULL, '', 'User'),
(10044, '4444444', 21333, 123333, 'Teaching', '333', '44422@gmail.com', 12333, NULL, '', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `maint`
--

CREATE TABLE `maint` (
  `ID` int(50) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Pass` int(50) NOT NULL,
  `Usertype` varchar(50) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maint`
--

INSERT INTO `maint` (`ID`, `User`, `Pass`, `Usertype`) VALUES
(1, 'Admin', 1234, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `TaskID` int(20) NOT NULL,
  `UserID` int(50) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `date` date DEFAULT NULL,
  `Deadline` date NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Unfinished',
  `Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`TaskID`, `UserID`, `Title`, `Description`, `date`, `Deadline`, `Status`, `Type`) VALUES
(12, 10002, 'Manage the schools fund', 'Please be careful managing the school funds because it is so important for our schools reputation.', '2023-03-28', '2023-03-31', 'Approved', 'personal'),
(13, 10001, 'Check the testpaper', 'Observe and check all the testpapers of the student of PROG A 12 science subject.', '2023-03-28', '2023-03-31', 'Unfinished', 'normal'),
(14, 10002, 'Teach the students of STEM', 'Teach STEM students about the biology and physics for the upcoming midterms exam', '2023-03-28', '2023-04-03', 'Rejected', 'urgent'),
(15, 10002, 'Entertain the senior highschool department', 'Plan a program for entertainment, you need to make the students happy and entertained.', '2023-03-28', '2023-03-31', 'Rejected', 'urgent'),
(16, 10002, 'Fix the data of the employees', 'Their are some kind of bugs that employee experienced in attendance please fix asap', '2023-03-28', '2023-04-01', 'Approved', 'urgent'),
(17, 10002, 'Task for you', 'Please make a system that will track employee', '2023-03-28', '2023-03-30', 'Approved', 'normal'),
(18, 10002, 'Do the system in one week', 'Make it as soon as possible because we need it within the week.', '2023-03-28', '2023-04-06', 'Rejected', 'urgent'),
(19, 10002, '123', '123123', '2023-03-30', '2023-03-29', 'Approved', 'personal'),
(20, 10002, '1231', '23123123', '2023-03-30', '2023-03-21', 'Rejected', 'urgent'),
(21, 10002, '12312', '3123123', '2023-03-30', '2023-03-22', 'Approved', 'normal'),
(22, 10003, 'Check all the testpaper', 'Check all the testpaper of grade 10', '2023-03-30', '2023-03-31', 'Unfinished', 'personal'),
(23, 10002, 'Sell dota item', 'sell atleast 30 pesos', '2023-03-30', '2023-03-31', 'Approved', 'urgent'),
(24, 10002, 'Unfinshed to pending', 'Plesae example', '2023-03-31', '2023-03-31', 'Approved', 'normal'),
(25, 10002, 'example task ', 'example', '2023-03-31', '2023-03-29', 'Rejected', 'normal'),
(26, 10002, '1231', '23123', '2023-03-31', '2023-03-15', 'Rejected', 'urgent'),
(27, 10002, 'pending', 'pending pls', '2023-04-01', '2023-04-26', 'Rejected', 'personal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachmentID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loginform`
--
ALTER TABLE `loginform`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `maint`
--
ALTER TABLE `maint`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`TaskID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachmentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10080;

--
-- AUTO_INCREMENT for table `loginform`
--
ALTER TABLE `loginform`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10045;

--
-- AUTO_INCREMENT for table `maint`
--
ALTER TABLE `maint`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `TaskID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
