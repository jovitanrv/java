-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 04:34 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Nama_cust` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Nama_cust`, `no_hp`, `alamat`) VALUES
('a', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE IF NOT EXISTS `dessert` (
  `Nama_ds` varchar(50) NOT NULL,
  `id_ds` varchar(5) NOT NULL,
  `harga_ds` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dessert`
--


-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE IF NOT EXISTS `makanan` (
  `Nama_mk` varchar(50) NOT NULL,
  `id_mk` varchar(5) NOT NULL,
  `harga_mk` int(10) NOT NULL,
  PRIMARY KEY (`id_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`Nama_mk`, `id_mk`, `harga_mk`) VALUES
('Ayam', '1', 12000),
('Bebek', '2', 15000),
('Telur', '3', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE IF NOT EXISTS `minuman` (
  `Nama_mn` varchar(50) NOT NULL,
  `id_mn` varchar(5) NOT NULL,
  `harga_mn` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`Nama_mn`, `id_mn`, `harga_mn`) VALUES
('Thai tea', '1', 10000),
('Es teh', '2', 5000),
('Es jeruk', '3', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `No_pembayaran` varchar(10) NOT NULL,
  `Ongkir` int(10) NOT NULL,
  `total_akhir` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--


-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `Tgl` varchar(10) NOT NULL,
  `no_pemesanan` varchar(10) NOT NULL,
  `jml_paket` int(3) NOT NULL,
  `harga_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

