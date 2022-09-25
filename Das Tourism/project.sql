-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 05:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE IF NOT EXISTS `cost` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `days` text NOT NULL,
  `inclution` text NOT NULL,
  `exclution` text NOT NULL,
  `cost` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`id`, `name`, `days`, `inclution`, `exclution`, `cost`) VALUES
(1, 'Sundarban', '3 days, 2 night', 'Breakfast\r\n Lunch\r\n Dinner\r\n Airport/Railway Station Transfer\r\n Accommodation\r\n Parking/Toll/ Driver Bata/ Fuel cost\r\n Transfer Cab GST/VAT/ Service Charges\r\n Sightseeing & transfers by cab\r\n 02 Bottles of packaged drinking water per', 'Air/Train fare\r\n All entry tickets\r\n Early check-in & late checkout\r\n Tips, laundry & Phone Call\r\n Boating/ other activities\r\n Camera fee\r\n Alcoholic/Non-Alcoholic Beverages\r\n Travel Insurance\r\n Anything not mentioned in inclusions', 3000),
(2, 'nepal', '3 days, 2 night', ' Breakfast\r\n Lunch\r\n Dinner\r\n Airport/Railway Station Transfer\r\n Accommodation\r\n Parking/Toll/ Driver Bata/ Fuel cost\r\n Transfer Cab GST/VAT/ Service Charges\r\n Sightseeing & transfers by cab\r\n 02 Bottles of packaged drinking water per day', 'Air/Train fare\r\n All entry tickets\r\n Early check-in & late checkout\r\n Tips, laundry & Phone Call\r\n Boating/ other activities\r\n Camera fee\r\n Alcoholic/Non-Alcoholic Beverages\r\n Travel Insurance\r\n Anything not mentioned in inclusions', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `registration_two`
--

CREATE TABLE IF NOT EXISTS `registration_two` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` char(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phonecode` int(2) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `member` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `registration_two`
--

INSERT INTO `registration_two` (`id`, `username`, `password`, `gender`, `email`, `phonecode`, `phone`, `destination`, `member`) VALUES
(1, 'Ankish Das', '1234', 'm', 'a@gmail.com', 91, 9564173198, 'Sundarban', 5),
(2, 'nipa', '5678', 'f', 'nipa@gmail.com', 91, 8617383629, 'Nepal', 4),
(3, 'ram mondol', '231', 'm', 'ram@gmail.com', 91, 9874564789, 'Sundarban', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tour_itinerary`
--

CREATE TABLE IF NOT EXISTS `tour_itinerary` (
  `tour_id` int(4) NOT NULL,
  `id` int(4) NOT NULL,
  `station` varchar(20) NOT NULL,
  `itinerary` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_itinerary`
--

INSERT INTO `tour_itinerary` (`tour_id`, `id`, `station`, `itinerary`) VALUES
(2, 1, 'Sealdah', '	\r\nDep. Sealdah by any suitable train for Hasimara'),
(2, 2, 'Hasimara / Jaigaon', 'Arrv. Hasimara & Transfer hotel at Jaigaon. Stay at Jaigaon (Distance Approx 17 kms.)'),
(2, 3, 'Thimphu', 'Dep Jaigaon for Thimphu after Breakfast/Lunch. (177 Kms. Altitude-7875 ft). Stay at Thimphu'),
(2, 4, 'Thimphu', 'Dep. Thimphu after breakfast to Punakha Dzong (70 km from Thimpu), Pho Chhu & Mo Chhu River, Dochu-la Pass (10130 ft) Lunch will be served on the way. Back to Thimphu.'),
(2, 5, 'Paro', 'Dep. Thimphu after Breakfast for Paro. ( Approx 57 Kms. Altitude-7218 ft) Stay at Paro'),
(2, 6, 'Paro / Hasimara', 'Dep. Paro early in the morning after Breakfast for Hasimara (Approx Distance 150 kms) to avail any suitable train for Sealdaha'),
(1, 1, 'Kolkata', 'Departure Kolkata (1, C. R. Avenue, Kol-72) at 06:30 AM for Godkhali (Distance 88 kms. and 3/4 hours journey, Packed Breakfast will be served). After arrival at Godkhali Jetty we will proceed to avail'),
(1, 2, 'Sundarban', '	\r\nDep. early morning from resort/hotel for local sightseeing through boat (Sajnekhali to Donbanki. Lunch will be served on Boat). After sightseeing return to resort/hotel. Dinner and stay at hotel.'),
(1, 3, 'Sundarban / Kolkata', 'After breakfast we will proceed for Kolkata (Lunch will be served on Boat).');

-- --------------------------------------------------------

--
-- Table structure for table `tour_name_date`
--

CREATE TABLE IF NOT EXISTS `tour_name_date` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `days` int(2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tour_name_date`
--

INSERT INTO `tour_name_date` (`id`, `name`, `days`, `date`) VALUES
(1, 'Sundarban', 7, '2021-09-03'),
(2, 'Nepal', 8, '2021-09-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `date` (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(3, 45698, 'asim', '12569', '2021-09-16 07:00:00'),
(5, 81731120, 'nirmal', '4569', '2021-09-16 16:46:16'),
(6, 26922145, 'nipa', '123456', '2021-09-16 16:48:08'),
(7, 2310085196125, 'ajit', '456987', '2021-09-17 23:14:54'),
(8, 130508156, 'pan', '14789632', '2021-09-22 22:02:23'),
(9, 35862, 'arka', '123', '2021-09-22 23:30:23'),
(10, 1738309804789737, 'Ankish Das', '123', '2021-09-24 22:18:59'),
(11, 544082630572005, 'sangita', '123456789', '2021-11-21 04:22:21'),
(12, 890533, 'Amit', '9564', '2022-01-08 16:34:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
