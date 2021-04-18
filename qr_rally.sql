-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_rally`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `eventId` int(11) NOT NULL,
  `eventTitle` varchar(250) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 17:01:44'),
(2, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 17:02:26'),
(3, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 17:06:47'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 17:07:13'),
(5, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 17:17:47'),
(6, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-02 21:36:31'),
(7, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 08:38:56'),
(8, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 08:59:49'),
(9, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 09:09:41'),
(10, 4, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 09:15:24'),
(11, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 09:32:07'),
(12, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 14:19:44'),
(13, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 15:17:54'),
(14, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 15:27:37'),
(15, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 15:41:21'),
(16, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 16:27:36'),
(17, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Mobile Safari/537.36', 'Android', '2021-04-04 16:32:43'),
(18, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 16:45:50'),
(19, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-04 16:51:52'),
(20, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 08:55:25'),
(21, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 09:03:46'),
(22, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 17:18:36'),
(23, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 17:20:05'),
(24, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 22:07:20'),
(25, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 22:11:48'),
(26, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 22:35:13'),
(27, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-05 22:43:31'),
(28, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-06 08:37:17'),
(29, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-06 10:15:50'),
(30, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-06 15:30:51'),
(31, 4, '{\"role\":\"1\",\"roleText\":\"\\u30b7\\u30b9\\u30c6\\u30e0\\u7ba1\\u7406\\u8005\",\"name\":\"Katsumoto Hideo\"}', '::1', 'Chrome 89.0.4389.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'Windows 10', '2021-04-07 08:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'kastumoto1019@gmail.com', 'dTsi4pekIo8faCB', 'Chrome 89.0.4389.114', '::1', 0, 1, '2021-04-04 09:58:44', NULL, NULL),
(2, 'kastumoto1019@gmail.com', 'i53ULJOx8MIpPhC', 'Chrome 89.0.4389.114', '::1', 0, 1, '2021-04-04 09:59:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'システム管理者'),
(2, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'システム管理者', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 2, '2021-04-02 10:06:04'),
(10, 'aaa@aaa.com', '$2y$10$6s4FdYx5rowA8q4GYiyUyeQ3fAbeL5iUjMXQxJlv6B2rzZ93NQcOC', 'Aaa', '1111111111', 2, 0, 4, '2021-04-04 08:13:04', NULL, NULL),
(4, 'kastumoto1019@gmail.com', '$2y$10$l.VzRcYI953xGk3FpA1eDeb/OfmkZoiUbswIIHEIJSbRfGOSgYgpK', 'Katsumoto Hideo', '1234567890', 1, 0, 0, '2021-04-02 10:16:34', NULL, NULL),
(11, 'bbb@bbb.com', '$2y$10$2yVg/IEA4ZUpmThOsd8whey22juUQ13JSk2eAkxH5mJFcBIduAVMO', 'Bbb', '2222222222', 2, 0, 4, '2021-04-04 08:13:22', NULL, NULL),
(12, 'ccc@ccc.com', '$2y$10$qD6W..NdDF2Dk2xO6gtBmOBj1RSjQzQhxgTfVb3Jmk6jiRJ11jHVi', 'Ccc', '3333333333', 2, 0, 4, '2021-04-04 08:13:42', NULL, NULL),
(13, 'ddd@ccc.com', '$2y$10$WXuSvs84QoVbs4AYY1/nguxvAD9iWV/rlWjFO/A8zm3qy70qNQCte', 'Ddd', '3333333333', 2, 0, 4, '2021-04-04 08:14:05', NULL, NULL),
(14, 'eee@eee.com', '$2y$10$e8RAytljZ3gAqjiijdwkteNyWcjqL0HG6tV2PNNkBCPC3QAlCOLiS', 'Eee', '3333333333', 2, 0, 4, '2021-04-04 08:14:21', NULL, NULL),
(15, 'fff@ccc.com', '$2y$10$/7ZaN2UyYtTm0N6PnUWuqeHm8LHSfFeyUqE21m2rbpKCoiFygWcWm', 'Ffffcc', '1234567890', 2, 0, 4, '2021-04-04 08:14:47', NULL, NULL),
(16, 'ggg@ccc.com', '$2y$10$emmJI0S7RSI6moE6fmavrOAqJFvFjY2OZ3Kfj2lQRr2TCkDgbDuNu', 'Ggg', '3333333333', 2, 0, 4, '2021-04-04 08:14:59', NULL, NULL),
(17, 'hhh@ccc.com', '$2y$10$zEzKYXC1iulAMfZS.zaZr.Sj5Fs6fRGDsg65Rx1CXeVDY4Y6LlOHq', 'Hhh', '', 2, 0, 4, '2021-04-04 08:41:56', NULL, NULL),
(18, 'iii@ccc.com', '$2y$10$NUJkJ8Rzbx95wJNhLlIRBexAp7OBykXojDC1c8aKlxd8UkIf2iiUe', 'Iii', '', 2, 0, 4, '2021-04-04 08:42:11', NULL, NULL),
(19, 'jjj@ccc.com', '$2y$10$TwJtOzAt/B7NnEG.RnTTsePvSAypUWo1bx7rJPfSr9Y64Fe.MWqIW', 'Jjj', '', 2, 1, 4, '2021-04-04 08:42:22', 4, '2021-04-05 02:04:06'),
(20, 'uuu@ccc.com', '$2y$10$kEMA/u9Pw3lRFqHtb7t7puywK2dsSJdQhssVDuFD1KqYce/W2AEOG', 'Á?うう', '', 2, 1, 4, '2021-04-04 08:51:44', 4, '2021-04-05 02:03:53'),
(21, 'qqq@ggg.com', '$2y$10$EQ8BQdFgbYMlURQYrFRm6uvB1EhiFdlTyjorq/74mzmfZlfPROjCS', 'Qqq', '', 2, 0, 4, '2021-04-04 08:54:32', 4, '2021-04-04 09:29:35'),
(22, 'ttt@ccc.com', '$2y$10$8nWYshiWjnw3C3S/BU4.yeVKiscIfMdcHQoGgE8bb1tHBy1SPtwD2', 'Ttt', '', 2, 0, 4, '2021-04-04 09:26:19', 4, '2021-04-04 09:46:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`eventId`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `eventId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
