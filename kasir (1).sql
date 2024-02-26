-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2024 at 09:34 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(1, 602053656, 0, 0, 0.00),
(2, 602053656, 0, 0, 0.00),
(3, 602053656, 0, 0, 0.00),
(4, 602053656, 0, 0, 0.00),
(5, 602053656, 0, 0, 0.00),
(6, 602053656, 0, 0, 0.00),
(7, 602045215, 0, 0, 0.00),
(8, 602053656, 0, 0, 0.00),
(11, 5, 6, 7, 7000.00),
(12, 6, 3, 3, 9015.00),
(16, 6, 0, 4, 0.00),
(20, 5, 3, 10, 30000.00),
(25, 7, 3, 5, 15025.00),
(26, 7, 6, 3, 3000.00),
(27, 8, 3, 4, 12020.00),
(28, 8, 3, 8, 24024.00),
(35, 7, 0, 0, 0.00),
(36, 7, 0, 0, 0.00),
(51, 5, 9, 8, 12000.00),
(52, 5, 6, 0, 0.00),
(53, 10, 3, 2, 6000.00),
(55, 13, 9, 30, 45000.00),
(56, 12, 3, 0, 0.00),
(57, 14, 3, 0, 0.00),
(58, 1, 6, 22, 22000.00),
(60, 2, 20, 1, 6790.00),
(61, 2, 3, 5, 15000.00),
(62, 9, 3, 50, 150000.00),
(66, 19, 3, 4, 12000.00),
(67, 22, 3, 4, 12000.00),
(68, 18, 6, -2, -2000.00),
(69, 25, 25, 36, 239976.00),
(71, 26, 3, 2, 6000.00),
(72, 27, 6, 3, 3000.00),
(73, 28, 3, 2, 6000.00),
(74, 29, 9, 2, 3000.00),
(75, 30, 3, 5, 15000.00),
(76, 31, 3, 2, 6000.00),
(77, 32, 29, 2, 16000.00),
(79, 36, 3, 3, 9000.00),
(80, 37, 3, 2, 6000.00),
(81, 38, 3, 2, 8000.00);

--
-- Triggers `detailpenjualan`
--
DELIMITER $$
CREATE TRIGGER `pengurangan` AFTER INSERT ON `detailpenjualan` FOR EACH ROW BEGIN
UPDATE produk SET Stok=Stok-NEW.JumlahProduk WHERE ProdukID=NEW.ProdukID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` varchar(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`) VALUES
('', '', '', ''),
('0', 'OOO', 'MNDNG', ''),
('2402070748', 'hani', 'Tuban', '0812345678900'),
('2402070755', 'Eka', 'Tuban', '0812345678900'),
('2402070806', 'YYYY', 'Tuban', '0812345678911'),
('2402071519', 'Eka', 'Tuban', '0812345678900'),
('2402071527', 'ppppppppppp', 'MERAKURAK', '0812345678911'),
('2402080459', 'aprita', 'Tuban', '0812345678911'),
('2502061558', 'nita', 'rakurak', '089767654'),
('2502061642', 'nita', 'temandang', '0897654321'),
('2502061727', 'yani', 'temandang', '123333333'),
('2502062050', 'sriiii', 'temandang', '0897654321'),
('2502074928', 'P', 'Tuban ', '124566'),
('2502075544', 'Oooo', 'Y', '2222222222'),
('2502085341', 'rr', 'ggggh', '555555'),
('2502085403', 'tttt', 'tghb', '1233333'),
('2502085612', 'popo', 'jkjk', '5656565'),
('2502085907', 'oooo', 'hjhjh', '343434'),
('2602071450', 'srihandayani', 'Tuban', '0812345678900'),
('602034453', 'YYYY', '098765', 'Tuban'),
('602040143', 'hani', '1234567890', 'Tuban'),
('602040819', 'hani', '1234567890', 'Subang 2'),
('602045215', 'srihandayani', 'jatim', '1234567'),
('702062408', 'handayani', 'indonesia', '456780914');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-24', 22000.00, '2402070748'),
(10, '2024-02-24', 6000.00, '2402080459'),
(38, '2024-02-26', 8000.00, '2602071450');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'petugas', 'petugas 1', 'a4c22361eb709411484630d6956f287d', 1),
(5, 'petugas1', 'petugas 1', 'a4c22361eb709411484630d6956f287d', 2),
(8, 'admin 1', 'admin 1', '9f6aedae0496fd911f0d705671258c05', 1),
(9, 'hani', 'hani', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(10, 'petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 2),
(18, 'handayani', 'hndyni', 'afb91ef692fd08c445e8cb1bab2ccf9c', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(225) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
(3, 'Rinsoooo', 4000.00, 3828),
(6, 'ciki-ciki', 1000.00, 607),
(36, 'baju', 25000.00, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `PenjualanID` (`PenjualanID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `PenjualanID_2` (`PenjualanID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `ProdukID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
