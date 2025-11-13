-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 05:10 PM
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
-- Database: `aabw_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun1s`
--

CREATE TABLE `akun1s` (
  `id_akun1` int(6) UNSIGNED NOT NULL,
  `kode_akun1` int(6) NOT NULL,
  `nama_akun1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun1s`
--

INSERT INTO `akun1s` (`id_akun1`, `kode_akun1`, `nama_akun1`) VALUES
(1, 1, 'Aktiva'),
(2, 2, 'Kewajiban'),
(3, 3, 'Modal'),
(4, 4, 'Pendapatan'),
(5, 5, 'Beban');

-- --------------------------------------------------------

--
-- Table structure for table `akun2s`
--

CREATE TABLE `akun2s` (
  `id_akun2` int(6) UNSIGNED NOT NULL,
  `kode_akun2` int(6) UNSIGNED NOT NULL,
  `nama_akun2` varchar(40) NOT NULL,
  `kode_akun1` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun2s`
--

INSERT INTO `akun2s` (`id_akun2`, `kode_akun2`, `nama_akun2`, `kode_akun1`) VALUES
(1, 11, 'Aktiva Lancar ', 1),
(2, 12, 'Aktiva Tetap', 1),
(3, 21, 'Hutang Jangka Pendek', 2),
(4, 22, 'Hutang Jangka Panjang', 2),
(5, 31, 'Modal Pemilik', 3),
(6, 32, 'Prive Pemilik', 3),
(7, 41, 'Pendapatan Usaha', 4),
(8, 42, 'Pendapatan diluar Usaha', 4),
(9, 51, 'Beban Usaha', 5),
(10, 52, 'Beban diluar Usaha', 5);

-- --------------------------------------------------------

--
-- Table structure for table `akun3s`
--

CREATE TABLE `akun3s` (
  `id_akun3` int(6) UNSIGNED NOT NULL,
  `kode_akun3` int(6) UNSIGNED NOT NULL,
  `nama_akun3` varchar(70) NOT NULL,
  `kode_akun2` int(6) UNSIGNED NOT NULL,
  `kode_akun1` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun3s`
--

INSERT INTO `akun3s` (`id_akun3`, `kode_akun3`, `nama_akun3`, `kode_akun2`, `kode_akun1`) VALUES
(1, 1101, 'Kas', 11, 1),
(2, 1102, 'Piutang Usaha', 11, 1),
(3, 1103, 'Perlengkapan Kantor', 11, 1),
(4, 1104, 'Sewa Dibayar Dimuka', 11, 1),
(5, 1105, 'Asuransi Dibayar Dimuka', 11, 1),
(6, 1201, 'Peralatan Kantor', 12, 1),
(7, 1202, 'Akumulasi Penyusutan P. Kantor', 12, 1),
(8, 1203, 'Tanah', 12, 1),
(9, 2101, 'Utang Usaha', 21, 2),
(10, 2102, 'Utang Gaji', 21, 2),
(11, 2103, 'Pendapatan Diterima Dimuka', 21, 2),
(12, 2201, 'Utang Hipotik', 22, 2),
(13, 2202, 'Utang Obligasi', 22, 2),
(14, 3101, 'Modal Pemilik', 31, 3),
(15, 3201, 'Prive Tuan Najwan', 32, 3),
(16, 4101, 'Pendapatan Jasa', 41, 4),
(17, 4201, 'Pendapatan Diluar Usaha', 42, 4),
(18, 5101, 'Beban Gaji Karyawan', 51, 5),
(19, 5102, 'Beban Iklan', 51, 5),
(20, 5103, 'Beban Asuransi', 51, 5),
(21, 5104, 'Beban Telepon', 51, 5),
(22, 5105, 'Beban Listrik', 51, 5),
(23, 5106, 'Beban Sewa', 51, 5),
(24, 5107, 'Beban Penyusutan Peralatan Kantor', 51, 5),
(25, 5108, 'Beban Perlengkapan Kantor', 51, 5),
(26, 5201, 'Beban Bunga', 52, 5),
(27, 1444, 'coba coba aja', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE `contoh` (
  `id` int(6) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contoh`
--

INSERT INTO `contoh` (`id`, `nama`) VALUES
(1, 'Munastya'),
(2, 'Nanay '),
(3, 'Stecu');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(11, '2025-09-09-011645', 'App\\Database\\Migrations\\CreateAkun1', 'default', 'App', 1761036237, 1),
(12, '2025-10-05-191024', 'App\\Database\\Migrations\\CreateAkun2', 'default', 'App', 1761036237, 1),
(17, '2025-11-04-070117', 'App\\Database\\Migrations\\CreateAkun3', 'default', 'App', 1762777619, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun1s`
--
ALTER TABLE `akun1s`
  ADD PRIMARY KEY (`id_akun1`);

--
-- Indexes for table `akun2s`
--
ALTER TABLE `akun2s`
  ADD PRIMARY KEY (`id_akun2`),
  ADD KEY `akun2s_kode_akun1_foreign` (`kode_akun1`);

--
-- Indexes for table `akun3s`
--
ALTER TABLE `akun3s`
  ADD PRIMARY KEY (`id_akun3`),
  ADD KEY `akun3s_kode_akun1_foreign` (`kode_akun1`);

--
-- Indexes for table `contoh`
--
ALTER TABLE `contoh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun1s`
--
ALTER TABLE `akun1s`
  MODIFY `id_akun1` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `akun2s`
--
ALTER TABLE `akun2s`
  MODIFY `id_akun2` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `akun3s`
--
ALTER TABLE `akun3s`
  MODIFY `id_akun3` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contoh`
--
ALTER TABLE `contoh`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun2s`
--
ALTER TABLE `akun2s`
  ADD CONSTRAINT `akun2s_kode_akun1_foreign` FOREIGN KEY (`kode_akun1`) REFERENCES `akun1s` (`id_akun1`);

--
-- Constraints for table `akun3s`
--
ALTER TABLE `akun3s`
  ADD CONSTRAINT `akun3s_kode_akun1_foreign` FOREIGN KEY (`kode_akun1`) REFERENCES `akun1s` (`id_akun1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
