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
-- Table structure for table `eh_inseminacion`
--

CREATE TABLE `eh_inseminacion` (
  `id` int(11) NOT NULL,
  `eh_inseminacion_tagid` varchar(10) NOT NULL,
  `eh_inseminacion_numero` int(10) NOT NULL,
  `eh_inseminacion_costo` decimal(10,2) NOT NULL,
  `eh_inseminacion_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_inseminacion`
--

INSERT INTO `eh_inseminacion` (`id`, `eh_inseminacion_tagid`, `eh_inseminacion_numero`, `eh_inseminacion_costo`, `eh_inseminacion_fecha`) VALUES
(1, '3000', 1, 10.00, '2023-01-01'),
(2, '3000', 2, 12.00, '2024-01-01'),
(3, '3000', 3, 12.50, '2025-01-01'),
(4, '3000', 4, 20.00, '2025-01-22'),
(7, '4000', 5, 0.60, '2025-03-18'),
(9, '4000', 6, 0.30, '2025-03-18'),
(10, '4000', 7, 0.30, '2025-03-18'),
(11, '4000', 8, 20.00, '2025-03-18'),
(12, '9500', 2, 2.00, '2025-05-02'),
(13, '5266', 1, 10.00, '2025-05-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_inseminacion`
--
ALTER TABLE `eh_inseminacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_inseminacion`
--
ALTER TABLE `eh_inseminacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
