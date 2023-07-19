-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2023 at 09:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil_dua`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merk_mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_polisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_sewa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `tahun_pembuatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenaga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kapasitas_penumpang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `merk_mobil`, `nama_mobil`, `no_polisi`, `gambar_mobil`, `harga_sewa`, `bbm`, `keterangan`, `status_mobil`, `tahun_pembuatan`, `tenaga`, `warna_mobil`, `kapasitas_penumpang`, `fasilitas`, `created_at`, `updated_at`) VALUES
(1, 'honda', 'mobilio', 'b 0000 b', NULL, '500000', 'bensin', 'lengkap', '1', '2020', '100', 'hitam', '6', 'lengkap', NULL, '2023-07-19 00:04:49'),
(2, 'toyota', 'kijang', 'b 1111 b', NULL, '500000', 'bensin', 'lengkap', '0', '2020', '100', 'hitam', '6', 'lengkap', NULL, '2023-07-19 00:19:52'),
(3, 'wuling', 'air ev', 'a 3333 1', NULL, '500000', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '2023-07-18 23:43:10', '2023-07-19 00:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_04_095829_create_cars_table', 1),
(6, '2021_11_04_095948_create_pesanan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cars_id` bigint(20) NOT NULL,
  `no_pesanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `denda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jaminan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_jaminan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_peminjaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `user_id`, `cars_id`, `no_pesanan`, `tgl_sewa`, `tgl_selesai`, `denda`, `jaminan`, `foto_jaminan`, `status_pembayaran`, `status_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'B-1689750289190723', '2023-07-19', '2023-07-22', '0', 'surat', '4yCMVUCwZn9R8NU9sN5ryoH0i6FIuiTET0oulLRm.jpg', '1', '1', '2023-07-19 00:04:49', '2023-07-19 00:10:14'),
(2, 3, 3, 'B-1689750985190723', '2023-07-19', '2023-07-26', '0', 'surat', 'LKv0fp64iToz1Cf34FSPHlylQuye7CjNQsXGL9nU.jpg', '0', '0', '2023-07-19 00:16:25', '2023-07-19 00:16:25'),
(3, 4, 2, 'B-1689751155190723', '2023-07-19', '2023-07-26', '0', 'surat', '6cH81jmKFgmbYVRbgp3ph9nrym3tDNxmYjJleMwF.jpg', '1', '2', '2023-07-19 00:19:15', '2023-07-19 00:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sim` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nama_lengkap`, `email`, `email_verified_at`, `password`, `role`, `alamat`, `no_telephone`, `no_sim`, `tgl_lahir`, `pekerjaan`, `kota`, `jenis_kelamin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin admin', 'admin@admin.com', NULL, '$2y$10$DQxqRBONq9dhKWWaik2jQO3WvuAS61K5993WJmt/tJMFRHqHQ4U6K', '1', 'ciawi bogor', '0812345678', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 21:24:50', '2023-07-18 21:24:50'),
(2, 'coba0', 'coba0', 'coba0@coba0.coba0', NULL, '$2y$10$l61NXCWkwLmv2VB9m9MUAO5kBLnJGCuAoet41ZWIZYq6UXUpRPzE2', '0', 'jakarta', '123456789', '123456789', NULL, NULL, NULL, NULL, NULL, '2023-07-18 23:07:23', '2023-07-18 23:07:23'),
(3, 'coba1', 'coba1', 'coba1@coba1.coba1', NULL, '$2y$10$4b/d9m7O6ZuW/ECF66G3dOEzlXxGPzS52uhEpOX0Rwcl17IOKQxVe', '0', 'jakarta', '123456789', '123456787', NULL, NULL, NULL, NULL, NULL, '2023-07-18 23:09:14', '2023-07-18 23:09:14'),
(4, 'coba3', 'coba3', 'coba3@coba3.coba3', NULL, '$2y$10$rn7EtsAzBodG2KX6ThNIU.EbqiaD81X.fJfleTMy24e74rX0QMhNK', '0', 'coba3', '12345678', '12345678', NULL, NULL, NULL, NULL, NULL, '2023-07-19 00:18:46', '2023-07-19 00:18:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
