-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 06:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets`
--

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
(5, '2023_08_26_055025_create_reservations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('reserve','unreserve') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unreserve',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `booking_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'unreserve', NULL, NULL),
(2, NULL, 'unreserve', NULL, NULL),
(3, NULL, 'unreserve', NULL, NULL),
(4, NULL, 'unreserve', NULL, NULL),
(5, NULL, 'unreserve', NULL, NULL),
(6, NULL, 'unreserve', NULL, NULL),
(7, NULL, 'unreserve', NULL, NULL),
(8, NULL, 'unreserve', NULL, NULL),
(9, NULL, 'unreserve', NULL, NULL),
(10, NULL, 'unreserve', NULL, NULL),
(11, NULL, 'unreserve', NULL, NULL),
(12, NULL, 'unreserve', NULL, NULL),
(13, NULL, 'unreserve', NULL, NULL),
(14, NULL, 'unreserve', NULL, NULL),
(15, NULL, 'unreserve', NULL, NULL),
(16, NULL, 'unreserve', NULL, NULL),
(17, NULL, 'unreserve', NULL, NULL),
(18, NULL, 'unreserve', NULL, NULL),
(19, NULL, 'unreserve', NULL, NULL),
(20, NULL, 'unreserve', NULL, NULL),
(21, NULL, 'unreserve', NULL, NULL),
(22, NULL, 'unreserve', NULL, NULL),
(23, NULL, 'unreserve', NULL, NULL),
(24, NULL, 'unreserve', NULL, NULL),
(25, NULL, 'unreserve', NULL, NULL),
(26, NULL, 'unreserve', NULL, NULL),
(27, NULL, 'unreserve', NULL, NULL),
(28, NULL, 'unreserve', NULL, NULL),
(29, NULL, 'unreserve', NULL, NULL),
(30, NULL, 'unreserve', NULL, NULL),
(31, NULL, 'unreserve', NULL, NULL),
(32, NULL, 'unreserve', NULL, NULL),
(33, NULL, 'unreserve', NULL, NULL),
(34, NULL, 'unreserve', NULL, NULL),
(35, NULL, 'unreserve', NULL, NULL),
(36, NULL, 'unreserve', NULL, NULL),
(37, NULL, 'unreserve', NULL, NULL),
(38, NULL, 'unreserve', NULL, NULL),
(39, NULL, 'unreserve', NULL, NULL),
(40, NULL, 'unreserve', NULL, NULL),
(41, NULL, 'unreserve', NULL, NULL),
(42, NULL, 'unreserve', NULL, NULL),
(43, NULL, 'unreserve', NULL, NULL),
(44, NULL, 'unreserve', NULL, NULL),
(45, NULL, 'unreserve', NULL, NULL),
(46, NULL, 'unreserve', NULL, NULL),
(47, NULL, 'unreserve', NULL, NULL),
(48, NULL, 'unreserve', NULL, NULL),
(49, NULL, 'unreserve', NULL, NULL),
(50, NULL, 'unreserve', NULL, NULL),
(51, NULL, 'unreserve', NULL, NULL),
(52, NULL, 'unreserve', NULL, NULL),
(53, NULL, 'unreserve', NULL, NULL),
(54, NULL, 'unreserve', NULL, NULL),
(55, NULL, 'unreserve', NULL, NULL),
(56, NULL, 'unreserve', NULL, NULL),
(57, NULL, 'unreserve', NULL, NULL),
(58, NULL, 'unreserve', NULL, NULL),
(59, NULL, 'unreserve', NULL, NULL),
(60, NULL, 'unreserve', NULL, NULL),
(61, NULL, 'unreserve', NULL, NULL),
(62, NULL, 'unreserve', NULL, NULL),
(63, NULL, 'unreserve', NULL, NULL),
(64, NULL, 'unreserve', NULL, NULL),
(65, NULL, 'unreserve', NULL, NULL),
(66, NULL, 'unreserve', NULL, NULL),
(67, NULL, 'unreserve', NULL, NULL),
(68, NULL, 'unreserve', NULL, NULL),
(69, NULL, 'unreserve', NULL, NULL),
(70, NULL, 'unreserve', NULL, NULL),
(71, NULL, 'unreserve', NULL, NULL),
(72, NULL, 'unreserve', NULL, NULL),
(73, NULL, 'unreserve', NULL, NULL),
(74, NULL, 'unreserve', NULL, NULL),
(75, NULL, 'unreserve', NULL, NULL),
(76, NULL, 'unreserve', NULL, NULL),
(77, NULL, 'unreserve', NULL, NULL),
(78, NULL, 'unreserve', NULL, NULL),
(79, NULL, 'unreserve', NULL, NULL),
(80, NULL, 'unreserve', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
