-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `emplyees`
--

CREATE TABLE `emplyees` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `empName` varchar(25) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Salary` int(11) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `phoneNumber` bigint(11) NOT NULL,
  `EmailId` varchar(27) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emplyees`
--

INSERT INTO `emplyees` (`id`, `empcode`, `empName`, `Designation`, `Salary`, `companyName`, `phoneNumber`, `EmailId`, `Password`) VALUES
(3, 103, 'Annzz', 'Web_developer', 30000, 'NeST_Digital', 8901234, 'annzd@gmail.com', 'anns@123'),
(4, 105, 'Sneha', 'Data_Engineer', 30000, 'NeST_Digital', 78912342, 'snehavar@gmail.com', 'sneha@908'),
(5, 108, 'Anjana', 'Embedded', 30000, 'NeST_Digital', 89012342, 'anjana@gmail.com', 'anjana23@876'),
(6, 113, 'Anjana_y', 'Data_Engineer', 30000, 'NeST_Digital', 345612312, 'anjanay@gmail.com', 'anjana45@876'),
(7, 110, 'Ashme', 'Data_Engineer', 30000, 'NeST_Digital', 345612323, 'ashme@gmail.com', 'ashme#452'),
(8, 106, 'Tom', 'Data_Engineer', 30000, 'NeST_Digital', 89012342, 'tom@gmail.com', 'tom#123'),
(9, 114, 'Manju', 'Data_Engineer', 30000, 'NeST_Digital', 34561231, 'manju@gmail.com', 'manju#234'),
(10, 119, 'Deelish', 'Data_Engineer', 30000, 'NeST_Digital', 34561232, 'deelish@gmail.com', 'deelish#234'),
(11, 120, 'Lakshmi', 'Data_Engineer', 30000, 'NeST_Digital', 907689, 'Lakshmi@gmail.com', 'Lakshmi&123'),
(12, 121, 'Ani', 'Designer', 50000, 'Nest digital', 894532176678, 'aniudh@gmail.com', 'ani#452'),
(15, 124, 'Mahalakshmi', 'Data_engineer', 30000, 'Nest_digital', 919074106754, 'maha@gmail.com', 'maha456#123');

-- --------------------------------------------------------

--
-- Table structure for table `emp_high_salary`
--

CREATE TABLE `emp_high_salary` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `empName` varchar(25) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Salary` int(11) NOT NULL,
  `companyName` varchar(14) NOT NULL,
  `phoneNumber` bigint(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Password` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_high_salary`
--

INSERT INTO `emp_high_salary` (`id`, `empcode`, `empName`, `Designation`, `Salary`, `companyName`, `phoneNumber`, `EmailId`, `Password`) VALUES
(1, 103, 'Annzz', 'Web_developer', 30000, 'NeST_Digital', 8901234, 'annzd@gmail.com', 'anns@123'),
(2, 105, 'Sneha', 'Data_Engineer', 30000, 'NeST_Digital', 78912342, 'snehavar@gmail.com', 'sneha@908'),
(3, 108, 'Anjana', 'Embedded', 30000, 'NeST_Digital', 89012342, 'anjana@gmail.com', 'anjana23@876'),
(4, 113, 'Anjana_y', 'Data_Engineer', 30000, 'NeST_Digital', 345612312, 'anjanay@gmail.com', 'anjana45@876'),
(5, 110, 'Ashme', 'Data_Engineer', 30000, 'NeST_Digital', 345612323, 'ashme@gmail.com', 'ashme#452'),
(6, 106, 'Tom', 'Data_Engineer', 30000, 'NeST_Digital', 89012342, 'tom@gmail.com', 'tom#123'),
(7, 114, 'Manju', 'Data_Engineer', 30000, 'NeST_Digital', 34561231, 'manju@gmail.com', 'manju#234'),
(8, 119, 'Deelish', 'Data_Engineer', 30000, 'NeST_Digital', 34561232, 'deelish@gmail.com', 'deelish#234'),
(9, 120, 'Lakshmi', 'Data_Engineer', 30000, 'NeST_Digital', 907689, 'Lakshmi@gmail.com', 'Lakshmi&123'),
(10, 124, 'Mahalakshmi', 'Data_engineer', 30000, 'Nest_digital', 919074106754, 'maha@gmail.com', 'maha456#123');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `taskTitle` varchar(25) NOT NULL,
  `taskDate` date NOT NULL,
  `taskDueDate` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `empid`, `taskTitle`, `taskDate`, `taskDueDate`, `status`) VALUES
(1, 3, 'develop_software', '2022-10-22', '2022-10-30', 'ongoing'),
(2, 4, 'debugg the error', '2022-10-20', '2022-11-01', 'ongoing'),
(3, 5, 'analysis the data', '2022-11-01', '2022-11-10', 'not yet started'),
(4, 6, 'EDA', '2022-10-12', '2022-10-31', 'finished'),
(5, 7, 'develop_software', '2022-10-01', '2022-10-21', 'finished'),
(6, 8, 'sql management', '2022-11-01', '2022-11-10', 'not yet started'),
(7, 9, 'debugg the error', '2022-11-10', '2022-11-21', 'not yet started'),
(8, 10, 'completing the design', '2022-10-31', '2022-10-21', 'finished'),
(9, 11, 'break the data into infor', '2022-10-10', '2022-10-22', 'finished'),
(10, 12, 'creating the model', '2022-11-01', '2022-11-10', 'ongoing'),
(11, 15, 'completing the design', '2022-10-25', '2022-11-01', 'finished');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emplyees`
--
ALTER TABLE `emplyees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_high_salary`
--
ALTER TABLE `emp_high_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emplyees`
--
ALTER TABLE `emplyees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `emp_high_salary`
--
ALTER TABLE `emp_high_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
