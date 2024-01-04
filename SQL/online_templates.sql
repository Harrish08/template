-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 01:38 PM
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
-- Database: `online_templates`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 02:06:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 12:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `tmp_name` varchar(50) NOT NULL,
  `img` varchar(222) NOT NULL,
  `myfile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `tmp_name`, `img`, `myfile`) VALUES
(30, 35, 'Advertsing', 'ad posters are typically designed to have a “wow factor”', 'ad', '6447ba99bb6f4.jpeg', 'adver.jpeg'),
(35, 35, 'Movie Posters', 'Movie posters are designed to contain as many elements from the film as possible', 'Movie', '6447ab363b6f9.jpeg', 'movie.jpg'),
(36, 38, 'Modern Resume', 'Modern templates make the resume looks neat ', 'Modern', '64479778dd960.jpeg', 'modern.jpeg'),
(37, 38, 'Professional Template', 'Professional templates make the interview easier.', 'Prof', '644797cd7d45e.jpg', 'prof.jpg'),
(38, 38, 'Simple Resume', 'Freshers can use these templates', 'Simple', '6447982a2cb29.jpeg', 'basic.jpeg'),
(39, 38, 'Creative Resume', 'Best presentation', 'creative', '6447989591c86.jpg', 'creative.jpg'),
(40, 37, 'Music Template', 'Make your presentation pop with animations, music, and videos', 'music', '64479cf5a2d21.jpeg', 'Music.pptx'),
(41, 37, 'Science', 'These biology thesis slides have everything you need to spotlight your research and share your results with your thesis committee.', 'science', '64479f3211e56.jpeg', 'science.pptx'),
(42, 36, 'OD Format', 'Od letter ', 'Od ', '6447b194ce61f.jpg', 'od.jpg'),
(43, 36, 'Resignation ', 'Resignation letter ', 'resignation', '6447b1f321600.jpg', 'resig.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `o_id`, `status`, `remark`, `remarkDate`) VALUES
(79, 42, 42, 'confirmed', 'confrimed', '2023-03-20 12:03:35'),
(81, 43, 43, 'confirmed', 'Delivery confirmed', '2023-03-20 12:35:52'),
(82, 45, 45, 'out for delivery', 'Delivered', '2023-03-21 05:47:55'),
(84, 46, 46, 'confirmed', 'Delivery confirmed', '2023-03-21 05:49:55'),
(85, 47, 47, 'in process', 'process', '2023-03-21 06:33:55'),
(86, 48, 48, 'in process', 'PROCESSING', '2023-03-21 06:59:21'),
(87, 50, 50, 'out for delivery', 'delivered', '2023-03-21 07:31:35'),
(88, 51, 51, 'cancel', 'too long', '2023-03-21 07:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Hari Burger', 'HariBurger@gmail.com', ' 090412 64676', 'HariBurger.com', '7am', '4pm', 'mon-tue', ' Palace,   natwar jalandhar', '5ad74ce37c383.jpg', '2018-04-18 08:19:23'),
(49, 5, 'The Great Kabab Factory', 'kwbab@gmail.com', '011 2677 9070', 'kwbab.com', '6am', '5pm', 'mon-fri', 'Radisson Blu Plaza Hotel, Delhi Airport, NH-8, New Delhi, 110037', '5ad74de005016.jpg', '2018-04-18 08:23:36'),
(50, 6, 'Aarkay Vaishno Dhaba', 'Vaishno@gmail.com', '090410 35147', 'Vaishno.com', '6am', '6pm', 'mon-sat', 'Bhargav Nagar, Jalandhar - Nakodar Rd, Jalandhar, Punjab 144003', '5ad74e5310ae4.jpg', '2018-04-18 08:25:31'),
(51, 7, 'Martini', 'martin@gmail.com', '3454345654', 'martin.com', '8am', '4pm', 'mon-thu', '399 L Near Apple Showroom, Model Town,', '5ad74ebf1d103.jpg', '2018-04-18 08:27:19'),
(52, 8, 'hudson', 'hud@gmail.com', '2345434567', 'hudson.com', '6am', '7pm', 'mon-fri', 'Opposite Lovely Sweets, Nakodar Road, Jalandhar, Punjab 144001', '5ad756f1429e3.jpg', '2018-04-18 09:02:17'),
(53, 9, 'kriyana store', 'kari@gmail.com', '4512545784', 'kari.com', '7am', '7pm', 'mon-sat', 'near kalu gali hotel india what everrrr.', '5ad79e7d01c5a.jpg', '2018-04-18 14:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `img` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `img`, `date`) VALUES
(35, 'Posters ', '6443768ba91e8.jpeg', '2023-04-22 05:54:19'),
(36, 'Letter Templates', '64437720c7361.jpeg', '2023-04-22 05:56:48'),
(37, 'PowerPoint Templates', '644792f7c4cab.jpeg', '2023-04-25 08:44:39'),
(38, 'Resume', '644793abe36af.jpeg', '2023-04-25 08:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(31, 'navjot789', 'navjot', 'singh', 'ns949405@gmail.com', '9041240385', '6d0361d5777656072438f6e314a852bc', 'badri col phase 2', 1, '2018-04-18 04:35:03'),
(32, 'navjot890', 'nav', 'singh', 'nds949405@gmail.com', '6232125458', '6d0361d5777656072438f6e314a852bc', 'badri col phase 1', 1, '2018-04-18 04:20:56'),
(33, 'ganesh', 'ganesan', 'm', 'ganesh@gmail.com', '9845963931', 'e10adc3949ba59abbe56e057f20f883e', 'hopes,\r\ncbe', 1, '2023-03-13 11:02:58'),
(34, 'User', 'User', '1', 'User123@gmail.com', '7676757575', '5a30c9609b52fe348fb6925896e061de', 'cbe', 1, '2023-03-20 06:58:10'),
(35, 'san', 'Santhiya', 'M', '21pcs11@srcw.ac.in', '07487348483', 'f38fbdc0bf3d10475a9e9498f2e3185f', 'salem', 1, '2023-04-25 10:46:40'),
(36, 'Ram', 'Ram', 'User', 'ram@gmail.com', '8768688768', '9eeaf04ead83d91063237f9e99d4caee', 'cbe', 1, '2023-04-25 11:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(41, 33, 'Hard Rock Cafe', 2, '22.12', 'in process', '2023-03-13 15:02:32'),
(42, 34, 'Chicken rice', 1, '850.00', 'out for delivery', '2023-03-20 12:03:47'),
(43, 34, 'Chicken rice', 1, '850.00', 'confirmed', '2023-03-20 12:35:52'),
(45, 34, 'Veg Noodles', 1, '200.00', 'out for delivery', '2023-03-21 05:47:55'),
(47, 34, 'Veg Noodles', 1, '200.00', 'in process', '2023-03-21 06:33:55'),
(48, 34, 'Veg Noodles', 1, '200.00', 'in process', '2023-03-21 06:59:21'),
(49, 34, 'Veg Noodles', 1, '200.00', NULL, '2023-03-21 06:45:49'),
(50, 34, 'Veg Noodles', 2, '200.00', 'out for delivery', '2023-03-21 07:31:35'),
(51, 34, 'Veg Noodles', 2, '200.00', 'cancel', '2023-03-21 07:32:33'),
(52, 34, 'Veg Noodles', 2, '200.00', NULL, '2023-03-21 06:57:05'),
(53, 34, 'Veg Noodles', 2, '200.00', NULL, '2023-03-21 07:31:15'),
(54, 34, 'Kung Pao Chicken', 1, '260.00', NULL, '2023-03-21 07:31:15'),
(55, 34, 'Kung Pao Chicken', 1, '260.00', NULL, '2023-03-21 10:25:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
