-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:11 AM
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
-- Table structure for table `eh_gestacion`
--

CREATE TABLE `eh_gestacion` (
  `id` int(11) NOT NULL,
  `eh_gestacion_tagid` varchar(10) NOT NULL,
  `eh_gestacion_numero` int(10) NOT NULL,
  `eh_gestacion_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_gestacion`
--

INSERT INTO `eh_gestacion` (`id`, `eh_gestacion_tagid`, `eh_gestacion_numero`, `eh_gestacion_fecha`) VALUES
(10, '5000', 2, '2025-02-02'),
(11, '3000', 1, '2025-01-01'),
(12, '10000', 1, '2025-02-04'),
(14, '4000', 1, '2025-04-01'),
(15, '9500', 2, '2025-03-06'),
(16, '5266', 2, '2025-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_gestacion`
--
ALTER TABLE `eh_gestacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_gestacion`
--
ALTER TABLE `eh_gestacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
