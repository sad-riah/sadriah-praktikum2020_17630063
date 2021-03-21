-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kampus
CREATE DATABASE IF NOT EXISTS `kampus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kampus`;

-- Dumping structure for table kampus.mahasiswa
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) CHARACTER SET utf8 NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8 NOT NULL,
  `alamat` varchar(200) CHARACTER SET utf8 NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telepon` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table kampus.mahasiswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `alamat`, `jenis_kelamin`, `email`, `telepon`) VALUES
	(2, '23234', '234234', '234234', 'Pria', '3434@gmai.com', '34324234'),
	(3, '34234234', 'anu', 'jldefsfgsdtrw', 'Pria', 'anu@gmail.com', '089622222');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;

-- Dumping structure for table kampus.matkul
CREATE TABLE IF NOT EXISTS `matkul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT '0',
  `nilai` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table kampus.matkul: ~1 rows (approximately)
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` (`id`, `nama`, `nilai`) VALUES
	(4, 'joko', '95');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;

-- Dumping structure for table kampus.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` enum('admin','mahasiswa') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table kampus.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
	(1, 'admin', '$2y$10$EsH.xAeQxERKn2f9Fwac1erB6OKQt2GBwwwRHxPY9lal/SndFOaWS', 'admin'),
	(2, 'mahasiswa', '$2y$10$eqGErt6r9aWcn0IKE4VLhOF5e1WVzRCwWIru7X56JVvXHZUtDLA9e', 'mahasiswa'),
	(5, 'una', '$2y$10$RIM9fu/NjC7lq16jTZ1E2eWu3NgmdzOPKFZPxmwiXZZhgbtVO/TT2', 'mahasiswa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
