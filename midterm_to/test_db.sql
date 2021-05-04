-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 03:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acts`
--

CREATE TABLE `acts` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acts`
--

INSERT INTO `acts` (`id`, `username`, `activity`, `time`) VALUES
(4, 'maryjane', 'LogIn', '2021-04-19 20:42:11'),
(5, 'mary', 'LogIn', '2021-04-19 20:47:27'),
(6, 'jane', 'ChangePassword', '2021-04-19 21:00:08'),
(7, 'araza', 'LogIn', '2021-04-19 21:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `authent`
--

CREATE TABLE `authent` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authent`
--

INSERT INTO `authent` (`id`, `username`, `otp`) VALUES
(41, 'maryjane', 158977);

-- --------------------------------------------------------

--
-- Table structure for table `bopols`
--

CREATE TABLE `bopols` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `otp` int(10) NOT NULL,
  `curdate` varchar(50) NOT NULL,
  `endate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bopols`
--

INSERT INTO `bopols` (`id`, `username`, `otp`, `curdate`, `endate`) VALUES
(10, 'jane', 534886, '2021-04-19 19:09:40', '2021-04-19 19:14:40'),
(11, 'jane', 413217, '2021-04-19 20:35:33', '2021-04-19 20:40:33'),
(12, 'jane', 386533, '2021-04-19 20:42:06', '2021-04-19 20:47:06'),
(13, 'oops', 579967, '2021-04-19 20:47:17', '2021-04-19 20:52:17'),
(14, 'jane', 101276, '2021-04-19 21:04:18', '2021-04-19 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(41, 'jane', '@Jane1234', 'arazamary@gmail.com'),
(43, 'maryjane', '!Maryjane021399', 'me@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acts`
--
ALTER TABLE `acts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authent`
--
ALTER TABLE `authent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bopols`
--
ALTER TABLE `bopols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acts`
--
ALTER TABLE `acts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `authent`
--
ALTER TABLE `authent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bopols`
--
ALTER TABLE `bopols`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
