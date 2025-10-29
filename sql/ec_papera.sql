-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:29 AM
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
-- Table structure for table `ec_papera`
--

CREATE TABLE `ec_papera` (
  `id` int(11) NOT NULL,
  `ec_papera_vacuna` varchar(30) NOT NULL,
  `ec_papera_dosis` decimal(10,2) NOT NULL,
  `ec_papera_costo` decimal(10,2) NOT NULL,
  `ec_papera_vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_papera`
--

INSERT INTO `ec_papera` (`id`, `ec_papera_vacuna`, `ec_papera_dosis`, `ec_papera_costo`, `ec_papera_vigencia`) VALUES
(1, 'Fluvac Innovator EHV', 2.00, 0.05, 180),
(2, 'Providean Contendor 5	', 2.00, 0.80, 180),
(3, 'VAC-SULES EQUI PRO 5	', 2.00, 0.80, 180);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_papera`
--
ALTER TABLE `ec_papera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_papera`
--
ALTER TABLE `ec_papera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
