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
-- Table structure for table `eh_descarte`
--

CREATE TABLE `eh_descarte` (
  `id` int(11) NOT NULL,
  `eh_descarte_tagid` varchar(10) NOT NULL,
  `eh_descarte_peso` decimal(10,2) NOT NULL,
  `eh_descarte_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_descarte`
--

INSERT INTO `eh_descarte` (`id`, `eh_descarte_tagid`, `eh_descarte_peso`, `eh_descarte_fecha`) VALUES
(3, '3000', 300.00, '2025-02-04'),
(6, '3000', 250.00, '2025-03-16'),
(7, '4000', 333.00, '2025-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_descarte`
--
ALTER TABLE `eh_descarte`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_descarte`
--
ALTER TABLE `eh_descarte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
