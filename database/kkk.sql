-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:44 PM
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
-- Database: `kkk`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `product_name`, `quantity`, `price`, `total`) VALUES
(1, '0', 'Chicken Skin', 1, 10.00, 10.00),
(2, '0', 'Chicken Skin', 10, 10.00, 100.00),
(3, NULL, 'Chicken Skin', 50, 10.00, 500.00),
(4, NULL, 'Chicken Skin', 20, 10.00, 200.00),
(7, 'aaron', 'Chicken Skin', 11, 10.00, 110.00),
(9, 'aaron', 'Chicken Skin', 50, 10.00, 500.00),
(13, 'aaron', 'Chicken Skin', 201, 10.00, 2010.00),
(16, 'dummy', 'Chicken Skin', 500, 10.00, 5000.00),
(51, 'jmjm', 'Proben', 1, 100.00, 100.00),
(52, 'jmjm', 'Atay', 1, 100.00, 100.00),
(53, 'jmjm', 'BBQ Laman', 1, 100.00, 100.00),
(54, 'AaronBien', 'Fries', 1, 100.00, 100.00),
(55, 'AaronBien', 'Kwek Kwek', 1, 100.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`) VALUES
(1, 'Chicken Skin', 100.00),
(4, 'Proben', 100.00),
(5, 'Kwek Kwek', 100.00),
(6, 'Kikiam', 100.00),
(7, 'Cheese Stick', 100.00),
(8, 'Fish Balls', 100.00),
(9, 'Squid Balls', 100.00),
(10, 'Fries', 100.00),
(11, 'Calamares', 100.00),
(12, 'Betamax', 100.00),
(13, 'Isaw Chicken', 100.00),
(14, 'Isaw Pork', 100.00),
(15, 'Tenga', 100.00),
(16, 'Adidas', 100.00),
(17, 'Helmet', 100.00),
(18, 'Balon-Balonan', 100.00),
(19, 'Atay', 100.00),
(20, 'BBQ Laman', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `lastName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `phoneNumber` int(12) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `lastName`, `firstName`, `middleName`, `email`, `age`, `phoneNumber`, `birthday`) VALUES
(1, 'aaron', '$2y$10$LwIThteP4u70J12pXO2fu.Nd/7enDlCdEaFOUzX2WpGmTFNf7m4S2', '2023-12-07 13:33:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'dummy', '$2y$10$kb0DrS/AvuMy0IMAECwekuJgqlpIjZ8pUQfCNIhKYvywilhe.u.x2', '2023-12-07 15:30:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'jmjm', '$2y$10$10NfR4rU5em5RIXT13ynMO/pJAk53p8.4CwHuw1Fs0D6UBYKKBM8G', '2023-12-07 17:42:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'jmjmjm', '$2y$10$Y0QiDuud6nZkFoIWj/fFxudkuxfxNTKuADiTyurJLSozYfNpEkram', '2023-12-08 17:33:32', 'Azuelo', 'John Michael', 'Asingal', 'jmjm69jmjm@gmail.com', 19, 2147483647, '0000-00-00'),
(5, 'kurt', '$2y$10$TegB/3eMpDpSVkk4aYUVG.CeWwzRsSg1jXCGZSC1DLyxXWAnIeBg6', '2023-12-08 17:38:47', 'Belecina', 'Kurt Angelo', 'M.', 'bbbb@gmail.com', 19, 999999999, '0000-00-00'),
(6, 'AaronBien', '$2y$10$xXjfzzmN.siixplkZq9fxORn5xnwzICoLTckSmN4CuO8PIFRGzyIG', '2023-12-08 21:23:28', 'Benolirao', 'Aaron Bien', 'Acuba', 'aaronbienb@gmail.com', 21, 2147483647, '2002-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
