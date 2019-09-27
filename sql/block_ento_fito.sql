-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2019 at 05:27 PM
-- Server version: 10.2.12-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sebaranEntoFito`
--

--
-- Dumping data for table `block_ento_fito`
--

INSERT INTO `block_ento_fito` (`id`, `block_detail_id`, `ento_fito_id`, `persentase`, `kerusakan`, `created`, `modified`) VALUES
(3, 1, 1, '5.82', 'Ringan', '2019-09-20 00:23:15', '0000-00-00 00:00:00'),
(4, 1, 2, '0.43', 'Ringan', '2019-09-20 00:23:26', '0000-00-00 00:00:00'),
(5, 1, 3, '0.16', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(6, 1, 4, '0.21', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(7, 2, 1, '5.00', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(8, 2, 2, '0.31', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(9, 3, 1, '37.63', 'Sedang', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(10, 3, 2, '31.44', 'Sedang', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(11, 3, 3, '5.41', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(12, 4, 1, '10.20', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(13, 4, 2, '0.77', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(14, 4, 3, '1.28', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(15, 5, 2, '20.00', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(16, 6, 1, '7.29', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(17, 6, 5, '0.35', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(18, 7, 1, '5.86', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(19, 7, 2, '0.43', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(20, 7, 4, '0.57', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(21, 7, 5, '3.00', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(22, 8, 1, '7.16', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(23, 8, 4, '0.52', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(24, 8, 5, '1.56', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(25, 9, 1, '5.17', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(26, 9, 4, '0.29', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(27, 9, 5, '0.43', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(28, 10, 1, '9.20', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(29, 10, 4, '0.69', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(30, 11, 1, '5.35', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(31, 11, 4, '2.52', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(32, 11, 5, '25.11', 'Sedang', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(33, 12, 1, '13.04', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(34, 12, 5, '32.61', 'Sedang', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(35, 13, 1, '28.38', 'Sedang', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(36, 13, 2, '0.14', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(37, 13, 3, '0.69', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(38, 13, 4, '4.95', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(39, 13, 5, '0.14', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(40, 14, 1, '9.30', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(41, 14, 2, '1.37', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(42, 15, 1, '22.83', 'Ringan', '2019-09-19 16:00:00', '0000-00-00 00:00:00'),
(43, 16, 1, '5.19', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(44, 17, 1, '5.22', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(45, 17, 2, '0.69', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(46, 17, 3, '0.27', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(47, 17, 4, '1.64', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(48, 18, 1, '5.74', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(49, 18, 2, '0.53', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(50, 18, 4, '0.43', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(51, 19, 1, '19.44', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(52, 19, 2, '9.87', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(53, 19, 3, '5.56', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(54, 19, 4, '8.64', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(55, 20, 1, '13.30', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(56, 20, 2, '8.87', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00'),
(57, 20, 3, '0.80', 'Ringan', '2019-09-26 16:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;