-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 10:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` char(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone_number` char(14) NOT NULL,
  `hire_date` date NOT NULL,
  `job_id` int(255) NOT NULL,
  `salary` int(255) NOT NULL,
  `commission_pct` decimal(10,0) NOT NULL,
  `manager_id` char(10) NOT NULL,
  `department_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `commission_pct`, `manager_id`, `department_id`) VALUES
('220', 'sultana', 'parveen', 'sultanaparveen30@gmail.com', '01945444430', '2022-07-10', 330, 30700, '7', '440', 550),
('221', 'Sabrina', 'hasan', 'Sabrinahasan@gmail.com', '01944444444', '2022-11-10', 331, 35000, '5', '441', 551),
('222', 'mahedi', 'hasan', 'mahedihasan@gmail.com', '01954444444', '2022-10-10', 332, 35000, '4', '442', 552),
('223', 'ali', 'hasan', 'alihasan@gmail.com', '01955444444', '2022-01-10', 333, 5000, '3', '443', 553),
('224', 'mitul', 'al', 'mitulal@gmail.com', '01945444444', '2022-01-10', 334, 3400, '4', '444', 554),
('225', 'disha', 'hasan', 'dishahasan@gmail.com', '01945544444', '2022-01-10', 335, 30000, '5', '445', 555),
('226', 'Sabrina', 'Rahman ', 'sabrinarahman@gmail.com', '01955444446', '2022-07-07', 336, 6000, '3', '446', 556),
('227', 'sultana', 'parveen', 'sultanaparveen@gmail.com', '01945444477', '2022-07-10', 337, 3700, '7', '447', 557),
('228', 'disha', 'Rahman', 'disharahman@gmail.com', '01945544888', '2022-08-08', 338, 38000, '5', '448', 558),
('229', 'Sabrina', 'Rahman', 'sabrinarahman01@gmail.com', '01955444999', '2022-09-07', 339, 9000, '3', '449', 559);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
