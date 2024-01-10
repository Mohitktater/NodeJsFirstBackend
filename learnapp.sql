-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2024 at 07:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `date_of_manufacturing` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL COMMENT '0= not deleted, 1= deleted',
  `date_of_expiry` date DEFAULT NULL,
  `hsn_number` varchar(225) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `price` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `date_of_manufacturing`, `description`, `is_deleted`, `date_of_expiry`, `hsn_number`, `dealer_id`, `category_id`, `bill_date`, `price`) VALUES
(1, 'test', NULL, 'efewfewf', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'test2', NULL, 'this is description for test 1', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'test 2', NULL, 'This is description for test 2', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Test 3', NULL, 'This is description for test 3', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Test 4', NULL, 'This is description for test 4', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'test4', NULL, 'this is description for test 4', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Test 5', NULL, 'This is description for test 5', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'rgew', NULL, 'egew', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bergge', NULL, 'gerge rg erg erg er g', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'title', NULL, 'THIS IS TEST PRODUCT', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'wefbwjeb', NULL, 'FVBMEW FHJEW C', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'kjdfbwekj', NULL, 'EWFMEWFM EWFWEF EW FW M', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ejgbejkr', '2023-12-30', 'kdbvmew fenmwb', 0, '2023-12-31', 'BKJDFBVKJEB7', 2, 2, '2023-12-31', NULL),
(14, 'dfhwiue', '2023-12-31', 'dwbfjew fwejhfbewnf wenf wen f wef ew', 0, '2023-12-30', 'BEJB68768BDSJ', 2, 2, '2023-01-01', '576'),
(15, 'weygfwe', '2023-12-30', 'this is last update again', 1, '2023-12-31', 'HVJVHJ7898', 2, 3, '2023-12-22', '5765'),
(16, 'last', '2023-01-31', 'test', 1, '2023-12-31', 'vbhjjhvbj', 2, 2, '2023-12-13', '7676'),
(17, 'fgjhgvhjdv', '2024-02-02', 'vhjvjhvj', 1, '2024-02-02', '', 3, 2, '2024-01-17', '46546');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `published`) VALUES
(1, NULL, NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(225) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `first_name` varchar(225) DEFAULT NULL,
  `last_name` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `ref_person` varchar(225) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `tc_status` tinyint(1) DEFAULT NULL,
  `otp` varchar(225) DEFAULT NULL,
  `otp_created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `token`, `first_name`, `last_name`, `email`, `password`, `address`, `ref_person`, `date_of_birth`, `city`, `image`, `tc_status`, `otp`, `otp_created_at`, `is_deleted`) VALUES
(1, NULL, NULL, 'first name', 'last name', 'mohit@test.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, 'test first ', 'test last', 'test@test.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, NULL, 'fkwjnfe', 'webfjewb', 'abc@abc.com', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, NULL, NULL, 'gebj', 'jbejhbwj', 'test1@test.com', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, NULL, NULL, 'first name test', 'last name test', 'firstlast@test.com', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, NULL, NULL, 'test agin', 'last name', 'testagain@test.com', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, NULL, NULL, 'gueg', 'jdbvj', 'test5@test.com', 'undefined', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
