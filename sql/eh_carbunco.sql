-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2025 at 11:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equino`
--

-- --------------------------------------------------------

--
-- Table structure for table `eh_carbunco`
--

CREATE TABLE `eh_carbunco` (
  `id` int(11) NOT NULL,
  `eh_carbunco_tagid` varchar(10) NOT NULL,
  `eh_carbunco_producto` varchar(50) NOT NULL,
  `eh_carbunco_dosis` decimal(10,2) NOT NULL,
  `eh_carbunco_costo` decimal(10,2) NOT NULL,
  `eh_carbunco_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_carbunco`
--

INSERT INTO `eh_carbunco` (`id`, `eh_carbunco_tagid`, `eh_carbunco_producto`, `eh_carbunco_dosis`, `eh_carbunco_costo`, `eh_carbunco_fecha`) VALUES
(1, '3000', 'AFTOSA 1', 0.80, 10.40, '2023-01-05'),
(2, '3000', 'AFTOSA 2', 0.85, 11.50, '2024-01-06'),
(3, '3000', 'AFTOSA 3', 0.90, 12.60, '2025-01-07'),
(4, '3000', 'AFTOSA 1', 0.90, 10.40, '2025-01-07'),
(5, '3000', 'AFTOSA 3', 0.90, 12.60, '2025-01-16'),
(10, '3000', 'AFTOSA 1', 0.80, 10.40, '2025-01-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_carbunco`
--
ALTER TABLE `eh_carbunco`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_carbunco`
--
ALTER TABLE `eh_carbunco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
