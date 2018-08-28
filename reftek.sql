-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2018 at 03:23 PM
-- Server version: 5.7.14
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reftek`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'new manager', 'mark@hotels.ng', '$2y$10$x6W6YPa9mfcPHKrYMxPIZOlZ5.WgPlBIAStaK6JZpv5v8m3/PteWy', '2018-08-28 12:53:16', '2018-08-28 12:53:16'),
(2, 'Maaj', 'maaj@hotels.ng', '$2y$10$FxSGuPdJ9f0NIB7.6dBOz.dP2uApNRQM5RJEObpSX2Koz6NQ25nxy', '2018-08-28 13:16:32', '2018-08-28 13:16:32'),
(3, 'raymond', 'raymond@gmail.com', '$2y$10$ZALXpJdIUSlOMs8oieyNWuMTwopgFhwszJFqICdwV6adp7h8Qe1W6', '2018-08-28 14:17:23', '2018-08-28 14:17:23'),
(4, 'kunle', 'kunle@gmail.com', '$2y$10$xZ98QqJ2hTkKT6a/9C3z8eYpveFX/kJPa4TKm3zGdfO07DBnaHv.m', '2018-08-28 14:17:38', '2018-08-28 14:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_28_101145_create_store_table', 2),
(4, '2018_08_28_101557_create_product_table', 3),
(5, '2018_08_28_102347_create_manager_table', 3),
(6, '2018_08_28_133707_create_store_manager_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'Omo', 2, '2018-08-28 11:30:08', '2018-08-28 11:30:08'),
(2, 'Learn', 2, '2018-08-28 11:30:40', '2018-08-28 11:30:40'),
(3, 'here', 1, '2018-08-28 11:33:00', '2018-08-28 11:33:00'),
(4, 'name', 1, '2018-08-28 11:33:37', '2018-08-28 11:33:37'),
(5, 'Wine', 3, '2018-08-28 14:16:54', '2018-08-28 14:16:54'),
(6, 'Wine', 4, '2018-08-28 14:17:09', '2018-08-28 14:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Baba dey', 'Lekki', NULL, NULL),
(2, 'Reftek Store', 'Here', '2018-08-28 10:57:00', '2018-08-28 10:57:00'),
(3, 'Reftek', 'Ikeja', '2018-08-28 14:16:21', '2018-08-28 14:16:21'),
(4, 'Sycamore', 'VI', '2018-08-28 14:16:29', '2018-08-28 14:16:29'),
(5, 'NewStore', 'Ibadan', '2018-08-28 14:19:11', '2018-08-28 14:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `store_manager`
--

CREATE TABLE `store_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `manager_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_manager`
--

INSERT INTO `store_manager` (`id`, `store_id`, `manager_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-08-28 13:18:47', '2018-08-28 13:18:47'),
(2, 3, 3, '2018-08-28 14:17:47', '2018-08-28 14:17:47'),
(3, 3, 4, '2018-08-28 14:17:52', '2018-08-28 14:17:52'),
(4, 4, 4, '2018-08-28 14:18:31', '2018-08-28 14:18:31'),
(5, 4, 3, '2018-08-28 14:18:38', '2018-08-28 14:18:38'),
(6, 5, 3, '2018-08-28 14:19:34', '2018-08-28 14:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@reftek.co', '$2y$10$2LKrx.cUBEW2nhy0HZElkufV5/8XbpBXD3bkRU76XOi2gLXl7.hJW', 'N8Som9rWuJBfe7O8I5HoabV8bAQQnju0fSFLqI9SkRPM9uJfauaTQ7Rs1rQb', '2018-08-28 09:02:37', '2018-08-28 09:02:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_store_id_foreign` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_manager`
--
ALTER TABLE `store_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_manager_store_id_foreign` (`store_id`),
  ADD KEY `store_manager_manager_id_foreign` (`manager_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `store_manager`
--
ALTER TABLE `store_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
