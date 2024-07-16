-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2024 at 04:53 PM
-- Server version: 10.11.8-MariaDB-log
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disdik-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fetch_data`
--

CREATE TABLE `fetch_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` tinyint(4) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fetch_data`
--

INSERT INTO `fetch_data` (`id`, `nisn`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `asal_sekolah`, `tahun_lulus`, `kelas`, `created_at`, `updated_at`) VALUES
(1, '0098972672', 'Ghani Maulana', 'L', 'Karawang', '2009-03-26', 2, 'SMP Pupuk Kujang', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(2, '0098128592', 'Eko Anggraini', 'L', 'Karawang', '2008-10-15', 2, 'SMP IT Al-Muna Cikampek', 2024, '9H', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(3, '0098330950', 'Warta Narpati', 'L', 'Karawang', '2008-02-13', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(4, '0096309810', 'Wahyu Usada', 'L', 'Karawang', '2009-12-18', 2, 'SMP IT Al-Muna Cikampek', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(5, '0094420581', 'Muhammad Nuraini', 'L', 'Karawang', '2009-02-09', 2, 'SMP Pupuk Kujang', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(6, '0096136917', 'Mahmud Wahyudin', 'L', 'Karawang', '2008-09-18', 2, 'MTs Al-Ishlah', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(7, '0099214296', 'Dasa Sihombing', 'L', 'Karawang', '2009-11-05', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(8, '0097307023', 'Aris Halimah', 'L', 'Karawang', '2008-11-16', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(9, '0094485279', 'Gaman Rajata', 'L', 'Karawang', '2009-05-07', 2, 'SMP IT Al-Muna Cikampek', 2024, '9H', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(10, '0093508165', 'Panji Marbun', 'L', 'Karawang', '2009-01-26', 2, 'SMP Taman Siswa Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(11, '0095046483', 'Daryani Astuti', 'L', 'Karawang', '2008-04-20', 2, 'SMP Taman Siswa Cikampek', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(12, '0096093365', 'Garang Puspita', 'L', 'Karawang', '2010-01-28', 2, 'SMP Taman Siswa Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(13, '0094401329', 'Saka Oktaviani', 'L', 'Karawang', '2009-10-27', 2, 'SMP Pupuk Kujang', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(14, '0096265482', 'Bakti Halimah', 'L', 'Karawang', '2009-12-19', 2, 'SMP Taman Siswa Cikampek', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(15, '0092486140', 'Cakrabuana Hutapea', 'L', 'Karawang', '2008-07-05', 2, 'MTs Al-Mujahidin', 2024, '9H', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(16, '0096057989', 'Leo Latupono', 'L', 'Karawang', '2010-01-12', 2, 'SMP Al-Islam Cikampek', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(17, '0099364207', 'Cagak Rajasa', 'L', 'Karawang', '2010-07-22', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(18, '0095098798', 'Gilang Firgantoro', 'L', 'Karawang', '2009-05-10', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(19, '0096095049', 'Hartaka Lailasari', 'L', 'Karawang', '2009-08-30', 2, 'SMP Al-Islam Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(20, '0097564873', 'Ghani Iswahyudi', 'L', 'Karawang', '2010-05-23', 2, 'SMP Pupuk Kujang', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(21, '0092345737', 'Tirta Namaga', 'L', 'Karawang', '2010-08-16', 2, 'MTs Al-Hikmah', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(22, '0097374219', 'Hardana Winarsih', 'L', 'Karawang', '2010-06-12', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(23, '0092498349', 'Ganjaran Usamah', 'L', 'Karawang', '2009-12-25', 2, 'SMP IT Al-Muna Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(24, '0091571178', 'Rafid Wastuti', 'L', 'Karawang', '2008-04-19', 2, 'SMPN 2 Cikampek', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(25, '0099141132', 'Samsul Tamba', 'L', 'Karawang', '2008-07-08', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(26, '0092059598', 'Aditya Utama', 'L', 'Karawang', '2010-06-06', 2, 'SMP Al-Islam Cikampek', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(27, '0098453145', 'Danang Wahyuni', 'L', 'Karawang', '2010-05-27', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(28, '0091862131', 'Tri Marpaung', 'L', 'Karawang', '2008-12-27', 2, 'SMPN 2 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(29, '0092121623', 'Bakti Pradana', 'L', 'Karawang', '2010-12-14', 2, 'SMPN 3 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(30, '0094035403', 'Mariadi Maryadi', 'L', 'Karawang', '2008-09-24', 2, 'MTs Al-Hurriyah', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(31, '0097823388', 'Upik Suartini', 'L', 'Karawang', '2010-03-18', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(32, '0093862768', 'Bakiono Sirait', 'L', 'Karawang', '2008-04-06', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(33, '0093545055', 'Elvin Rajata', 'L', 'Karawang', '2010-10-17', 2, 'SMP IT Al-Muna Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(34, '0099445182', 'Raharja Januar', 'L', 'Karawang', '2008-12-26', 2, 'MTs Al-Hurriyah', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(35, '0096050792', 'Alambana Samosir', 'L', 'Karawang', '2010-11-24', 2, 'MTs Al-Ishlah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(36, '0097200947', 'Rama Farida', 'L', 'Karawang', '2009-04-04', 2, 'SMP Taman Siswa Cikampek', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(37, '0097424572', 'Ajiono Utami', 'L', 'Karawang', '2008-12-20', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(38, '0097725236', 'Wadi Usada', 'L', 'Karawang', '2010-03-27', 2, 'MTs Al-Mujahidin', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(39, '0099852584', 'Raditya Lailasari', 'L', 'Karawang', '2010-09-01', 2, 'SMPN 2 Cikampek', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(40, '0093079128', 'Prabowo Astuti', 'L', 'Karawang', '2009-05-27', 2, 'SMPN 2 Cikampek', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(41, '0097371835', 'Najam Firmansyah', 'L', 'Karawang', '2009-03-23', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(42, '0096622719', 'Arta Hasanah', 'L', 'Karawang', '2009-04-05', 2, 'SMPN 3 Cikampek', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(43, '0099648910', 'Gangsa Kusmawati', 'L', 'Karawang', '2009-09-16', 2, 'SMPN 2 Cikampek', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(44, '0098449405', 'Cahyono Hastuti', 'L', 'Karawang', '2008-05-26', 2, 'SMPN 2 Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(45, '0092902590', 'Gandewa Salahudin', 'L', 'Karawang', '2009-11-19', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(46, '0095776787', 'Rosman Purwanti', 'L', 'Karawang', '2009-05-26', 2, 'SMP Pupuk Kujang', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(47, '0098606544', 'Asmianto Hariyah', 'L', 'Karawang', '2010-02-05', 2, 'SMPN 2 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(48, '0091815525', 'Cakrawangsa Budiyanto', 'L', 'Karawang', '2010-12-06', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(49, '0092289841', 'Nyoman Wahyuni', 'L', 'Karawang', '2010-07-17', 2, 'SMPN 1 Cikampek', 2024, '9H', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(50, '0097841016', 'Vega Rajata', 'L', 'Karawang', '2009-09-26', 2, 'MTs Al-Mujahidin', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(51, '0092493173', 'Reza Pranowo', 'L', 'Karawang', '2010-06-04', 2, 'SMP Taman Siswa Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(52, '0098943361', 'Cahyadi Yuniar', 'L', 'Karawang', '2010-04-19', 2, 'SMP IT Al-Muna Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(53, '0095298365', 'Mulyono Maryati', 'L', 'Karawang', '2009-09-16', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(54, '0095355885', 'Harjo Hassanah', 'L', 'Karawang', '2008-01-21', 2, 'SMP Taman Siswa Cikampek', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(55, '0098828553', 'Kardi Wijayanti', 'L', 'Karawang', '2009-09-08', 2, 'MTs Al-Mujahidin', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(56, '0096024944', 'Adika Agustina', 'L', 'Karawang', '2009-08-04', 2, 'MTs Al-Hikmah', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(57, '0096540548', 'Jindra Sitorus', 'L', 'Karawang', '2010-03-28', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(58, '0097938919', 'Gangsa Hastuti', 'L', 'Karawang', '2010-01-05', 2, 'SMPN 1 Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(59, '0099292122', 'Karsa Permata', 'L', 'Karawang', '2008-10-12', 2, 'SMP Pupuk Kujang', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(60, '0095580459', 'Daliman Sudiati', 'L', 'Karawang', '2009-11-24', 2, 'SMPN 2 Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(61, '0099758583', 'Gilang Rahimah', 'L', 'Karawang', '2010-02-16', 2, 'MTs Al-Hurriyah', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(62, '0098962448', 'Darman Sudiati', 'L', 'Karawang', '2009-04-14', 2, 'MTs Al-Ishlah', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(63, '0095018222', 'Nasim Wasita', 'L', 'Karawang', '2010-03-14', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(64, '0096133618', 'Wardaya Kuswandari', 'L', 'Karawang', '2008-08-22', 2, 'MTs Al-Ishlah', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(65, '0094388361', 'Harsaya Andriani', 'L', 'Karawang', '2009-03-24', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(66, '0099540117', 'Leo Oktaviani', 'L', 'Karawang', '2009-01-25', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(67, '0092170238', 'Sidiq Hartati', 'L', 'Karawang', '2008-08-05', 2, 'MTs Al-Mujahidin', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(68, '0091532042', 'Ilyas Thamrin', 'L', 'Karawang', '2010-09-03', 2, 'SMPN 3 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(69, '0091614955', 'Kawaca Puspita', 'L', 'Karawang', '2009-06-29', 2, 'SMPN 1 Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(70, '0092443748', 'Danu Melani', 'L', 'Karawang', '2009-12-20', 2, 'SMPN 3 Cikampek', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(71, '0093023933', 'Harjo Budiman', 'L', 'Karawang', '2009-01-09', 2, 'SMP Taman Siswa Cikampek', 2024, '9E', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(72, '0094541936', 'Ajimin Gunawan', 'L', 'Karawang', '2010-10-10', 2, 'SMP Taman Siswa Cikampek', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(73, '0098420649', 'Darmaji Andriani', 'L', 'Karawang', '2009-03-04', 2, 'SMPN 1 Cikampek', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(74, '0092723001', 'Adikara Budiyanto', 'L', 'Karawang', '2010-05-03', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(75, '0093903917', 'Anggabaya Hakim', 'L', 'Karawang', '2008-07-11', 2, 'SMPN 2 Cikampek', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(76, '0092660435', 'Karma Zulaika', 'L', 'Karawang', '2009-11-06', 2, 'SMPN 3 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(77, '0094013615', 'Karna Hidayanto', 'L', 'Karawang', '2008-10-16', 2, 'SMP Pupuk Kujang', 2024, '9J', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(78, '0094880738', 'Johan Santoso', 'L', 'Karawang', '2010-08-13', 2, 'MTs Al-Mujahidin', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(79, '0092193297', 'Tasnim Yolanda', 'L', 'Karawang', '2008-12-21', 2, 'MTs Al-Hurriyah', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(80, '0092506166', 'Perkasa Yolanda', 'L', 'Karawang', '2008-02-01', 2, 'SMP Taman Siswa Cikampek', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(81, '0097076212', 'Mahfud Utami', 'L', 'Karawang', '2008-02-07', 2, 'SMP Taman Siswa Cikampek', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(82, '0093451232', 'Atmaja Permadi', 'L', 'Karawang', '2010-02-26', 2, 'SMP Al-Islam Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(83, '0096870294', 'Lamar Siregar', 'L', 'Karawang', '2010-11-08', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(84, '0093317277', 'Jinawi Hutapea', 'L', 'Karawang', '2010-12-14', 2, 'SMPN 3 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(85, '0092608565', 'Ajimat Mandasari', 'L', 'Karawang', '2010-06-01', 2, 'SMP IT Al-Muna Cikampek', 2024, '9I', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(86, '0091165406', 'Legawa Hartati', 'L', 'Karawang', '2009-10-17', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(87, '0099671828', 'Gatra Saputra', 'L', 'Karawang', '2008-04-23', 2, 'MTs Al-Ishlah', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(88, '0092582766', 'Dimaz Hidayanto', 'L', 'Karawang', '2009-02-14', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(89, '0095373895', 'Galih Wastuti', 'L', 'Karawang', '2010-11-25', 2, 'SMP Pupuk Kujang', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(90, '0096984628', 'Viman Mangunsong', 'L', 'Karawang', '2009-11-05', 2, 'MTs Al-Hurriyah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(91, '0095372720', 'Timbul Wasita', 'L', 'Karawang', '2009-11-15', 2, 'SMPN 1 Cikampek', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(92, '0097475511', 'Warta Tamba', 'L', 'Karawang', '2010-02-05', 2, 'SMP Taman Siswa Cikampek', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(93, '0091923301', 'Ivan Susanti', 'L', 'Karawang', '2010-10-05', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(94, '0093507196', 'Bagya Lestari', 'L', 'Karawang', '2009-11-24', 2, 'SMPN 2 Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(95, '0093767309', 'Salman Yulianti', 'L', 'Karawang', '2008-02-14', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(96, '0096063864', 'Radika Simbolon', 'L', 'Karawang', '2009-04-21', 2, 'SMPN 3 Cikampek', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(97, '0098787916', 'Mustika Wahyudin', 'L', 'Karawang', '2009-10-04', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(98, '0099342374', 'Najam Rahmawati', 'L', 'Karawang', '2009-05-17', 2, 'MTs Al-Hikmah', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(99, '0091126652', 'Ihsan Namaga', 'L', 'Karawang', '2008-03-13', 2, 'MTs Al-Hikmah', 2024, '9C', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(100, '0095850434', 'Cawisono Wibisono', 'L', 'Karawang', '2009-01-15', 2, 'SMP IT Al-Muna Cikampek', 2024, '9G', '2024-07-16 09:38:17', '2024-07-16 09:38:17'),
(101, '0099108554', 'Hana Salahudin', 'P', 'Karawang', '2009-01-28', 2, 'SMPN 3 Cikampek', 2024, '9E', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(102, '0097932970', 'Titi Yuliarti', 'P', 'Karawang', '2009-12-13', 2, 'MTs Al-Mujahidin', 2024, '9H', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(103, '0094494643', 'Uli Uwais', 'P', 'Karawang', '2008-07-01', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(104, '0092748432', 'Paris Sinaga', 'P', 'Karawang', '2008-09-11', 2, 'SMPN 3 Cikampek', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(105, '0092269451', 'Farah Maryati', 'P', 'Karawang', '2009-05-22', 2, 'SMP Al-Islam Cikampek', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(106, '0099612032', 'Hasna Nuraini', 'P', 'Karawang', '2009-05-17', 2, 'SMPN 1 Cikampek', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(107, '0092820579', 'Eli Wijaya', 'P', 'Karawang', '2008-10-13', 2, 'SMPN 3 Cikampek', 2024, '9C', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(108, '0096440321', 'Farah Lazuardi', 'P', 'Karawang', '2008-09-21', 2, 'MTs Al-Mujahidin', 2024, '9G', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(109, '0096111935', 'Safina Narpati', 'P', 'Karawang', '2008-05-03', 2, 'SMP Al-Islam Cikampek', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(110, '0094635666', 'Ika Siregar', 'P', 'Karawang', '2008-09-19', 2, 'SMPN 2 Cikampek', 2024, '9G', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(111, '0095747793', 'Michelle Suryatmi', 'P', 'Karawang', '2008-02-15', 2, 'SMP Al-Islam Cikampek', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(112, '0095755758', 'Titi Usamah', 'P', 'Karawang', '2009-09-24', 2, 'SMP IT Al-Muna Cikampek', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(113, '0091652832', 'Hana Kuswoyo', 'P', 'Karawang', '2009-09-25', 2, 'SMPN 2 Cikampek', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(114, '0096613614', 'Ade Kurniawan', 'P', 'Karawang', '2009-09-22', 2, 'MTs Al-Ishlah', 2024, '9C', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(115, '0098266366', 'Hana Puspasari', 'P', 'Karawang', '2009-11-23', 2, 'MTs Al-Hikmah', 2024, '9C', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(116, '0099703071', 'Farhunnisa Handayani', 'P', 'Karawang', '2008-02-15', 2, 'SMPN 1 Cikampek', 2024, '9E', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(117, '0096973497', 'Kani Hastuti', 'P', 'Karawang', '2009-09-26', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(118, '0099887734', 'Nilam Damanik', 'P', 'Karawang', '2009-11-17', 2, 'SMP Taman Siswa Cikampek', 2024, '9H', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(119, '0099317064', 'Lintang Latupono', 'P', 'Karawang', '2008-10-03', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(120, '0091544655', 'Uli Rahmawati', 'P', 'Karawang', '2008-10-13', 2, 'SMPN 2 Cikampek', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(121, '0093551964', 'Puput Rajasa', 'P', 'Karawang', '2010-03-18', 2, 'SMP Al-Islam Cikampek', 2024, '9G', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(122, '0096634467', 'Diana Samosir', 'P', 'Karawang', '2009-05-27', 2, 'SMP Al-Islam Cikampek', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(123, '0096232513', 'Zulaikha Purwanti', 'P', 'Karawang', '2009-04-15', 2, 'MTs Al-Ishlah', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(124, '0097893142', 'Latika Lailasari', 'P', 'Karawang', '2010-04-28', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(125, '0095363726', 'Siti Situmorang', 'P', 'Karawang', '2008-03-17', 2, 'SMP Pupuk Kujang', 2024, '9I', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(126, '0094692804', 'Ajeng Maulana', 'P', 'Karawang', '2010-11-09', 2, 'SMP Pupuk Kujang', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(127, '0095293665', 'Yuni Natsir', 'P', 'Karawang', '2008-12-08', 2, 'SMP Al-Islam Cikampek', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(128, '0091823150', 'Tira Hariyah', 'P', 'Karawang', '2009-01-29', 2, 'SMP Pupuk Kujang', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(129, '0096862804', 'Eka Iswahyudi', 'P', 'Karawang', '2008-07-31', 2, 'MTs Al-Mujahidin', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(130, '0093767831', 'Nurul Hutasoit', 'P', 'Karawang', '2010-02-14', 2, 'SMPN 2 Cikampek', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(131, '0091893168', 'Ifa Maulana', 'P', 'Karawang', '2008-09-03', 2, 'MTs Al-Mujahidin', 2024, '9I', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(132, '0098660503', 'Genta Prabowo', 'P', 'Karawang', '2008-04-28', 2, 'SMPN 1 Cikampek', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(133, '0098060017', 'Paramita Prakasa', 'P', 'Karawang', '2009-04-25', 2, 'MTs Al-Mujahidin', 2024, '9G', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(134, '0094471318', 'Salimah Wibowo', 'P', 'Karawang', '2008-02-05', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(135, '0097106414', 'Tantri Yulianti', 'P', 'Karawang', '2010-02-06', 2, 'MTs Al-Mujahidin', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(136, '0098442242', 'Maria Andriani', 'P', 'Karawang', '2008-02-08', 2, 'SMP Pupuk Kujang', 2024, '9H', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(137, '0092309034', 'Lintang Wijayanti', 'P', 'Karawang', '2008-12-06', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(138, '0094475666', 'Padma Oktaviani', 'P', 'Karawang', '2009-01-07', 2, 'MTs Al-Mujahidin', 2024, '9C', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(139, '0094426165', 'Hasna Hutasoit', 'P', 'Karawang', '2009-01-24', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(140, '0094695643', 'Kamila Lestari', 'P', 'Karawang', '2009-03-23', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(141, '0091141162', 'Salimah Melani', 'P', 'Karawang', '2010-10-12', 2, 'SMP Al-Islam Cikampek', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(142, '0099175387', 'Gawati Hakim', 'P', 'Karawang', '2009-12-27', 2, 'SMP IT Al-Muna Cikampek', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(143, '0094471461', 'Ciaobella Sudiati', 'P', 'Karawang', '2010-06-27', 2, 'MTs Al-Ishlah', 2024, '9E', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(144, '0095401837', 'Kiandra Puspita', 'P', 'Karawang', '2008-03-10', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(145, '0095640457', 'Tania Hastuti', 'P', 'Karawang', '2009-02-21', 2, 'MTs Al-Mujahidin', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(146, '0098144588', 'Cici Andriani', 'P', 'Karawang', '2010-04-25', 2, 'MTs Al-Ishlah', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(147, '0097854276', 'Ayu Iswahyudi', 'P', 'Karawang', '2009-11-09', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(148, '0096965564', 'Paramita Napitupulu', 'P', 'Karawang', '2010-05-27', 2, 'MTs Al-Hurriyah', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(149, '0092628549', 'Zaenab Iswahyudi', 'P', 'Karawang', '2010-01-09', 2, 'SMPN 1 Cikampek', 2024, '9C', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(150, '0093005602', 'Uchita Permadi', 'P', 'Karawang', '2010-02-03', 2, 'SMPN 2 Cikampek', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(151, '0099261701', 'Ghaliyati Damanik', 'P', 'Karawang', '2009-02-17', 2, 'MTs Al-Ishlah', 2024, '9I', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(152, '0092345650', 'Latika Safitri', 'P', 'Karawang', '2008-11-17', 2, 'SMPN 3 Cikampek', 2024, '9B', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(153, '0093867544', 'Wirda Hariyah', 'P', 'Karawang', '2009-09-07', 2, 'SMP Taman Siswa Cikampek', 2024, '9J', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(154, '0099262566', 'Vera Novitasari', 'P', 'Karawang', '2008-03-24', 2, 'SMP IT Al-Muna Cikampek', 2024, '9A', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(155, '0099039405', 'Talia Sihombing', 'P', 'Karawang', '2008-04-24', 2, 'SMP Taman Siswa Cikampek', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(156, '0092076944', 'Lala Wastuti', 'P', 'Karawang', '2009-07-15', 2, 'SMPN 2 Cikampek', 2024, '9F', '2024-07-16 09:39:07', '2024-07-16 09:39:07'),
(157, '0097275229', 'Yessi Utama', 'P', 'Karawang', '2010-09-19', 2, 'SMPN 3 Cikampek', 2024, '9I', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(158, '0094539576', 'Ilsa Andriani', 'P', 'Karawang', '2009-11-30', 2, 'SMPN 1 Cikampek', 2024, '9F', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(159, '0093283677', 'Azalea Jailani', 'P', 'Karawang', '2008-05-02', 2, 'SMP Pupuk Kujang', 2024, '9D', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(160, '0097866638', 'Karen Wibisono', 'P', 'Karawang', '2009-12-21', 2, 'MTs Al-Hurriyah', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(161, '0094114616', 'Yuliana Anggraini', 'P', 'Karawang', '2010-09-13', 2, 'MTs Al-Mujahidin', 2024, '9F', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(162, '0095303123', 'Pia Puspita', 'P', 'Karawang', '2009-07-22', 2, 'SMP Al-Islam Cikampek', 2024, '9B', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(163, '0099669528', 'Yessi Laksita', 'P', 'Karawang', '2009-07-28', 2, 'MTs Al-Ishlah', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(164, '0092403160', 'Septi Natsir', 'P', 'Karawang', '2009-08-03', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(165, '0099047444', 'Oliva Sitompul', 'P', 'Karawang', '2008-11-29', 2, 'SMPN 2 Cikampek', 2024, '9H', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(166, '0091367256', 'Ani Saputra', 'P', 'Karawang', '2009-07-18', 2, 'SMP Taman Siswa Cikampek', 2024, '9J', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(167, '0099238115', 'Almira Budiman', 'P', 'Karawang', '2009-06-21', 2, 'SMP IT Al-Muna Cikampek', 2024, '9F', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(168, '0094054997', 'Zamira Farida', 'P', 'Karawang', '2008-05-23', 2, 'SMPN 2 Cikampek', 2024, '9B', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(169, '0092697478', 'Zahra Dabukke', 'P', 'Karawang', '2009-02-19', 2, 'MTs Al-Hurriyah', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(170, '0097687678', 'Eli Prasasta', 'P', 'Karawang', '2008-07-30', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(171, '0091974448', 'Lintang Pranowo', 'P', 'Karawang', '2008-03-11', 2, 'MTs Al-Mujahidin', 2024, '9A', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(172, '0095583247', 'Kiandra Uyainah', 'P', 'Karawang', '2008-03-15', 2, 'MTs Al-Ishlah', 2024, '9D', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(173, '0091884915', 'Cinta Siregar', 'P', 'Karawang', '2010-10-15', 2, 'SMP Taman Siswa Cikampek', 2024, '9D', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(174, '0096049178', 'Silvia Prasasta', 'P', 'Karawang', '2009-08-28', 2, 'MTs Al-Hikmah', 2024, '9I', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(175, '0099080857', 'Ulva Pratiwi', 'P', 'Karawang', '2008-12-02', 2, 'SMPN 1 Cikampek', 2024, '9B', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(176, '0097967283', 'Michelle Prakasa', 'P', 'Karawang', '2008-06-27', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(177, '0097003844', 'Ophelia Zulaika', 'P', 'Karawang', '2008-05-29', 2, 'SMPN 3 Cikampek', 2024, '9E', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(178, '0093210989', 'Cinthia Fujiati', 'P', 'Karawang', '2010-11-21', 2, 'SMP Taman Siswa Cikampek', 2024, '9I', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(179, '0091169083', 'Ratih Winarno', 'P', 'Karawang', '2008-04-12', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(180, '0091284862', 'Juli Mardhiyah', 'P', 'Karawang', '2008-11-08', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(181, '0093792006', 'Titi Susanti', 'P', 'Karawang', '2008-01-30', 2, 'MTs Al-Hikmah', 2024, '9E', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(182, '0095873930', 'Tira Pertiwi', 'P', 'Karawang', '2009-04-02', 2, 'SMP IT Al-Muna Cikampek', 2024, '9B', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(183, '0093550177', 'Mala Nasyiah', 'P', 'Karawang', '2010-08-29', 2, 'MTs Al-Hikmah', 2024, '9G', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(184, '0094992822', 'Ade Salahudin', 'P', 'Karawang', '2008-07-29', 2, 'SMP Al-Islam Cikampek', 2024, '9J', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(185, '0098500788', 'Maya Sinaga', 'P', 'Karawang', '2009-08-12', 2, 'MTs Al-Ishlah', 2024, '9J', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(186, '0099062665', 'Hesti Saefullah', 'P', 'Karawang', '2008-09-23', 2, 'SMP Pupuk Kujang', 2024, '9E', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(187, '0091466910', 'Dian Anggraini', 'P', 'Karawang', '2009-10-14', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:39:14', '2024-07-16 09:39:14'),
(188, '0094518273', 'Kartika Winarno', 'P', 'Karawang', '2008-08-28', 2, 'MTs Al-Hikmah', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(189, '0093113218', 'Natalia Hidayanto', 'P', 'Karawang', '2010-12-03', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(190, '0092258313', 'Ida Kuswandari', 'P', 'Karawang', '2008-01-10', 2, 'SMP Taman Siswa Cikampek', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(191, '0096811373', 'Zulaikha Suryatmi', 'P', 'Karawang', '2010-05-28', 2, 'SMPN 1 Cikampek', 2024, '9G', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(192, '0096393215', 'Dian Nugroho', 'P', 'Karawang', '2008-04-22', 2, 'MTs Al-Hikmah', 2024, '9A', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(193, '0099937887', 'Irma Safitri', 'P', 'Karawang', '2009-05-02', 2, 'SMP Pupuk Kujang', 2024, '9H', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(194, '0096496632', 'Carla Wacana', 'P', 'Karawang', '2010-02-04', 2, 'MTs Al-Ishlah', 2024, '9F', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(195, '0098338978', 'Humaira Haryanti', 'P', 'Karawang', '2009-09-27', 2, 'MTs Al-Mujahidin', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(196, '0094767014', 'Ifa Jailani', 'P', 'Karawang', '2009-03-20', 2, 'MTs Al-Ishlah', 2024, '9E', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(197, '0091611736', 'Zelda Rahayu', 'P', 'Karawang', '2008-01-26', 2, 'SMP Taman Siswa Cikampek', 2024, '9E', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(198, '0097756175', 'Hesti Hastuti', 'P', 'Karawang', '2009-04-24', 2, 'SMP Taman Siswa Cikampek', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(199, '0091280485', 'Clara Uyainah', 'P', 'Karawang', '2008-11-09', 2, 'SMPN 3 Cikampek', 2024, '9E', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(200, '0098723330', 'Eva Laksmiwati', 'P', 'Karawang', '2010-09-17', 2, 'MTs Al-Hikmah', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(201, '0095561930', 'Farhunnisa Jailani', 'P', 'Karawang', '2010-12-24', 2, 'MTs Al-Ishlah', 2024, '9G', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(202, '0091543716', 'Belinda Usada', 'P', 'Karawang', '2008-09-16', 2, 'SMPN 3 Cikampek', 2024, '9E', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(203, '0094021916', 'Tami Manullang', 'P', 'Karawang', '2009-01-24', 2, 'SMP Pupuk Kujang', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(204, '0093855717', 'Victoria Nasyiah', 'P', 'Karawang', '2008-08-31', 2, 'SMP Al-Islam Cikampek', 2024, '9G', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(205, '0095327137', 'Lidya Pertiwi', 'P', 'Karawang', '2010-09-25', 2, 'SMPN 3 Cikampek', 2024, '9B', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(206, '0093797848', 'Pia Rahimah', 'P', 'Karawang', '2009-11-20', 2, 'SMPN 3 Cikampek', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(207, '0094505965', 'Puji Wahyuni', 'P', 'Karawang', '2009-02-08', 2, 'MTs Al-Hurriyah', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(208, '0094413218', 'Queen Yulianti', 'P', 'Karawang', '2010-01-13', 2, 'SMPN 3 Cikampek', 2024, '9A', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(209, '0099487558', 'Almira Utama', 'P', 'Karawang', '2008-03-15', 2, 'SMP Pupuk Kujang', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(210, '0099037099', 'Fitriani Prayoga', 'P', 'Karawang', '2010-06-02', 2, 'SMP Al-Islam Cikampek', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(211, '0091178037', 'Belinda Setiawan', 'P', 'Karawang', '2009-05-22', 2, 'SMP Pupuk Kujang', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(212, '0097576216', 'Salwa Wijayanti', 'P', 'Karawang', '2008-04-20', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(213, '0099849148', 'Melinda Rajata', 'P', 'Karawang', '2008-12-27', 2, 'SMP Pupuk Kujang', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(214, '0094598540', 'Violet Laksmiwati', 'P', 'Karawang', '2008-08-29', 2, 'MTs Al-Ishlah', 2024, '9F', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(215, '0097117811', 'Ghaliyati Agustina', 'P', 'Karawang', '2008-04-03', 2, 'MTs Al-Hurriyah', 2024, '9H', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(216, '0099789556', 'Zalindra Palastri', 'P', 'Karawang', '2009-09-10', 2, 'MTs Al-Hikmah', 2024, '9B', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(217, '0096471071', 'Devi Waluyo', 'P', 'Karawang', '2010-07-06', 2, 'SMP Taman Siswa Cikampek', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(218, '0096254312', 'Tantri Oktaviani', 'P', 'Karawang', '2008-10-15', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(219, '0095788912', 'Farhunnisa Haryanti', 'P', 'Karawang', '2009-01-15', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(220, '0095655139', 'Hamima Pudjiastuti', 'P', 'Karawang', '2009-05-18', 2, 'SMPN 1 Cikampek', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(221, '0091741809', 'Talia Sudiati', 'P', 'Karawang', '2008-07-07', 2, 'SMPN 3 Cikampek', 2024, '9B', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(222, '0099747192', 'Putri Setiawan', 'P', 'Karawang', '2010-06-30', 2, 'SMPN 1 Cikampek', 2024, '9F', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(223, '0094305302', 'Pia Lazuardi', 'P', 'Karawang', '2009-06-05', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(224, '0097118736', 'Rina Situmorang', 'P', 'Karawang', '2009-06-08', 2, 'SMP Taman Siswa Cikampek', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(225, '0095665806', 'Ifa Pudjiastuti', 'P', 'Karawang', '2009-12-09', 2, 'SMP IT Al-Muna Cikampek', 2024, '9G', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(226, '0099285740', 'Uchita Wijayanti', 'P', 'Karawang', '2010-08-02', 2, 'SMPN 1 Cikampek', 2024, '9F', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(227, '0099253931', 'Nadia Siregar', 'P', 'Karawang', '2008-02-12', 2, 'SMP IT Al-Muna Cikampek', 2024, '9C', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(228, '0093709578', 'Karen Narpati', 'P', 'Karawang', '2009-12-31', 2, 'SMP Taman Siswa Cikampek', 2024, '9H', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(229, '0093764388', 'Nabila Purwanti', 'P', 'Karawang', '2008-05-28', 2, 'MTs Al-Ishlah', 2024, '9B', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(230, '0096449478', 'Lili Aryani', 'P', 'Karawang', '2010-01-23', 2, 'SMPN 3 Cikampek', 2024, '9H', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(231, '0098943996', 'Michelle Anggraini', 'P', 'Karawang', '2010-04-02', 2, 'MTs Al-Hikmah', 2024, '9J', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(232, '0094276641', 'Padmi Hidayat', 'P', 'Karawang', '2008-02-15', 2, 'SMPN 2 Cikampek', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(233, '0098732448', 'Sakura Nuraini', 'P', 'Karawang', '2010-02-12', 2, 'MTs Al-Hurriyah', 2024, '9E', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(234, '0097899896', 'Vanya Waluyo', 'P', 'Karawang', '2009-04-03', 2, 'SMP IT Al-Muna Cikampek', 2024, '9I', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(235, '0092281276', 'Rina Marpaung', 'P', 'Karawang', '2008-02-24', 2, 'MTs Al-Ishlah', 2024, '9A', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(236, '0096359460', 'Raina Pangestu', 'P', 'Karawang', '2009-08-03', 2, 'MTs Al-Mujahidin', 2024, '9D', '2024-07-16 09:39:27', '2024-07-16 09:39:27'),
(237, '0094614442', 'Ophelia Yuliarti', 'P', 'Karawang', '2008-03-28', 2, 'SMP Al-Islam Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(238, '0093963960', 'Anastasia Firgantoro', 'P', 'Karawang', '2010-07-01', 2, 'MTs Al-Hikmah', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(239, '0093912274', 'Eli Uwais', 'P', 'Karawang', '2008-05-02', 2, 'MTs Al-Mujahidin', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(240, '0091853156', 'Azalea Suryatmi', 'P', 'Karawang', '2010-10-18', 2, 'SMP Pupuk Kujang', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(241, '0099142746', 'Ifa Rahayu', 'P', 'Karawang', '2009-12-10', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(242, '0097819170', 'Tina Usamah', 'P', 'Karawang', '2009-08-25', 2, 'SMP Al-Islam Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(243, '0092001781', 'Lili Fujiati', 'P', 'Karawang', '2010-12-01', 2, 'MTs Al-Ishlah', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(244, '0092284894', 'Yani Purnawati', 'P', 'Karawang', '2008-07-10', 2, 'SMP Pupuk Kujang', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(245, '0096448340', 'Elvina Riyanti', 'P', 'Karawang', '2008-07-18', 2, 'SMP IT Al-Muna Cikampek', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(246, '0096144439', 'Paris Purwanti', 'P', 'Karawang', '2010-09-21', 2, 'SMP Taman Siswa Cikampek', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(247, '0096592895', 'Kayla Halim', 'P', 'Karawang', '2009-01-17', 2, 'SMP Pupuk Kujang', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(248, '0093193801', 'Amelia Riyanti', 'P', 'Karawang', '2010-04-02', 2, 'MTs Al-Mujahidin', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(249, '0095600530', 'Icha Nugroho', 'P', 'Karawang', '2008-08-20', 2, 'SMP Taman Siswa Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(250, '0091408141', 'Uchita Jailani', 'P', 'Karawang', '2008-03-28', 2, 'SMP Pupuk Kujang', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(251, '0094457332', 'Sarah Utami', 'P', 'Karawang', '2010-05-17', 2, 'MTs Al-Hikmah', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(252, '0093930136', 'Ulya Budiyanto', 'P', 'Karawang', '2010-11-04', 2, 'MTs Al-Hurriyah', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(253, '0097560567', 'Maria Safitri', 'P', 'Karawang', '2009-11-26', 2, 'SMP Pupuk Kujang', 2024, '9A', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(254, '0098999873', 'Gawati Palastri', 'P', 'Karawang', '2008-08-13', 2, 'SMP Taman Siswa Cikampek', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(255, '0098655430', 'Widya Nainggolan', 'P', 'Karawang', '2010-03-29', 2, 'SMPN 1 Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(256, '0097910839', 'Olivia Aryani', 'P', 'Karawang', '2009-04-14', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(257, '0095528823', 'Nova Maryadi', 'P', 'Karawang', '2009-01-26', 2, 'SMPN 3 Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(258, '0095501774', 'Tina Situmorang', 'P', 'Karawang', '2008-04-25', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(259, '0093070472', 'Restu Suartini', 'P', 'Karawang', '2009-12-03', 2, 'MTs Al-Hurriyah', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(260, '0097998130', 'Raina Pangestu', 'P', 'Karawang', '2008-12-17', 2, 'SMP Pupuk Kujang', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(261, '0093528671', 'Laila Mayasari', 'P', 'Karawang', '2008-03-03', 2, 'MTs Al-Hikmah', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(262, '0092254788', 'Vanya Handayani', 'P', 'Karawang', '2010-09-21', 2, 'MTs Al-Ishlah', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(263, '0093609330', 'Almira Hartati', 'P', 'Karawang', '2008-12-28', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(264, '0096486698', 'Dalima Winarno', 'P', 'Karawang', '2008-10-14', 2, 'SMPN 1 Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(265, '0099322840', 'Ajeng Prabowo', 'P', 'Karawang', '2008-10-11', 2, 'MTs Al-Ishlah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(266, '0092847403', 'Kartika Nuraini', 'P', 'Karawang', '2010-03-13', 2, 'MTs Al-Ishlah', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(267, '0094223688', 'Talia Zulaika', 'P', 'Karawang', '2009-04-25', 2, 'MTs Al-Hikmah', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(268, '0094007682', 'Tami Laksmiwati', 'P', 'Karawang', '2010-03-14', 2, 'MTs Al-Hikmah', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(269, '0099084859', 'Tiara Laksita', 'P', 'Karawang', '2010-01-19', 2, 'SMP IT Al-Muna Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(270, '0091154848', 'Bella Setiawan', 'P', 'Karawang', '2010-11-20', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(271, '0099100595', 'Intan Prasetya', 'P', 'Karawang', '2009-11-20', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(272, '0091275128', 'Cindy Nasyiah', 'P', 'Karawang', '2009-07-11', 2, 'SMPN 3 Cikampek', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(273, '0093377625', 'Cinta Mayasari', 'P', 'Karawang', '2010-02-28', 2, 'SMPN 2 Cikampek', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(274, '0097905524', 'Ratih Gunawan', 'P', 'Karawang', '2009-09-17', 2, 'SMPN 3 Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(275, '0098445700', 'Hafshah Pratiwi', 'P', 'Karawang', '2008-01-18', 2, 'SMP IT Al-Muna Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(276, '0095923435', 'Amelia Irawan', 'P', 'Karawang', '2010-11-14', 2, 'SMP Taman Siswa Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(277, '0095362229', 'Qori Hidayat', 'P', 'Karawang', '2010-08-21', 2, 'SMP Pupuk Kujang', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(278, '0097810746', 'Nadia Suartini', 'P', 'Karawang', '2009-12-02', 2, 'SMPN 3 Cikampek', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(279, '0097284870', 'Faizah Januar', 'P', 'Karawang', '2010-07-08', 2, 'MTs Al-Hikmah', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(280, '0091640102', 'Rahmi Rahimah', 'P', 'Karawang', '2010-05-07', 2, 'MTs Al-Hikmah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(281, '0093518582', 'Sabrina Permadi', 'P', 'Karawang', '2010-01-12', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(282, '0095104136', 'Irma Mandasari', 'P', 'Karawang', '2010-06-14', 2, 'SMP Taman Siswa Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(283, '0094479848', 'Michelle Nababan', 'P', 'Karawang', '2010-07-24', 2, 'SMP Taman Siswa Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(284, '0098819707', 'Ulya Wijaya', 'P', 'Karawang', '2009-04-25', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(285, '0099262393', 'Kezia Natsir', 'P', 'Karawang', '2009-11-10', 2, 'MTs Al-Mujahidin', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(286, '0099588773', 'Uchita Nasyidah', 'P', 'Karawang', '2008-01-19', 2, 'SMP Pupuk Kujang', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(287, '0096210730', 'Ayu Mulyani', 'P', 'Karawang', '2010-01-10', 2, 'MTs Al-Ishlah', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(288, '0096348536', 'Ina Farida', 'P', 'Karawang', '2010-11-14', 2, 'MTs Al-Hurriyah', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(289, '0099385938', 'Tami Suwarno', 'P', 'Karawang', '2009-01-26', 2, 'MTs Al-Hikmah', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(290, '0097773815', 'Alika Hutagalung', 'P', 'Karawang', '2009-10-05', 2, 'SMPN 2 Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(291, '0096177907', 'Puput Sudiati', 'P', 'Karawang', '2010-05-07', 2, 'SMPN 3 Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(292, '0098024397', 'Farah Rajata', 'P', 'Karawang', '2009-07-13', 2, 'SMPN 2 Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(293, '0098050977', 'Gabriella Usada', 'P', 'Karawang', '2008-07-08', 2, 'SMP Al-Islam Cikampek', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(294, '0096430491', 'Aisyah Lazuardi', 'P', 'Karawang', '2008-11-04', 2, 'MTs Al-Ishlah', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(295, '0099366069', 'Elvina Aryani', 'P', 'Karawang', '2009-10-03', 2, 'SMP Taman Siswa Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(296, '0099384098', 'Dalima Wahyuni', 'P', 'Karawang', '2010-02-14', 2, 'MTs Al-Hikmah', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(297, '0096284105', 'Malika Dongoran', 'P', 'Karawang', '2010-03-09', 2, 'MTs Al-Hurriyah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(298, '0091265446', 'Eka Halimah', 'P', 'Karawang', '2008-08-31', 2, 'SMPN 3 Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(299, '0096490573', 'Jessica Ramadan', 'P', 'Karawang', '2009-07-26', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(300, '0091546733', 'Anita Anggraini', 'P', 'Karawang', '2009-04-15', 2, 'MTs Al-Ishlah', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(301, '0098283218', 'Lidya Pradana', 'P', 'Karawang', '2008-07-13', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(302, '0094618954', 'Sakura Nuraini', 'P', 'Karawang', '2009-05-05', 2, 'SMP Pupuk Kujang', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(303, '0091944915', 'Padma Purwanti', 'P', 'Karawang', '2010-07-02', 2, 'SMPN 1 Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(304, '0095453866', 'Jasmin Samosir', 'P', 'Karawang', '2009-06-14', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(305, '0092281363', 'Uchita Kusmawati', 'P', 'Karawang', '2010-09-27', 2, 'SMP Taman Siswa Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(306, '0096999144', 'Pia Halimah', 'P', 'Karawang', '2009-10-22', 2, 'MTs Al-Hikmah', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(307, '0094059531', 'Febi Suryatmi', 'P', 'Karawang', '2010-04-08', 2, 'SMPN 2 Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(308, '0095417736', 'Jane Prayoga', 'P', 'Karawang', '2010-12-07', 2, 'SMP Pupuk Kujang', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(309, '0092737383', 'Rahayu Maryadi', 'P', 'Karawang', '2009-11-13', 2, 'MTs Al-Ishlah', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(310, '0092975842', 'Paris Widiastuti', 'P', 'Karawang', '2008-09-06', 2, 'SMPN 2 Cikampek', 2024, '9F', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(311, '0091633648', 'Zulfa Santoso', 'P', 'Karawang', '2009-05-16', 2, 'MTs Al-Hikmah', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(312, '0097435987', 'Cindy Anggraini', 'P', 'Karawang', '2008-08-26', 2, 'MTs Al-Hikmah', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(313, '0094497078', 'Ana Yuliarti', 'P', 'Karawang', '2008-11-18', 2, 'SMPN 3 Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(314, '0093768371', 'Vanesa Zulkarnain', 'P', 'Karawang', '2009-08-04', 2, 'SMPN 1 Cikampek', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(315, '0099078242', 'Bella Setiawan', 'P', 'Karawang', '2008-12-11', 2, 'MTs Al-Mujahidin', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(316, '0091526959', 'Vanya Januar', 'P', 'Karawang', '2009-11-22', 2, 'SMP IT Al-Muna Cikampek', 2024, '9A', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(317, '0091140954', 'Julia Lailasari', 'P', 'Karawang', '2010-12-25', 2, 'SMPN 1 Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(318, '0099944436', 'Belinda Halim', 'P', 'Karawang', '2010-08-21', 2, 'SMP IT Al-Muna Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(319, '0092631228', 'Suci Latupono', 'P', 'Karawang', '2008-11-20', 2, 'SMP IT Al-Muna Cikampek', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(320, '0093259555', 'Putri Prakasa', 'P', 'Karawang', '2009-03-03', 2, 'SMP Al-Islam Cikampek', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(321, '0097331345', 'Yuni Pertiwi', 'P', 'Karawang', '2008-12-20', 2, 'SMPN 3 Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(322, '0098297392', 'Elvina Yulianti', 'P', 'Karawang', '2008-01-25', 2, 'SMPN 3 Cikampek', 2024, '9A', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(323, '0099630096', 'Iriana Suartini', 'P', 'Karawang', '2009-08-12', 2, 'MTs Al-Hurriyah', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(324, '0095037828', 'Putri Kusmawati', 'P', 'Karawang', '2008-09-04', 2, 'SMP Taman Siswa Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(325, '0092501367', 'Chelsea Mulyani', 'P', 'Karawang', '2008-01-03', 2, 'SMP IT Al-Muna Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(326, '0092317606', 'Ade Mayasari', 'P', 'Karawang', '2010-07-18', 2, 'SMP Al-Islam Cikampek', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(327, '0098464896', 'Olivia Putra', 'P', 'Karawang', '2008-07-03', 2, 'SMP Taman Siswa Cikampek', 2024, '9C', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(328, '0097582020', 'Paulin Mansur', 'P', 'Karawang', '2009-07-24', 2, 'SMP IT Al-Muna Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(329, '0092880341', 'Ratna Puspasari', 'P', 'Karawang', '2009-04-15', 2, 'SMPN 1 Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(330, '0097496439', 'Uchita Jailani', 'P', 'Karawang', '2009-12-29', 2, 'SMPN 2 Cikampek', 2024, '9E', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(331, '0097686916', 'Samiah Hutasoit', 'P', 'Karawang', '2010-12-27', 2, 'MTs Al-Mujahidin', 2024, '9H', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(332, '0097075986', 'Yulia Prasetyo', 'P', 'Karawang', '2008-08-17', 2, 'MTs Al-Hikmah', 2024, '9J', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(333, '0099315787', 'Farah Yulianti', 'P', 'Karawang', '2008-08-17', 2, 'SMPN 1 Cikampek', 2024, '9I', '2024-07-16 09:39:51', '2024-07-16 09:39:51');
INSERT INTO `fetch_data` (`id`, `nisn`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `asal_sekolah`, `tahun_lulus`, `kelas`, `created_at`, `updated_at`) VALUES
(334, '0097621225', 'Ika Firgantoro', 'P', 'Karawang', '2008-03-17', 2, 'SMP IT Al-Muna Cikampek', 2024, '9D', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(335, '0091618611', 'Umi Astuti', 'P', 'Karawang', '2010-12-17', 2, 'SMP Pupuk Kujang', 2024, '9B', '2024-07-16 09:39:51', '2024-07-16 09:39:51'),
(336, '0091685166', 'Paramita Wibowo', 'P', 'Karawang', '2008-03-01', 2, 'SMP IT Al-Muna Cikampek', 2024, '9G', '2024-07-16 09:39:51', '2024-07-16 09:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_03_034237_create_personal_access_tokens_table', 1),
(5, '2024_07_03_124044_create_fetch_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Operator', 'operator', NULL, '$2y$12$dUkrEjRbSheKaBaWhPFApebY8hCXD9G7eA45H9Q38Vx1UfoooJKvm', NULL, '2024-07-16 09:38:17', '2024-07-16 09:38:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fetch_data`
--
ALTER TABLE `fetch_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fetch_data_nisn_unique` (`nisn`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fetch_data`
--
ALTER TABLE `fetch_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
