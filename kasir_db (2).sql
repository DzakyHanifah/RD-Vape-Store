-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 02:30 PM
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
-- Database: `kasir_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `stock`) VALUES
(1, 'Rokok Elektrik A', '150000.00', 6),
(2, 'Rokok Elektrik B', '200000.00', 4),
(3, 'Liquid Rasa Mangga', '50000.00', 38),
(4, 'Liquid Rasa Anggur', '60000.00', 70),
(5, 'Aksesoris Rokok Elektrik', '75000.00', 0),
(6, 'Liquid Rasa Mie Ayam', '25000.00', 3),
(7, 'Rokok Ironman', '99000.00', 18),
(8, 'Hexohm REV G', '3000000.00', 6),
(10, 'Centaurus E40', '320000.00', 12),
(11, 'wulan', '1000.00', 3),
(12, 'ini barang baruu', '12000.00', 5),
(13, 'ban truk', '45000.00', 0),
(14, 'Pulse Aio V2', '900000.00', 19),
(15, 'Centaurus B60', '450000.00', 3),
(16, 'Centaurus B80', '520000.00', 18),
(17, 'Pulse Aio Mini Kit', '750000.00', 20),
(18, 'TRML T200  Limitid Inverse', '575000.00', 2),
(19, 'TRML T200', '550000.00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `pending_items`
--

CREATE TABLE `pending_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_items`
--

INSERT INTO `pending_items` (`id`, `name`, `price`, `stock`, `status`) VALUES
(11, 'Thelema M200 Chaostopus Edition', 550000, 2, 'pending'),
(12, 'Thelema Quest', 450000, 20, 'pending'),
(13, 'Foom X Weird Genius', 180000, 20, 'pending'),
(14, 'Foom X Prediksi', 180000, 20, 'pending'),
(15, 'Nitrous Zaion AIO', 990000, 20, 'pending'),
(16, 'Kapas Merah', 50000, 10, 'pending'),
(25, 'Lemari Baju 5 pintu', 750000, 5, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cash_given` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `total`, `payment_method`, `created_at`, `cash_given`, `change_amount`) VALUES
(2, '275000.00', 'tunai', '2024-12-04 16:52:54', '300000.00', '0.00'),
(3, '275000.00', 'tunai', '2024-12-02 16:54:45', '300000.00', '0.00'),
(4, '135000.00', 'tunai', '2023-12-04 16:59:41', '150000.00', '0.00'),
(5, '235000.00', 'non-tunai', '2024-12-04 17:01:12', '0.00', '0.00'),
(6, '450000.00', 'tunai', '2024-12-05 01:14:32', '500000.00', '0.00'),
(7, '225000.00', 'tunai', '2024-10-05 02:24:34', '300000.00', '0.00'),
(8, '475000.00', 'tunai', '2024-12-05 03:45:12', '500000.00', '0.00'),
(10, '199000.00', 'tunai', '2024-12-05 11:35:00', '300000.00', '0.00'),
(11, '1540000.00', 'tunai', '2024-12-05 12:01:24', '2000000.00', '0.00'),
(12, '6460000.00', 'tunai', '2024-12-05 12:12:13', '7000000.00', '0.00'),
(13, '695000.00', 'tunai', '2024-12-05 12:16:28', '1000000.00', '0.00'),
(14, '75000.00', 'tunai', '2024-12-05 12:23:01', '100000.00', '0.00'),
(15, '60000.00', 'tunai', '2024-12-05 12:31:10', '100000.00', '0.00'),
(16, '335000.00', 'tunai', '2024-12-05 12:55:12', '0.00', '0.00'),
(17, '335000.00', 'tunai', '2024-09-05 12:55:37', '400000.00', '0.00'),
(18, '324000.00', 'tunai', '2024-12-05 14:52:13', '350000.00', '0.00'),
(19, '2500000.00', 'tunai', '2024-12-06 03:51:47', '2500000.00', '0.00'),
(20, '1000.00', 'non-tunai', '2024-12-06 04:36:31', '0.00', '0.00'),
(21, '450000.00', 'tunai', '2024-12-06 12:55:12', '500000.00', '0.00'),
(22, '3000000.00', 'tunai', '2024-09-07 03:46:09', '3000000.00', '0.00'),
(23, '4785000.00', '', '2024-12-07 05:11:26', '0.00', '0.00'),
(24, '4180000.00', 'tunai', '2024-12-07 05:37:45', '4500000.00', '0.00'),
(25, '4180000.00', 'tunai', '2024-12-07 05:39:23', '4500000.00', '0.00'),
(26, '2180000.00', 'tunai', '2022-12-07 05:42:24', '4500000.00', '0.00'),
(27, '2180000.00', 'tunai', '2024-12-07 05:44:51', '4500000.00', '0.00'),
(28, '1071000.00', 'tunai', '2024-12-07 05:45:48', '1100000.00', '0.00'),
(29, '850000.00', 'tunai', '2024-12-07 11:02:59', '850000.00', '0.00'),
(30, '900000.00', 'tunai', '2024-12-07 11:37:59', '1000000.00', '0.00'),
(31, '750000.00', 'tunai', '2024-12-07 11:47:32', '800000.00', '0.00'),
(32, '99000.00', 'tunai', '2024-12-07 13:16:34', '100000.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `item_id`, `quantity`, `subtotal`) VALUES
(4, 2, 2, 1, '200000.00'),
(5, 2, 5, 1, '75000.00'),
(6, 3, 2, 1, '200000.00'),
(7, 3, 5, 1, '75000.00'),
(8, 4, 4, 1, '60000.00'),
(9, 4, 5, 1, '75000.00'),
(10, 5, 4, 1, '60000.00'),
(11, 5, 3, 2, '100000.00'),
(12, 5, 5, 1, '75000.00'),
(13, 6, 1, 3, '450000.00'),
(14, 7, 3, 2, '100000.00'),
(15, 7, 6, 5, '125000.00'),
(17, 8, 5, 5, '375000.00'),
(19, 10, 3, 1, '50000.00'),
(20, 10, 6, 2, '50000.00'),
(21, 10, 7, 1, '99000.00'),
(22, 11, 5, 1, '75000.00'),
(23, 11, 5, 1, '75000.00'),
(24, 11, 10, 2, '640000.00'),
(25, 11, 1, 5, '750000.00'),
(26, 12, 4, 1, '60000.00'),
(27, 12, 8, 2, '6000000.00'),
(28, 12, 3, 5, '250000.00'),
(29, 12, 5, 2, '150000.00'),
(30, 13, 5, 1, '75000.00'),
(31, 13, 10, 1, '320000.00'),
(32, 13, 1, 2, '300000.00'),
(33, 14, 5, 1, '75000.00'),
(34, 15, 4, 1, '60000.00'),
(35, 16, 2, 1, '200000.00'),
(36, 16, 5, 1, '75000.00'),
(37, 16, 4, 1, '60000.00'),
(38, 17, 2, 1, '200000.00'),
(39, 17, 5, 1, '75000.00'),
(40, 17, 4, 1, '60000.00'),
(41, 18, 5, 3, '225000.00'),
(42, 18, 7, 1, '99000.00'),
(43, 19, 3, 50, '2500000.00'),
(44, 20, 11, 1, '1000.00'),
(45, 21, 1, 3, '450000.00'),
(46, 22, 1, 20, '3000000.00'),
(47, 23, 8, 1, '3000000.00'),
(48, 23, 14, 1, '900000.00'),
(49, 23, 10, 1, '320000.00'),
(50, 23, 13, 1, '45000.00'),
(51, 23, 16, 1, '520000.00'),
(52, 24, 4, 1, '60000.00'),
(53, 24, 10, 1, '320000.00'),
(54, 24, 15, 4, '1800000.00'),
(55, 24, 2, 10, '2000000.00'),
(56, 25, 4, 1, '60000.00'),
(57, 25, 10, 1, '320000.00'),
(58, 25, 15, 4, '1800000.00'),
(59, 25, 2, 10, '2000000.00'),
(60, 26, 4, 1, '60000.00'),
(61, 26, 10, 1, '320000.00'),
(62, 26, 15, 4, '1800000.00'),
(63, 27, 4, 1, '60000.00'),
(64, 27, 10, 1, '320000.00'),
(65, 27, 15, 4, '1800000.00'),
(66, 28, 11, 1, '1000.00'),
(67, 28, 16, 1, '520000.00'),
(68, 28, 19, 1, '550000.00'),
(69, 29, 15, 1, '450000.00'),
(70, 29, 2, 2, '400000.00'),
(71, 30, 1, 6, '900000.00'),
(72, 31, 1, 5, '750000.00'),
(73, 32, 7, 1, '99000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_items`
--
ALTER TABLE `pending_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pending_items`
--
ALTER TABLE `pending_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
