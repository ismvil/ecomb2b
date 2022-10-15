-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2017 at 04:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edgedata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_username` varchar(500) NOT NULL DEFAULT '',
  `admin_password` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(5000) NOT NULL DEFAULT '',
  `item_price` double DEFAULT NULL,
  `item_image` varchar(5000) NOT NULL DEFAULT '',
  `item_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_image`, `item_date`) VALUES
(5, 'Iphone 5', 2500, '88558.jpg', '2016-11-10'),
(6, 'Iphone 6', 3000, '839455.jpg', '2016-11-10'),
(7, 'Iphone 6s', 3300, '53651.jpg', '2016-11-10'),
(8, 'Iphone 7', 3700, '512573.jpg', '2016-11-10'),
(9, 'Iphone 7 plus', 4000, '506994.jpg', '2016-11-10'),
(11, 'Samsung S7', 3200, '382759.jpg', '2016-11-10'),
(12, 'Samsung S6', 2000, '56151.png', '2016-11-14'),
(13, 'Samsung S5', 1500, '570133.jpg', '2016-11-14'),
(14, 'Sony z5 Premium', 3000, '624247.jpg', '2016-11-14'),
(15, 'Sony C3 dual', 1000, '753848.jpg', '2016-11-14'),
(16, 'Vinsic Tulip Power Bank 500mh', 2.99, '296907.jpg', '2017-04-12'),
(17, 'OLALA Power Bank 2000mh', 150, '257426.jpg', '2017-04-12'),
(18, 'Iphone 6 + Power bank 2000mh', 3000, '808542.jpg', '2017-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_name` varchar(1000) NOT NULL DEFAULT '',
  `order_price` double NOT NULL DEFAULT '0',
  `order_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_total` double NOT NULL DEFAULT '0',
  `order_status` varchar(45) NOT NULL DEFAULT '',
  `order_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `user_id`, `order_name`, `order_price`, `order_quantity`, `order_total`, `order_status`, `order_date`) VALUES
(20, 4, 'Item2 ', 100, 2, 200, 'Ordered_Finished', '2016-11-14'),
(23, 4, 'Item2 ', 100, 3, 300, 'Ordered_Finished', '2016-11-14'),
(33, 6, 'Iphone 5', 2, 5, 10, 'Ordered', '2017-03-21'),
(34, 6, 'Iphone 5', 2, 1, 2, 'Ordered', '2017-03-21'),
(35, 6, 'Iphone 6s', 3300, 1, 3300, 'Ordered', '2017-03-28'),
(36, 6, 'Iphone 5', 2500, 2, 5000, 'Pending', '2017-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_firstname` varchar(1000) NOT NULL,
  `user_lastname` varchar(1000) NOT NULL,
  `user_address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_address`) VALUES
(1, 'gebb.freelancer@gmail.com', 'gebbz03', 'Gebb', 'Ebero', 'Badas'),
(3, 'gebb.sage@gmail.com', 'gebbz03', 'sdffs', 'adad', 'ssad'),
(4, 'mik@gmail.com', 'mik', 'Gebb', 'Ebero', 'Badas'),
(6, 'dogevil77@yahoo.com', 'gila77', 'ismail', 'ibrahim', '39 jalan remia 4'),
(7, 'hasif@gmail.com', '123456', 'hasif', 'hazlami', '88 jalan apa apa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_orderdetails_1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_orderdetails_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
