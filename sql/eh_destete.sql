-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 02:46 AM
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
-- Table structure for table `eh_destete`
--

CREATE TABLE `eh_destete` (
  `id` int(11) NOT NULL,
  `eh_destete_tagid` varchar(10) NOT NULL,
  `eh_destete_peso` decimal(10,2) NOT NULL,
  `eh_destete_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_destete`
--

INSERT INTO `eh_destete` (`id`, `eh_destete_tagid`, `eh_destete_peso`, `eh_destete_fecha`) VALUES
(13, '4000', 444.00, '2025-03-18'),
(15, '2542', 400.00, '2025-01-14'),
(16, '9500', 205.00, '2025-04-28'),
(17, '10000', 444.00, '2025-05-01'),
(18, '5000', 460.00, '2025-03-23'),
(19, '8985', 250.00, '2025-04-10'),
(20, '5266', 400.00, '2025-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_destete`
--
ALTER TABLE `eh_destete`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_destete`
--
ALTER TABLE `eh_destete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
