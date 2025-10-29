-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 02:34 AM
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
-- Table structure for table `eh_deceso`
--

CREATE TABLE `eh_deceso` (
  `id` int(11) NOT NULL,
  `eh_deceso_tagid` varchar(10) NOT NULL,
  `eh_deceso_causa` varchar(50) NOT NULL,
  `eh_deceso_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_deceso`
--

INSERT INTO `eh_deceso` (`id`, `eh_deceso_tagid`, `eh_deceso_causa`, `eh_deceso_fecha`) VALUES
(2, '3000', 'Golpe', '2025-03-08'),
(4, '4000', 'Gusanos', '2025-03-16'),
(12, '599', 'Diarrea', '2025-03-17'),
(13, '4000', 'Fiebre', '2025-03-18'),
(14, '4000', 'Asfixia', '2025-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_deceso`
--
ALTER TABLE `eh_deceso`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_deceso`
--
ALTER TABLE `eh_deceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
