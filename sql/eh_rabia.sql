-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:23 AM
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
-- Table structure for table `eh_rabia`
--

CREATE TABLE `eh_rabia` (
  `id` int(11) NOT NULL,
  `eh_rabia_tagid` varchar(10) NOT NULL,
  `eh_rabia_producto` varchar(50) NOT NULL,
  `eh_rabia_dosis` decimal(10,2) NOT NULL,
  `eh_rabia_costo` decimal(10,2) NOT NULL,
  `eh_rabia_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_rabia`
--

INSERT INTO `eh_rabia` (`id`, `eh_rabia_tagid`, `eh_rabia_producto`, `eh_rabia_dosis`, `eh_rabia_costo`, `eh_rabia_fecha`) VALUES
(1, '3000', 'Rabi FORTE	', 1.50, 10.40, '2023-01-05'),
(2, '3000', 'Rabi FORTE	', 1.55, 11.50, '2024-01-06'),
(4, '3000', 'Rabi FORTE	', 1.55, 10.40, '2025-01-07'),
(6, '3000', 'Rabi FORTE	', 1.50, 10.40, '2023-01-05'),
(7, '3000', 'Rabi FORTE	', 3.00, 1.10, '2025-03-12'),
(8, '3000', 'Rabi FORTE	', 1.00, 4.00, '2025-03-18'),
(10, '5266', 'Rabi FORTE	', 2.00, 0.55, '2025-05-01'),
(12, '10000', 'Rabi FORTE	', 2.00, 2.50, '2025-06-06'),
(13, '12345', 'Rabi FORTE	', 3.00, 2.30, '2025-06-06'),
(14, '15500', 'Rabi FORTE	', 3.00, 3.00, '2025-06-06'),
(15, '20000', 'Rabi FORTE	', 3.00, 3.00, '2025-06-06'),
(16, '21214', 'Vac-Sules Rabimic	', 3.00, 2.00, '2025-06-06'),
(17, '22000', 'Vac-Sules Rabimic	', 3.00, 2.00, '2025-06-06'),
(18, '2222', 'Vac-Sules Rabimic	', 3.00, 3.00, '2025-06-06'),
(19, '23000', 'Vac-Sules Rabimic	', 3.00, 2.00, '2025-06-06'),
(20, '23500', 'Vac-Sules Rabimic	', 3.00, 3.00, '2025-06-06'),
(21, '24200', 'Vac-Sules Rabimic	', 3.00, 4.00, '2025-06-06'),
(22, '24560', 'Vac-Sules Rabimic	', 4.00, 3.00, '2025-06-06'),
(23, '27500', 'Vac-Sules Rabimic	', 4.00, 3.00, '2025-06-06'),
(24, '33000', 'Vac-Sules Rabimic	', 4.00, 3.00, '2025-06-06'),
(25, '4001', 'Vac-Sules Rabimic	', 2.00, 3.00, '2025-06-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_rabia`
--
ALTER TABLE `eh_rabia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_rabia`
--
ALTER TABLE `eh_rabia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
