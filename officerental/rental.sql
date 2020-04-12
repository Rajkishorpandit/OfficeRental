-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 11:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--
CREATE DATABASE IF NOT EXISTS `rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ufname` varchar(25) NOT NULL,
  `ulname` varchar(25) NOT NULL,
  `username` varchar(255) NOT NULL,
  `umail` varchar(35) NOT NULL,
  `ucontact` bigint(12) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  `upass` varchar(20) NOT NULL COMMENT 'Must be a combination of letters, numbers and symbols',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_contact_idx` (`ucontact`),
  KEY `user_fname_idx` (`ufname`),
  KEY `user_lname_idx` (`ulname`),
  KEY `user_type_idx` (`utype`),
  KEY `username_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `user`
--

TRUNCATE TABLE `user`;
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `ufname`, `ulname`, `username`, `umail`, `ucontact`, `utype`, `upass`) VALUES
(1, 'S', 'chaitra', 'chaitrasss', 'chaitra@gmail.com', 8971055072, NULL, 'chaitra'),
(13, 'manu', 'v', 'manu', 'manu@g.c', 0, NULL, 'd41d8cd98f00b204e980'),
(27, 'hhfh', 'fjfgj', 'dfgdfgdf', 'dfgdfg', NULL, NULL, 'fdgdfg'),
(28, 'fdgdfg12', 'fdgdfg', 'fgfdg', 'hgfhgfh@hfhfhgf.com', NULL, NULL, 'd41d8cd98f00b204e980'),
(29, 'jhgjgj', 'gjgjgj', 'gjgjgjgjg', 'jgjjgjJ@Gjhgjh.com', NULL, NULL, 'd41d8cd98f00b204e980'),
(30, 'chaitra', 's', 'ss', 'schaitra@gmail.com', NULL, '<br />\r\n<b>Notice</b', '698d51a19d8a121ce581'),
(31, 'dada', 'daddad', 'dada', 'dada@g.c', NULL, 'rentee', 'b01abf84324066bdb4ee'),
(33, 'chaitra', 's', 'ddd', 'dd@g.com', 1112344, 'rentee', '698d51a19d8a121ce581');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
