-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 04:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcampaign`
--

-- --------------------------------------------------------

--
-- Table structure for table `createcampaign`
--

CREATE TABLE `createcampaign` (
  `id` int(6) UNSIGNED NOT NULL,
  `cname` varchar(50) NOT NULL,
  `datefrom` varchar(12) NOT NULL,
  `dateto` varchar(12) NOT NULL,
  `tbudget` varchar(10) NOT NULL,
  `dbudget` varchar(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `username` varchar(30) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `editpreview`
--

CREATE TABLE `editpreview` (
  `id` int(3) UNSIGNED NOT NULL,
  `cname` varchar(25) NOT NULL,
  `datefrom` varchar(10) NOT NULL,
  `dateto` varchar(10) NOT NULL,
  `tbudget` varchar(10) NOT NULL,
  `dbudget` varchar(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `username` varchar(25) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `preview`
--

CREATE TABLE `preview` (
  `id` int(3) UNSIGNED NOT NULL,
  `cname` varchar(25) NOT NULL,
  `datefrom` varchar(15) NOT NULL,
  `dateto` varchar(15) NOT NULL,
  `tbudget` varchar(10) NOT NULL,
  `dbudget` varchar(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `username` varchar(25) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(3) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createcampaign`
--
ALTER TABLE `createcampaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editpreview`
--
ALTER TABLE `editpreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preview`
--
ALTER TABLE `preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createcampaign`
--
ALTER TABLE `createcampaign`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `editpreview`
--
ALTER TABLE `editpreview`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `preview`
--
ALTER TABLE `preview`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
