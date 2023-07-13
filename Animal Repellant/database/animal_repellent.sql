-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2022 at 09:26 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `animal_repellent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `mobile`) VALUES
('admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `animal_detect`
--

CREATE TABLE `animal_detect` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `animal` varchar(20) NOT NULL,
  `image_name` varchar(40) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal_detect`
--

INSERT INTO `animal_detect` (`id`, `user`, `animal`, `image_name`, `dtime`) VALUES
(1, 'suresh', 'Sheep', 'c_49.jpg', '2022-04-26 14:27:52'),
(2, 'suresh', 'Goat', 'c_74.jpg', '2022-04-26 14:28:11'),
(3, 'suresh', 'Bear', 'c_2.jpg', '2022-04-26 14:28:53'),
(4, 'suresh', 'Bear', 'c_14.jpg', '2022-05-09 14:52:50'),
(5, 'suresh', 'Cow', 'c_30.jpeg', '2022-05-09 14:53:08'),
(6, 'suresh', 'Bear', 'c_1.jpg', '2022-05-09 14:53:36'),
(7, 'suresh', 'Sheep', 'c_8.jpg', '2022-05-09 14:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `animal_info`
--

CREATE TABLE `animal_info` (
  `id` int(11) NOT NULL,
  `animal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal_info`
--

INSERT INTO `animal_info` (`id`, `animal`) VALUES
(1, 'Bear'),
(2, 'Horse'),
(3, 'Cow'),
(4, 'Elephant'),
(5, 'Goat'),
(6, 'Pig'),
(7, 'Sheep');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(50) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `name`, `mobile`, `email`, `location`, `uname`, `pass`) VALUES
(1, 'Suresh', 9976570006, 'suresh@gmail.com', 'Chennai', 'suresh', '1234'),
(2, 'vijay', 6383436185, 'vijayaragavanvijay2001@gmail.com', 'karur', 'vijayrak', '12345');
