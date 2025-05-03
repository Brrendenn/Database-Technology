-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 06:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aol_group06`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscategory`
--

CREATE TABLE `mscategory` (
  `store_primary_category` char(5) NOT NULL,
  `category_name` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mscategory`
--

INSERT INTO `mscategory` (`store_primary_category`, `category_name`) VALUES
('ST001', 'Restaurant'),
('ST002', 'Pharmacy'),
('ST003', 'Groceries'),
('ST004', 'Fashion'),
('ST005', 'Health & B'),
('ST006', 'Toys'),
('ST007', 'Jewelry');

-- --------------------------------------------------------

--
-- Table structure for table `msduration`
--

CREATE TABLE `msduration` (
  `duration_id` char(5) NOT NULL,
  `total_busy_dashers` int(10) DEFAULT NULL,
  `duration_to_customer` int(10) DEFAULT NULL,
  `actual_delivery_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msduration`
--

INSERT INTO `msduration` (`duration_id`, `total_busy_dashers`, `duration_to_customer`, `actual_delivery_time`) VALUES
('D001', 14, 861, '23:11:00'),
('D002', 2, 690, '22:33:00'),
('D003', 6, 289, '01:06:00'),
('D004', 6, 795, '04:35:00'),
('D005', 5, 205, '02:58:00'),
('D006', 1, 542, '01:38:00'),
('D007', 4, 789, '03:07:00'),
('D008', 9, 548, '05:33:00'),
('D009', 24, 212, '02:58:00'),
('D010', 13, 424, '00:26:00'),
('D011', 19, 344, '04:08:00'),
('D012', 17, 421, '02:11:00'),
('D013', 11, 901, '06:54:00'),
('D014', 21, 501, '03:28:00'),
('D015', 9, 344, '01:44:00'),
('D016', 25, 424, '02:43:00'),
('D017', 16, 344, '05:34:00'),
('D018', 18, 530, '03:04:00'),
('D019', 21, 434, '02:28:00'),
('D020', 16, 456, '02:29:00'),
('D021', 16, 298, '20:29:00'),
('D022', 21, 835, '21:09:00'),
('D023', 1, 186, '19:09:00'),
('D024', 112, 588, '02:35:00'),
('D025', 129, 795, '04:11:00'),
('D026', 119, 530, '03:54:00'),
('D027', 30, 86, '03:46:00'),
('D028', 15, 821, '05:11:00'),
('D029', 33, 179, '04:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `msitems`
--

CREATE TABLE `msitems` (
  `items_id` char(5) NOT NULL,
  `min_item_price` int(10) DEFAULT NULL,
  `max_item_price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msitems`
--

INSERT INTO `msitems` (`items_id`, `min_item_price`, `max_item_price`) VALUES
('IT001', 557, 1239),
('IT002', 1400, 1400),
('IT003', 1425, 1725),
('IT004', 1425, 2195),
('IT005', 820, 1604),
('IT006', 1200, 1500),
('IT007', 1200, 3900),
('IT008', 925, 1825),
('IT009', 1200, 1600);

-- --------------------------------------------------------

--
-- Table structure for table `msmarket`
--

CREATE TABLE `msmarket` (
  `market_id` char(5) NOT NULL,
  `total_onshift_dashers` int(10) DEFAULT NULL,
  `total_outstanding_orders` int(10) DEFAULT NULL,
  `duration_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msmarket`
--

INSERT INTO `msmarket` (`market_id`, `total_onshift_dashers`, `total_outstanding_orders`, `duration_id`) VALUES
('MA001', 33, 21, 'D001'),
('MA002', 1, 2, 'D002'),
('MA003', 8, 18, 'D003'),
('MA004', 5, 8, 'D004'),
('MA005', 5, 7, 'D005'),
('MA006', 4, 1, 'D006'),
('MA007', 6, 3, 'D007'),
('MA008', 4, 12, 'D008'),
('MA009', 24, 26, 'D009'),
('MA010', 12, 11, 'D010'),
('MA011', 19, 30, 'D011'),
('MA012', 21, 16, 'D012'),
('MA013', 8, 11, 'D013'),
('MA014', 22, 39, 'D014'),
('MA015', 16, 7, 'D015'),
('MA016', 27, 24, 'D016'),
('MA017', 13, 27, 'D017'),
('MA018', 21, 20, 'D018'),
('MA019', 22, 20, 'D019'),
('MA020', 16, 13, 'D020'),
('MA021', 16, 21, 'D021'),
('MA022', 21, 20, 'D022'),
('MA023', 5, 1, 'D023'),
('MA024', 117, 178, 'D024'),
('MA025', 130, 230, 'D025'),
('MA026', 121, 205, 'D026'),
('MA027', 34, 28, 'D027'),
('MA028', 18, 15, 'D028'),
('MA029', 33, 42, 'D029');

-- --------------------------------------------------------

--
-- Table structure for table `msorder`
--

CREATE TABLE `msorder` (
  `order_id` char(5) NOT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `order_protocol` int(10) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `subtotal` int(10) DEFAULT NULL,
  `market_id` char(5) NOT NULL,
  `store_primary_category` char(5) NOT NULL,
  `items_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscategory`
--
ALTER TABLE `mscategory`
  ADD PRIMARY KEY (`store_primary_category`);

--
-- Indexes for table `msduration`
--
ALTER TABLE `msduration`
  ADD PRIMARY KEY (`duration_id`);

--
-- Indexes for table `msitems`
--
ALTER TABLE `msitems`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `msmarket`
--
ALTER TABLE `msmarket`
  ADD PRIMARY KEY (`market_id`),
  ADD KEY `duration_id` (`duration_id`);

--
-- Indexes for table `msorder`
--
ALTER TABLE `msorder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `market_id` (`market_id`),
  ADD KEY `store_primary_category` (`store_primary_category`),
  ADD KEY `items_id` (`items_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msmarket`
--
ALTER TABLE `msmarket`
  ADD CONSTRAINT `msmarket_ibfk_1` FOREIGN KEY (`duration_id`) REFERENCES `msduration` (`duration_id`);

--
-- Constraints for table `msorder`
--
ALTER TABLE `msorder`
  ADD CONSTRAINT `msorder_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `msmarket` (`market_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `msorder_ibfk_2` FOREIGN KEY (`store_primary_category`) REFERENCES `mscategory` (`store_primary_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `msorder_ibfk_3` FOREIGN KEY (`items_id`) REFERENCES `msitems` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
