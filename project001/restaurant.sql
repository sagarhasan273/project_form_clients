-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 12:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `itemNo` int(3) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `Price` int(4) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`itemNo`, `itemName`, `Price`, `Type`) VALUES
(1, 'SHAHI PANEER', 500, 'MEAL'),
(2, 'CHOCOLATE FONDUE', 200, 'MEAL'),
(3, 'MANCHOW SOUP', 400, 'MEAL'),
(4, 'PANEER MANCHURIAN', 350, 'MEAL'),
(5, 'PIRI-PIRI CHICKEN', 600, 'MEAL'),
(6, 'PINA-COLADA', 250, 'DRINK'),
(7, 'ARIZONA TEA', 150, 'DRINK'),
(8, 'CAPPUCCINO', 180, 'DRINK'),
(9, 'ESPRESSO', 250, 'DRINK'),
(10, 'MELON JUICE', 100, 'DRINK'),
(11, 'Bitter Lemon', 120, 'DRINK'),
(12, 'Ginger Ale', 150, 'DRINK'),
(13, 'Tonic Water', 120, 'DRINK'),
(14, 'Coca Cola Light', 100, 'DRINK'),
(15, 'Fanta', 100, 'DRINK'),
(16, 'Sprite', 100, 'DRINK'),
(17, 'Nestea Lemon', 130, 'DRINK'),
(18, 'Nestea Peach', 120, 'DRINK'),
(19, 'Bonaqua Sparkling', 130, 'DRINK'),
(20, 'Espresso', 120, 'DRINK'),
(21, 'Cappuccino', 150, 'DRINK'),
(22, 'Black Coffee', 150, 'DRINK'),
(23, 'Hot Chocolate', 150, 'DRINK'),
(24, 'Cappy Apple', 120, 'DRINK'),
(25, 'Cappy Orange', 120, 'DRINK'),
(26, 'Chicken Strip Basket', 400, 'MEAL'),
(27, 'Panera Soup', 350, 'MEAL'),
(28, 'Thickburger', 400, 'MEAL'),
(29, ' Filet-O-Fish Sandwi', 350, 'MEAL'),
(30, 'Crispy Chicken', 250, 'MEAL'),
(31, 'Wisconsin Cheese Cur', 550, 'MEAL'),
(32, 'Five Guys Fries', 500, 'MEAL'),
(33, 'Baked Potato', 500, 'MEAL'),
(34, 'Two-Piece Fish', 500, 'MEAL'),
(35, 'Burger King Chicken ', 500, 'MEAL'),
(36, 'KFC Popcorn Chicken ', 600, 'MEAL'),
(37, 'Munchkins', 500, 'MEAL'),
(38, 'Subway Cookies', 800, 'MEAL'),
(39, 'Baked Apple Pie', 200, 'MEAL'),
(40, 'Starbucks Macchiato', 800, 'DRINK'),
(41, 'KFC Mashed Potatoes ', 700, 'MEAL'),
(42, 'SmokeShack Burger', 400, 'MEAL'),
(43, 'Burger King French F', 300, 'MEAL'),
(44, 'Bacon Ranch Melt', 500, 'MEAL'),
(45, 'Chicken Nuggets', 300, 'MEAL'),
(46, 'Chalupa Supreme', 200, 'MEAL'),
(47, 'Hash Browns', 400, 'MEAL'),
(48, 'Panera Flatbreads', 700, 'MEAL'),
(49, 'Whataburger', 600, 'MEAL'),
(50, 'Egg McMuffin', 500, 'MEAL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`itemNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `itemNo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
