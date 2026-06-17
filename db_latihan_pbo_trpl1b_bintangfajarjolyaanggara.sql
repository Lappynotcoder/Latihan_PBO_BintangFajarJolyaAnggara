-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20260526.9a43c2e222
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 11:21 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_trpl1b_bintangfajarjolyaanggara`
--
CREATE DATABASE IF NOT EXISTS `db_latihan_pbo_trpl1b_bintangfajarjolyaanggara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_latihan_pbo_trpl1b_bintangfajarjolyaanggara`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(15,0) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Goldeneye', '2026-06-22 20:45:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX02', 'Wind & Motion Bass', NULL, NULL),
(2, 'Alien', '2026-06-25 10:45:00', 3, 50000, 'Regular', 'Dolby Atmos', 'E-08', NULL, NULL, NULL, NULL),
(3, 'Full Metal Jacket', '2026-06-20 18:30:00', 4, 50000, 'Regular', 'Dolby Digital', 'F-10,F-11', NULL, NULL, NULL, NULL),
(4, 'Goldeneye', '2026-06-25 20:15:00', 4, 50000, 'Regular', 'Dolby Digital', 'G-15', NULL, NULL, NULL, NULL),
(5, '2001: A Space Odyssey', '2026-06-21 16:45:00', 4, 50000, 'Regular', 'Dolby Digital', 'H-03..H-05', NULL, NULL, NULL, NULL),
(6, '2001: A Space Odyssey', '2026-06-23 19:45:00', 3, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Suite Pack', 1),
(7, 'The Thing', '2026-06-21 18:00:00', 1, 50000, 'IMAX', NULL, NULL, 'GL-IMAX03', 'Wind & Motion Bass', NULL, NULL),
(8, '2001: A Space Odyssey', '2026-06-25 19:30:00', 4, 50000, 'Regular', 'Stereo 5.1', 'B-04,B-05', NULL, NULL, NULL, NULL),
(9, 'Alien', '2026-06-23 19:30:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX06', 'Standard Motion', NULL, NULL),
(10, 'Goldeneye', '2026-06-24 19:15:00', 1, 50000, 'Regular', 'Dolby Digital', 'E-08', NULL, NULL, NULL, NULL),
(11, 'Alien', '2026-06-20 16:00:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX08', 'Vibration Extra', NULL, NULL),
(12, 'Alien', '2026-06-21 18:45:00', 4, 50000, 'Regular', 'Dolby Digital', 'E-08', NULL, NULL, NULL, NULL),
(13, '2001: A Space Odyssey', '2026-06-20 16:15:00', 3, 50000, 'Regular', 'Dolby Digital', 'G-15', NULL, NULL, NULL, NULL),
(14, 'Goldeneye', '2026-06-25 10:45:00', 2, 50000, 'Regular', 'Dolby Digital', 'D-02..D-04', NULL, NULL, NULL, NULL),
(15, '2001: A Space Odyssey', '2026-06-21 19:45:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX16', 'Heavy Rumble Fitur', NULL, NULL),
(16, 'Full Metal Jacket', '2026-06-23 14:15:00', 2, 50000, 'IMAX', NULL, NULL, 'GL-IMAX15', 'Heavy Rumble Fitur', NULL, NULL),
(17, 'The Thing', '2026-06-25 18:00:00', 4, 50000, 'Regular', 'DTS:X', 'A-01', NULL, NULL, NULL, NULL),
(18, '2001: A Space Odyssey', '2026-06-23 16:15:00', 2, 50000, 'IMAX', NULL, NULL, 'GL-IMAX01', 'Vibration Extra', NULL, NULL),
(19, 'Full Metal Jacket', '2026-06-23 14:00:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX12', 'Heavy Rumble Fitur', NULL, NULL),
(20, 'Alien', '2026-06-21 10:45:00', 1, 50000, 'Regular', 'Dolby Atmos', 'G-15', NULL, NULL, NULL, NULL),
(21, 'Goldeneye', '2026-06-21 16:00:00', 2, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Suite Pack', 1),
(22, 'Goldeneye', '2026-06-24 13:00:00', 1, 50000, 'Regular', 'Dolby Digital', 'A-01', NULL, NULL, NULL, NULL),
(23, '2001: A Space Odyssey', '2026-06-23 14:15:00', 1, 50000, 'IMAX', NULL, NULL, 'GL-IMAX10', 'Standard Motion', NULL, NULL),
(24, 'Goldeneye', '2026-06-22 16:00:00', 2, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Suite Pack', 1),
(25, 'Full Metal Jacket', '2026-06-25 20:30:00', 3, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Twin Pack', 0),
(26, 'Alien', '2026-06-21 10:30:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX07', 'Vibration Extra', NULL, NULL),
(27, 'Alien', '2026-06-24 10:00:00', 3, 50000, 'IMAX', NULL, NULL, 'GL-IMAX05', 'Wind & Motion Bass', NULL, NULL),
(28, 'Full Metal Jacket', '2026-06-24 10:30:00', 3, 50000, 'Regular', 'Stereo 5.1', 'A-01', NULL, NULL, NULL, NULL),
(29, 'Full Metal Jacket', '2026-06-23 19:45:00', 1, 50000, 'Regular', 'Dolby Digital', 'C-12', NULL, NULL, NULL, NULL),
(30, 'Alien', '2026-06-23 22:30:00', 3, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Suite Pack', 1),
(31, 'Full Metal Jacket', '2026-06-24 19:45:00', 2, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Quilt Pack', 1),
(32, 'Goldeneye', '2026-06-24 18:00:00', 1, 50000, 'IMAX', NULL, NULL, 'GL-IMAX13', 'Wind & Motion Bass', NULL, NULL),
(33, '2001: A Space Odyssey', '2026-06-22 10:15:00', 2, 50000, 'IMAX', NULL, NULL, 'GL-IMAX09', 'Wind & Motion Bass', NULL, NULL),
(34, 'Full Metal Jacket', '2026-06-21 16:45:00', 2, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Standard Twin Pack', 0),
(35, '2001: A Space Odyssey', '2026-06-20 13:45:00', 1, 50000, 'Regular', 'Dolby Digital', 'E-08', NULL, NULL, NULL, NULL),
(36, '2001: A Space Odyssey', '2026-06-22 22:00:00', 4, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Luxury Suite Pack', 0),
(37, 'Alien', '2026-06-22 20:15:00', 1, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Quilt Pack', 1),
(38, '2001: A Space Odyssey', '2026-06-22 14:30:00', 1, 50000, 'Regular', 'Dolby Digital', 'G-15', NULL, NULL, NULL, NULL),
(39, 'The Thing', '2026-06-22 20:30:00', 4, 50000, 'IMAX', NULL, NULL, 'GL-IMAX04', 'Wind & Motion Bass', NULL, NULL),
(40, 'Alien', '2026-06-21 10:45:00', 4, 50000, 'IMAX', NULL, NULL, 'GL-IMAX14', 'Standard Motion', NULL, NULL),
(41, '2001: A Space Odyssey', '2026-06-21 19:15:00', 3, 50000, 'Regular', 'Dolby Digital', 'G-15', NULL, NULL, NULL, NULL),
(42, 'The Thing', '2026-06-24 13:00:00', 4, 50000, 'IMAX', NULL, NULL, 'GL-IMAX11', 'Wind & Motion Bass', NULL, NULL),
(43, 'Full Metal Jacket', '2026-06-21 16:00:00', 2, 50000, 'Regular', 'Stereo 5.1', 'G-15', NULL, NULL, NULL, NULL),
(44, 'Full Metal Jacket', '2026-06-23 18:00:00', 2, 50000, 'Regular', 'Stereo 5.1', 'A-01', NULL, NULL, NULL, NULL),
(45, 'Full Metal Jacket', '2026-06-20 20:15:00', 1, 50000, 'Regular', 'Dolby Atmos', 'H-03..H-05', NULL, NULL, NULL, NULL),
(46, 'Alien', '2026-06-25 14:30:00', 3, 50000, 'Regular', 'Dolby Atmos', 'C-12', NULL, NULL, NULL, NULL),
(47, 'Alien', '2026-06-24 16:15:00', 4, 50000, 'Regular', 'Stereo 5.1', 'E-08', NULL, NULL, NULL, NULL),
(48, 'Full Metal Jacket', '2026-06-20 13:15:00', 3, 50000, 'Regular', 'Stereo 5.1', 'A-01', NULL, NULL, NULL, NULL),
(49, 'Full Metal Jacket', '2026-06-25 20:00:00', 4, 50000, 'Regular', 'Dolby Atmos', 'A-01', NULL, NULL, NULL, NULL),
(50, 'Alien', '2026-06-21 16:45:00', 1, 50000, 'Velvet', NULL, NULL, NULL, NULL, 'Premium Quilt Pack', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
