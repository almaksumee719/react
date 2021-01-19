-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 07:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel101-hotel-bookings-laravel-react`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `room_id`, `created_at`, `updated_at`) VALUES
(1004, 'MASTER BEDROOMS', 103, '2021-01-16 23:33:57', '2021-01-16 23:33:57'),
(1005, 'WIFI COVERAGE', 104, '2021-01-17 00:16:47', '2021-01-17 00:16:47'),
(1006, 'MASTER BEDROOMS', 104, '2021-01-17 00:16:47', '2021-01-17 00:16:47'),
(1007, 'MASTER BEDROOMS', 105, '2021-01-17 00:18:40', '2021-01-17 00:18:40'),
(1008, 'WIFI COVERAGE', 105, '2021-01-17 00:18:40', '2021-01-17 00:18:40'),
(1009, 'POOL & SPA', 105, '2021-01-17 00:18:40', '2021-01-17 00:18:40'),
(1010, 'HOT TUB', 105, '2021-01-17 00:18:40', '2021-01-17 00:18:40'),
(1011, 'MASTER BEDROOMS', 106, '2021-01-17 00:19:35', '2021-01-17 00:19:35'),
(1012, 'POOL & SPA', 106, '2021-01-17 00:19:35', '2021-01-17 00:19:35'),
(1013, 'WIFI COVERAGE', 106, '2021-01-17 00:19:35', '2021-01-17 00:19:35'),
(1014, 'HOT TUB', 106, '2021-01-17 00:19:35', '2021-01-17 00:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `x_coordinate` double(8,2) NOT NULL,
  `y_coordinate` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `address`, `city`, `star`, `x_coordinate`, `y_coordinate`, `image`, `created_at`, `updated_at`) VALUES
(11, 'Dimond Hotel', 'Diyabari', 'Bangladesh', 3, 33.60, 8.12, 'hotel_1610861559.jpg', '2021-01-16 23:32:39', '2021-01-16 23:32:39'),
(12, 'Gold Resturent', 'framget', 'Bangladesh', 5, 31.63, 7.00, 'hotel_1610863226.jpg', '2021-01-17 00:00:26', '2021-01-17 00:00:26'),
(13, 'Rose Hotel', 'Panthopoth', 'Bangladesh', 5, 44.30, 6.00, 'hotel_1610863301.jpg', '2021-01-17 00:01:41', '2021-01-17 00:01:41'),
(14, 'Redison Hotel', 'Mirpur', 'Bangladesh', 5, 32.20, 9.00, 'hotel_1610863365.jpg', '2021-01-17 00:02:45', '2021-01-17 00:02:45'),
(15, 'Pecific Hotel', 'Polton', 'Bangladesh', 5, 35.90, 7.00, 'hotel_1610863436.jpg', '2021-01-17 00:03:56', '2021-01-17 00:03:56'),
(16, 'Westin hotel', '5no School housing road.postogola.Dhaka', 'Bangladesh', 5, 36.50, 9.00, 'hotel_1610863616.jpg', '2021-01-17 00:06:56', '2021-01-17 00:06:56');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_08_06_202532_create_hotels_table', 1),
(10, '2020_08_06_202550_create_rooms_table', 1),
(11, '2020_08_06_202618_create_bookings_table', 1),
(12, '2020_08_06_202632_create_features_table', 1),
(13, '2020_08_16_175637_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('537f48e6d37ac961d469a2565b2abb7681ca1eeed3a4ef718dd425d253ef66063de6b57099ea351e', 14, 1, '', '[]', 0, '2021-01-16 03:14:31', '2021-01-16 03:14:31', '2022-01-16 09:14:31'),
('dd96a60c89ea498c622a86cf95a19674c9fee5bf46face52f1ee93fdec3e1f87e4f2bf82a755ce2d', 11, 1, '', '[]', 0, '2021-01-16 12:36:01', '2021-01-16 12:36:01', '2022-01-16 18:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yb0aCv5860Pt0zHt2S8eYEE3Q3hCJz8iqCN8zcpn', NULL, 'http://localhost', 1, 0, 0, '2021-01-16 03:13:37', '2021-01-16 03:13:37'),
(2, NULL, 'Laravel Password Grant Client', 'DnjkTX0Og8UpyzGLra5TqHFjp726oCpEvKnSlAPy', 'users', 'http://localhost', 0, 1, 0, '2021-01-16 03:13:37', '2021-01-16 03:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-16 03:13:37', '2021-01-16 03:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `guest` int(11) NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `guest`, `hotel_id`, `image`, `created_at`, `updated_at`) VALUES
(103, 'Comfort Room', 'Ac, swiming pool', 5000, 2, 11, 'room-1_1610861637.jpg,room-2_1610861637.jpg,room-3_1610861637.jpg', '2021-01-16 23:33:57', '2021-01-16 23:33:57'),
(104, 'VIP', 'such a beautiful ac room', 600, 2, 12, 'room-4_1610864207.jpg,room-5_1610864207.jpg,room-6_1610864207.jpg', '2021-01-17 00:16:47', '2021-01-17 00:16:47'),
(105, 'Good Bughet', 'Ac balcony', 500, 2, 13, 'room-9_1610864320.jpg,room-7_1610864320.jpg,room-8_1610864320.jpg', '2021-01-17 00:18:40', '2021-01-17 00:18:40'),
(106, 'Nice', 'Nice Look', 400, 2, 14, 'room-10_1610864374.jpg,room-11_1610864374.jpg,room-12_1610864374.jpg', '2021-01-17 00:19:34', '2021-01-17 00:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `address`, `city`, `email`, `password`, `is_admin`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dallas', 'Cassin', '801-754-8111', '56350 Colten Pass Apt. 758', 'Macimouth', 'omayert@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'X3CSyYs3Hc', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(2, 'Dedrick', 'Kreiger', '747-299-9368', '28667 Brooke Center', 'North Alysaside', 'wilton26@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'EMcbkck9kh', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(3, 'Turner', 'Hirthe', '(484) 562-2067 x7679', '44892 Raven Greens', 'Lake Zoraborough', 'darwin.bednar@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'ZMDlSyJzkD', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(4, 'Blaise', 'Stamm', '740-268-7249', '2819 Grady Camp Apt. 701', 'East Ariborough', 'ward.margret@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '4vo8CDbjbF', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(5, 'Declan', 'Bailey', '(738) 638-0636 x5030', '72233 Kunze Isle', 'Ryleighmouth', 'malcolm.gislason@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'e00LWdM1Sv', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(6, 'Eveline', 'Johns', '+1.296.343.0050', '72286 Will Fields Apt. 800', 'Russelshire', 'bednar.modesto@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'GPddTcnPBl', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(7, 'Citlalli', 'Altenwerth', '703.239.1385', '34542 Sylvia Locks', 'Travonborough', 'mosciski.chester@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'yxGlSD0hdS', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(8, 'Carmel', 'Padberg', '1-524-980-0564', '1604 Lexus Mall', 'Nienowchester', 'carli04@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'NnwjFRwaxs', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(9, 'Rodrick', 'Marks', '(214) 954-9959', '676 Rubie Meadows Suite 054', 'Schadenland', 'aidan.prosacco@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '8aWH30MFfu', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(10, 'Stephon', 'McGlynn', '(658) 945-0560 x807', '67639 Andre Road', 'Lake Tevinshire', 'dtromp@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, 'BoIHzveH45', '2021-01-16 02:09:13', '2021-01-16 02:09:13'),
(11, 'Ahmed', 'Hamada', '0666336633', 'Rue 55, Qt X', 'Rabat', 'admin@gmail.com', '$2y$10$aAAnTNyjVfUdYigESKe4z.gliNx6rOq8qls30dal7c3ryD0XLAXPa', 1, NULL, 'Y5tEDByAGq', NULL, NULL),
(12, 'Jakir', 'Hossain', NULL, NULL, NULL, 'jakir@gmail.com', '$2y$10$jZ2xElWIVrrXW3LETdkege7lkJfS6oxHDrFRsMuVzSV7pTmQo86na', 1, NULL, NULL, '2021-01-16 02:25:45', '2021-01-16 02:25:45'),
(13, 'Monir', 'Hossain', NULL, NULL, NULL, 'monir@gmail.com', '$2y$10$CEjnpZKXl96Lwbkudjy3weL9kSnc.e6nmTMtGWF7lOpZ4jsalHV.q', 1, NULL, NULL, '2021-01-16 02:26:21', '2021-01-16 02:26:21'),
(14, 'zaman', 'Hossain', '014785555', NULL, NULL, 'zaman@gmail.com', '$2y$10$VoFuGKX7i/AsUP20mh07L.itDPSsX.1zJQzdRq9ie6e/Nxy7sX6vi', 1, 'user_14_1610788505.jpg', NULL, '2021-01-16 02:29:56', '2021-01-16 03:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_room_id_foreign` (`room_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_hotel_id_foreign` (`hotel_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hotel_id_foreign` (`hotel_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
