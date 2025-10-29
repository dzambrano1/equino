-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:12 AM
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
-- Table structure for table `eh_influenza`
--

CREATE TABLE `eh_influenza` (
  `id` int(11) NOT NULL,
  `eh_influenza_tagid` varchar(10) NOT NULL,
  `eh_influenza_producto` varchar(50) NOT NULL,
  `eh_influenza_dosis` decimal(10,2) NOT NULL,
  `eh_influenza_costo` decimal(10,2) NOT NULL,
  `eh_influenza_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_influenza`
--

INSERT INTO `eh_influenza` (`id`, `eh_influenza_tagid`, `eh_influenza_producto`, `eh_influenza_dosis`, `eh_influenza_costo`, `eh_influenza_fecha`) VALUES
(2, '3000', 'Equilis Prequenza', 2.00, 15.00, '2024-01-06'),
(13, '3000', 'Equilis Prequenza', 1.50, 0.80, '2025-03-17'),
(16, '4000', 'Equilis Prequenza', 3.00, 2.00, '2025-05-01'),
(17, '3000', 'Equilis Prequenza', 2.00, 0.49, '2024-11-01'),
(18, '10000', 'Equilis Prequenza', 2.00, 0.53, '2025-04-26'),
(19, '15500', 'Equilis Prequenza', 2.00, 0.34, '2025-04-26'),
(21, '4000', 'Equilis Prequenza', 2.00, 10.00, '2025-05-08'),
(22, '12345', 'Equilis Prequenza', 3.00, 3.00, '2025-06-06'),
(23, '20000', 'Fluvac Innovator', 2.00, 2.00, '2025-06-06'),
(24, '21214', 'Fluvac Innovator', 2.00, 2.00, '2025-06-06'),
(25, '22000', 'Fluvac Innovator', 2.00, 2.00, '2025-06-06'),
(26, '2222', 'Fluvac Innovator', 2.00, 2.00, '2025-06-06'),
(27, '23000', 'Fluvac Innovator', 2.00, 2.00, '2025-06-06'),
(28, '23500', 'Fluvac Innovator', 1.00, 1.00, '2025-06-06'),
(29, '24200', 'Fluvac Innovator', 1.00, 1.00, '2025-06-06'),
(30, '24560', 'Fluvac Innovator', 1.00, 1.00, '2025-06-06'),
(31, '27500', 'Fluvac Innovator', 1.00, 1.00, '2025-06-06'),
(32, '33000', 'ProteqFlu', 1.00, 1.00, '2025-06-06'),
(33, '4001', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(34, '45000', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(35, '5000', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(36, '5266', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(37, '54321', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(38, '599', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(39, '777', 'ProteqFlu', 3.00, 3.00, '2025-06-06'),
(40, '8210', 'Aftosa Adultos', 3.00, 3.50, '2025-06-06'),
(41, '8300', 'Aftosa Adultos', 3.00, 3.00, '2025-06-06'),
(42, '8985', 'Aftosa Adultos', 3.00, 3.60, '2025-06-06'),
(43, '9500', 'Aftosa Novillos', 3.00, 3.90, '2025-06-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_influenza`
--
ALTER TABLE `eh_influenza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_influenza`
--
ALTER TABLE `eh_influenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
