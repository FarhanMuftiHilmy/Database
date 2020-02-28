-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 09:29 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE IF NOT EXISTS `gaji` (
  `no_id` int(4) NOT NULL,
  `gaji` bigint(10) NOT NULL,
  `dari` date NOT NULL,
  `sampai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `no_id` int(4) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `jenis_kel` enum('L','P') DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT 'Nomaden'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`no_id`, `nama`, `tgl_lhr`, `jenis_kel`, `email`, `alamat`) VALUES
(1, 'Dani Sutejo', '1999-03-01', 'L', 'ds@gmail.com', 'Nomaden'),
(2, 'Rendra Sugriwo', '1995-11-05', 'L', 'masren@gmail.com', 'Nomaden'),
(3, 'Steve', '1970-02-01', 'L', 'captain@gmail.com', 'Nomaden'),
(4, 'Rogers', '1971-01-02', 'L', 'america@gmail.com', 'Nomaden'),
(5, 'Dewi', '1990-05-10', 'P', 'dewiii@yahoo.com', 'Nomaden'),
(6, 'Ariesta', '1990-03-22', 'P', 'wedus@yahoo.com', 'Nomaden'),
(7, 'Virgo', '1990-12-11', 'P', 'gentongajaib@yahoo.com', 'Nomaden'),
(8, 'Angelica', '1995-10-17', 'P', 'angelbanget@yahoo.com', 'Nomaden');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD KEY `no_id` (`no_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`no_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `no_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_ibfk_1` FOREIGN KEY (`no_id`) REFERENCES `pegawai` (`no_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
