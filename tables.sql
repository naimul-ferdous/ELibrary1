-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2017 at 02:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `e_book`
--

CREATE TABLE `e_book` (
  `CALLNO` varchar(400) NOT NULL,
  `NAME` varchar(400) DEFAULT NULL,
  `AUTHOR` varchar(400) DEFAULT NULL,
  `PUBLISHER` varchar(400) DEFAULT NULL,
  `QUANTITY` int(50) DEFAULT NULL,
  `ISSUED` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_book`
--

INSERT INTO `e_book` (`CALLNO`, `NAME`, `AUTHOR`, `PUBLISHER`, `QUANTITY`, `ISSUED`) VALUES
('no1', 'C', 'Subeen', 'Dimik', 2, 0),
('no2', 'Java', 'Sun', 'Oracle', 4, 1),
('no4', 'Operating Systems', 'Kendle', 'McGraw', 3, 1),
('no5', 'Networking', 'Forouzan', 'McGraw Hill', 5, 0),
('no7', 'Theory of Computation', 'Unknown', 'McGraw Hill', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e_issuebook`
--

CREATE TABLE `e_issuebook` (
  `CALLNO` varchar(400) NOT NULL,
  `STUDENTID` varchar(400) NOT NULL,
  `STUDENTNAME` varchar(400) DEFAULT NULL,
  `STUDENTMOBILE` int(50) DEFAULT NULL,
  `ISSUEDDATE` date DEFAULT NULL,
  `RETURNSTATUS` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_issuebook`
--

INSERT INTO `e_issuebook` (`CALLNO`, `STUDENTID`, `STUDENTNAME`, `STUDENTMOBILE`, `ISSUEDDATE`, `RETURNSTATUS`) VALUES
('no1', '13', 'Naimul', 55, '2017-11-03', 'yes'),
('no2', '10', 'Jahid', 6868, '2017-11-03', 'yes'),
('no2', '11', 'Sa\'ad', 978, '2017-11-03', 'no'),
('no4', '12', 'Taymur', 798, '2017-11-03', 'no'),
('no7', '4664', 'Nahid', 4568, '2017-11-03', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `e_librarian`
--

CREATE TABLE `e_librarian` (
  `ID` int(50) NOT NULL,
  `NAME` varchar(400) DEFAULT NULL,
  `PASSWORD` varchar(400) DEFAULT NULL,
  `EMAIL` varchar(400) DEFAULT NULL,
  `MOBILE` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_librarian`
--

INSERT INTO `e_librarian` (`ID`, `NAME`, `PASSWORD`, `EMAIL`, `MOBILE`) VALUES
(1, 'Jahid', '1', 'j@g.co', 646),
(2, 'Taymur', '2', 't@g.co', 37),
(3, 'Sa\'ad', '3', 's@g.co', 453),
(4, 'Naimul', '4', 'n@g.co', 6654);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e_book`
--
ALTER TABLE `e_book`
  ADD PRIMARY KEY (`CALLNO`);

--
-- Indexes for table `e_librarian`
--
ALTER TABLE `e_librarian`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e_librarian`
--
ALTER TABLE `e_librarian`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
