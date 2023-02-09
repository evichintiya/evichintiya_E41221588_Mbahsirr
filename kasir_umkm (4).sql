-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 06:32 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_umkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `kode_akun` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `token` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`kode_akun`, `username`, `pass`, `nama`, `telepon`, `token`) VALUES
(1, 'cahyonosugeng', '11111111', 'sugeng cahyono', '085812455631', 'LVGYST'),
(2, 'bellabong', '88888888', 'bellasafira', '08581234', 'ULXTON'),
(3, 'daffaoye', '00000000', 'DAFFA', '085987', 'DQEXTS'),
(4, 'michele', '000000000', 'michele', '09887', 'FUAIDI'),
(5, 'sugeng', '33333333', 'sugeng', '099808', 'USUFGJ'),
(6, 'REVALDO', '11111111', 'REVALDO', '000000000009', 'CMUXSY'),
(7, 'siswo123', '00000000', 'SISWO', '55555', 'ZBFIRW');

-- --------------------------------------------------------

--
-- Table structure for table `detail_belibarang`
--

CREATE TABLE `detail_belibarang` (
  `kd_pembelian` varchar(10) NOT NULL,
  `nama_barangbeli` varchar(50) NOT NULL,
  `harga_barangbeli` int(11) NOT NULL,
  `jumlah_barangbeli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_belibarang`
--

INSERT INTO `detail_belibarang` (`kd_pembelian`, `nama_barangbeli`, `harga_barangbeli`, `jumlah_barangbeli`) VALUES
('KB0002', 'es', 10000, 4),
('KB0002', 'es', 9000, 4),
('KB0003', 'es', 8000, 5),
('KB0004', 'Gelas Plastik (1pak)', 12000, 3),
('KB0004', 'sedotaln (1pak)', 7000, 3),
('KB0004', 'sterofoam (1pak)', 17000, 3),
('KB0005', 'Nuget (1bungkus)', 15000, 5),
('KB0005', 'beras (1kg)', 10000, 5),
('KB0005', 'air galon ', 18000, 5),
('KB0006', 'kopi (250gr)', 30000, 2),
('KB0007', 'tarro powder (500gr)', 40000, 3),
('KB0007', 'nugget frozen (1pak)', 20000, 5),
('KB0008', 'gelas plastik (1pak)', 12000, 3),
('KB0008', 'saos abc(1pcs0', 8000, 2),
('KB0009', 'susu indomilk (kaleng)', 10000, 5),
('KB0009', 'gula pasir 1kg', 8000, 3),
('KB0010', 'Teh celup (1wadah)', 8000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jualbarang`
--

CREATE TABLE `detail_jualbarang` (
  `kd_penjualan` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_jualbarang`
--

INSERT INTO `detail_jualbarang` (`kd_penjualan`, `kd_barang`, `jumlah_barang`, `harga_barang`) VALUES
('KP0004', 'BG0001', 2, 20000),
('KP0004', 'BG0002', 2, 28000),
('KP0005', 'BG0005', 3, 30000),
('KP0005', 'BG0003', 2, 14000),
('KP0006', 'BG0002', 2, 28000),
('KP0006', 'BG0003', 3, 21000),
('KP0007', 'BG0005', 2, 20000),
('KP0008', 'BG0003', 2, 14000),
('KP0009', 'BG0006', 2, 20000),
('KP0010', 'BG0004', 4, 36000),
('KP0011', 'BG0005', 4, 40000),
('KP0012', 'BG0004', 2, 18000),
('KP0015', 'BG0005', 9, 90000),
('KP0016', 'BG0002', 10, 140000),
('KP0017', 'BG0002', 2, 28000),
('KP0017', 'BG0007', 1, 2000),
('KP0018', 'BG0005', 3, 30000),
('KP0018', 'BG0003', 4, 28000),
('KP0018', 'BG0006', 5, 50000),
('KP0019', 'BG0004', 2, 18000),
('KP0019', 'BG0007', 3, 6000),
('KP0019', 'BG0001', 5, 50000),
('KP0020', 'BG0003', 4, 28000),
('KP0020', 'BG0006', 4, 40000),
('KP0020', 'BG0007', 2, 4000),
('KP0021', 'BG0002', 3, 42000),
('KP0021', 'BG0005', 4, 40000),
('KP0022', 'BG0004', 10, 90000),
('KP0022', 'BG0007', 5, 10000),
('KP0022', 'BG0004', 2, 18000),
('KP0023', 'BG0003', 5, 35000),
('KP0023', 'BG0006', 6, 60000),
('KP0023', 'BG0007', 3, 6000),
('KP0024', 'BG0004', 5, 45000),
('KP0024', 'BG0007', 6, 12000),
('KP0024', 'BG0001', 2, 20000),
('KP0025', 'BG0004', 9, 81000),
('KP0025', 'BG0007', 5, 10000),
('KP0025', 'BG0001', 3, 30000),
('KP0026', 'BG0003', 5, 35000),
('KP0026', 'BG0005', 6, 60000),
('KP0026', 'BG0007', 3, 6000),
('KP0026', 'BG0002', 4, 56000),
('KP0027', 'BG0001', 3, 30000),
('KP0027', 'BG0005', 5, 50000),
('KP0027', 'BG0007', 2, 4000),
('KP0028', 'BG0004', 5, 45000),
('KP0028', 'BG0006', 6, 60000),
('KP0029', 'BG0006', 5, 50000),
('KP0029', 'BG0003', 6, 42000);

--
-- Triggers `detail_jualbarang`
--
DELIMITER $$
CREATE TRIGGER `krg_stok` AFTER INSERT ON `detail_jualbarang` FOR EACH ROW BEGIN
UPDATE tbl_barang 
SET stok_barang = stok_barang - NEW.jumlah_barang 
WHERE kd_barang = NEW.kd_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detailstok` int(11) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detailstok`, `kd_barang`, `jumlah_jual`) VALUES
(1, 'BG0001', 4);

-- --------------------------------------------------------

--
-- Table structure for table `histori_hapusbarang`
--

CREATE TABLE `histori_hapusbarang` (
  `id_log` int(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `waktu_hapus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori_hapusbarang`
--

INSERT INTO `histori_hapusbarang` (`id_log`, `kd_barang`, `nama_barang`, `harga_barang`, `stok_barang`, `waktu_hapus`) VALUES
(1, 'B0004', 'TEH TARIK', 9000, 50, '2022-11-28'),
(2, 'BG0004', 'hfskskfs', 5000, 4, '2022-11-29'),
(3, 'BG0005', 'udsyufiyi', 43453, 5, '2022-11-29'),
(4, 'BG0006', 'KOPI TUBRUK', 7000, 50, '2022-12-02'),
(5, 'BG0007', 'TARO LATTE', 14000, 70, '2022-12-06'),
(6, 'BG0008', 'ccasc', 100, 10, '2022-12-10'),
(7, 'BG0009', 'es', 7000, 90, '2022-12-13'),
(8, 'BG0010', 'batu', 5000, 30, '2022-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `session_login`
--

CREATE TABLE `session_login` (
  `kode_sesi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `harga_barang`, `stok_barang`) VALUES
('BG0001', 'ICE TEH', 10000, 33),
('BG0002', 'TARO LATTE', 14000, 51),
('BG0003', 'ORIGINAL COFFE', 7000, 16),
('BG0004', 'TEH TARIK', 9000, 22),
('BG0005', 'BLACK COFFE', 10000, 23),
('BG0006', 'GREEN COFFE', 10000, 23),
('BG0007', 'JUS BUAH', 2000, 6);

--
-- Triggers `tbl_barang`
--
DELIMITER $$
CREATE TRIGGER `before_delete_barang` BEFORE DELETE ON `tbl_barang` FOR EACH ROW BEGIN
INSERT INTO histori_hapusbarang
SET kd_barang = old.kd_barang,
nama_barang = old.nama_barang,
harga_barang=old.harga_barang,
stok_barang = old.stok_barang,
waktu_hapus = NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_hargabarang` BEFORE UPDATE ON `tbl_barang` FOR EACH ROW BEGIN
INSERT INTO update_hargabarang
SET kd_barang = OLD.kd_barang,
harga_lama = OLD.harga_barang,
harga_baru = NEW.harga_barang,
waktu_update = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `kd_karyawan` varchar(10) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `notelp_karyawan` char(13) NOT NULL,
  `alamat_karyawan` varchar(100) NOT NULL,
  `email_karyawan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`kd_karyawan`, `nama_karyawan`, `notelp_karyawan`, `alamat_karyawan`, `email_karyawan`) VALUES
('KR0001', 'MICHELE', '0980', 'MAGETAN', 'micel@gmail.com'),
('KR0002', 'DAFFA', '09898', 'KEDIRI', 'daffa@gmail.com'),
('KR0003', 'CAHYONO', '0858', 'KEDIRI', 'cahyono@gmail.com'),
('KR0004', 'TARISKA', '09809', 'NGANJUK', 'tariska@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kd_karyawan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `kd_karyawan`) VALUES
('MICEL', '1234', 'KR0001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `kd_pembelian` varchar(10) NOT NULL,
  `kd_supplier` varchar(10) NOT NULL,
  `total_hargabarangbelii` int(11) NOT NULL,
  `waktu_beli` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`kd_pembelian`, `kd_supplier`, `total_hargabarangbelii`, `waktu_beli`) VALUES
('', 'SP0001', 40000, '2022-12-10'),
('KB0001', 'SP0001', 20000, '2022-12-10'),
('KB0002', 'SP0001', 40000, '2022-12-10'),
('KB0003', 'SP0001', 40000, '2022-12-13'),
('KB0004', 'SP0003', 108000, '2022-12-14'),
('KB0005', 'SP0003', 215000, '2022-12-15'),
('KB0006', 'SP0001', 60000, '2022-12-15'),
('KB0007', 'SP0003', 220000, '2022-12-16'),
('KB0008', 'SP0003', 52000, '2022-12-17'),
('KB0009', 'SP0001', 74000, '2022-12-18'),
('KB0010', 'SP0002', 24000, '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `kd_penjualan` varchar(10) NOT NULL,
  `kd_karyawan` varchar(10) NOT NULL,
  `total_barang` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `waktu_penjualan` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`kd_penjualan`, `kd_karyawan`, `total_barang`, `total_harga`, `waktu_penjualan`) VALUES
('KP0001', 'KR0001', 8, 13000, '2022-12-06'),
('KP0002', 'KR0001', 3, 34000, '2022-12-06'),
('KP0003', 'KR0002', 7, 66000, '2022-12-06'),
('KP0004', 'KR0001', 4, 48000, '2022-12-06'),
('KP0005', 'KR0001', 5, 44000, '2022-12-06'),
('KP0006', 'KR0001', 5, 49000, '2022-12-06'),
('KP0007', 'KR0001', 2, 20000, '2022-12-10'),
('KP0008', 'KR0001', 2, 14000, '2022-12-10'),
('KP0009', 'KR0001', 2, 20000, '2022-12-12'),
('KP0010', 'KR0001', 4, 36000, '2022-12-13'),
('KP0011', 'KR0001', 4, 40000, '2022-12-13'),
('KP0012', 'KR0001', 2, 18000, '2022-12-13'),
('KP0013', 'KR0001', 4, 28000, '2022-12-13'),
('KP0014', 'KR0002', 10, 140000, '2022-12-13'),
('KP0015', 'KR0001', 9, 90000, '2022-12-13'),
('KP0016', 'KR0001', 10, 140000, '2022-12-13'),
('KP0017', 'KR0001', 3, 30000, '2022-12-13'),
('KP0018', 'KR0001', 12, 108000, '2022-12-14'),
('KP0019', 'KR0001', 10, 74000, '2022-12-15'),
('KP0020', 'KR0001', 10, 72000, '2022-12-15'),
('KP0021', 'KR0001', 7, 82000, '2022-12-15'),
('KP0022', 'KR0003', 17, 118000, '2022-12-16'),
('KP0023', 'KR0003', 14, 101000, '2022-12-16'),
('KP0024', 'KR0003', 13, 77000, '2022-12-17'),
('KP0025', 'KR0003', 17, 121000, '2022-12-17'),
('KP0026', 'KR0003', 18, 157000, '2022-12-18'),
('KP0027', 'KR0001', 10, 84000, '2022-12-19'),
('KP0028', 'KR0001', 11, 105000, '2022-12-19'),
('KP0029', 'KR0001', 11, 92000, '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `kd_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp_supplier` char(13) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`kd_supplier`, `nama_supplier`, `notelp_supplier`, `alamat_supplier`) VALUES
('SP0001', 'PT.COCA COLA', '08970', 'NGANJUK'),
('SP0002', 'TOKO KELONTONG', '09880', 'NGANJUK'),
('SP0003', 'PASAR', '000003131', 'NGANJUK'),
('SP0004', 'ES BATU', '009000', 'NGANJUK');

-- --------------------------------------------------------

--
-- Table structure for table `update_hargabarang`
--

CREATE TABLE `update_hargabarang` (
  `kd_updatebarang` int(11) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `harga_lama` int(11) NOT NULL,
  `harga_baru` int(11) NOT NULL,
  `waktu_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_hargabarang`
--

INSERT INTO `update_hargabarang` (`kd_updatebarang`, `kd_barang`, `harga_lama`, `harga_baru`, `waktu_update`) VALUES
(1, 'BG0001', 5000, 10000, '2022-11-28'),
(2, 'BG0001', 10000, 10000, '2022-11-28'),
(3, 'BG0003', 10000, 7000, '2022-11-29'),
(4, 'BG0003', 7000, 7000, '2022-11-29'),
(5, 'BG0005', 8000, 10000, '2022-12-02'),
(6, 'BG0005', 10000, 6000, '2022-12-02'),
(7, 'BG0005', 6000, 10000, '2022-12-02'),
(9, 'BG0004', 9000, 9000, '2022-12-06'),
(10, 'BG0005', 10000, 10000, '2022-12-13'),
(11, 'BG0002', 14000, 14000, '2022-12-13'),
(12, 'BG0007', 2000, 2000, '2022-12-13'),
(13, 'BG0006', 10000, 10000, '2022-12-13'),
(14, 'BG0002', 14000, 14000, '2022-12-13'),
(15, 'BG0007', 2000, 2000, '2022-12-13'),
(16, 'BG0005', 10000, 10000, '2022-12-14'),
(17, 'BG0003', 7000, 7000, '2022-12-14'),
(18, 'BG0006', 10000, 10000, '2022-12-14'),
(19, 'BG0004', 9000, 9000, '2022-12-15'),
(20, 'BG0007', 2000, 2000, '2022-12-15'),
(21, 'BG0001', 10000, 10000, '2022-12-15'),
(22, 'BG0003', 7000, 7000, '2022-12-15'),
(23, 'BG0006', 10000, 10000, '2022-12-15'),
(24, 'BG0007', 2000, 2000, '2022-12-15'),
(25, 'BG0006', 10000, 10000, '2022-12-15'),
(26, 'BG0007', 2000, 2000, '2022-12-15'),
(27, 'BG0002', 14000, 14000, '2022-12-15'),
(28, 'BG0005', 10000, 10000, '2022-12-15'),
(29, 'BG0004', 9000, 9000, '2022-12-16'),
(30, 'BG0007', 2000, 2000, '2022-12-16'),
(31, 'BG0004', 9000, 9000, '2022-12-16'),
(32, 'BG0003', 7000, 7000, '2022-12-16'),
(33, 'BG0006', 10000, 10000, '2022-12-16'),
(34, 'BG0007', 2000, 2000, '2022-12-16'),
(35, 'BG0004', 9000, 9000, '2022-12-17'),
(36, 'BG0007', 2000, 2000, '2022-12-17'),
(37, 'BG0001', 10000, 10000, '2022-12-17'),
(38, 'BG0004', 9000, 9000, '2022-12-17'),
(39, 'BG0007', 2000, 2000, '2022-12-17'),
(40, 'BG0001', 10000, 10000, '2022-12-17'),
(41, 'BG0003', 7000, 7000, '2022-12-18'),
(42, 'BG0005', 10000, 10000, '2022-12-18'),
(43, 'BG0007', 2000, 2000, '2022-12-18'),
(44, 'BG0002', 14000, 14000, '2022-12-18'),
(45, 'BG0001', 10000, 10000, '2022-12-19'),
(46, 'BG0005', 10000, 10000, '2022-12-19'),
(47, 'BG0007', 2000, 2000, '2022-12-19'),
(48, 'BG0004', 9000, 9000, '2022-12-19'),
(49, 'BG0006', 10000, 10000, '2022-12-19'),
(50, 'BG0006', 10000, 10000, '2022-12-20'),
(51, 'BG0003', 7000, 7000, '2022-12-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`kode_akun`);

--
-- Indexes for table `detail_belibarang`
--
ALTER TABLE `detail_belibarang`
  ADD KEY `kd_pembelian` (`kd_pembelian`);

--
-- Indexes for table `detail_jualbarang`
--
ALTER TABLE `detail_jualbarang`
  ADD KEY `kd_penjualan` (`kd_penjualan`),
  ADD KEY `id_barang` (`kd_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detailstok`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `histori_hapusbarang`
--
ALTER TABLE `histori_hapusbarang`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `session_login`
--
ALTER TABLE `session_login`
  ADD PRIMARY KEY (`kode_sesi`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`kd_karyawan`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `kd_karyawan` (`kd_karyawan`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`kd_pembelian`),
  ADD KEY `kd_supplier` (`kd_supplier`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`kd_penjualan`),
  ADD KEY `kd_karyawan` (`kd_karyawan`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`kd_supplier`);

--
-- Indexes for table `update_hargabarang`
--
ALTER TABLE `update_hargabarang`
  ADD PRIMARY KEY (`kd_updatebarang`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `kode_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detailstok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histori_hapusbarang`
--
ALTER TABLE `histori_hapusbarang`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `update_hargabarang`
--
ALTER TABLE `update_hargabarang`
  MODIFY `kd_updatebarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_belibarang`
--
ALTER TABLE `detail_belibarang`
  ADD CONSTRAINT `detail_belibarang_ibfk_1` FOREIGN KEY (`kd_pembelian`) REFERENCES `tbl_pembelian` (`kd_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_jualbarang`
--
ALTER TABLE `detail_jualbarang`
  ADD CONSTRAINT `detail_jualbarang_ibfk_1` FOREIGN KEY (`kd_penjualan`) REFERENCES `tbl_penjualan` (`kd_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_jualbarang_ibfk_2` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`kd_karyawan`) REFERENCES `tbl_karyawan` (`kd_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD CONSTRAINT `tbl_pembelian_ibfk_1` FOREIGN KEY (`kd_supplier`) REFERENCES `tbl_supplier` (`kd_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_2` FOREIGN KEY (`kd_karyawan`) REFERENCES `tbl_karyawan` (`kd_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `update_hargabarang`
--
ALTER TABLE `update_hargabarang`
  ADD CONSTRAINT `update_hargabarang_ibfk_1` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
