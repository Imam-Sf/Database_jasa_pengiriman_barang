-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 10:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jasa_pengiriman_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE IF NOT EXISTS `tabel_barang` (
`Id_barang` int(11) NOT NULL,
  `Nama_barang` varchar(50) DEFAULT NULL,
  `Kategori_barang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`Id_barang`, `Nama_barang`, `Kategori_barang`) VALUES
(1, 'cmd', 'mm'),
(2, 'barang', 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_biaya`
--

CREATE TABLE IF NOT EXISTS `tabel_biaya` (
  `Id_biaya` int(20) NOT NULL,
  `Id_kota` char(20) NOT NULL,
  `Harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_cabang`
--

CREATE TABLE IF NOT EXISTS `tabel_cabang` (
  `Id_cabang` int(20) NOT NULL,
  `Nama_cabang` varchar(50) NOT NULL,
  `Alamat_cabang` varchar(50) NOT NULL,
  `No_telp` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_costumer`
--

CREATE TABLE IF NOT EXISTS `tabel_costumer` (
  `Id_cust` int(30) NOT NULL,
  `Nama_pengirim` varchar(20) NOT NULL,
  `Email` int(20) NOT NULL,
  `Alamat_asal` text NOT NULL,
  `No_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kecamatan`
--

CREATE TABLE IF NOT EXISTS `tabel_kecamatan` (
  `Id_kecamatan` char(20) NOT NULL,
  `Id_kota` char(20) NOT NULL,
  `Nama_kecamatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keluhan`
--

CREATE TABLE IF NOT EXISTS `tabel_keluhan` (
  `Id_keluhan` int(20) NOT NULL,
  `No_resi` varchar(30) NOT NULL,
  `Jenis_keluhan` varchar(50) NOT NULL,
  `Pesan` text NOT NULL,
  `Waktu_keluhan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kelurahan`
--

CREATE TABLE IF NOT EXISTS `tabel_kelurahan` (
  `Id_kelurahan` char(20) NOT NULL,
  `Id_kecamatan` char(20) NOT NULL,
  `Nama_Kelurahan` varchar(20) NOT NULL,
  `Nama_kecamatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kota`
--

CREATE TABLE IF NOT EXISTS `tabel_kota` (
  `Id_kota` char(20) NOT NULL,
  `Id_provinsi` char(20) NOT NULL,
  `Nama_kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_login`
--

CREATE TABLE IF NOT EXISTS `tabel_login` (
  `Id_login` int(20) NOT NULL,
  `Id_cabang` int(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `No_hp` varchar(20) NOT NULL,
  `Alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pengiriman`
--

CREATE TABLE IF NOT EXISTS `tabel_pengiriman` (
  `No_resi` varchar(50) NOT NULL,
  `Id_barang` int(11) DEFAULT NULL,
  `Berat` double NOT NULL,
  `Satuan_berat` varchar(10) NOT NULL,
  `Layanan` varchar(20) NOT NULL,
  `Tgl_kirim` date NOT NULL,
  `Nama_penerima` varchar(20) NOT NULL,
  `Alamat_tujuan` varchar(50) NOT NULL,
  `Kodepos` int(10) NOT NULL,
  `No_hp_penerima` varchar(20) NOT NULL,
  `Id_costumer` int(20) NOT NULL,
  `Id_Kelurahan` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_progress`
--

CREATE TABLE IF NOT EXISTS `tabel_progress` (
  `Status` varchar(50) NOT NULL,
  `Tanggal_lapor` date NOT NULL,
  `No_resi` varchar(50) NOT NULL,
  `Id_cabang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_provinsi`
--

CREATE TABLE IF NOT EXISTS `tabel_provinsi` (
  `Id_provinsi` char(20) NOT NULL,
  `Nama_provinsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
 ADD PRIMARY KEY (`Id_barang`);

--
-- Indexes for table `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
 ADD PRIMARY KEY (`Id_biaya`), ADD KEY `Id_kota` (`Id_kota`);

--
-- Indexes for table `tabel_cabang`
--
ALTER TABLE `tabel_cabang`
 ADD PRIMARY KEY (`Id_cabang`);

--
-- Indexes for table `tabel_costumer`
--
ALTER TABLE `tabel_costumer`
 ADD PRIMARY KEY (`Id_cust`);

--
-- Indexes for table `tabel_kecamatan`
--
ALTER TABLE `tabel_kecamatan`
 ADD PRIMARY KEY (`Id_kecamatan`), ADD KEY `Id_kota` (`Id_kota`);

--
-- Indexes for table `tabel_keluhan`
--
ALTER TABLE `tabel_keluhan`
 ADD PRIMARY KEY (`Id_keluhan`), ADD KEY `No_resi` (`No_resi`);

--
-- Indexes for table `tabel_kelurahan`
--
ALTER TABLE `tabel_kelurahan`
 ADD PRIMARY KEY (`Id_kelurahan`), ADD KEY `Id_kecamatan` (`Id_kecamatan`);

--
-- Indexes for table `tabel_kota`
--
ALTER TABLE `tabel_kota`
 ADD PRIMARY KEY (`Id_kota`), ADD KEY `Id_provinsi` (`Id_provinsi`);

--
-- Indexes for table `tabel_login`
--
ALTER TABLE `tabel_login`
 ADD PRIMARY KEY (`Id_login`), ADD KEY `Id_login` (`Id_login`), ADD KEY `Id_login_2` (`Id_login`), ADD KEY `Id_cabang` (`Id_cabang`);

--
-- Indexes for table `tabel_pengiriman`
--
ALTER TABLE `tabel_pengiriman`
 ADD PRIMARY KEY (`No_resi`), ADD UNIQUE KEY `Id_Kelurahan_2` (`Id_Kelurahan`), ADD KEY `Id_costumer` (`Id_costumer`), ADD KEY `Id_Kelurahan` (`Id_Kelurahan`), ADD KEY `Id_costumer_2` (`Id_costumer`), ADD KEY `Id_barang` (`Id_barang`);

--
-- Indexes for table `tabel_progress`
--
ALTER TABLE `tabel_progress`
 ADD PRIMARY KEY (`Status`), ADD KEY `Id_cabang` (`Id_cabang`), ADD KEY `No_resi` (`No_resi`);

--
-- Indexes for table `tabel_provinsi`
--
ALTER TABLE `tabel_provinsi`
 ADD PRIMARY KEY (`Id_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
MODIFY `Id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_biaya`
--
ALTER TABLE `tabel_biaya`
ADD CONSTRAINT `tabel_biaya_ibfk_1` FOREIGN KEY (`Id_kota`) REFERENCES `tabel_kota` (`Id_kota`);

--
-- Constraints for table `tabel_kecamatan`
--
ALTER TABLE `tabel_kecamatan`
ADD CONSTRAINT `tabel_kecamatan_ibfk_1` FOREIGN KEY (`Id_kota`) REFERENCES `tabel_kota` (`Id_kota`);

--
-- Constraints for table `tabel_keluhan`
--
ALTER TABLE `tabel_keluhan`
ADD CONSTRAINT `tabel_keluhan_ibfk_1` FOREIGN KEY (`No_resi`) REFERENCES `tabel_pengiriman` (`No_resi`);

--
-- Constraints for table `tabel_kelurahan`
--
ALTER TABLE `tabel_kelurahan`
ADD CONSTRAINT `tabel_kelurahan_ibfk_1` FOREIGN KEY (`Id_kecamatan`) REFERENCES `tabel_kecamatan` (`Id_kecamatan`);

--
-- Constraints for table `tabel_kota`
--
ALTER TABLE `tabel_kota`
ADD CONSTRAINT `tabel_kota_ibfk_1` FOREIGN KEY (`Id_provinsi`) REFERENCES `tabel_provinsi` (`Id_provinsi`);

--
-- Constraints for table `tabel_login`
--
ALTER TABLE `tabel_login`
ADD CONSTRAINT `tabel_login_ibfk_1` FOREIGN KEY (`Id_cabang`) REFERENCES `tabel_cabang` (`Id_cabang`);

--
-- Constraints for table `tabel_pengiriman`
--
ALTER TABLE `tabel_pengiriman`
ADD CONSTRAINT `tabel_pengiriman_ibfk_2` FOREIGN KEY (`Id_Kelurahan`) REFERENCES `tabel_kelurahan` (`Id_kelurahan`),
ADD CONSTRAINT `tabel_pengiriman_ibfk_3` FOREIGN KEY (`Id_costumer`) REFERENCES `tabel_costumer` (`Id_cust`),
ADD CONSTRAINT `tabel_pengiriman_ibfk_4` FOREIGN KEY (`Id_barang`) REFERENCES `tabel_barang` (`Id_barang`);

--
-- Constraints for table `tabel_progress`
--
ALTER TABLE `tabel_progress`
ADD CONSTRAINT `tabel_progress_ibfk_1` FOREIGN KEY (`Id_cabang`) REFERENCES `tabel_cabang` (`Id_cabang`),
ADD CONSTRAINT `tabel_progress_ibfk_2` FOREIGN KEY (`No_resi`) REFERENCES `tabel_pengiriman` (`No_resi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
