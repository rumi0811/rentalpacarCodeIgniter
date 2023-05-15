-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 08:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_pacar`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `username_karyawan` varchar(255) NOT NULL,
  `password_karyawan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `username_karyawan`, `password_karyawan`) VALUES
(1, 'Sekar Puspita Arum', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Agrerogates Tambunan', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Atea', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `pacar_sewa`
--

CREATE TABLE `pacar_sewa` (
  `id_pacar` int(11) NOT NULL,
  `nama_pacar` varchar(255) NOT NULL,
  `alamat_pacar` text NOT NULL,
  `jk_pacar` varchar(10) NOT NULL,
  `hp_pacar` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 = tersedia, 2 = sedang dipinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacar_sewa`
--

INSERT INTO `pacar_sewa` (`id_pacar`, `nama_pacar`, `alamat_pacar`, `jk_pacar`, `hp_pacar`, `status`) VALUES
(1, 'Hamdi Sholahudin', 'Bandung', 'Laki-laki', '089676567876', 1),
(2, 'Putri Syabandini', 'Ciputat', 'Perempuan', '0897876567898', 2),
(3, 'Werry Nurlisa', 'NTT', 'Perempuan', '089765456765', 1),
(4, 'Aulia Syarif', 'Pekalongan', 'Perempuan', '087656567876', 1),
(5, 'Desy Fitrah Karim', 'Medan', 'Perempuan', '0876567876767', 2),
(6, 'Sri ', 'Medan', 'Perempuan', '089776567676', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `jk_pelanggan` varchar(10) NOT NULL,
  `hp_pelanggan` varchar(20) NOT NULL,
  `ktp_pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `jk_pelanggan`, `hp_pelanggan`, `ktp_pelanggan`) VALUES
(1, 'Desta Parwathi', 'Bali', 'Perempuan', '081234567890', '11234567895467813'),
(2, 'Yuyun Nurlita', 'Pekalongan', 'Perempuan', '0879126789123', '3120986456789765'),
(3, 'Rafly Alfianto', 'Blitar', 'Laki-laki', '089566676555123', '3123765467898765'),
(4, 'Zulfa', 'Ciputat', 'Laki-laki', '0812345678902', '3208767898765456'),
(5, 'Deta Acha Wijaya', 'Blitar', 'Laki-laki', '089345678292', '3127654798765478'),
(6, 'Rifki Pratama', 'Riau', 'Laki-laki', '0895678909876', '3120976543567876');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_pacar` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `totaldenda` int(11) NOT NULL,
  `tgl_dikembalikan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_pelanggan`, `id_pacar`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tgl_transaksi`, `totaldenda`, `tgl_dikembalikan`, `status`) VALUES
(1, 1, 2, 5, '2023-05-12', '2023-05-15', 3000000, 3000000, '2023-05-08', 3000000, '2023-05-17', 1),
(2, 1, 3, 2, '2023-05-19', '2023-05-22', 4500000, 0, '2023-05-12', 0, '2023-05-24', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pacar_sewa`
--
ALTER TABLE `pacar_sewa`
  ADD PRIMARY KEY (`id_pacar`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pacar_sewa`
--
ALTER TABLE `pacar_sewa`
  MODIFY `id_pacar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
