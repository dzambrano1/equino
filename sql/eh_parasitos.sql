-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:22 AM
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
-- Table structure for table `eh_parasitos`
--

CREATE TABLE `eh_parasitos` (
  `id` int(11) NOT NULL,
  `eh_parasitos_tagid` varchar(10) NOT NULL,
  `eh_parasitos_producto` varchar(50) NOT NULL,
  `eh_parasitos_dosis` decimal(10,2) NOT NULL,
  `eh_parasitos_costo` decimal(10,2) NOT NULL,
  `eh_parasitos_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eh_parasitos`
--

INSERT INTO `eh_parasitos` (`id`, `eh_parasitos_tagid`, `eh_parasitos_producto`, `eh_parasitos_dosis`, `eh_parasitos_costo`, `eh_parasitos_fecha`) VALUES
(1, '3000', 'Bimectin Equino', 1.50, 10.40, '2023-01-05'),
(2, '3000', 'Bimectin Equino', 1.55, 11.50, '2024-01-06'),
(4, '3000', 'Bimectin Equino', 1.55, 10.40, '2025-01-07'),
(6, '3000', 'Bimectin Equino', 1.50, 10.40, '2023-01-05'),
(7, '3000', 'Bimectin Equino', 3.00, 1.10, '2025-03-12'),
(8, '3000', 'Bimectin Equino', 1.00, 4.00, '2025-03-18'),
(10, '5266', 'Bimectin Equino', 2.00, 0.55, '2025-05-01'),
(12, '10000', 'Bimectin Equino', 2.00, 2.50, '2025-06-06'),
(13, '12345', 'Bimectin Equino', 3.00, 2.30, '2025-06-06'),
(14, '15500', 'Bimectin Equino', 3.00, 3.00, '2025-06-06'),
(15, '20000', 'Equinex', 3.00, 3.00, '2025-06-06'),
(16, '21214', 'Panacur Equino', 3.00, 2.00, '2025-06-06'),
(17, '22000', 'Panacur Equino', 3.00, 2.00, '2025-06-06'),
(18, '2222', 'Panacur Equino', 3.00, 3.00, '2025-06-06'),
(19, '23000', 'Panacur Equino', 3.00, 2.00, '2025-06-06'),
(20, '23500', 'Equinex', 3.00, 3.00, '2025-06-06'),
(21, '24200', 'Equinex', 3.00, 4.00, '2025-06-06'),
(22, '24560', 'Equinex', 4.00, 3.00, '2025-06-06'),
(23, '27500', 'Equinex', 4.00, 3.00, '2025-06-06'),
(24, '33000', 'Equinex', 4.00, 3.00, '2025-06-06'),
(25, '4001', 'Equinex', 2.00, 3.00, '2025-06-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eh_parasitos`
--
ALTER TABLE `eh_parasitos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eh_parasitos`
--
ALTER TABLE `eh_parasitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
