-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 02:25 PM
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
-- Database: `adbu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `dish_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` enum('Veg','Non-Veg') DEFAULT 'Veg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `dish_name`, `price`, `image_url`, `category`) VALUES
(1, 'fish thali ', 100.00, 'https://itsgoa.com/wp-content/uploads/2024/12/fish-thali.jpg', 'Non-Veg'),
(3, 'Special Tea', 30.00, 'https://i.ytimg.com/vi/Ze6m-gZg3Y4/maxresdefault.jpg', 'Veg'),
(4, 'chicken Thali', 120.00, 'https://tse3.mm.bing.net/th/id/OIP.NtTJw_s0hBusAH_LwRksXAHaFj?pid=Api&h=220&P=0', 'Non-Veg'),
(5, 'Masala Dosa', 80.00, 'https://tse4.mm.bing.net/th/id/OIP.BJwK1TGMGt8oxpDDN14FVwHaHa?pid=Api&h=220&P=0', 'Veg'),
(6, 'Chole bhature', 40.00, 'https://en-media.thebetterindia.com/uploads/2022/08/294156779_1082267416022212_8006411537588067133_n-1_11zon-1660981126.jpg', 'Veg'),
(9, 'Chicken Fried Rice', 60.00, 'https://tse1.mm.bing.net/th/id/OIP.w1Isbq1qTlB0RiIDWTRI0AHaHa?pid=Api&h=220&P=0', 'Non-Veg'),
(10, 'Mutton Curry', 100.00, 'https://www.licious.in/blog/wp-content/uploads/2020/12/Mutton-Curry.jpg', 'Non-Veg'),
(11, 'Veg Thali', 70.00, 'https://tse1.mm.bing.net/th/id/OIP.OM5I_cWOsvBMIKJrFYoDDgHaFp?pid=Api&h=220&P=0', 'Veg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `dish_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `dish_id`, `rating`, `comment`, `submitted_at`) VALUES
(1, 'arnesh', 1, 5, 'good', '2026-03-03 20:48:46'),
(2, 'arnesh', 3, 5, '', '2026-03-03 20:48:55'),
(3, 'arnesh', 4, 5, '', '2026-03-03 20:53:53'),
(4, 'arnesh', 3, 5, '', '2026-03-03 21:03:03'),
(5, 'arnesh', 4, 5, 'good', '2026-03-03 21:03:33'),
(6, 'arnesh', 5, 4, '', '2026-03-03 21:03:42'),
(7, 'arnesh', 5, 5, '', '2026-03-03 21:05:47'),
(8, 'admin', 6, 5, '', '2026-03-03 22:10:09'),
(9, 'admin', 6, 5, 'too good', '2026-03-03 22:10:36'),
(10, 'arnesh', 9, 5, 'It was really tasty', '2026-03-04 14:26:29'),
(11, 'Subha', 5, 4, 'Good', '2026-03-05 04:50:53'),
(12, 'parthiv01', 3, 4, '', '2026-03-05 05:06:23'),
(13, 'admin', 4, 5, '', '2026-03-05 05:13:13'),
(14, 'parthiv01', 10, 3, 'Average', '2026-03-05 13:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` enum('student','faculty','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'arnesh', 'adbu123', 'student'),
(2, 'subhasish', 'adbu123', 'student'),
(3, 'admin', 'admin12345', 'admin'),
(4, 'admin', 'admin12345', 'admin'),
(5, 'arnesh', 'adbu123', 'student'),
(6, 'arnesh', 'adbu123', 'student'),
(7, 'arne', 'adbu123', 'student'),
(8, 'vijaysir', 'adbu123', 'faculty'),
(9, 'Subha', 'adbu@123', 'student'),
(10, 'parthiv01', '123', 'student'),
(11, 'arneshsahu', 'adbu123', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
