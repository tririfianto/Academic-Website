-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2014 at 07:47 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_webakademis_php`
--
CREATE DATABASE `db_webakademis_php` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_webakademis_php`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID_DOSEN` char(4) NOT NULL,
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD_ADMIN` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_DOSEN`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_DOSEN`, `USERNAME`, `PASSWORD_ADMIN`) VALUES
('D001', 'admin', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `ID_DOSEN` char(4) NOT NULL,
  `NAMA_DOSEN` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`) VALUES
('D001', 'Asep Sarman'),
('D002', 'Barmang Sudibyo'),
('D003', 'Carlie Michale'),
('D004', 'Cazi Memtahu'),
('D005', 'Edi Subowo'),
('D006', 'Fenty Furi'),
('D007', 'Hariman Selasawa'),
('D008', 'Killian Misale'),
('D009', 'Leni Murdiati'),
('D010', 'Nina Bobo'),
('D011', 'Oni Syafawi');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `ID_JADWAL` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID_MATKUL` char(6) DEFAULT NULL,
  `ID_RUANGAN` char(4) DEFAULT NULL,
  `HARI` varchar(7) NOT NULL,
  `JAM` varchar(20) NOT NULL,
  `STATUS` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_JADWAL`),
  KEY `FK_RELATIONSHIP_1` (`ID_MATKUL`),
  KEY `FK_RELATIONSHIP_2` (`ID_RUANGAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID_JADWAL`, `ID_MATKUL`, `ID_RUANGAN`, `HARI`, `JAM`, `STATUS`) VALUES
(1, 'MK4005', 'R001', 'senin', '09:50-11:30', 'Teori'),
(2, 'MK4001', 'R001', 'senin', '07:50-09:30', 'Praktek'),
(3, 'MK4009', 'R002', 'selasa', '09:50-11:30', 'Teori'),
(4, 'MK4006', 'R003', 'rabu', '09:50-11:30', 'Teori');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NIM_MHS` char(9) NOT NULL,
  `NAMA_MHS` varchar(30) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  PRIMARY KEY (`NIM_MHS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `PASSWORD`) VALUES
('101524001', 'Jauhari K K', 'demo123'),
('101524003', 'Ahmad Bajuri', 'akh67b'),
('101524004', 'Ajay Rukmana', '189nsm'),
('101524005', 'Bangki Banka', 'na91al'),
('101524006', 'Cecil Milani', 'ma01kw'),
('101524009', 'Dino Dinoman', 'jak091'),
('101524027', 'Efi Fifit', 'nak01m'),
('101524028', 'Fejari Kolawa', '6fbfe4'),
('101524029', 'Gei Maraban', 'oai0sm'),
('101524030', 'Limas Mestaka', 'amn100'),
('101524031', 'Oon Sarbiyat', '891qnm');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `ID_MATKUL` char(6) NOT NULL,
  `NAMA_MATKUL` varchar(30) NOT NULL,
  `SKS_MATKUL` int(11) NOT NULL,
  `SEMESTER` int(11) NOT NULL,
  PRIMARY KEY (`ID_MATKUL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATKUL`, `SKS_MATKUL`, `SEMESTER`) VALUES
('MK4001', 'Dasar Pemograman', 4, 1),
('MK4002', 'B.Indonesia', 3, 1),
('MK4003', 'B.Inggris I', 2, 1),
('MK4004', 'Ilmu Komputer', 3, 1),
('MK4005', 'Kognitif Komputasi', 2, 1),
('MK4006', 'Konsep Teknologi', 2, 1),
('MK4007', 'Matematika Diskrit I', 3, 1),
('MK4008', 'Kalkulus', 3, 2),
('MK4009', 'Aljabar Linear', 3, 2),
('MK4010', 'B.Inggris 2', 2, 2),
('MK4011', 'Komunikasi Teknik', 2, 2),
('MK4013', 'Pemrograman Lanjut', 3, 2),
('MK4014', 'Struktur Data Algoritma', 4, 2),
('MK4015', 'Database', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE IF NOT EXISTS `mengajar` (
  `ID_MENGAJAR` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DOSEN` char(4) DEFAULT NULL,
  `ID_MATKUL` char(6) DEFAULT NULL,
  PRIMARY KEY (`ID_MENGAJAR`),
  KEY `FK_RELATIONSHIP_3` (`ID_MATKUL`),
  KEY `FK_RELATIONSHIP_4` (`ID_DOSEN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`ID_MENGAJAR`, `ID_DOSEN`, `ID_MATKUL`) VALUES
(1, 'D001', 'MK4001');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `NIM_MHS` char(9) DEFAULT NULL,
  `ID_MATKUL` char(6) DEFAULT NULL,
  `NILAI` char(1) NOT NULL,
  KEY `FK_RELATIONSHIP_5` (`ID_MATKUL`),
  KEY `FK_RELATIONSHIP_6` (`NIM_MHS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES
('101524001', 'MK4002', 'A'),
('101524001', 'MK4001', 'A'),
('101524001', 'MK4003', 'B'),
('101524001', 'MK4004', 'B'),
('101524001', 'MK4005', 'A'),
('101524001', 'MK4006', 'B'),
('101524001', 'MK4007', 'A'),
('101524028', 'MK4001', 'A'),
('101524001', 'MK4013', 'A'),
('101524001', 'MK4008', 'A'),
('101524001', 'MK4015', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `ID_RUANGAN` char(4) NOT NULL,
  `NAMA_RUANGAN` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_RUANGAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES
('R001', 'A101'),
('R002', 'A102'),
('R003', 'A103'),
('R004', 'A104'),
('R005', 'A105'),
('R006', 'L101'),
('R007', 'L102'),
('R008', 'L103'),
('R009', 'A201'),
('R010', 'A202'),
('R011', 'A206');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_DOSEN`) REFERENCES `dosen` (`ID_DOSEN`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_MATKUL`) REFERENCES `mata_kuliah` (`ID_MATKUL`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_RUANGAN`) REFERENCES `ruangan` (`ID_RUANGAN`);

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_MATKUL`) REFERENCES `mata_kuliah` (`ID_MATKUL`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_DOSEN`) REFERENCES `dosen` (`ID_DOSEN`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`NIM_MHS`) REFERENCES `mahasiswa` (`NIM_MHS`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_MATKUL`) REFERENCES `mata_kuliah` (`ID_MATKUL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
