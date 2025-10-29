-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:31 AM
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
-- Table structure for table `ec_sal`
--

CREATE TABLE `ec_sal` (
  `id` int(11) NOT NULL,
  `ec_sal_nombre` varchar(30) NOT NULL,
  `ec_sal_etapa` varchar(30) NOT NULL,
  `ec_sal_racion` decimal(10,2) NOT NULL,
  `ec_sal_costo` decimal(10,2) NOT NULL,
  `ec_sal_vigencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_sal`
--

INSERT INTO `ec_sal` (`id`, `ec_sal_nombre`, `ec_sal_etapa`, `ec_sal_racion`, `ec_sal_costo`, `ec_sal_vigencia`) VALUES
(3, 'Sal Mineral EquiZulia®', 'Geriátrica (15+ años)', 0.90, 0.90, 32),
(5, 'Sal Mineral EquiPlus®', 'Adolescencia (2–4 años)', 0.85, 0.65, 33),
(6, 'Vitamina EquiVita A-D-E®	', 'Adulta (4–15 años)', 0.85, 0.65, 33),
(7, 'Vitamina EquiPower B-Complex®	', 'Lactante (0–6 meses)', 0.85, 0.65, 33),
(8, 'Sal Mineral EquiSenior®	', 'Crecimiento (6 meses–2 años)', 0.85, 0.65, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_sal`
--
ALTER TABLE `ec_sal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_sal`
--
ALTER TABLE `ec_sal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
