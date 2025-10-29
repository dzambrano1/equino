-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2025 at 06:07 AM
-- Server version: 10.6.22-MariaDB-cll-lve
-- PHP Version: 8.3.22

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
-- Table structure for table `ec_etapas`
--

CREATE TABLE `ec_etapas` (
  `id` int(11) NOT NULL,
  `ec_etapas_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_etapas`
--

INSERT INTO `ec_etapas` (`id`, `ec_etapas_nombre`) VALUES
(26, 'Lactante (0 a 6 meses)'),
(27, 'Crecimiento (6 meses a 2 anos)'),
(28, 'Adolescencia (2 a 4 anos)'),
(31, 'Adulta (4 a 15 anos)'),
(32, 'Geriatrica (15+ anos)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_etapas`
--
ALTER TABLE `ec_etapas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_etapas`
--
ALTER TABLE `ec_etapas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
