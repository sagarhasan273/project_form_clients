-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 03:12 PM
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
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(7, 6, 'sagarhasan273', 30, 1, 30),
(8, 4, 'sagarhasan273', 40, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('sagar', 'sagar');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda'),
(26, 4, 'sagarhasan273', 'Sagar hasan', 8801744291433, 'redblood1050@gmail.com', 'redblood1050@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(12, 'Deshi', 'Deshi lassi'),
(13, 'Deshi', 'Deshi veg'),
(22, 'local food', 'fish kari'),
(23, 'local food', 'fish vorta'),
(24, 'local food', 'local fish'),
(25, 'rise', 'Dal Rice'),
(26, 'rise', 'basmoti'),
(27, 'rise', 'Dal Rice'),
(28, 'rise', 'miniket'),
(57, 'Dhakai', 'Kacchi Biriyani'),
(58, 'Dhakai', 'kebabs'),
(59, 'Dhakai', 'tikkas'),
(62, 'Dhakai', 'Lassi');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(4, 'Dhakai', 'Rajwadi Bateta', 'rajwadi bateta nu shak', 'bateta cut and fry in oil make a shak', 40, 'mimg/e7e0aa16c95cca7deae0e222e8794bb5.jpg'),
(6, 'Dhakai', 'Masala bhindi', 'masla bhindi nu shak', 'garam masala add in bhindi nu shak', 30, 'mimg/1bhindi.jpg'),
(7, 'Dhakai', 'Rajwadi Dhokli', 'rajwadi dhoki nu shak', 'dhokli fry in oil and fry in dal', 40, 'mimg/hqdefault.jpg'),
(8, 'Dhakai', 'Save Tameta', 'save tameta nu shak', 'save add a in tomato shak and fry', 30, 'mimg/save tameta.jpg'),
(9, 'Dhakai', 'Mag Masala', 'masala mag nu shak', 'masala add im mag shak ', 30, 'mimg/mag masala.jpg'),
(10, 'Dhakai', 'Chole Chana Masala', 'chole chana masala nu shak', 'chana fry in shak with masala', 30, 'mimg/chana-masala-recipe.jpg'),
(11, 'Dhakai', 'Adadni Dal', 'adad ni dal', 'adaa fry in dal with masala', 30, 'mimg/Kathiyawadi_Adal_Dal_.jpg'),
(12, 'Rajshahi', 'Bati', 'bati', 'rajsthani bati make by bhak', 30, 'mimg/bati.jpg'),
(13, 'Rajshahi', 'Dal', 'dal', 'dal make by tuver and alad', 30, 'mimg/dal-fry-recipe-1.jpg'),
(14, 'Rajshahi', 'Salad', 'salad', 'salad make by onion,tomato,beet,racket', 15, 'mimg/best-salad-7.jpg'),
(15, 'Rajshahi', 'Butter Milk', 'butter milk', 'butter milk make by dhorvu', 15, 'mimg/Masala-Chaas-Recipe.jpg'),
(16, 'Rajshahi', 'Ghee', 'ghee', 'ghee make by makahn', 15, 'mimg/260px-Butterschmalz-3.jpg'),
(17, 'Rajshahi', 'Papad', 'papad', 'papad make by adad and khichi', 15, 'mimg/papad.jpg'),
(18, 'tava', 'Rotli', 'rotli', 'rotli make by wheet lot', 20, 'mimg/rotli-2-960x1358.jpg'),
(19, 'tava', 'Ghee Rotli', 'ghwee rotli ', 'ghee add on rotli', 20, 'mimg/desi_ghee_roti-e1542006374654.jpg'),
(20, 'tava', 'Rotla', 'rotla', 'rotla make by bajra and makai lot', 20, 'mimg/rotla_dsc2818-(16)-9-186406.jpg'),
(21, 'tava', 'Bhakhari', 'bhakhari', 'bhakhari make by wheet lot', 20, 'mimg/jowar-bhakri-recipe-main-photo.jpg'),
(22, 'tava', 'Ghee Rotla', 'ghee rotla', 'ghee add in rotla', 20, 'mimg/blogger-image--689930619.jpg'),
(23, 'tava', 'Ghee Bhakhari', '20', 'ghee add on bhakhari', 20, 'mimg/Bhakri_1.jpg'),
(24, 'tava', 'Tava Paratha', 'tava paratha', 'paratha fry in tava', 20, 'mimg/Tawa_Paratha_Recipe-7956.jpg'),
(25, 'tava', 'Rotlanu Churmu', 'rotla nu churmu', 'churmu make by rotla', 20, 'mimg/rotla nu churmu.jpg'),
(26, 'tava', 'Bhakhari nu Churmu', 'bhakhari nu churmu', 'churmu make by bhakhari', 20, 'mimg/churma-step-by-step-recipe.webp'),
(27, 'tava', 'Dryfruit Churmu', 'drufruit churmu', 'dryfruit add in furmu', 20, 'mimg/rotla nu churmu.jpg'),
(28, 'tava', 'Vagharelo Rotlo Dry', 'vagharelo rotlo dry', 'rotlo dry in oil and fry', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(29, 'tava', 'Vagharelo Rotlo Dahi', 'vagahrelo rotlo dahi', 'dahi fry in rotlo', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(30, 'rise', 'Dal Rice', 'dal rice', 'rice add in dal', 30, 'mimg/DSC_0870.jpg'),
(31, 'rise', 'Kadhi-Khichadi', '25', 'khichadi add in kadhi', 25, 'mimg/kadhi khichadi.jpg'),
(32, 'rise', 'Vagharela Bhat', 'vagahrela bhat', 'bhat fry in oli ', 25, 'mimg/vagharela-bhaat-6.jpg'),
(33, 'rise', 'Rajwadi Khichadi', 'rajwadi khichadi', 'masala add in khichadi', 25, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(34, 'Shahi', 'Dal', 'jaydip', 'nathi', 1, 'mimg/chole bhature.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com'),
(6, 'sagarhasan273', '123', 'redblood1050@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'mitul', 'Exellent', 'best hotel oh gujarat'),
(6, 'minhaz', 'Exellent', 'abcdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
