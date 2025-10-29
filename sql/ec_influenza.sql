-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:28 AM
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
-- Table structure for table `ec_influenza`
--

CREATE TABLE `ec_influenza` (
  `id` int(11) NOT NULL,
  `ec_influenza_vacuna` varchar(30) NOT NULL,
  `ec_inflienza_dosis` decimal(10,2) NOT NULL,
  `ec_influenza_costo` decimal(10,2) NOT NULL,
  `ec_influenza_vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_influenza`
--

INSERT INTO `ec_influenza` (`id`, `ec_influenza_vacuna`, `ec_inflienza_dosis`, `ec_influenza_costo`, `ec_influenza_vigencia`) VALUES
(1, 'ProteqFlu', 2.00, 0.94, 180),
(3, 'Fluvac Innovator', 2.00, 0.58, 180),
(4, 'Equilis Prequenza', 2.00, 0.50, 180);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_influenza`
--
ALTER TABLE `ec_influenza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_influenza`
--
ALTER TABLE `ec_influenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
