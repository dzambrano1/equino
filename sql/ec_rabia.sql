-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:30 AM
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
-- Table structure for table `ec_rabia`
--

CREATE TABLE `ec_rabia` (
  `id` int(11) NOT NULL,
  `ec_rabia_vacuna` varchar(30) NOT NULL,
  `ec_rabia_dosis` decimal(10,2) NOT NULL,
  `ec_rabia_costo` decimal(10,2) NOT NULL,
  `ec_rabia_vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_rabia`
--

INSERT INTO `ec_rabia` (`id`, `ec_rabia_vacuna`, `ec_rabia_dosis`, `ec_rabia_costo`, `ec_rabia_vigencia`) VALUES
(2, 'Rabi FORTE', 2.00, 0.80, 180),
(3, 'VAC-SULES EQUI PRO 5	', 2.00, 0.80, 180);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_rabia`
--
ALTER TABLE `ec_rabia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_rabia`
--
ALTER TABLE `ec_rabia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
