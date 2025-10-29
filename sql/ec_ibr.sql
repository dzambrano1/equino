-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2025 at 11:42 PM
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
-- Table structure for table `ec_ibr`
--

CREATE TABLE `ec_ibr` (
  `id` int(11) NOT NULL,
  `ec_ibr_vacuna` varchar(30) NOT NULL,
  `ec_ibr_dosis` decimal(10,2) NOT NULL,
  `ec_ibr_costo` decimal(10,2) NOT NULL,
  `ec_ibr_vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_ibr`
--

INSERT INTO `ec_ibr` (`id`, `ec_ibr_vacuna`, `ec_ibr_dosis`, `ec_ibr_costo`, `ec_ibr_vigencia`) VALUES
(1, 'AFTOFORTE BUFALOS', 1.53, 2.35, 180),
(3, 'AFTOGAN BUFALOS', 0.30, 0.88, 180),
(4, 'AFTOLIMOR BUFALOS', 0.50, 1.50, 180);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_ibr`
--
ALTER TABLE `ec_ibr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_ibr`
--
ALTER TABLE `ec_ibr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
