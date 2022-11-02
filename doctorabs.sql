-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 04:50 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `dcurrentuser`
--

CREATE TABLE `dcurrentuser` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dcurrentuser`
--

INSERT INTO `dcurrentuser` (`id`) VALUES
(1),
(13);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `specialist` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docname`, `password`, `gender`, `phno`, `specialist`, `day`, `fees`) VALUES
(1, 'abhinivi67@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'heart', 'Monday', 133),
(6, 'vlekhasri159@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'cardio', 'Tuesday', 133),
(7, 'abhinivi57@gmail.com', 'ABhi@12345', 'Male', 9597726863, 'ear', 'Monday', 133),
(9, 'abhinivi37@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'cardio', 'Wednesday', 133),
(10, 'kishore12@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'eye', 'Thursday', 133),
(12, 'kishore04@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'bone', 'Thursday', 133),
(13, 'kishore27@gmail.com', 'Abhi@12345', 'Male', 9597726863, 'eye', 'Wednesday', 133);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(11) NOT NULL,
  `docid` int(11) DEFAULT NULL,
  `patientname` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phno` bigint(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `symptom` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `docid`, `patientname`, `age`, `password`, `phno`, `gender`, `symptom`, `date`, `time`) VALUES
(1, 10, 'abhinivi67@gmail.com', 19, 'Abhi@12345', 9597726863, 'Male', 'cold', '27/10/2022 12:00:00', '12');

-- --------------------------------------------------------

--
-- Table structure for table `pcurrentuser`
--

CREATE TABLE `pcurrentuser` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcurrentuser`
--

INSERT INTO `pcurrentuser` (`id`) VALUES
(1),
(1),
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD UNIQUE KEY `docname` (`docname`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
