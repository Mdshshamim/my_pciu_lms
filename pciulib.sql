-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 10:58 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pciulib`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `firstName`, `lastName`, `mobile`, `email`, `pic`) VALUES
(1, 'shshamim', 'shamim6', 'Sajjad', 'Hossan', '1782559399', 'Mdshshamim@yahoo.com', 'IMG_1490389195384.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(6) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `available` tinyint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `price`, `publisher`, `available`) VALUES
(1001, 'c programming', 'Julker Nayin', 250, 'Al-Hera', 10),
(1002, 'english', 'Shamim', 400, 'Al-Hera', 10),
(1003, 'Mohabisher Shuru theke', 'Sh Shamim', 150, 'Al-Hera', 5);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `bookId` int(4) NOT NULL,
  `issueId` int(3) NOT NULL,
  `issueDate` datetime NOT NULL,
  `returnBookId` int(4) NOT NULL,
  `returnId` int(3) NOT NULL,
  `returnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`bookId`, `issueId`, `issueDate`, `returnBookId`, `returnId`, `returnDate`) VALUES
(1002, 1, '2017-06-19 07:00:08', 0, 0, '0000-00-00 00:00:00'),
(1001, 11, '2018-11-14 01:24:57', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(3) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `position` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstName`, `lastName`, `username`, `pwd`, `position`, `mobile`, `email`, `pic`) VALUES
(1, 'Sakib', 'Ashraf', 'Sakib', '1234', 'Student', '01824221387', 'Ashraf@gmail.com', ''),
(2, 'MdRayhan', 'Hossan', 'Mdrayhan', '1234', 'Student', '01824221387', 'Mdrayhan@gmail.com', ''),
(3, 'Eshita', 'Chowdhury', 'Eshita', '1234', 'Faculty', '01824221387', 'Eshita@gmail.com', ''),
(4, 'Usman', 'Goni', 'Usman', '1234', 'Student', '01824221387', 'Usman@gmail.com', ''),
(5, 'Ratul', 'Dhay', 'Ratul', '1234', 'Student', '01824221387', 'Ratul@gmail.com', ''),
(6, 'Hossain', 'Alif', 'Alifhossain', '1234', 'Student', '01824221387', 'Alif@gmail.com', ''),
(7, 'Rayhan', 'Rimon', 'Rayhan', '1234', 'Student', '01824221387', 'Rimon@gmail.com', ''),
(8, 'Kazi', 'Shuvo', 'Shuvo', '1234', 'Faculty', '01824221387', 'Shuvo@gmail.com', ''),
(9, 'Hossain', 'Juwel', 'Juwel', '1234', 'Faculty', '01824221387', 'Juwel@gmail.com', ''),
(10, 'Afroz', 'Lithi', 'Afroz', '1234', 'Student', '01824221387', 'Afroz@gmail.com', ''),
(11, 'Sajjad', 'Hossan', 'Sajjad', '1234', 'Student', '01836614037', 'Mshamim949@gmail.com', ''),
(12, 'Hossain', 'Shamim', 'Shshamim', '1234', 'Student', '01824221387', 'Mshamim419@gmail.com', ''),
(13, 'Tasbir', 'Ahmed', 'Tasbir', '1234', 'Student', '01824221381', 'Tasbir@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `requestforbooks`
--

CREATE TABLE `requestforbooks` (
  `requestId` int(3) NOT NULL,
  `bookName` text NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `requestDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
