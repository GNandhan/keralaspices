-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 06:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keralaspices`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Ajith', 'keralaadmin2245@gmail.com', 'keralaadmin2245@'),
(2, 'abin', 'abin123@gmail.com', 'abin123!@#');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`) VALUES
(1, 'Flours', 'Flours.jpg'),
(2, 'Oils', 'Oils.jpg'),
(3, 'Pickles', 'Pickles.jpg'),
(4, 'Pulses', 'Pulses.jpg'),
(5, 'Spices', 'Spices.jpg'),
(6, 'Jams & Juice', 'Jams & Juice.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_gender` varchar(10) NOT NULL,
  `cust_dob` date NOT NULL,
  `cust_no` bigint(100) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_city` varchar(50) NOT NULL,
  `cust_landmark` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`cust_id`, `cust_name`, `cust_gender`, `cust_dob`, `cust_no`, `cust_address`, `cust_city`, `cust_landmark`, `cust_state`, `cust_zip`, `cust_email`, `cust_pass`) VALUES
(1, 'Abhirami', 'Male', '2023-03-01', 8113846443, '1234 NW Mahatma Lane, vaikom, 686141', 'vaikom', '', 'kerala', '686141', 'abhi123@gmail.com', 'abhi123@'),
(2, 'Alex  paul', 'Male', '2023-03-09', 9747206280, 'kizhakkekara po thrissur', 'thrissur', '', 'kerala', '657845', 'alexpaul12@gmail.com', 'alexpaul12'),
(3, 'Gowrinandhan S', 'male', '2023-09-15', 9446109999, 'Mannathiparayil House Ottalloor PO Karimkunnam', 'Thodupuzha', '', 'kerala', '685586', 'gowrinandhan95@gmail.com', 'Gow123$'),
(4, 'abin1', 'male', '2023-09-01', 9496288962, 'abinpoda patty', 'ernakulam', 'near shenoys', 'kerala', '685586', 'abhin1@gmail.com', 'abin@2123');

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

CREATE TABLE `c_order` (
  `order_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_no` int(20) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_quantity` int(10) NOT NULL,
  `pro_price` varchar(10) NOT NULL,
  `total_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_price` varchar(10) NOT NULL,
  `pro_quantity` int(10) NOT NULL,
  `pro_description` varchar(100) NOT NULL,
  `pro_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `cat_id`, `cat_name`, `pro_name`, `pro_price`, `pro_quantity`, `pro_description`, `pro_image`) VALUES
(3, 3, 'fruits', 'poda  makkachi', '62', 33, 'wedewdewdewdedewd', 'poda  makkachi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `c_order`
--
ALTER TABLE `c_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `c_order`
--
ALTER TABLE `c_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
