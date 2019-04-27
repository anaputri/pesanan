-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 07:01 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pesan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ria', '202cb962ac59075b964b07152d234b70'),
(2, 'cece', 'b4ea23a368b20bc1623e058f392f1fe4');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_lapangan`
--

CREATE TABLE IF NOT EXISTS `jenis_lapangan` (
`id` int(11) NOT NULL,
  `jns_lapangan` varchar(20) NOT NULL,
  `harga_perjam` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_lapangan`
--

INSERT INTO `jenis_lapangan` (`id`, `jns_lapangan`, `harga_perjam`) VALUES
(1, 'Matras', 150000),
(2, 'Rumput', 100000),
(3, 'Matras2', 20000),
(4, 'Krikil', 20000),
(5, 'aspal', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `sewa_lapangan`
--

CREATE TABLE IF NOT EXISTS `sewa_lapangan` (
`id` int(11) NOT NULL,
  `nama_tim` varchar(20) NOT NULL,
  `tgl_booking` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `noTelp` varchar(12) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `id_lapangan` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa_lapangan`
--

INSERT INTO `sewa_lapangan` (`id`, `nama_tim`, `tgl_booking`, `jam_masuk`, `jam_keluar`, `noTelp`, `tgl_bayar`, `harga`, `id_lapangan`) VALUES
(1, 'horizone', '2012-02-02', '08:00:00', '09:00:00', '082230166126', '2012-02-02', 150000, '1'),
(9, 'horizon', '2017-09-04', '00:00:10', '00:00:11', '085234554231', '2015-12-19', 19000, '1'),
(11, 'horizon', '2017-02-04', '00:00:10', '00:00:11', '085234554231', '2015-12-19', 20000, '1'),
(12, 'horizon', '2017-12-04', '00:00:10', '00:00:11', '085234554231', '2015-12-04', 20000, '2'),
(15, 'horizon', '0000-00-00', '00:00:10', '00:00:11', '085234554231', '0000-00-00', 25000, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_lapangan`
--
ALTER TABLE `jenis_lapangan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sewa_lapangan`
--
ALTER TABLE `sewa_lapangan`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_lapangan`
--
ALTER TABLE `jenis_lapangan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sewa_lapangan`
--
ALTER TABLE `sewa_lapangan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
