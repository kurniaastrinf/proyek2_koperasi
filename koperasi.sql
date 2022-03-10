-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 11:25 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nik`, `nama`, `email`, `no_hp`, `jenkel`, `agama`, `pekerjaan`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
(1, 32121192400145, 'Lukman', 'Lukman118@gmail.com', '0895378264432', 'P', 'Islam', 'Pedagang tahu', 'Ds. Lohbener', 'Indramayu', '1990-10-19', '2019-10-01 06:49:32', '2021-12-15 13:49:34'),
(2, 32121568902001, 'Astrin Febrianti', 'astrin@gmail.com', '089543675765', 'P', 'Islam', 'Pedagang Tempe', 'majalengka', 'batam', '2001-08-15', '2021-12-07 04:16:57', '2021-12-16 04:18:18'),
(3, 321678976556, 'Sri cahyani', 'sri@gmail.com', '089674572552', 'P', 'Islam', 'Pedagang tahu', 'jatibarang', 'indramayu', '2021-12-16', '2021-12-16 04:14:01', '2021-12-16 04:14:01'),
(4, 321211924001876, 'kurnia astrin', 'kurniaastrin6647@gmail.com', '08956476755', 'P', 'Islam', 'Pedagang tahu', 'kecamatan sumberjaya,majalengka', 'majalengka', '2001-02-02', '2021-12-18 07:30:35', '2021-12-18 07:30:35'),
(5, 3209171809010010, 'Budi', 'budi@gmail.com', '0896661116661', 'L', 'Islam', 'Mitra Gojek', 'Sumber', 'Cirebon', '1990-10-19', '2021-12-22 03:16:22', '2021-12-22 03:16:22'),
(6, 170800, 'Devina Agustin', 'Devinaagustin2@gmail.com', '089653658355', 'P', 'Islam', 'pedagang tahu', 'indramayu', 'Cirebon', '2000-08-17', '2021-12-22 04:24:01', '2021-12-22 04:24:01'),
(7, 321542356, 'salsa', 'salsa@gmail.com', '0897789658', 'L', 'Islam', 'pedagang tempe', 'lohbener indramayu', 'indramyu', '1980-12-20', '2021-12-22 04:38:44', '2021-12-22 04:38:44'),
(8, 32167787986898, 'rana salsa', 'rana@gmail.com', '00898478788', 'P', 'Islam', 'pedagang tahu', 'indramayu', 'indramayu', '1990-10-19', '2021-12-22 05:01:14', '2021-12-22 05:01:14'),
(9, 12345667890, 'via', 'vivi@gmail.com', '0896900000', 'P', 'Islam', 'Pedagang tahu', 'atzyshwhjcvhvhcgsaagghchkvkkka', 'tegal', '2021-12-20', '2021-12-22 05:11:15', '2021-12-22 05:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `bunga_tabungan`
--

CREATE TABLE `bunga_tabungan` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `bulan` int(11) DEFAULT NULL,
  `saldo_terendah` bigint(20) DEFAULT NULL,
  `suku_bunga` tinyint(4) DEFAULT NULL,
  `nominal_bunga` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bunga_tabungan`
--

INSERT INTO `bunga_tabungan` (`id`, `anggota_id`, `bulan`, `saldo_terendah`, `suku_bunga`, `nominal_bunga`, `created_at`, `updated_at`, `tahun`) VALUES
(1, 3, 10, NULL, 6, 0, '2021-12-16 06:08:42', '2021-12-16 06:08:42', 2021),
(2, 2, 12, 100000, 5, 425, '2021-12-21 07:53:06', '2021-12-21 07:53:06', 2021),
(3, 1, 12, 10000, 5, 42, '2021-12-22 01:49:09', '2021-12-22 01:49:09', 2021),
(4, 2, 7, NULL, 5, 0, '2021-12-22 03:19:48', '2021-12-22 03:19:48', 2020),
(5, 7, 12, 50000, 5, 212, '2021-12-22 04:41:49', '2021-12-22 04:41:49', 2021),
(6, 8, 12, 300000, 5, 1274, '2021-12-22 07:05:51', '2021-12-22 07:05:51', 2021),
(7, 8, 11, NULL, 5, 0, '2021-12-22 08:16:41', '2021-12-22 08:16:41', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_07_082604_create_anggota_table', 1),
(4, '2019_02_07_082623_create_tabungan_table', 1),
(5, '2019_02_07_082624_create_setoran_table', 1),
(6, '2019_02_07_082626_create_penarikan_table', 1),
(7, '2019_02_07_082724_create_riwayat_tabungan_table', 1),
(8, '2019_02_07_082725_create_bunga_tabungan_table', 1),
(9, '2019_02_09_093543_add_tahun_to_bunga_tabungan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penarikan`
--

CREATE TABLE `penarikan` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `jumlah` bigint(20) DEFAULT NULL,
  `biaya_administrasi` int(11) DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penarikan`
--

INSERT INTO `penarikan` (`id`, `anggota_id`, `jumlah`, `biaya_administrasi`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 10000, NULL, 'kedua', '2021-12-07 03:19:37', '2021-12-07 03:19:37'),
(2, 1, 5000, NULL, 'ketiga', '2021-12-07 03:31:08', '2021-12-07 03:31:08'),
(3, 2, 200000, NULL, 'bngj', '2021-12-07 04:18:04', '2021-12-07 04:18:04'),
(4, 2, 100000, NULL, 'Penarikan', '2021-12-15 14:53:01', '2021-12-15 14:53:01'),
(5, 3, 70000, NULL, 'Penarikan', '2021-12-18 05:48:34', '2021-12-18 05:48:34'),
(6, 2, 400000, NULL, 'penarikan', '2021-12-21 07:28:24', '2021-12-21 07:28:24'),
(7, 3, 330000, NULL, 'penarikan', '2021-12-22 01:44:35', '2021-12-22 01:44:35'),
(8, 5, 100000, NULL, 'Buat bayar kos', '2021-12-22 03:17:24', '2021-12-22 03:17:24'),
(9, 5, 50000, NULL, 'penarikan', '2021-12-22 03:52:33', '2021-12-22 03:52:33'),
(10, 6, 2000000, NULL, 'butuh banget nih', '2021-12-22 04:26:37', '2021-12-22 04:26:37'),
(11, 6, 1000000, NULL, 'penarikan', '2021-12-22 04:44:51', '2021-12-22 04:44:51'),
(12, 8, 200000, NULL, 'penarikan', '2021-12-22 05:02:46', '2021-12-22 05:02:46'),
(13, 8, 50000, NULL, 'penarikan', '2021-12-22 07:04:15', '2021-12-22 07:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_tabungan`
--

CREATE TABLE `riwayat_tabungan` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debet` bigint(20) DEFAULT NULL,
  `kredit` bigint(20) DEFAULT NULL,
  `saldo` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_tabungan`
--

INSERT INTO `riwayat_tabungan` (`id`, `anggota_id`, `tanggal`, `keterangan`, `debet`, `kredit`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-07', 'setoran', NULL, 20000, 20000, '2021-12-07 03:19:03', '2021-12-07 03:19:03'),
(2, 1, '2021-12-07', 'penarikan', 10000, NULL, 10000, '2021-12-07 03:19:37', '2021-12-07 03:19:37'),
(3, 1, '2021-12-07', 'setoran', NULL, 30000, 40000, '2021-12-07 03:23:43', '2021-12-07 03:23:43'),
(4, 1, '2021-12-07', 'setoran', NULL, 40000, 80000, '2021-12-07 03:25:11', '2021-12-07 03:25:11'),
(5, 1, '2021-12-07', 'penarikan', 5000, NULL, 75000, '2021-12-07 03:31:08', '2021-12-07 03:31:08'),
(6, 1, '2021-12-07', 'setoran', NULL, 5000, 80000, '2021-12-07 03:55:15', '2021-12-07 03:55:15'),
(7, 1, '2021-12-07', 'setoran', NULL, 6000, 86000, '2021-12-07 04:09:48', '2021-12-07 04:09:48'),
(8, 2, '2021-12-07', 'setoran', NULL, 500000, 500000, '2021-12-07 04:17:33', '2021-12-07 04:17:33'),
(9, 2, '2021-12-07', 'penarikan', 200000, NULL, 300000, '2021-12-07 04:18:04', '2021-12-07 04:18:04'),
(10, 2, '2021-12-15', 'setoran', NULL, 50000, 350000, '2021-12-15 14:52:04', '2021-12-15 14:52:04'),
(11, 2, '2021-12-15', 'penarikan', 100000, NULL, 250000, '2021-12-15 14:53:01', '2021-12-15 14:53:01'),
(12, 2, '2021-12-16', 'setoran', NULL, 100000, 350000, '2021-12-16 04:12:32', '2021-12-16 04:12:32'),
(13, 3, '2021-12-16', 'setoran', NULL, 150000, 150000, '2021-12-16 04:14:27', '2021-12-16 04:14:27'),
(14, 3, '2021-12-16', 'bunga', NULL, 0, 150000, '2021-12-16 06:08:42', '2021-12-16 06:08:42'),
(15, 3, '2021-12-18', 'setoran', NULL, 50000, 200000, '2021-12-18 05:48:02', '2021-12-18 05:48:02'),
(16, 3, '2021-12-18', 'penarikan', 70000, NULL, 130000, '2021-12-18 05:48:34', '2021-12-18 05:48:34'),
(17, 2, '2021-12-18', 'setoran', NULL, 150000, 500000, '2021-12-18 07:35:45', '2021-12-18 07:35:45'),
(18, 2, '2021-12-21', 'penarikan', 400000, NULL, 100000, '2021-12-21 07:28:24', '2021-12-21 07:28:24'),
(19, 2, '2021-12-21', 'setoran', NULL, 200000, 300000, '2021-12-21 07:48:02', '2021-12-21 07:48:02'),
(20, 2, '2021-12-21', 'bunga', NULL, 425, 300425, '2021-12-21 07:53:06', '2021-12-21 07:53:06'),
(21, 3, '2021-12-22', 'setoran', NULL, 200000, 330000, '2021-12-22 01:33:57', '2021-12-22 01:33:57'),
(22, 3, '2021-12-22', 'penarikan', 330000, NULL, 0, '2021-12-22 01:44:35', '2021-12-22 01:44:35'),
(23, 1, '2021-12-22', 'bunga', NULL, 42, 86042, '2021-12-22 01:49:09', '2021-12-22 01:49:09'),
(24, 3, '2021-12-22', 'setoran', NULL, 50000, 50000, '2021-12-22 02:09:18', '2021-12-22 02:09:18'),
(25, 5, '2021-12-22', 'setoran', NULL, 100000, 100000, '2021-12-22 03:16:52', '2021-12-22 03:16:52'),
(26, 5, '2021-12-22', 'penarikan', 100000, NULL, 0, '2021-12-22 03:17:24', '2021-12-22 03:17:24'),
(27, 2, '2021-12-22', 'bunga', NULL, 0, 300425, '2021-12-22 03:19:48', '2021-12-22 03:19:48'),
(28, 5, '2021-12-22', 'setoran', NULL, 50000, 50000, '2021-12-22 03:30:25', '2021-12-22 03:30:25'),
(29, 5, '2021-12-22', 'setoran', NULL, 50000, 100000, '2021-12-22 03:51:31', '2021-12-22 03:51:31'),
(30, 5, '2021-12-22', 'penarikan', 50000, NULL, 50000, '2021-12-22 03:52:33', '2021-12-22 03:52:33'),
(31, 6, '2021-12-22', 'setoran', NULL, 20000000, 20000000, '2021-12-22 04:25:33', '2021-12-22 04:25:33'),
(32, 6, '2021-12-22', 'penarikan', 2000000, NULL, 18000000, '2021-12-22 04:26:37', '2021-12-22 04:26:37'),
(33, 7, '2021-12-22', 'setoran', NULL, 50000, 50000, '2021-12-22 04:40:04', '2021-12-22 04:40:04'),
(34, 7, '2021-12-22', 'bunga', NULL, 212, 50212, '2021-12-22 04:41:49', '2021-12-22 04:41:49'),
(35, 6, '2021-12-22', 'penarikan', 1000000, NULL, 17000000, '2021-12-22 04:44:51', '2021-12-22 04:44:51'),
(36, 8, '2021-12-22', 'setoran', NULL, 500000, 500000, '2021-12-22 05:02:05', '2021-12-22 05:02:05'),
(37, 8, '2021-12-22', 'penarikan', 200000, NULL, 300000, '2021-12-22 05:02:46', '2021-12-22 05:02:46'),
(38, 9, '2021-12-22', 'setoran', NULL, 1000000000000, 1000000000000, '2021-12-22 05:14:06', '2021-12-22 05:14:06'),
(39, 8, '2021-12-22', 'setoran', NULL, 50000, 350000, '2021-12-22 07:03:22', '2021-12-22 07:03:22'),
(40, 8, '2021-12-22', 'penarikan', 50000, NULL, 300000, '2021-12-22 07:04:15', '2021-12-22 07:04:15'),
(41, 8, '2021-12-22', 'bunga', NULL, 1274, 301274, '2021-12-22 07:05:51', '2021-12-22 07:05:51'),
(42, 8, '2021-12-22', 'bunga', NULL, 0, 301274, '2021-12-22 08:16:41', '2021-12-22 08:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `setoran`
--

CREATE TABLE `setoran` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `jumlah` bigint(20) DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setoran`
--

INSERT INTO `setoran` (`id`, `anggota_id`, `jumlah`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 20000, 'pertama', '2021-12-07 03:19:03', '2021-12-07 03:19:03'),
(2, 1, 30000, 'w', '2021-12-07 03:23:43', '2021-12-07 03:23:43'),
(3, 1, 40000, 'simpanan pokok', '2021-12-07 03:25:11', '2021-12-07 03:25:11'),
(4, 1, 5000, 'simpanan wajib', '2021-12-07 03:55:15', '2021-12-07 03:55:15'),
(5, 1, 6000, 'simpanan wajib', '2021-12-07 04:09:48', '2021-12-07 04:09:48'),
(6, 2, 500000, 'simpanan wajib', '2021-12-07 04:17:33', '2021-12-07 04:17:33'),
(7, 2, 50000, 'Simpanan  Wajib', '2021-12-15 14:52:04', '2021-12-15 14:52:04'),
(8, 2, 100000, 'simpanan pokok', '2021-12-16 04:12:32', '2021-12-16 04:12:32'),
(9, 3, 150000, 'simpanan wajib', '2021-12-16 04:14:27', '2021-12-16 04:14:27'),
(10, 3, 50000, 'simpanan pokok', '2021-12-18 05:48:02', '2021-12-18 05:48:02'),
(11, 2, 150000, 'simpanan wajib', '2021-12-18 07:35:45', '2021-12-18 07:35:45'),
(12, 2, 200000, 'simpanan pokok', '2021-12-21 07:48:02', '2021-12-21 07:48:02'),
(13, 3, 200000, 'simpanan wajib', '2021-12-22 01:33:57', '2021-12-22 01:33:57'),
(14, 3, 50000, NULL, '2021-12-22 02:09:18', '2021-12-22 02:09:18'),
(15, 5, 100000, 'simpanan wajib', '2021-12-22 03:16:52', '2021-12-22 03:16:52'),
(16, 5, 50000, 'simpanan wajib', '2021-12-22 03:30:25', '2021-12-22 03:30:25'),
(17, 5, 50000, 'simpanan wajib', '2021-12-22 03:51:31', '2021-12-22 03:51:31'),
(18, 6, 20000000, 'simpanan wajib', '2021-12-22 04:25:33', '2021-12-22 04:25:33'),
(19, 7, 50000, 'simpanan wajib', '2021-12-22 04:40:04', '2021-12-22 04:40:04'),
(20, 8, 500000, 'simpanan pokok', '2021-12-22 05:02:05', '2021-12-22 05:02:05'),
(21, 9, 1000000000000, NULL, '2021-12-22 05:14:06', '2021-12-22 05:14:06'),
(22, 8, 50000, 'simpanan wajib', '2021-12-22 07:03:22', '2021-12-22 07:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `tabungan`
--

CREATE TABLE `tabungan` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `saldo` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabungan`
--

INSERT INTO `tabungan` (`id`, `anggota_id`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 1, 86042, '2021-12-07 03:19:03', '2021-12-22 01:49:09'),
(2, 2, 300425, '2021-12-07 04:17:33', '2021-12-21 07:53:06'),
(3, 3, 50000, '2021-12-16 04:14:27', '2021-12-22 02:09:18'),
(4, 5, 50000, '2021-12-22 03:16:52', '2021-12-22 03:52:33'),
(5, 6, 17000000, '2021-12-22 04:25:33', '2021-12-22 04:44:51'),
(6, 7, 50212, '2021-12-22 04:40:04', '2021-12-22 04:41:49'),
(7, 8, 301274, '2021-12-22 05:02:05', '2021-12-22 07:05:51'),
(8, 9, 1000000000000, '2021-12-22 05:14:06', '2021-12-22 05:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin  Koperasi', 'primkopti@gmail.com', '$2y$10$icGQu5fVJNBooX3IRikoNugIwqCOmoCbDQzq2hVp0KB3vQfiXjT4K', 'K5nBQw6QWCwPpgRv3sY7qJDwDvNNouYJsPuECuKUQNFbBk7wDKe4sQKhDbmg', '2019-10-01 06:46:41', '2021-12-17 04:19:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggota_nik_unique` (`nik`);

--
-- Indexes for table `bunga_tabungan`
--
ALTER TABLE `bunga_tabungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bunga_tabungan_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penarikan`
--
ALTER TABLE `penarikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penarikan_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `riwayat_tabungan`
--
ALTER TABLE `riwayat_tabungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_tabungan_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setoran_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `tabungan`
--
ALTER TABLE `tabungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabungan_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bunga_tabungan`
--
ALTER TABLE `bunga_tabungan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penarikan`
--
ALTER TABLE `penarikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `riwayat_tabungan`
--
ALTER TABLE `riwayat_tabungan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `setoran`
--
ALTER TABLE `setoran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tabungan`
--
ALTER TABLE `tabungan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
