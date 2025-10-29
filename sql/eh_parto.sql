-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:22 AM
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
-- Table structure for table `eh_parto`
--

CREATE TABLE `eh_parto` (
  `id` int(11) NOT NULL,
  `eh_parto_tagid` varchar(10) NOT NULL,
  `eh_parto_numero` int(11) NOT NULL,
  `eh_parto_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_parto`
--

INSERT INTO `eh_parto` (`id`, `eh_parto_tagid`, `eh_parto_numero`, `eh_parto_fecha`) VALUES
(11, '3000', 3, '2025-03-18'),
(12, '5000', 2, '2025-04-28'),
(13, '10000', 2, '2025-02-06'),
(14, '4000', 2, '2025-03-19'),
(15, '9500', 1, '2025-03-18'),
(16, '8300', 1, '2025-05-01'),
(17, '23500', 2, '2025-01-28'),
(18, '5266', 2, '2025-04-30'),
(19, '24200', 3, '2025-04-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_parto`
--
ALTER TABLE `eh_parto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_parto`
--
ALTER TABLE `eh_parto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
