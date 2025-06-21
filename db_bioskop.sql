-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbookskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangku`
--

CREATE TABLE `bangku` (
  `id` int(11) NOT NULL,
  `nomor_studio` char(1) NOT NULL,
  `bioskop` varchar(20) NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bangku`
--

INSERT INTO `bangku` (`id`, `nomor_studio`, `bioskop`, `a1`, `a2`, `a3`, `a4`, `b1`, `b2`, `b3`, `b4`, `c1`, `c2`, `c3`, `c4`) VALUES
(1, '1', 'Detos XXI', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(2, '1', 'Plaxa XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '1', 'Margo XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2', 'Detos XXI', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '2', 'Plaza XXI', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(6, '2', 'Margo XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '3', 'Detos XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '3', 'Plaza XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '3', 'Margo XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '4', 'Detos XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '4', 'Plaza XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '4', 'Margo XXI', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(13, '5', 'Detos XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '5', 'Plaza XXI', 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0),
(15, '5', 'Margo XXI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `id` int(11) NOT NULL,
  `nama_bioskop` varchar(30) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `daerah` varchar(30) NOT NULL,
  `nomor_studio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`id`, `nama_bioskop`, `alamat`, `daerah`, `nomor_studio`) VALUES
(1, 'Detos XXI', 'Depok Detos', 'Depok', 1),
(3, 'Plaza XXI', 'Plaza Ramayana', 'Depok', 3),
(4, 'Margo XXI', 'Margonda', 'Depok', 2),
(5, 'AAA', 'aaa', 'jjhhg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `sutradara` varchar(70) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `durasi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_bioskop` varchar(30) NOT NULL,
  `nomor_studio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `judul`, `sutradara`, `kategori`, `durasi`, `tanggal`, `jam_mulai`, `jam_selesai`, `harga`, `nama_bioskop`, `nomor_studio`) VALUES
(1, 'My Stupid Bos', 'Falcon Picture', 'Drama Parody', '2 jam', '2025-06-10', '08:00:00', '10:00:00', 25000, 'Detos XXI', 2),
(2, 'Final Fantasy VII', 'Squarenix', 'Fantasy', '3', '2025-06-15', '11:00:00', '14:00:00', 30000, 'Plaza XXI', 1),
(3, 'Naruto Taubat', 'Uzumaki Fakhri', 'Parody', '2', '2025-12-12', '01:00:15', '01:00:20', 100, 'Margo XXI', 3),
(6, 'Tahu Bulat TheMovie', 'Yusuf Mata Air', 'Parody', '3', '2025-12-13', '02:00:15', '04:00:20', 60000, 'Plaza XXI', 5),
(9, 'Dora Explorer', 'ucup', 'lawak', '2', '2025-04-12', '12:00:01', '14:00:01', 25500, 'Detos XXI', 1),
(11, 'London Has Molen', 'Brian Swimmer', 'Drama horor', '3', '2025-05-12', '13:00:01', '16:00:01', 31000, 'Plaza XXI', 2),
(14, 'X-Women', 'Jhon Thor', 'Action', '2', '2016-05-18', '12:00:02', '14:00:02', 35000, 'Margo XXI', 4),
(15, 'Rumah Kepemimpinan', 'Bahri Sutejo', 'Romance', '3', '2016-07-11', '11:00:02', '14:00:03', 40000, 'Detos XXI', 5),
(23, 'drama kumbara', 'kutu', 'Action, Drama', '2 Jam', '2025-07-15', '13:20:00', '13:20:00', 200000, 'Detos XXI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `nama_bioskop` varchar(30) NOT NULL,
  `nomor_studio` char(1) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `waktu_pemesanan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `baris` char(1) NOT NULL,
  `nomor_bangku` varchar(3) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `nama_bioskop`, `nomor_studio`, `judul`, `waktu_pemesanan`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `baris`, `nomor_bangku`, `harga`) VALUES
(36, 'qqqqq', 'Plaza XXI', '5', 'Tahu Bulat TheMovie', '2025-06-14 17:03:05', '2025-12-13', '02:00:15', '04:00:20', 'a', '1', 60000),
(37, 'qqqqq', 'Plaza XXI', '2', 'London Has Molen', '2025-06-14 17:03:15', '2025-05-12', '13:00:01', '16:00:01', 'a', '1', 31000),
(38, 'qqqqq', 'Margo XXI', '4', 'X-Women', '2025-06-14 17:03:31', '2016-05-18', '12:00:02', '14:00:02', 'b', '3', 35000),
(39, 'dimas', 'Plaza XXI', '5', 'Tahu Bulat TheMovie', '2025-06-14 17:07:50', '2025-12-13', '02:00:15', '04:00:20', 'a', '2', 60000),
(40, 'hari', 'Margo XXI', '4', 'X-Women', '2025-06-14 17:08:11', '2016-05-18', '12:00:02', '14:00:02', 'b', '1', 35000),
(41, 'dimass', 'Detos XXI', '2', 'My Stupid Bos', '2025-06-14 17:14:30', '2025-06-14', '08:00:00', '10:00:00', 'a', '1', 25000),
(42, 'fase', 'Plaza XXI', '5', 'Tahu Bulat TheMovie', '2025-06-14 17:14:50', '2025-12-13', '02:00:15', '04:00:20', 'b', '1', 60000),
(43, 'burhan', 'Margo XXI', '4', 'X-Women', '2025-06-14 17:17:32', '2016-05-18', '12:00:02', '14:00:02', 'c', '2', 35000),
(44, 'burhan', 'Plaza XXI', '5', 'Tahu Bulat TheMovie', '2025-06-14 17:17:39', '2025-12-13', '02:00:15', '04:00:20', 'b', '2', 60000),
(45, 'burhan', 'Plaza XXI', '5', 'Tahu Bulat TheMovie', '2025-06-14 17:17:43', '2025-12-13', '02:00:15', '04:00:20', 'b', '4', 60000),
(46, 'billi', 'Detos XXI', '2', 'drama kumbara', '2025-06-16 06:21:40', '2025-07-15', '13:20:00', '13:20:00', 'a', '2', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_bioskop` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`, `nama`, `nama_bioskop`, `role`) VALUES
(1, 'admin', 'admin', 'si admin', 'Detos XXI', 5),
(3, 'stbioskop', 'stbioskop', 'yusuf matahari', 'Detos XXI', 2),
(4, 'stpelanggan', 'stpelanggan', 'm fakhri', 'Detos XXI', 3),
(7, 'ststudio', 'ststudio', 'Taufiq Abdullah Imran', 'Detos XXI', 1),
(8, 'stfilm', 'stfilm', 'Amin Film', 'Plaza XXI', 4);

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `id` int(11) NOT NULL,
  `nomor_studio` char(1) NOT NULL,
  `judul` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id`, `nomor_studio`, `judul`) VALUES
(1, '1', 'Final Fantasy VII'),
(2, '2', 'My Stupid Bos'),
(3, '3', 'Naruto Taubat'),
(4, '4', 'Final Fantasy VII'),
(5, '5', 'Final Fantasy VII');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangku`
--
ALTER TABLE `bangku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `judul` (`judul`),
  ADD UNIQUE KEY `waktu_mulai` (`jam_mulai`),
  ADD UNIQUE KEY `waktu_selesai` (`jam_selesai`),
  ADD UNIQUE KEY `tanggal` (`tanggal`),
  ADD UNIQUE KEY `harga` (`harga`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_studio` (`nomor_studio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangku`
--
ALTER TABLE `bangku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bioskop`
--
ALTER TABLE `bioskop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studio`
--
ALTER TABLE `studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
