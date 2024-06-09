-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 01:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` enum('admin','kasir','manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `username`, `password`, `level`) VALUES
(1, 'laras', 'manager', 'manager', 'manager'),
(2, 'yudis', 'admin', 'admin', 'admin'),
(3, 'najwa', 'kasir', 'kasir', 'kasir'),
(4, 'arraya', 'admin2', 'admin', 'admin'),
(5, 'jaya', 'jaya', 'jaya', 'manager'),
(6, 'cscs', 'dsd', 'sds', 'admin'),
(7, 'buding', 'udiste1', 'udiste1', 'kasir'),
(8, 'yds', '@admin1', '@admin1', 'admin'),
(9, 'njwa', '@kasir1', '@kasir1', 'kasir'),
(10, 'lrs', '@manager1', '@manager1', 'manager'),
(11, 'rasya', 'kasir2', 'kasir2', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `logaktif`
--

CREATE TABLE `logaktif` (
  `id_log` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `aktivitas` enum('login','logout') NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logaktif`
--

INSERT INTO `logaktif` (`id_log`, `id_karyawan`, `aktivitas`, `waktu`) VALUES
(1, 3, 'login', '2024-05-28 13:20:34'),
(3, 3, 'login', '2024-05-28 13:23:46'),
(5, 3, 'login', '2024-05-28 13:30:59'),
(6, 1, 'logout', '2024-05-28 13:31:01'),
(7, 3, 'login', '2024-05-28 13:34:34'),
(8, 3, 'login', '2024-05-28 13:35:34'),
(9, 1, 'logout', '2024-05-28 13:35:36'),
(10, 3, 'login', '2024-05-28 13:37:34'),
(11, 3, 'logout', '2024-05-28 13:37:36'),
(12, 2, 'login', '2024-05-28 13:49:08'),
(13, 2, 'logout', '2024-05-28 13:50:17'),
(14, 7, 'login', '2024-05-28 13:50:31'),
(15, 7, 'login', '2024-05-28 13:51:31'),
(16, 7, 'login', '2024-05-28 13:52:10'),
(17, 3, 'logout', '2024-05-28 13:53:25'),
(18, 1, 'login', '2024-05-28 13:53:40'),
(19, 1, 'logout', '2024-05-28 13:58:58'),
(20, 2, 'login', '2024-05-28 13:59:08'),
(21, 2, 'logout', '2024-05-28 13:59:51'),
(22, 3, 'login', '2024-05-28 14:04:36'),
(23, 3, 'logout', '2024-05-28 14:04:44'),
(24, 3, 'login', '2024-05-28 14:05:04'),
(25, 3, 'logout', '2024-05-28 14:05:20'),
(26, 2, 'login', '2024-05-28 14:05:32'),
(27, 2, 'logout', '2024-05-28 14:13:47'),
(28, 3, 'login', '2024-05-28 14:14:07'),
(29, 3, 'login', '2024-05-28 14:44:13'),
(30, 3, 'logout', '2024-05-28 14:44:57'),
(31, 3, 'login', '2024-05-28 14:45:32'),
(32, 3, 'logout', '2024-05-28 14:45:45'),
(33, 3, 'login', '2024-05-28 14:46:17'),
(34, 3, 'logout', '2024-05-28 14:46:22'),
(35, 3, 'login', '2024-05-28 14:46:33'),
(36, 3, 'logout', '2024-05-28 14:46:38'),
(37, 2, 'login', '2024-05-29 07:14:27'),
(38, 2, 'logout', '2024-05-29 07:16:23'),
(39, 2, 'login', '2024-05-29 07:23:46'),
(40, 2, 'logout', '2024-05-29 07:27:39'),
(41, 1, 'login', '2024-05-29 07:27:48'),
(42, 1, 'logout', '2024-05-29 07:33:26'),
(43, 2, 'login', '2024-05-29 07:41:20'),
(44, 2, 'logout', '2024-05-29 07:42:46'),
(45, 2, 'login', '2024-05-29 09:38:59'),
(46, 2, 'logout', '2024-05-29 09:46:15'),
(47, 3, 'login', '2024-05-29 09:46:25'),
(48, 3, 'logout', '2024-05-29 10:02:07'),
(49, 1, 'login', '2024-05-29 10:02:20'),
(50, 1, 'logout', '2024-05-29 10:04:48'),
(51, 2, 'login', '2024-05-29 10:05:07'),
(52, 2, 'logout', '2024-05-29 10:05:11'),
(53, 1, 'login', '2024-05-29 10:05:21'),
(54, 1, 'logout', '2024-05-29 10:05:33'),
(55, 2, 'login', '2024-05-29 10:05:41'),
(56, 2, 'logout', '2024-05-29 10:05:46'),
(57, 3, 'login', '2024-05-29 10:05:55'),
(58, 3, 'logout', '2024-05-29 10:21:58'),
(59, 1, 'login', '2024-05-29 10:22:18'),
(60, 1, 'logout', '2024-05-29 10:24:59'),
(61, 2, 'login', '2024-05-29 10:25:07'),
(62, 2, 'logout', '2024-05-29 10:25:11'),
(63, 3, 'login', '2024-05-29 10:25:19'),
(64, 3, 'logout', '2024-05-29 10:29:01'),
(65, 1, 'login', '2024-05-29 10:29:11'),
(66, 1, 'logout', '2024-05-29 10:42:06'),
(67, 3, 'login', '2024-05-29 10:45:16'),
(68, 1, 'login', '2024-06-03 12:04:32'),
(69, 1, 'logout', '2024-06-03 12:05:16'),
(70, 2, 'login', '2024-06-03 12:08:18'),
(71, 2, 'logout', '2024-06-03 12:08:47'),
(72, 2, 'login', '2024-06-03 12:15:44'),
(73, 2, 'logout', '2024-06-03 12:15:48'),
(74, 3, 'login', '2024-06-03 12:17:51'),
(75, 3, 'logout', '2024-06-03 12:17:55'),
(76, 9, 'login', '2024-06-03 13:34:38'),
(77, 3, 'logout', '2024-06-03 13:49:38'),
(78, 1, 'login', '2024-06-03 13:49:45'),
(79, 1, 'logout', '2024-06-03 13:50:50'),
(80, 3, 'login', '2024-06-03 13:53:48'),
(81, 1, 'login', '2024-06-04 13:36:27'),
(82, 3, 'login', '2024-06-05 10:25:10'),
(83, 3, 'logout', '2024-06-05 10:25:29'),
(84, 1, 'login', '2024-06-05 10:25:37'),
(85, 1, 'logout', '2024-06-05 10:26:25'),
(86, 2, 'login', '2024-06-05 10:26:32'),
(87, 2, 'logout', '2024-06-05 10:26:50'),
(88, 3, 'login', '2024-06-09 17:54:12'),
(89, 3, 'login', '2024-06-09 17:56:04'),
(90, 3, 'login', '2024-06-09 18:00:47'),
(91, 9, 'login', '2024-06-09 18:02:38'),
(92, 3, 'logout', '2024-06-09 18:02:59'),
(93, 2, 'login', '2024-06-09 18:03:06'),
(94, 2, 'logout', '2024-06-09 18:03:24'),
(95, 11, 'login', '2024-06-09 18:03:32'),
(96, 3, 'logout', '2024-06-09 18:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `kode_menu` int(11) NOT NULL,
  `nama_menu` varchar(35) NOT NULL,
  `harga` int(15) NOT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kode_menu`, `nama_menu`, `harga`, `status`) VALUES
(1, 'kopi', 20000, 'tersedia'),
(2, 'jus jeruk', 10000, 'tersedia'),
(3, 'jus strawberry', 20000, 'tersedia'),
(4, 'mie goreng', 10000, 'tersedia'),
(5, 'jus kuat enak', 15000, 'tersedia'),
(6, 'roti bakar', 20000, 'tersedia'),
(7, 'jus jambu', 10000, 'tersedia'),
(8, 'sosis goreng', 5000, 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_menu` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_menu` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `nama_kasir` varchar(35) NOT NULL,
  `no_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_menu`, `id_karyawan`, `nama_pelanggan`, `tanggal`, `nama_menu`, `harga`, `jumlah_beli`, `total_bayar`, `nama_kasir`, `no_meja`) VALUES
(1, 1, 3, 'yudis', '2024-05-01', 'kopi', 20000, 2, 40000, 'najwa', 0),
(2, 2, 2, 'laras', '2024-05-08', 'jus jeruk', 10000, 2, 20000, 'yudis', 0),
(3, 2, 3, 'Fer', '2024-05-05', 'jus jeruk', 10000, 2, 20000, 'najwa', 0),
(4, 4, 3, 'ras', '2024-05-16', 'mie goreng', 10000, 2, 20000, 'najwa', 0),
(5, 1, 3, 'henri mudi', '2024-05-01', 'kopi', 20000, 2, 40000, 'najwa', 0),
(6, 4, 3, 'lia', '2024-06-11', 'mie goreng', 10000, 3, 30000, 'najwa', 1),
(7, 3, 3, 'raysa', '2024-06-05', 'jus strawberry', 20000, 2, 40000, 'najwa', 1),
(8, 4, 3, 'yudis', '2024-06-07', 'mie goreng', 10000, 10, 100000, 'najwa', 1),
(9, 4, 3, 'laras', '2024-06-04', 'mie goreng', 10000, 5, 50000, 'najwa', 1),
(10, 3, 3, 'laras', '2024-06-06', 'jus strawberry', 20000, 3, 60000, 'najwa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `logaktif`
--
ALTER TABLE `logaktif`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kode_menu`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `kode_menu_2` (`kode_menu`),
  ADD KEY `id_karyawan_2` (`id_karyawan`),
  ADD KEY `kode_menu_3` (`kode_menu`),
  ADD KEY `id_karyawan_3` (`id_karyawan`),
  ADD KEY `kode_menu` (`kode_menu`) USING BTREE,
  ADD KEY `id_karyawan` (`id_karyawan`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logaktif`
--
ALTER TABLE `logaktif`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `kode_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logaktif`
--
ALTER TABLE `logaktif`
  ADD CONSTRAINT `logaktif_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `menu` (`kode_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
