-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 04:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL,
  `c_first_name` varchar(100) DEFAULT NULL,
  `c_last_name` varchar(100) DEFAULT NULL,
  `c_aadhar_no` int(11) DEFAULT NULL,
  `c_room_no` int(11) DEFAULT NULL,
  `c_booked_days` int(11) DEFAULT NULL,
  `c_balance_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `c_first_name`, `c_last_name`, `c_aadhar_no`, `c_room_no`, `c_booked_days`, `c_balance_amt`) VALUES
(1, 'Tim', 'Cook', 3011, 301, 4, 0),
(2, 'Ram', 'Bhai', 1001, 301, 2, 0),
(3, 'Tim', 'Cook', 3011, 301, 6, 0),
(4, 'Tim', 'Cook', 3011, 401, 3, 0),
(5, 'Ramesh', 'Dubey', 5005, 202, 6, 0),
(6, 'Fin', 'Pratt', 6006, 402, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `f_id` int(11) NOT NULL,
  `f_item` varchar(100) DEFAULT NULL,
  `f_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`f_id`, `f_item`, `f_price`) VALUES
(1, 'Veg Biryani', 200),
(2, 'Chicken Biryani', 250),
(3, 'Veg Thali', 150),
(4, 'Chicken Thali', 180),
(5, 'Masala Dosa', 110),
(6, 'Sada Dosa', 80),
(7, 'Palak Paneer', 160),
(8, 'Plain Roti', 25);

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `oid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `fprice` int(11) DEFAULT NULL,
  `fqty` int(11) DEFAULT NULL,
  `ftotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `r_no` int(11) NOT NULL,
  `r_details` varchar(50) DEFAULT NULL,
  `r_price` int(11) DEFAULT NULL,
  `r_availability` varchar(15) DEFAULT NULL,
  `c_aadhar_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`r_no`, `r_details`, `r_price`, `r_availability`, `c_aadhar_no`) VALUES
(101, 'SINGLE Room without AC', 1000, 'Available', NULL),
(102, 'SINGLE Room with AC', 1500, 'Available', NULL),
(201, 'DOUBLE Room without AC', 2000, 'Available', NULL),
(202, 'DOUBLE Room with AC', 2500, 'Available', NULL),
(301, 'TRIPLE Room without AC', 3000, 'Available', NULL),
(302, 'TRIPLE Room with AC', 3500, 'Available', NULL),
(401, 'QUAD Room without AC', 4000, 'Available', NULL),
(402, 'QUAD Room with AC', 4500, 'Available', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`r_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
