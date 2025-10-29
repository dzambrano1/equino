-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:13 AM
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
-- Database: `ganagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `eh_lombrices`
--

CREATE TABLE `eh_lombrices` (
  `id` int(11) NOT NULL,
  `eh_lombrices_tagid` varchar(10) NOT NULL,
  `eh_lombrices_producto` varchar(50) NOT NULL,
  `eh_lombrices_dosis` decimal(10,2) NOT NULL,
  `eh_lombrices_costo` decimal(10,2) NOT NULL,
  `eh_lombrices_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_lombrices`
--

INSERT INTO `eh_lombrices` (`id`, `eh_lombrices_tagid`, `eh_lombrices_producto`, `eh_lombrices_dosis`, `eh_lombrices_costo`, `eh_lombrices_fecha`) VALUES
(1, '3000', 'Lombri I', 1.10, 5.10, '2025-01-06'),
(3, '3000', 'Lombri III', 1.20, 7.50, '2025-01-12'),
(6, '3000', 'Lombri 20', 20.00, 2.00, '2025-02-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_lombrices`
--
ALTER TABLE `eh_lombrices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_lombrices`
--
ALTER TABLE `eh_lombrices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
