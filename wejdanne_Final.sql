-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2022 at 01:03 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wejdanne_Final`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uninstall_files` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'kjjijuj@gmail.com', '01765478213', 0, '1556780563user.png', '$2y$10$bvMVG9qQG2H90HfR3Wj8aeyTTK4t1lypd1.1PgP/At8qdEDYThI3O', 1, '4mnUpRhHhUy9DuMmBH3u7Xnl8K1CXx8ug2jHSvpM9R26RuEr8nFJAN0VKndw', 'cc301f5b56330fcc34f979aab2d6f8ba', '2018-02-28 23:27:08', '2022-10-27 20:13:06', 'Genius Store'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'shaon@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, '7nIlCaoDI2jBZDDZVeJPV6FGVjtrfVM6t7QnWx0L8AwUw24wp5IQxbU3YNLe', NULL, '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'Bangla', '1567247534xTuVLrXh.json', '1567247534xTuVLrXh', 1),
(3, 0, 'عربى', '15970374764TGUNJJs.json', '15970374764TGUNJJs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(3, 'Order Confirmation', 13, 'sdf', '2019-08-19 23:17:51', '2019-08-19 23:17:51', 'Dispute', 'adasd423423'),
(9, 'TEST', 22, 'tes', '2020-03-30 05:03:37', '2020-03-30 05:03:37', 'Ticket', NULL),
(10, 'leave application', 13, 'werewr', '2020-08-11 02:17:13', '2020-08-11 02:17:13', NULL, NULL),
(12, 'hi', 36, 'hi', '2021-12-12 17:14:26', '2021-12-12 17:14:26', NULL, NULL),
(13, 'we', 36, 'qer', '2021-12-12 17:18:38', '2021-12-12 17:18:38', NULL, NULL),
(14, 'qwe', 36, 'qwer', '2021-12-12 17:19:05', '2021-12-12 17:19:05', NULL, NULL),
(15, 'sda', 22, 'fghj', '2021-12-12 17:21:01', '2021-12-12 17:21:01', NULL, NULL),
(16, 'iyuiyui', 36, 'yuiyuiyu', '2021-12-14 12:50:30', '2021-12-14 12:50:30', NULL, NULL),
(17, 'gfgfg', 22, 'fgfgfg', '2021-12-14 12:52:32', '2021-12-14 12:52:32', NULL, NULL),
(18, 'dsghte', 22, 'fgjdfgjdfj', '2022-02-05 23:34:52', '2022-02-05 23:34:52', NULL, NULL),
(19, 'Helleo', 22, 'jyjtyurtyi', '2022-02-05 23:35:14', '2022-02-05 23:35:14', 'Ticket', NULL),
(21, 'Helleo', 22, 'etrwy', '2022-02-21 00:32:01', '2022-02-21 00:32:01', 'Dispute', 'jtcWfaomu8');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 3, 'sdf', 13, '2019-08-19 23:17:51', '2019-08-19 23:17:51'),
(15, 9, 'tes', 22, '2020-03-30 05:03:38', '2020-03-30 05:03:38'),
(16, 10, 'werewr', NULL, '2020-08-11 02:17:13', '2020-08-11 02:17:13'),
(18, 12, 'hi', NULL, '2021-12-12 17:14:26', '2021-12-12 17:14:26'),
(19, 13, 'qer', NULL, '2021-12-12 17:18:38', '2021-12-12 17:18:38'),
(20, 14, 'qwer', NULL, '2021-12-12 17:19:06', '2021-12-12 17:19:06'),
(21, 15, 'fghj', NULL, '2021-12-12 17:21:01', '2021-12-12 17:21:01'),
(22, 16, 'yuiyuiyu', NULL, '2021-12-14 12:50:30', '2021-12-14 12:50:30'),
(23, 17, 'fgfgfg', NULL, '2021-12-14 12:52:32', '2021-12-14 12:52:32'),
(24, 18, 'fgjdfgjdfj', NULL, '2022-02-05 23:34:52', '2022-02-05 23:34:52'),
(25, 19, 'jyjtyurtyi', 22, '2022-02-05 23:35:14', '2022-02-05 23:35:14'),
(26, 19, 'ghdfghdgh', NULL, '2022-02-05 23:35:26', '2022-02-05 23:35:26'),
(27, 19, 'hgjgjuh', 22, '2022-02-05 23:58:50', '2022-02-05 23:58:50'),
(28, 19, 'gjyfu', 22, '2022-02-05 23:58:58', '2022-02-05 23:58:58'),
(30, 21, 'etrwy', 22, '2022-02-21 00:32:01', '2022-02-21 00:32:01'),
(31, 21, 'tuyrir', 22, '2022-02-21 00:32:34', '2022-02-21 00:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_sections`
--

CREATE TABLE `arrival_sections` (
  `id` int(5) NOT NULL,
  `title` varchar(500) NOT NULL,
  `header` varchar(500) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `position` tinyint(5) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arrival_sections`
--

INSERT INTO `arrival_sections` (`id`, `title`, `header`, `photo`, `status`, `position`, `created_at`, `updated_at`) VALUES
(3, 'MEN COLLECTION', 'New Autumn Arrival 2021', '164370899567png.png', 1, 0, '2022-02-01 03:03:51.000000', '2022-02-01 03:49:55.000000'),
(4, 'NEW FASHION', 'New Autumn Arrival 2022', '164371008182png.png', 1, 1, '2022-02-01 04:08:01.000000', '2022-03-02 22:55:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 0, 1, '2019-10-12 03:22:03', '2020-11-09 02:26:58'),
(39, 16, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(40, 16, 'App\\Models\\Category', 'Warrenty', 'warrenty', 1, 1, '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(41, 16, 'App\\Models\\Category', 'Belt', 'belt', 1, 1, '2022-03-24 15:55:52', '2022-03-24 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(259, 33, '1 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(260, 33, '2 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(261, 33, '3 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(269, 39, 'G-Shock', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(270, 39, 'Diesel', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(271, 39, 'Longines', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(272, 39, 'Hamilton', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(273, 39, 'Citizen', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(274, 40, 'Local Sell Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(275, 40, 'Manufacture Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(276, 40, 'International Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(277, 41, 'Leather', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(278, 41, 'Stainless steel', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(279, 41, 'Rubber', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(280, 41, 'Normal', '2022-03-24 15:55:52', '2022-03-24 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `language_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `language_id`) VALUES
(3, '16340212841632390083Topsmall.jpg', 'https://www.google.com/', 'Large', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(9, 2, 'How to design effective arts?', 'how-to-design-effective-artsoCiZ', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543362116423090481560403334beautiful-cellphone-cute-761963jpgjpg.jpg', 'www.geniusocean.com', 41, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41', 1),
(10, 3, 'How to design effective arts?', 'how-to-design-effective-artsWAVi', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543363216423090781560403521afro-attractive-beautiful-2253065jpgjpg.jpg', 'www.geniusocean.com', 15, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21', 1),
(12, 2, 'How to design effective arts?', 'how-to-design-effective-artsLUx6', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543360916423090171560403662beautiful-brown-hair-casual-1989252jpgjpg.jpg', 'www.geniusocean.com', 20, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20', 1),
(13, 3, 'How to design effective arts?', 'how-to-design-effective-artsSCtj', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1645433598164069213125pngpng.png', 'www.geniusocean.com', 58, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36', 1),
(14, 2, 'How to design effective arts?', 'how-to-design-effective-arts5Xoo', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1645433573164069202629pngpng.png', 'www.geniusocean.com', 4, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30', 1),
(15, 3, 'How to design effective arts?', 'how-to-design-effective-artsq2Rz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543355515542700676-minjpg.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53', 1),
(16, 2, 'How to design effective arts?', 'how-to-design-effective-artsGnee', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543353615542699045-minjpg.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(17, 3, 'How to design effective arts?', 'how-to-design-effective-artsOYf3', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543351615542698954-minjpg.jpg', 'www.geniusocean.com', 62, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1),
(18, 2, 'How to design effective arts?', 'how-to-design-effective-artsrJ9k', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454339504png.png', 'www.geniusocean.com', 229, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1),
(20, 2, 'How to design effective arts?', 'how-to-design-effective-artspnST', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543347015542698832-minjpg.jpg', 'www.geniusocean.com', 11, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(21, 3, 'How to design effective arts?', 'how-to-design-effective-arts1kzz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334471572852760blog7png.png', 'www.geniusocean.com', 39, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1),
(22, 2, 'How to design effective arts?', 'how-to-design-effective-artsAmHL', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543402825png.png', 'www.geniusocean.com', 93, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1),
(23, 7, 'How to design effective arts?', 'how-to-design-effective-artszYxx', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334081572852731blog3jpg.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', 1),
(24, 3, 'How to design effective arts?', 'how-to-design-effective-arts8bQ1', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454333931572852725blog2jpg.jpg', 'www.geniusocean.com', 39, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', 1);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(25, 3, 'How to design effective arts?', 'how-to-design-effective-artsSt80', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p><p align=\"justify\"><br></p><p align=\"justify\"><img onclick=\"alert(\'Hacked\')\" src=\"https://i.imgur.com/jtEirwY.png\" width=\"128\"><br></p><p align=\"justify\"><br></p>\r\n\r\n<script>alert(\'Hacked\');</script>', '16454333771572852720blog1png.png', 'www.geniusocean.com', 86, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59', 1),
(26, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal6G3q', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543336315542700251-minjpg.jpg', 'www.geniusocean.com', 39, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-02-06 09:53:41', 2),
(27, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalQhIW', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543334715542728446-minjpg.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-03-06 09:54:21', 2),
(28, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal8q2j', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543333215542698954-minjpg.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-04-06 22:04:20', 2),
(29, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal2BgE', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543331415542698893-minjpg.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-05-06 22:04:36', 2),
(30, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal5Rbh', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543329715542700322-minjpg.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-06-03 06:02:30', 2);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(31, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalP7Po', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '1645433260164069206129pngpng.png', 'www.geniusocean.com', 6, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-07-03 06:02:53', 2),
(32, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalsDtP', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543324616423091051560403590adult-blue-blue-sky-875862jpgjpg.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-08-03 06:03:14', 2),
(33, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal96nb', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543323516423090781560403521afro-attractive-beautiful-2253065jpgjpg.jpg', 'www.geniusocean.com', 50, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:37', 2),
(34, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalr6Xl', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543322316423090481560403334beautiful-cellphone-cute-761963jpgjpg.jpg', 'www.geniusocean.com', 164, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:59', 2),
(35, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal4DnD', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '164543321016423090171560403662beautiful-brown-hair-casual-1989252jpgjpg.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-08-03 06:03:14', 2),
(36, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal76lL', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '16454331811572852760blog7png.png', 'www.geniusocean.com', 37, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:37', 2);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(37, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalaPbJ', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '16454331691572852743blog5png.png', 'www.geniusocean.com', 70, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:59', 2),
(38, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaallJXF', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '16454331551572852731blog3jpg.jpg', 'www.geniusocean.com', 8, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2018-08-03 06:03:14', 2),
(39, 11, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaal2mQ0', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '16454331431572852725blog2jpg.jpg', 'www.geniusocean.com', 35, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:37', 2),
(40, 10, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaaldBvg', '<div align=\"justify\"><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">لوريم ايبسوم&nbsp;دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس نيولا باراياتيور؟<br></p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">&nbsp;أت فيرو ايوس ايت أكيوساميوس ايت أيوستو أودايو دايجنايسسايموس ديوكايميوس كيواي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">بلاندايتاييس برايسينتايوم فوليوبتاتيوم ديلينايتاي أتكيوي كورريوبتاي كيوأوس دولوريس أيت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">سيما يليكيوسيونت ان كيولبا كيواي أوفايكيا ديسيريونت موللايتايا انايماي, أيدي ايست لابوريوم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">دايستا ينستايو. نام لايبيرو تيمبور, كيوم سوليوتا نوبايس ايست ايلاجينداي أوبتايو كيومكيوي</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">نايهايل ايمبيدايت كيو ماينيوس ايدي كيوود ماكسهيمي بلاسايت فاسيري بوسسايميوس,أومنايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">فوليوبتاس ايت ايوت أسسيو ميندايست, أومنيوس دولار ريبيللينديوس. تيمبورايبيوس أيوتيم</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيواس موليستاياس أكسكيبتيوراي ساينت أوككايكاتاي كيبايدايتات نون بروفايدنت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أيت دولوريوم فيوجا.ايت هاريوم كيوايديم ريريوم فاكايلايسايست ايت أكسبيدايتا</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كيوايبيوسدام ايت أوت</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أوففايكايس ديبايتايس أيوت ريريوم نيسيسسايتاتايبيوس سايبي ايفينايت يوت ايت فوليبتاتيس&nbsp;</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">ريبيودايايانداي ساينت ايت موليسفاياي نون ريكيوسانداي.اتاكيوي ايريوم ريريوم هايس تينيتور</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">أ ساباينتي ديليكتيوس, يوت أيوت رياسايندايس فوليوبتاتايبص مايوريس ألايس</p><p dir=\"rtl\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(66, 66, 66); font-family: tahoma, sans-serif; text-align: start;\">كونسيكيواتور أيوت بيرفيريندايس دولورايبيوس أسبيرايوريس ريبيللات .</p></div>', '16454331271572852720blog1png.png', 'www.geniusocean.com', 42, 1, NULL, NULL, 'اعمال,ابحاث,ميكانيكي,معالجة,التعاون,هندسة', '2019-01-03 06:03:59', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `language_id`) VALUES
(2, 'Web Services', 'web-services', 1),
(3, 'Business Philosophy', 'business-philosophy', 1),
(4, 'Business Help', 'business-help', 1),
(5, 'Random Thoughts', 'random-thoughts', 1),
(6, 'Mechanical', 'mechanical', 1),
(7, 'Entrepreneurs', 'entrepreneurs', 1),
(8, 'Technology', 'technology', 1),
(10, 'خدمات الويب', 'web-services-arabic', 2),
(11, 'فلسفة العمل\r\n', 'business-philosophy-arabic', 2),
(12, 'مساعدة الأعمال\r\n', 'business-help-arabic', 2),
(13, 'أفكار عشوائية\r\n', 'random-thoughts-arabic', 2),
(14, 'ميكانيكي\r\n', 'mechanical-arabic', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `image`, `language_id`) VALUES
(4, 'Electronic', 'electric', 1, '1557807287light.png', '1573626327cat-banner.jpg', 1),
(5, 'Fashion & Beauty', 'fashion-and-Beauty', 1, '1557807279fashion.png', '1573626334cat-banner.jpg', 1),
(6, 'Camera & Photo', 'camera-and-photo', 1, '1557807264camera.png', '1573626340cat-banner.jpg', 1),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 1, '1557377810mobile.png', '1573626346cat-banner.jpg', 1),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 1, '1557807258sports.png', '1573626353cat-banner.jpg', 1),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 1, '1557807252furniture.png', '1573626296cat-banner.jpg', 1),
(10, 'Health & Beauty', 'health-and-beauty', 1, '1557807228trends.png', '1573626302cat-banner.jpg', 1),
(11, 'Books & Office', 'books-and-office', 1, '1557377917bags.png', '1573626308cat-banner.jpg', 1),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 1, '1557807214sports.png', '1573626313cat-banner.jpg', 1),
(15, 'Automobiles', 'automobiles-and-motorcycles', 1, '1568708648motor.car.png', '1573626289cat-banner.jpg', 1),
(16, 'Home decoration', 'Home-decoration-and-Appliance', 1, '1568708757home.png', '1573626283cat-banner.jpg', 1),
(17, 'Portable & Personal', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', '1573626276cat-banner.jpg', 1),
(18, 'Outdoor, Recreation', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', '1573626270cat-banner.jpg', 1),
(19, 'Surveillance Safety', 'Surveillance-Safety-and-Security', 1, '1573624409icon.png', '1573626259cat-banner.jpg', 1),
(20, 'إلكتروني', 'electric-arabic', 1, '1576555251light.png', '1576555251cat-banner.jpg', 2),
(21, 'الجمال الأزياء', 'fashion-and-Beauty-arabic', 1, '1576555268fashion.png', '1576555268cat-banner.jpg', 2),
(22, 'الكاميرا والصور', 'camera-and-photo-arabic', 1, '1576555283camera.png', '1576555283cat-banner.jpg', 2),
(23, 'الهاتف الذكي والجدول', 'smart-phone-and-table-arabic', 1, '1576555295mobile.png', '1576555306cat-banner.jpg', 2),
(24, 'رياضة وخارجية', 'sport-and-Outdoor-arabic', 1, '1576555316sports.png', '1576555316cat-banner.jpg', 2),
(25, 'المجوهرات والساعات', 'jewelry-and-watches-arabic', 1, '1576555344furniture.png', '1576555344cat-banner.jpg', 2),
(26, 'الصحة والجمال', 'health-and-beauty-arabic', 1, '1576555482trends.png', '1576555482cat-banner.jpg', 2),
(27, 'الكتب والمكاتب', 'books-and-office-arabic', 1, '1576555500bags.png', '1576555500cat-banner.jpg', 2),
(28, 'ألعاب وهوايات', 'toys-and-hobbies-arabic', 1, '1576555547sports.png', '1576555547cat-banner.jpg', 2),
(29, 'كتب', 'books-arabic', 1, '1576555575bags.png', '1576555575cat-banner.jpg', 2),
(30, 'سيارات', 'automobiles-and-motorcycles-arabic', 1, '1576555613motor.car.png', '1576555613cat-banner.jpg', 2),
(31, 'ديكور المنزل', 'Home-decoration-and-Appliance-arabic', 1, '1576555632furniture.png', '1576555632cat-banner.jpg', 2),
(32, 'المحمولة والشخصية', 'portable-and-personal-electronics-arabic', 1, '1576555652electronic.jpg', '1576555652cat-banner.jpg', 2),
(33, 'الاستجمام في الهواء الطلق', 'Outdoor-Recreation-and-Fitness-arabic', 1, '1576555664trends.png', '1576555664cat-banner.jpg', 2),
(34, 'سلامة المراقبة', 'Surveillance-Safety-and-Security-arabic', 1, '1576555682home.jpg', '1576555682cat-banner.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`, `language_id`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1, 1),
(2, 2, 'LED TV', 'led-tv', 1, 1),
(3, 2, 'Curved TV', 'curved-tv', 1, 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1, 1),
(5, 3, 'Top Freezer', 'top-freezer', 1, 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1, 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1, 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1, 1),
(9, 4, 'Front Loading', 'front-loading', 1, 1),
(10, 4, 'Top Loading', 'top-loading', 1, 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1, 1),
(12, 4, 'Laundry Center', 'laundry-center', 1, 1),
(13, 5, 'Central Air', 'central-air', 1, 1),
(14, 5, 'Window Air', 'window-air', 1, 1),
(15, 5, 'Portable Air', 'portable-air', 1, 1),
(16, 5, 'Hybrid Air', 'hybrid-air', 1, 1),
(17, 18, 'تلفزيون ال سي دي', 'lcd-tv-arabic', 1, 2),
(18, 18, 'تلفزيون LED\r\n', 'led-tv-arabic', 1, 2),
(19, 18, 'التلفزيون المنحني\r\n', 'curved-tv-arabic', 1, 2),
(20, 18, 'تلفزيون بلازما\r\n', 'plasma-tv-arabic', 1, 2),
(21, 19, 'الفريزر العلوي\r\n', 'top-freezer-arabic', 1, 2),
(22, 19, 'جنباألى جنب\r\n', 'side-by-side-arabic', 1, 2),
(23, 19, 'مكافحة العمق\r\n', 'counter-depth-arabic', 1, 2),
(24, 19, 'ثلاجة صغيرة\r\n', 'mini-fridge-arabic', 1, 2),
(25, 20, 'تحميل امامي\r\n', 'front-loading-arabic', 1, 2),
(26, 20, 'تحميل اعلى\r\n', 'top-loading-arabic', 1, 2),
(27, 20, 'غسالة الصحون كومبو\r\n', 'washer-dryer-combo-arabic', 1, 2),
(28, 20, 'مركز الغسيل\r\n', 'laundry-center-arabic', 1, 2),
(29, 21, 'سنترال اير\r\n', 'central-air-arabic', 1, 2),
(30, 21, 'نافذة الهواء\r\n', 'window-air-arabic', 1, 2),
(31, 21, 'الهواء المحمولة\r\n', 'portable-air-arabic', 1, 2),
(32, 21, 'الهواء الهجين\r\n', 'hybrid-air-arabic', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(24, 38, 321, 'hi', '2021-12-22 21:59:29', '2021-12-22 21:59:29'),
(25, 22, 163, 'Let me see how the comments works', '2021-12-23 21:48:43', '2021-12-23 21:48:43'),
(26, 22, 163, 'I think it nice', '2021-12-23 21:48:54', '2021-12-23 21:48:54'),
(27, 22, 170, 'Hello world!', '2021-12-26 12:00:56', '2021-12-26 12:00:56'),
(28, 22, 178, 'fjhdfgt890', '2022-02-07 05:07:05', '2022-02-07 05:42:32'),
(29, 22, 169, 'ghdduery', '2022-03-07 22:35:34', '2022-03-07 22:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(7, 'lkk', 22, 13, 'klklklk', '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(10, 'Helleo', 22, 22, 'fgdghdfg', '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 926, 0, NULL),
(3, 'browser', 'Windows 10', 6938, 0, NULL),
(4, 'browser', 'Linux', 372, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 2221, 0, NULL),
(6, 'browser', 'Windows 7', 831, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 575, 0, NULL),
(9, 'referral', 'www.google.com', 282, 0, NULL),
(10, 'browser', 'Android', 620, 0, NULL),
(11, 'browser', 'Mac OS X', 654, 0, NULL),
(12, 'referral', 'l.facebook.com', 4, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 40, 0, NULL),
(15, 'browser', 'Windows 8', 4, 0, NULL),
(16, 'browser', 'iPad', 7, 0, NULL),
(17, 'browser', 'Ubuntu', 16, 0, NULL),
(18, 'browser', 'iPhone', 57, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 4, 0, NULL),
(20, 'referral', 'baidu.com', 2, 0, NULL),
(21, 'referral', 'org.telegram.messenger', 3, 0, NULL),
(22, 'referral', 'm.facebook.com', 7, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 1, 0, NULL),
(24, 'referral', 'twtalk080.info', 3, 0, NULL),
(25, 'referral', 'mycountrylodge.com', 3, 0, NULL),
(26, 'referral', 'saunanovgorod.ru', 6, 0, NULL),
(27, 'referral', 'www.bing.com', 5, 0, NULL),
(28, 'referral', NULL, 98, 0, NULL),
(29, 'browser', 'Windows Vista', 8, 0, NULL),
(30, 'browser', 'Windows 2000', 4, 0, NULL),
(31, 'referral', 'www.google.com.hk', 1, 0, NULL),
(32, 'referral', 'cheapcarinsurancema.info', 3, 0, NULL),
(33, 'referral', 'lordfilm-s.live', 15, 0, NULL),
(34, 'browser', 'Windows Server 2003/XP x64', 3, 0, NULL),
(35, 'referral', 'www.gumbo.com', 2, 0, NULL),
(36, 'referral', 'duckduckgo.com', 1, 0, NULL),
(37, 'referral', 'www.google.co.il', 4, 0, NULL),
(38, 'referral', 'autoglasi.info', 6, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0, 1),
(2, 'AL', 'Albania', 0, 1),
(3, 'DZ', 'Algeria', 0, 0),
(4, 'DS', 'American Samoa', 0, 0),
(5, 'AD', 'Andorra', 0, 0),
(6, 'AO', 'Angola', 0, 0),
(7, 'AI', 'Anguilla', 0, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua and Barbuda', 0, 0),
(10, 'AR', 'Argentina', 0, 0),
(11, 'AM', 'Armenia', 0, 0),
(12, 'AW', 'Aruba', 0, 0),
(13, 'AU', 'Australia', 0, 1),
(14, 'AT', 'Austria', 0, 1),
(15, 'AZ', 'Azerbaijan', 0, 0),
(16, 'BS', 'Bahamas', 0, 0),
(17, 'BH', 'Bahrain', 0, 0),
(18, 'BD', 'Bangladesh', 0, 1),
(19, 'BB', 'Barbados', 0, 0),
(20, 'BY', 'Belarus', 0, 1),
(21, 'BE', 'Belgium', 0, 0),
(22, 'BZ', 'Belize', 0, 0),
(23, 'BJ', 'Benin', 0, 0),
(24, 'BM', 'Bermuda', 0, 0),
(25, 'BT', 'Bhutan', 0, 0),
(26, 'BO', 'Bolivia', 0, 0),
(27, 'BA', 'Bosnia and Herzegovina', 0, 0),
(28, 'BW', 'Botswana', 0, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 0, 0),
(31, 'IO', 'British Indian Ocean Territory', 0, 0),
(32, 'BN', 'Brunei Darussalam', 0, 0),
(33, 'BG', 'Bulgaria', 0, 0),
(34, 'BF', 'Burkina Faso', 0, 0),
(35, 'BI', 'Burundi', 0, 0),
(36, 'KH', 'Cambodia', 0, 0),
(37, 'CM', 'Cameroon', 0, 0),
(38, 'CA', 'Canada', 0, 0),
(39, 'CV', 'Cape Verde', 0, 0),
(40, 'KY', 'Cayman Islands', 0, 0),
(41, 'CF', 'Central African Republic', 0, 0),
(42, 'TD', 'Chad', 0, 0),
(43, 'CL', 'Chile', 0, 0),
(44, 'CN', 'China', 0, 0),
(45, 'CX', 'Christmas Island', 0, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(47, 'CO', 'Colombia', 0, 0),
(48, 'KM', 'Comoros', 0, 0),
(49, 'CD', 'Democratic Republic of the Congo', 0, 0),
(50, 'CG', 'Republic of Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GK', 'Guernsey', 0, 0),
(85, 'GR', 'Greece', 0, 0),
(86, 'GL', 'Greenland', 0, 0),
(87, 'GD', 'Grenada', 0, 0),
(88, 'GP', 'Guadeloupe', 0, 0),
(89, 'GU', 'Guam', 0, 0),
(90, 'GT', 'Guatemala', 0, 0),
(91, 'GN', 'Guinea', 0, 0),
(92, 'GW', 'Guinea-Bissau', 0, 0),
(93, 'GY', 'Guyana', 0, 0),
(94, 'HT', 'Haiti', 0, 0),
(95, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(96, 'HN', 'Honduras', 0, 0),
(97, 'HK', 'Hong Kong', 0, 0),
(98, 'HU', 'Hungary', 0, 0),
(99, 'IS', 'Iceland', 0, 0),
(100, 'IN', 'India', 0, 1),
(101, 'IM', 'Isle of Man', 0, 0),
(102, 'ID', 'Indonesia', 0, 0),
(103, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(104, 'IQ', 'Iraq', 0, 0),
(105, 'IE', 'Ireland', 0, 0),
(106, 'IL', 'Israel', 0, 0),
(107, 'IT', 'Italy', 0, 0),
(108, 'CI', 'Ivory Coast', 0, 0),
(109, 'JE', 'Jersey', 0, 0),
(110, 'JM', 'Jamaica', 0, 0),
(111, 'JP', 'Japan', 0, 0),
(112, 'JO', 'Jordan', 0, 0),
(113, 'KZ', 'Kazakhstan', 0, 0),
(114, 'KE', 'Kenya', 0, 0),
(115, 'KI', 'Kiribati', 0, 0),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(117, 'KR', 'Korea, Republic of', 0, 0),
(118, 'XK', 'Kosovo', 0, 0),
(119, 'KW', 'Kuwait', 0, 0),
(120, 'KG', 'Kyrgyzstan', 0, 0),
(121, 'LA', 'Lao People\'s Democratic Republic', 0, 0),
(122, 'LV', 'Latvia', 0, 0),
(123, 'LB', 'Lebanon', 0, 0),
(124, 'LS', 'Lesotho', 0, 0),
(125, 'LR', 'Liberia', 0, 0),
(126, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(127, 'LI', 'Liechtenstein', 0, 0),
(128, 'LT', 'Lithuania', 0, 0),
(129, 'LU', 'Luxembourg', 0, 0),
(130, 'MO', 'Macau', 0, 0),
(131, 'MK', 'North Macedonia', 0, 0),
(132, 'MG', 'Madagascar', 0, 0),
(133, 'MW', 'Malawi', 0, 0),
(134, 'MY', 'Malaysia', 0, 0),
(135, 'MV', 'Maldives', 0, 0),
(136, 'ML', 'Mali', 0, 0),
(137, 'MT', 'Malta', 0, 0),
(138, 'MH', 'Marshall Islands', 0, 0),
(139, 'MQ', 'Martinique', 0, 0),
(140, 'MR', 'Mauritania', 0, 0),
(141, 'MU', 'Mauritius', 0, 0),
(142, 'TY', 'Mayotte', 0, 0),
(143, 'MX', 'Mexico', 0, 0),
(144, 'FM', 'Micronesia, Federated States of', 0, 0),
(145, 'MD', 'Moldova, Republic of', 0, 0),
(146, 'MC', 'Monaco', 0, 0),
(147, 'MN', 'Mongolia', 0, 0),
(148, 'ME', 'Montenegro', 0, 0),
(149, 'MS', 'Montserrat', 0, 0),
(150, 'MA', 'Morocco', 0, 0),
(151, 'MZ', 'Mozambique', 0, 0),
(152, 'MM', 'Myanmar', 0, 0),
(153, 'NA', 'Namibia', 0, 0),
(154, 'NR', 'Nauru', 0, 0),
(155, 'NP', 'Nepal', 0, 0),
(156, 'NL', 'Netherlands', 0, 0),
(157, 'AN', 'Netherlands Antilles', 0, 0),
(158, 'NC', 'New Caledonia', 0, 0),
(159, 'NZ', 'New Zealand', 0, 0),
(160, 'NI', 'Nicaragua', 0, 0),
(161, 'NE', 'Niger', 0, 0),
(162, 'NG', 'Nigeria', 0, 0),
(163, 'NU', 'Niue', 0, 0),
(164, 'NF', 'Norfolk Island', 0, 0),
(165, 'MP', 'Northern Mariana Islands', 0, 0),
(166, 'NO', 'Norway', 0, 0),
(167, 'OM', 'Oman', 0, 0),
(168, 'PK', 'Pakistan', 0, 0),
(169, 'PW', 'Palau', 0, 0),
(170, 'PS', 'Palestine', 0, 0),
(171, 'PA', 'Panama', 0, 0),
(172, 'PG', 'Papua New Guinea', 0, 0),
(173, 'PY', 'Paraguay', 0, 0),
(174, 'PE', 'Peru', 0, 0),
(175, 'PH', 'Philippines', 0, 0),
(176, 'PN', 'Pitcairn', 0, 0),
(177, 'PL', 'Poland', 0, 0),
(178, 'PT', 'Portugal', 0, 0),
(179, 'PR', 'Puerto Rico', 0, 0),
(180, 'QA', 'Qatar', 0, 0),
(181, 'RE', 'Reunion', 0, 0),
(182, 'RO', 'Romania', 0, 0),
(183, 'RU', 'Russian Federation', 0, 1),
(184, 'RW', 'Rwanda', 0, 0),
(185, 'KN', 'Saint Kitts and Nevis', 0, 0),
(186, 'LC', 'Saint Lucia', 0, 0),
(187, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(188, 'WS', 'Samoa', 0, 0),
(189, 'SM', 'San Marino', 0, 0),
(190, 'ST', 'Sao Tome and Principe', 0, 0),
(191, 'SA', 'Saudi Arabia', 0, 0),
(192, 'SN', 'Senegal', 0, 0),
(193, 'RS', 'Serbia', 0, 0),
(194, 'SC', 'Seychelles', 0, 0),
(195, 'SL', 'Sierra Leone', 0, 0),
(196, 'SG', 'Singapore', 0, 0),
(197, 'SK', 'Slovakia', 0, 0),
(198, 'SI', 'Slovenia', 0, 0),
(199, 'SB', 'Solomon Islands', 0, 0),
(200, 'SO', 'Somalia', 0, 0),
(201, 'ZA', 'South Africa', 0, 0),
(202, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(203, 'SS', 'South Sudan', 0, 0),
(204, 'ES', 'Spain', 0, 0),
(205, 'LK', 'Sri Lanka', 0, 0),
(206, 'SH', 'St. Helena', 0, 0),
(207, 'PM', 'St. Pierre and Miquelon', 0, 0),
(208, 'SD', 'Sudan', 0, 0),
(209, 'SR', 'Suriname', 0, 0),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 0, 0),
(211, 'SZ', 'Swaziland', 0, 0),
(212, 'SE', 'Sweden', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'SY', 'Syrian Arab Republic', 0, 0),
(215, 'TW', 'Taiwan', 0, 0),
(216, 'TJ', 'Tajikistan', 0, 0),
(217, 'TZ', 'Tanzania, United Republic of', 0, 0),
(218, 'TH', 'Thailand', 0, 0),
(219, 'TG', 'Togo', 0, 0),
(220, 'TK', 'Tokelau', 0, 0),
(221, 'TO', 'Tonga', 0, 0),
(222, 'TT', 'Trinidad and Tobago', 0, 0),
(223, 'TN', 'Tunisia', 0, 0),
(224, 'TR', 'Turkey', 0, 0),
(225, 'TM', 'Turkmenistan', 0, 0),
(226, 'TC', 'Turks and Caicos Islands', 0, 0),
(227, 'TV', 'Tuvalu', 0, 0),
(228, 'UG', 'Uganda', 0, 1),
(229, 'UA', 'Ukraine', 0, 0),
(230, 'AE', 'United Arab Emirates', 0, 0),
(231, 'GB', 'United Kingdom', 0, 1),
(232, 'US', 'United States', 0, 1),
(233, 'UM', 'United States minor outlying islands', 0, 0),
(234, 'UY', 'Uruguay', 0, 0),
(235, 'UZ', 'Uzbekistan', 0, 0),
(236, 'VU', 'Vanuatu', 0, 0),
(237, 'VA', 'Vatican City State', 2, 1),
(238, 'VE', 'Venezuela', 0, 1),
(239, 'VN', 'Vietnam', 0, 1),
(240, 'VG', 'Virgin Islands (British)', 0, 1),
(241, 'VI', 'Virgin Islands (U.S.)', 0, 1),
(242, 'WF', 'Wallis and Futuna Islands', 0, 1),
(243, 'EH', 'Western Sahara', 0, 1),
(244, 'YE', 'Yemen', 0, 1),
(245, 'ZM', 'Zambia', 5, 1),
(246, 'ZW', 'Zimbabwe', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `child_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20', NULL, NULL, NULL, NULL),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26', NULL, NULL, NULL, NULL),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08', NULL, NULL, NULL, NULL),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28', NULL, NULL, NULL, NULL),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20', NULL, NULL, NULL, NULL),
(6, 'rererere', 1, 5, '665', 1, 1, '2019-05-21', '2022-05-26', 'category', 4, NULL, NULL),
(7, 'abcd', 1, 5, NULL, 0, 1, '2021-09-12', '2021-09-21', 'category', 4, NULL, NULL),
(8, '12345', 0, 34, NULL, 1, 1, '2021-12-15', '2021-12-30', 'category', 4, NULL, NULL),
(9, 'proco', 1, 10, NULL, 0, 1, '2022-01-03', '2022-01-10', 'category', 5, NULL, NULL),
(10, 'procoo', 0, 10, NULL, 0, 1, '2022-02-16', '2022-02-24', 'category', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 84.63, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `currency_value` double DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `currency`, `currency_code`, `amount`, `currency_value`, `method`, `txnid`, `flutter_id`, `status`, `created_at`, `updated_at`) VALUES
(70, 13, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', NULL, 1, '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(71, 13, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', NULL, 1, '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(72, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 22:51:48', '2020-11-08 23:17:06'),
(73, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 23:17:56', '2020-11-08 23:18:19'),
(74, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '23423423432432', NULL, 1, '2020-11-08 23:28:41', '2020-11-08 23:28:53'),
(75, 22, 0x24, 'USD', 500, 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', NULL, 1, '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(76, 22, 0x24, 'USD', 1000, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-18 23:02:50', '2020-11-18 23:11:32'),
(77, 22, 0x24, 'USD', 30, 1, 'Paypal', '73C78619CF978200E', NULL, 1, '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(78, 22, 0x24, 'USD', 400455, 1, 'Paypal', '3KX550288A083143D', NULL, 1, '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(79, 22, 0x24, 'USD', 100, 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', NULL, 1, '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(80, 22, 0x24, 'USD', 100, 1, 'Paypal', '7DD5252950230501K', NULL, 1, '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(81, 22, 0x24, 'USD', 100, 1, 'Molly Payment', 'tr_sFs2rBK6sT', NULL, 1, '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(82, 22, 0x24, 'USD', 100, 1, 'Authorize.net', '40079231225', NULL, 1, '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(83, 22, 0x24, 'USD', 100, 1, 'Mercadopago', '1244588594', NULL, 1, '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(84, 22, 0x24, 'USD', 100, 1, 'Flutterwave', NULL, 'SBw01639472516', 0, '2021-12-14 16:01:56', '2021-12-14 16:01:56'),
(85, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', NULL, 1, '2021-12-14 16:11:34', '2021-12-14 16:11:41'),
(86, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', NULL, 1, '2021-12-14 16:12:01', '2021-12-14 16:12:07'),
(87, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168951203256029', NULL, 1, '2021-12-14 17:46:47', '2021-12-14 17:47:19'),
(88, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', NULL, 1, '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(89, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168630103261249', NULL, 1, '2021-12-14 18:09:07', '2021-12-14 18:10:35'),
(90, 22, 0xe282a6, 'NGN', 0.2747864222533, 363.919, 'Paystack', NULL, NULL, 1, '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(91, 22, 0x24, 'USD', 50, 1, 'Flutterwave', '2699723', 'HHwZ1639557171', 1, '2021-12-15 02:32:51', '2021-12-15 02:33:13'),
(92, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', NULL, 1, '2021-12-15 02:41:43', '2021-12-15 02:41:47'),
(93, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', NULL, 1, '2021-12-15 02:46:26', '2021-12-15 02:46:28'),
(94, 22, 0x24, 'USD', 100, 1, 'Paypal', '0RR72967LE978735V', NULL, 1, '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(95, 22, 0x24, 'USD', 10, 1, 'Paypal', '00554153MA792844F', NULL, 1, '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(96, 22, 0x24, 'USD', 2000, 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', NULL, 1, '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(97, 22, 0x24, 'USD', 10, 1, 'Authorize.net', '40085654964', NULL, 1, '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(98, 22, 0x24, 'USD', 400, 1, 'Mercadopago', '1247049741', NULL, 1, '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(99, 22, 0x24, 'USD', 10, 1, 'Flutterwave', NULL, 'avdC1648096855', 0, '2022-03-24 11:40:55', '2022-03-24 11:40:55'),
(100, 22, 0x24, 'USD', 400, 1, 'Flutterwave', '3244951', 'oWol1648096990', 1, '2022-03-24 11:43:10', '2022-03-24 11:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `language_id`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>', 1),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(5, 'Six started far placing saw respect', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div></div>', 1),
(7, 'Duis eu molestie quam, sed rhoncus nibh', '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p>', 1),
(8, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2),
(9, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2),
(10, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2),
(11, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2),
(12, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2),
(13, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 2);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 1, 'Roboto', 'Roboto'),
(3, 0, 'Roboto Mono', 'Roboto+Mono'),
(4, 0, 'Libre Caslon Display', 'Libre+Caslon+Display'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(7, 0, 'Open Sans', 'Open+Sans');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(232, 331, '1639299830RzgVgFbi.jpg'),
(233, 331, '1639299830hiVWm7c9.jpg'),
(234, 331, '1639299830X1KoWQzv.jpg'),
(235, 318, '1639300093sMt7BlVj.jpg'),
(236, 318, '1639300093UBa9bPNd.jpg'),
(237, 318, '1639300093UNWqn3wZ.jpg'),
(238, 317, '1639300157IKRd78lm.jpg'),
(239, 317, '1639300157wnN6gnHd.jpg'),
(240, 317, '16393001571MhazSc2.jpg'),
(241, 316, '1639300203bJHADXi5.jpg'),
(242, 316, '1639300203ZdJOwtEi.jpg'),
(243, 316, '1639300203SDgP6qRH.jpg'),
(244, 315, '1639301433bufcvJ7L.jpg'),
(245, 315, '1639301433GqKjgHUx.jpg'),
(246, 315, '1639301433JBfLgFE6.jpg'),
(247, 314, '1639301648egCmoZO9.jpg'),
(248, 314, '1639301648NaKNSkp7.jpg'),
(249, 314, '163930164855KcDjg2.jpg'),
(250, 330, '1639301742NwQKE6SL.jpg'),
(251, 330, '1639301742E30YzBIM.jpg'),
(252, 330, '1639301742pDLkKHVV.jpg'),
(253, 311, '1639301850RwkOWQNs.jpg'),
(254, 311, '1639301850Cax0PFx5.jpg'),
(255, 311, '1639301850fH7ChMEy.jpg'),
(256, 328, '1639301951H0bAhGOR.jpg'),
(257, 328, '1639301951kHud3m7d.jpg'),
(258, 328, '1639301951FB955kuQ.jpg'),
(260, 327, '1639302045PbJ3MneI.jpg'),
(261, 327, '16393020450838gcbM.jpg'),
(262, 310, '1639302119hS8b6AYb.jpg'),
(263, 310, '1639302119FUT3iIDr.jpg'),
(264, 310, '1639302119ByJ4XX4j.jpg'),
(265, 319, '1639302263DSrVxOss.jpg'),
(266, 319, '1639302263zIhI7qGo.jpg'),
(267, 319, '1639302263Kc0Vg9cq.jpg'),
(268, 305, '1639302584JLPfIHyR.jpg'),
(269, 305, '1639302584H22rc5eW.jpg'),
(270, 305, '1639302584GuWRQIbh.jpg'),
(271, 303, '1639302760O4ObeLF5.jpg'),
(272, 303, '1639302760etQez2Gc.jpg'),
(273, 303, '1639302760irhvwcWL.jpg'),
(274, 178, '1639377201kIRW1EDl.jpg'),
(275, 178, '16393772019VK5FLtl.jpg'),
(276, 178, '1639377201krle8zlu.jpg'),
(277, 175, '16393776956AA40xFx.jpg'),
(278, 175, '16393776955klqsJ7E.jpg'),
(279, 175, '1639377695kWR5DE5x.jpg'),
(280, 169, '1639377747A3Pknjfy.jpg'),
(281, 169, '1639377747dxsp2VSK.jpg'),
(282, 164, '16393780458Yr3ZAOE.jpg'),
(283, 164, '1639378045UMFwFsPS.jpg'),
(284, 164, '16393780453ZLjK3mm.jpg'),
(285, 163, '1639378095FKuTnjNm.jpg'),
(286, 163, '1639378095fjzWQrCS.jpg'),
(287, 163, '16393780950yzaxhTO.jpg'),
(288, 162, '1639378165t5CzXscD.jpg'),
(289, 162, '1639378165qI2PTBtC.jpg'),
(290, 162, '1639378165jYceIttx.jpg'),
(291, 161, '1639378430m3XEmUer.jpg'),
(292, 161, '1639378430qqzusNiP.jpg'),
(293, 161, '1639378430euqFZ796.jpg'),
(294, 160, '1639392393qABYd9Jp.jpg'),
(295, 160, '1639392393M7WZcZyF.jpg'),
(296, 160, '1639392394NcXuluij.jpg'),
(297, 144, '1639392542Hi8kqofd.jpg'),
(298, 144, '1639392543aNErwy42.jpg'),
(299, 144, '1639392543TClWju2X.jpg'),
(300, 329, '1639392718PpOydVGk.jpg'),
(301, 329, '16393927182tCmsbMo.jpg'),
(302, 329, '1639392718jgu1E4kr.jpg'),
(303, 135, '1639392748zU2kggIw.jpg'),
(304, 135, '1639392748KS5BV2nQ.jpg'),
(305, 135, '1639392748T3zkUMnp.jpg'),
(309, 114, '16394527172MC08Ov5.jpg'),
(310, 114, '1639452717EByuwyqy.jpg'),
(311, 114, '1639452717nNfXnbRZ.jpg'),
(312, 128, '16394564079EvhKQXl.jpg'),
(313, 128, '1639456407vtTRoAr7.jpg'),
(314, 128, '1639456408cd9XLUJ1.jpg'),
(326, 170, '1646901584l8MraaNk.jpg'),
(327, 170, '1646901584I1CFhs35.jpg'),
(328, 170, '1646901584Okkqp3E2.jpg'),
(329, 170, '1646901585daDTZaH9.jpg'),
(330, 168, '1648013520wLz6NjQ8.jpg'),
(331, 168, '1648013521CUVnKkuW.jpg'),
(332, 168, '1648013521ZCJGdOET.jpg'),
(333, 168, '1648013521cfKHnzKx.jpg'),
(334, 168, '1648013521nwKHsHXv.jpg'),
(335, 165, '16480136903vx2nVLT.jpg'),
(336, 165, '1648013690zDZkb083.jpg'),
(337, 165, '1648013690prNoHG1K.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` bigint(20) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `capcha_secret_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capcha_site_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_404` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_500` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `breadcrumb_banner` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `header_color` enum('light','dark') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_buy_now` tinyint(4) NOT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT '1',
  `verify_product` tinyint(1) NOT NULL DEFAULT '0',
  `page_count` int(11) NOT NULL DEFAULT '0',
  `flash_count` int(11) NOT NULL DEFAULT '0',
  `hot_count` int(11) NOT NULL DEFAULT '0',
  `new_count` int(11) NOT NULL DEFAULT '0',
  `sale_count` int(11) NOT NULL DEFAULT '0',
  `best_seller_count` int(11) NOT NULL DEFAULT '0',
  `popular_count` int(11) NOT NULL DEFAULT '0',
  `top_rated_count` int(11) NOT NULL DEFAULT '0',
  `big_save_count` int(11) NOT NULL DEFAULT '0',
  `trending_count` int(11) NOT NULL DEFAULT '0',
  `seller_product_count` int(11) NOT NULL DEFAULT '0',
  `wishlist_count` int(11) NOT NULL DEFAULT '0',
  `vendor_page_count` int(11) NOT NULL DEFAULT '0',
  `min_price` double NOT NULL DEFAULT '0',
  `max_price` double NOT NULL DEFAULT '0',
  `post_count` tinyint(1) NOT NULL DEFAULT '0',
  `product_page` text COLLATE utf8mb4_unicode_ci,
  `wishlist_page` text COLLATE utf8mb4_unicode_ci,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_debug` tinyint(1) NOT NULL DEFAULT '0',
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate_bonus` int(10) NOT NULL DEFAULT '0',
  `is_reward` int(11) NOT NULL DEFAULT '0',
  `reward_point` int(11) NOT NULL DEFAULT '0',
  `reward_dolar` int(11) NOT NULL DEFAULT '0',
  `physical` tinyint(4) NOT NULL DEFAULT '1',
  `digital` tinyint(4) NOT NULL DEFAULT '1',
  `license` tinyint(4) NOT NULL DEFAULT '1',
  `affilite` tinyint(4) NOT NULL DEFAULT '1',
  `partner_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_text` longtext COLLATE utf8mb4_unicode_ci,
  `deal_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_details` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_time` date DEFAULT NULL,
  `deal_background` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `footer_color`, `copyright_color`, `copyright`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `capcha_secret_key`, `capcha_site_key`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `breadcrumb_banner`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `header_color`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `vendor_page_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `affilite`, `partner_title`, `partner_text`, `deal_title`, `deal_details`, `deal_time`, `deal_background`) VALUES
(1, '16480137961571567295logopng.png', '16480155641571567283faviconpng.png', 'GeniusCart-new', '#424a4d', '1564224328loading3.gif', '1564224329loading3.gif', 0, 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 1, 1, 0, 'junnun', 1, 1, 5, 5, 5, 'smtp', 'smtp.mailtrap.io', '25', 'TLS', 'bc0787d74e8e64', 'd1e867c163fea6', 'test@junnun.royalscripts.com', 'GeniusTest', 1, 1, 1, 1, 10, '15587771131554048228onepiece.jpeg', 5, 5, 1, 1, 1, 1, '#143250', '#02020c', 'COPYRIGHT © 2020. All Rights Reserved By GeniusOcean', 1, 0, 6, 0, '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '1566878455404.png', '1587792059error-500.png', 1, '1592369253banner.jpg', '1648110638breadpng.png', '16480138261571567295logopng.png', '1567655174profile.jpg', '#666666', 0, 1, '16480137831571567295logopng.png', 1, 0, 'light', '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '1.1', 1, 1, 12, 6, 12, 12, 12, 12, 4, 4, 4, 4, 3, 12, 12, 0, 1000000, 6, NULL, '12,24,36,48,60', 1, 1, '.', ',', 0, 1, 5, 1, 10, 15, 1, 1, 1, 1, 'Our Partners', 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 'CLICK SHOP NOW FOR ALL DEAL OF THE PRODUCT', 'Donec condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper.....', '2022-03-31', '164743040383png.png');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605519199OsGO7B86.json', '1605519199OsGO7B86', 0),
(2, 0, 'العربية', '1605417339xudF5Fq7.json', '1605417339xudF5Fq7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(18, 7, 'klklklk', 22, NULL, '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(19, 7, '==+', 22, NULL, '2021-12-22 17:00:49', '2021-12-22 17:00:49'),
(23, 10, 'fgdghdfg', 22, NULL, '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(84, NULL, NULL, NULL, NULL, 11, 1, '2021-12-12 15:46:50', '2021-12-22 11:41:43'),
(96, NULL, 42, NULL, NULL, NULL, 1, '2021-12-25 21:59:23', '2021-12-26 03:46:14'),
(97, NULL, 43, NULL, NULL, NULL, 1, '2021-12-26 17:24:45', '2021-12-26 19:14:41'),
(98, 215, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:06', '2022-02-17 00:28:58'),
(99, 216, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:09', '2022-02-17 00:28:58'),
(100, 217, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:11', '2022-02-17 00:28:58'),
(101, 218, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:12', '2022-02-17 00:28:58'),
(102, 219, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:16', '2022-02-17 00:28:58'),
(103, 220, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:29:52', '2022-02-17 00:28:58'),
(104, 221, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:30:49', '2022-02-17 00:28:58'),
(105, 222, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:35:07', '2022-02-17 00:28:58'),
(106, 223, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:40:00', '2022-02-17 00:28:58'),
(107, 224, NULL, NULL, NULL, NULL, 1, '2022-02-03 03:07:59', '2022-02-17 00:28:58'),
(108, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:35:14', '2022-02-21 03:03:55'),
(109, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:58:50', '2022-02-21 03:03:55'),
(110, NULL, NULL, NULL, NULL, 19, 1, '2022-02-05 23:58:58', '2022-02-21 03:03:55'),
(111, NULL, NULL, NULL, NULL, 20, 1, '2022-02-05 23:59:44', '2022-02-21 03:03:55'),
(112, 225, NULL, NULL, NULL, NULL, 1, '2022-02-08 23:22:01', '2022-02-17 00:28:58'),
(113, 226, NULL, NULL, NULL, NULL, 1, '2022-02-09 03:04:04', '2022-02-17 00:28:58'),
(114, 227, NULL, NULL, NULL, NULL, 1, '2022-02-09 03:20:53', '2022-02-17 00:28:58'),
(115, NULL, 44, NULL, NULL, NULL, 1, '2022-02-15 23:27:04', '2022-02-17 00:28:57'),
(116, NULL, 45, NULL, NULL, NULL, 1, '2022-02-20 23:35:10', '2022-02-21 03:03:53'),
(117, NULL, 46, NULL, NULL, NULL, 1, '2022-02-20 23:42:05', '2022-02-21 03:03:53'),
(118, 228, NULL, NULL, NULL, NULL, 1, '2022-02-20 23:52:27', '2022-02-21 03:03:50'),
(119, NULL, NULL, NULL, NULL, 21, 1, '2022-02-21 00:32:01', '2022-02-21 03:03:55'),
(120, NULL, NULL, NULL, NULL, 21, 1, '2022-02-21 00:32:34', '2022-02-21 03:03:55'),
(121, 229, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:38:23', '2022-10-10 19:12:09'),
(122, 230, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:38:29', '2022-10-10 19:12:09'),
(123, 231, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:45:34', '2022-10-10 19:12:09'),
(124, 232, NULL, NULL, NULL, NULL, 1, '2022-02-27 02:27:27', '2022-10-10 19:12:09'),
(125, 233, NULL, NULL, NULL, NULL, 1, '2022-02-27 02:44:13', '2022-10-10 19:12:09'),
(126, 234, NULL, NULL, NULL, NULL, 1, '2022-02-27 21:49:56', '2022-10-10 19:12:09'),
(127, 235, NULL, NULL, NULL, NULL, 1, '2022-03-01 03:39:16', '2022-10-10 19:12:09'),
(128, 236, NULL, NULL, NULL, NULL, 1, '2022-03-01 03:41:25', '2022-10-10 19:12:09'),
(129, 237, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:40:56', '2022-10-10 19:12:09'),
(130, 237, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:42:06', '2022-10-10 19:12:09'),
(131, 238, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:42:53', '2022-10-10 19:12:09'),
(132, NULL, 47, NULL, NULL, NULL, 1, '2022-03-09 06:05:13', '2022-10-10 19:12:04'),
(133, 239, NULL, NULL, NULL, NULL, 1, '2022-03-09 23:03:16', '2022-10-10 19:12:09'),
(134, 240, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:46:07', '2022-10-10 19:12:09'),
(135, 241, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:46:58', '2022-10-10 19:12:09'),
(136, 242, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:49:17', '2022-10-10 19:12:09'),
(137, 243, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:50:52', '2022-10-10 19:12:09'),
(138, 244, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:53:34', '2022-10-10 19:12:09'),
(139, 245, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:55:03', '2022-10-10 19:12:09'),
(140, 246, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:56:03', '2022-10-10 19:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL,
  `tax_location` varchar(191) DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0',
  `wallet_price` double NOT NULL DEFAULT '0',
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) NOT NULL DEFAULT '0',
  `affilate_users` text,
  `commission` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(209, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":[]}', 'Stripe', 'shipto', 'Azampur', '0', 0, 'txn_3K6TroJlIV5dN9n70zqazFlS', 'ch_3K6TroJlIV5dN9n70UOEmbb7', 'Xk9Z1639460878', 'Completed', 'user@gmail.com', 'Vue Js', 'Wallis and Futuna Islands', '01724938906', 'ert', 'rtser', 'ert', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-12-14 12:48:01', '2021-12-14 12:52:51', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(210, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":\"13\",\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1639377683HXoMlktA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 135, 'txn_3K6Un0JlIV5dN9n71SxerVmi', 'ch_3K6Un0JlIV5dN9n71dZL2vx5', 'v86x1639464424', 'Completed', 'farhadwts@gmail.com', 'Farhad', 'Yemen', '01779002301', 'Uttara', 'Dhaka', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-14 13:47:07', '2021-12-14 13:47:07', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Yemen', 0, NULL, 0, 0, 0, 'Express Shipping', 'Gift Packaging', 'dhakaa', NULL, 0, NULL, 0),
(211, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":\"13\",\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1639377683HXoMlktA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 149.6, 'txn_3K6YOLJlIV5dN9n70SkvJd5a', 'ch_3K6YOLJlIV5dN9n70ZpTOTlo', 'rvvt1639478271', 'Completed', 'farhadwts@gmail.com', 'Farhad', 'Zimbabwe', '01779002301', 'Uttara', 'Dhaka', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-12-14 17:37:54', '2021-12-14 17:39:20', '22', '14.96', '$', 'USD', 1, 0, 0, 39.6, 'Zimbabwe', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', NULL, NULL, 0, NULL, 0),
(212, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":\"13\",\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1639377683HXoMlktA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 149.6, 'txn_3K6sSbJlIV5dN9n7012QQuNV', 'ch_3K6sSbJlIV5dN9n70y1ghTSx', 'qsyr1639555416', 'Completed', 'user@gmail.com', 'User', 'Zimbabwe', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-12-15 15:03:38', '2021-12-15 15:06:49', NULL, NULL, '$', 'USD', 1, 0, 0, 39.6, 'Zimbabwe', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', NULL, NULL, 0, NULL, 0),
(213, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":220,\"item\":{\"id\":178,\"user_id\":\"13\",\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Paypal', 'shipto', 'Azampur', '2', 220, '5PR80012LK029753M', NULL, 'lRjO1639555840', 'Completed', 'user@gmail.com', 'User', 'Yemen', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-12-15 15:10:54', '2022-01-18 04:45:53', NULL, NULL, '$', '1', 1, 0, 0, 0, 'Yemen', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(214, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"169\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":169,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"1639377739mqNT2g2x.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'VgYy1639558309', 'Completed', 'user@gmail.com', 'User', 'Western Sahara', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-15 02:51:49', '2021-12-20 18:08:46', NULL, NULL, '৳', 'BDT', 84.63, 0, 0, 0, 'Western Sahara', 0, NULL, 0, 0, 110, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(215, 22, '{\"totalQty\":1,\"totalPrice\":570,\"items\":{\"162LocalsellerwarrantySymphonyBlack40\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":446,\"price\":570,\"item\":{\"id\":162,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-toc5844n0t1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378156F9SBl2Yx.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":570,\"stock\":447,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\",\\\"Non-local warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"brand\\\":{\\\"values\\\":[\\\"Symphony\\\",\\\"Oppo\\\",\\\"EStore\\\",\\\"Infinix\\\",\\\"Apple\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"color_family\\\":{\\\"values\\\":[\\\"Black\\\",\\\"Sliver\\\",\\\"Dark Grey\\\",\\\"Brown\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"35\\\"],\\\"details_status\\\":1},\\\"display_size\\\":{\\\"values\\\":[\\\"40\\\",\\\"22\\\",\\\"24\\\",\\\"32\\\",\\\"21\\\"],\\\"prices\\\":[\\\"120\\\",\\\"10\\\",\\\"20\\\",\\\"15\\\",\\\"60\\\"],\\\"details_status\\\":1}}\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,brand,color_family,display_size\",\"values\":\"Local seller warranty,Symphony,Black,40\",\"item_price\":570,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 570, NULL, NULL, '39MT1643876226', 'Pending', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:17:06', '2022-02-03 02:17:06', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(216, 22, '{\"totalQty\":1,\"totalPrice\":570,\"items\":{\"162LocalsellerwarrantySymphonyBlack40\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":446,\"price\":570,\"item\":{\"id\":162,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-toc5844n0t1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378156F9SBl2Yx.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":570,\"stock\":447,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\",\\\"Non-local warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"brand\\\":{\\\"values\\\":[\\\"Symphony\\\",\\\"Oppo\\\",\\\"EStore\\\",\\\"Infinix\\\",\\\"Apple\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"color_family\\\":{\\\"values\\\":[\\\"Black\\\",\\\"Sliver\\\",\\\"Dark Grey\\\",\\\"Brown\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"35\\\"],\\\"details_status\\\":1},\\\"display_size\\\":{\\\"values\\\":[\\\"40\\\",\\\"22\\\",\\\"24\\\",\\\"32\\\",\\\"21\\\"],\\\"prices\\\":[\\\"120\\\",\\\"10\\\",\\\"20\\\",\\\"15\\\",\\\"60\\\"],\\\"details_status\\\":1}}\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,brand,color_family,display_size\",\"values\":\"Local seller warranty,Symphony,Black,40\",\"item_price\":570,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 570, NULL, NULL, 'L2Ft1643876229', 'Pending', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:17:09', '2022-02-03 02:17:09', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(217, 22, '{\"totalQty\":1,\"totalPrice\":570,\"items\":{\"162LocalsellerwarrantySymphonyBlack40\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":446,\"price\":570,\"item\":{\"id\":162,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-toc5844n0t1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378156F9SBl2Yx.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":570,\"stock\":447,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\",\\\"Non-local warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"brand\\\":{\\\"values\\\":[\\\"Symphony\\\",\\\"Oppo\\\",\\\"EStore\\\",\\\"Infinix\\\",\\\"Apple\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"color_family\\\":{\\\"values\\\":[\\\"Black\\\",\\\"Sliver\\\",\\\"Dark Grey\\\",\\\"Brown\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"35\\\"],\\\"details_status\\\":1},\\\"display_size\\\":{\\\"values\\\":[\\\"40\\\",\\\"22\\\",\\\"24\\\",\\\"32\\\",\\\"21\\\"],\\\"prices\\\":[\\\"120\\\",\\\"10\\\",\\\"20\\\",\\\"15\\\",\\\"60\\\"],\\\"details_status\\\":1}}\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,brand,color_family,display_size\",\"values\":\"Local seller warranty,Symphony,Black,40\",\"item_price\":570,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 570, NULL, NULL, 'WYTj1643876231', 'Pending', 'user@gmail.com', 'User', 'Wallis and Futuna Islands', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:17:11', '2022-02-03 02:17:11', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(218, 22, '{\"totalQty\":1,\"totalPrice\":570,\"items\":{\"162LocalsellerwarrantySymphonyBlack40\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":446,\"price\":570,\"item\":{\"id\":162,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-toc5844n0t1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378156F9SBl2Yx.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":570,\"stock\":447,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\",\\\"Non-local warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"brand\\\":{\\\"values\\\":[\\\"Symphony\\\",\\\"Oppo\\\",\\\"EStore\\\",\\\"Infinix\\\",\\\"Apple\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"color_family\\\":{\\\"values\\\":[\\\"Black\\\",\\\"Sliver\\\",\\\"Dark Grey\\\",\\\"Brown\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"35\\\"],\\\"details_status\\\":1},\\\"display_size\\\":{\\\"values\\\":[\\\"40\\\",\\\"22\\\",\\\"24\\\",\\\"32\\\",\\\"21\\\"],\\\"prices\\\":[\\\"120\\\",\\\"10\\\",\\\"20\\\",\\\"15\\\",\\\"60\\\"],\\\"details_status\\\":1}}\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,brand,color_family,display_size\",\"values\":\"Local seller warranty,Symphony,Black,40\",\"item_price\":570,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 570, NULL, NULL, 'g4Z81643876231', 'Pending', 'user@gmail.com', 'User', 'Wallis and Futuna Islands', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:17:11', '2022-02-03 02:17:11', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(219, 22, '{\"totalQty\":1,\"totalPrice\":570,\"items\":{\"162LocalsellerwarrantySymphonyBlack40\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":446,\"price\":570,\"item\":{\"id\":162,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-toc5844n0t1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378156F9SBl2Yx.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":570,\"stock\":447,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":\"{\\\"warranty_type\\\":{\\\"values\\\":[\\\"Local seller warranty\\\",\\\"No warranty\\\",\\\"international manufacturer warranty\\\",\\\"Non-local warranty\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"brand\\\":{\\\"values\\\":[\\\"Symphony\\\",\\\"Oppo\\\",\\\"EStore\\\",\\\"Infinix\\\",\\\"Apple\\\"],\\\"prices\\\":[\\\"5\\\",\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"25\\\"],\\\"details_status\\\":1},\\\"color_family\\\":{\\\"values\\\":[\\\"Black\\\",\\\"Sliver\\\",\\\"Dark Grey\\\",\\\"Brown\\\"],\\\"prices\\\":[\\\"10\\\",\\\"15\\\",\\\"20\\\",\\\"35\\\"],\\\"details_status\\\":1},\\\"display_size\\\":{\\\"values\\\":[\\\"40\\\",\\\"22\\\",\\\"24\\\",\\\"32\\\",\\\"21\\\"],\\\"prices\\\":[\\\"120\\\",\\\"10\\\",\\\"20\\\",\\\"15\\\",\\\"60\\\"],\\\"details_status\\\":1}}\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty_type,brand,color_family,display_size\",\"values\":\"Local seller warranty,Symphony,Black,40\",\"item_price\":570,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 570, NULL, NULL, 'ODaE1643876236', 'Pending', 'user@gmail.com', 'User', 'Wallis and Futuna Islands', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:17:16', '2022-02-03 02:17:16', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(220, 22, '{\"totalQty\":1,\"totalPrice\":10,\"items\":{\"379\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":19,\"price\":10,\"item\":{\"id\":379,\"user_id\":0,\"slug\":\"test-product-0dn3214s5h\",\"name\":\"Test Product\",\"photo\":\"1643606697HyCx8sGV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":10,\"stock\":20,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":10,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 10, NULL, NULL, 'Dhs91643876992', 'Pending', 'user@gmail.com', 'User', 'Wallis and Futuna Islands', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:29:52', '2022-02-03 02:29:52', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(221, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 110, NULL, NULL, 'DqRq1643877049', 'Pending', 'user@gmail.com', 'User', 'Afghanistan', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:30:49', '2022-02-03 02:30:49', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Afghanistan', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(222, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 110, 'txn_3KP0mUJlIV5dN9n71kqurBfL', 'ch_3KP0mUJlIV5dN9n71mOeLZyr', 'B6Nu1643877305', 'Completed', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:35:07', '2022-02-03 02:35:07', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(223, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"169\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":169,\"user_id\":13,\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"1639377739mqNT2g2x.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 110, 'txn_3KP0rDJlIV5dN9n71NEKVIYQ', 'ch_3KP0rDJlIV5dN9n71TeQHy4A', 'nn7o1643877597', 'Completed', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 02:40:00', '2022-02-03 02:40:00', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(224, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"169\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":169,\"user_id\":13,\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"1639377739mqNT2g2x.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Paypal', 'shipto', 'Azampur', '1', 110, '8AD97724T6465945N', NULL, 'tbpp1643879252', 'Completed', 'user@gmail.com', 'User', 'Wallis and Futuna Islands', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-03 03:07:59', '2022-02-03 03:07:59', NULL, NULL, '$', '1', 1, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(225, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Paytm', 'shipto', 'Azampur', '1', 110, '20220209111212800110168720103448404', NULL, 'IOLf1644384107', 'Completed', 'shourav@gmail.com', 'pronob', 'Albania', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-08 23:22:01', '2022-02-08 23:22:01', NULL, NULL, '₹', 'INR', 68.95, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(226, 22, '{\"totalQty\":1,\"totalPrice\":321,\"items\":{\"164S000000\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"100\",\"size_price\":\"1\",\"size\":\"S\",\"color\":\"000000\",\"stock\":4587,\"price\":321,\"item\":{\"id\":164,\"user_id\":13,\"slug\":\"zain-digital-agency-and-startup-html-template-rxp8737lev1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1639378035iwML8B6F.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\",\"XXL\",\"XXL\",\"XXL\"],\"size_qty\":[\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"],\"size_price\":[\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\"],\"color\":[\"#000000\",\"#f41c1c\",\"#3c34d5\",\"#c12ec8\",\"#007137\",\"#000000\",\"#f41c1c\",\"#3c34d5\",\"#007137\",\"#c12ec8\",\"#f41c1c\",\"#3c34d5\",\"#007137\",\"#000000\",\"#c12ec8\"],\"minimum_qty\":null,\"price\":321,\"stock\":4588,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":321,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 321, NULL, NULL, 'L6y81644397444', 'Pending', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-09 03:04:04', '2022-02-09 03:04:04', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(227, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"164360252524Mi8pFd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"minimum_qty\":null,\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Flutter Wave', 'shipto', 'Azampur', '1', 110, '3115438', NULL, '7QiH1644398294', 'Completed', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-09 03:20:53', '2022-02-09 03:20:53', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'UN', NULL, 0, NULL, 0),
(228, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"170\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":13,\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"1643774978vGwa6SfN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'SSLCommerz', 'shipto', 'Azampur', '1', 110, 'SSLCZ_TXN_6213289567c5c', NULL, 'hG5a1645422741', 'Completed', 'shourav@gmail.com', 'pronob', 'Wallis and Futuna Islands', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-20 23:52:21', '2022-02-20 23:52:27', NULL, NULL, '৳', 'BDT', 84.63, 0, 0, 0, 'Wallis and Futuna Islands', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(229, NULL, '{\"totalQty\":2,\"totalPrice\":135,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":0},\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"164360252524Mi8pFd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '2', 135, NULL, NULL, 'gxMi1645943903', 'Pending', 'shourav@gmail.com', 'pronob', 'Albania', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 00:38:23', '2022-02-27 00:38:23', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(230, NULL, '{\"totalQty\":2,\"totalPrice\":135,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":0},\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"164360252524Mi8pFd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '2', 135, NULL, NULL, 'rNaD1645943909', 'Pending', 'shourav@gmail.com', 'pronob', 'Albania', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 00:38:29', '2022-02-27 00:38:29', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(231, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 110, NULL, NULL, 'NzKp1645944334', 'Pending', 'shourav@gmail.com', 'pronob', 'Albania', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 00:45:34', '2022-02-27 00:45:34', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(232, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 110, NULL, NULL, '8Zwo1645950447', 'Pending', 'shourav@gmail.com', 'pronob', 'Albania', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 02:27:27', '2022-02-27 02:27:27', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Albania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Dhaka', NULL, 0, NULL, 0),
(233, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"178\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Paypal', 'shipto', 'Azampur', '1', 112.2, '24T72149AR2908837', NULL, 'u8An1645951432', 'Completed', 'shourav@gmail.com', 'pronob', 'Zambia', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 02:44:13', '2022-02-27 02:44:13', NULL, NULL, '$', '1', 1, 0, 0, 2.2, 'New Youk', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '2', NULL, 0, NULL, 0),
(234, NULL, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"164360252524Mi8pFd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 110, 'txn_3KY0FDJlIV5dN9n711d0haCo', 'ch_3KY0FDJlIV5dN9n71mNG46zf', 'a1Jb1646020193', 'Completed', 'shourav@gmail.com', 'pronob', 'Bangladesh', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-02-27 21:49:56', '2022-02-27 21:49:56', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Dhaka', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '14', NULL, 0, NULL, 0),
(235, 22, '{\"totalQty\":1,\"totalPrice\":25,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":1,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Paypal', 'shipto', 'Azampur', '1', 25, '4CL897950T794123J', NULL, 'aPyZ1646127537', 'Completed', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-01 03:39:16', '2022-03-01 03:39:16', NULL, NULL, '$', '1', 1, 0, 0, 0, 'Dhaka', 1, NULL, 0, 0, 0, NULL, NULL, '14', NULL, 0, NULL, 0),
(236, 22, '{\"totalQty\":1,\"totalPrice\":25,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":0}}}', 'Paypal', 'shipto', 'Azampur', '1', 25, '4BH348186W2359635', NULL, 'kAAO1646127671', 'Completed', 'user@gmail.com', 'User', 'Bangladesh', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-01 03:41:25', '2022-03-01 03:41:25', NULL, NULL, '$', '1', 1, 0, 0, 0, 'Dhaka', 1, NULL, 0, 0, 0, NULL, NULL, '14', NULL, 0, NULL, 0),
(237, NULL, '{\"totalQty\":1,\"totalPrice\":25,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":0}}}', 'SSLCommerz', 'shipto', 'Azampur', '1', 25, 'SSLCZ_TXN_6224738b74d32', NULL, '08sf1646556043', 'Completed', 'shourav@gmail.com', 'pronob', 'Bangladesh', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-06 02:40:43', '2022-03-06 02:40:56', NULL, NULL, '৳', 'BDT', 84.63, 0, 0, 0, 'Bangladesh', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(238, NULL, '{\"totalQty\":1,\"totalPrice\":25,\"items\":{\"380\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":25,\"item\":{\"id\":380,\"user_id\":0,\"slug\":\"pronob-w5i380jpp\",\"name\":\"pronob\",\"photo\":\"1644222121wyag3Oao.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":25,\"stock\":null,\"type\":\"Digital\",\"file\":\"1644222121rfPH8jIrzip\",\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":25,\"discount\":0,\"affilate_user\":0}}}', 'SSLCommerz', 'shipto', 'Azampur', '1', 25, 'SSLCZ_TXN_62247407e4fb4', NULL, 'y3BH1646556167', 'Completed', 'shourav@gmail.com', 'pronob', 'Bangladesh', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-06 02:42:47', '2022-03-06 02:42:53', NULL, NULL, '৳', 'BDT', 84.63, 0, 0, 0, 'Bangladesh', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(239, NULL, '{\"totalQty\":2,\"totalPrice\":220,\"items\":{\"178\":{\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":220,\"item\":{\"id\":178,\"user_id\":13,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '2', 220, NULL, NULL, 'ffB71646888596', 'Pending', 'shourav@gmail.com', 'pronob', 'Bangladesh', '01976814812', 'comilla', 'ghsdh', '1230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-09 23:03:16', '2022-03-24 11:13:37', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Dhaka', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '14', NULL, 0, NULL, 0),
(240, 22, '{\"totalQty\":1,\"totalPrice\":111,\"items\":{\"128S000000\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"99\",\"size_price\":\"1\",\"size\":\"S\",\"color\":\"000000\",\"stock\":null,\"price\":111,\"item\":{\"id\":128,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-102-pr613jsv1\",\"name\":\"Top Rated product title will be here according to your wish 102\",\"photo\":\"1639456384gCuvZIXe.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\",\"XXL\",\"XXL\",\"XXL\"],\"size_qty\":[\"99\",\"100\",\"99\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"],\"size_price\":[\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\"],\"color\":[\"#000000\",\"#f41c1c\",\"#3c34d5\",\"#c12ec8\",\"#007137\",\"#000000\",\"#f41c1c\",\"#3c34d5\",\"#007137\",\"#c12ec8\",\"#f41c1c\",\"#3c34d5\",\"#007137\",\"#000000\",\"#c12ec8\"],\"price\":111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 111, NULL, NULL, 'y0oH1648100767', 'Pending', 'user@gmail.com', 'User', 'Afghanistan', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:46:07', '2022-03-24 12:46:07', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Kabul', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '16', NULL, 0, NULL, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(241, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"175\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":175,\"user_id\":\"13\",\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1648013375aGqS3Zgd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Mobile Money', 'shipto', 'Azampur', '1', 110, 'g56785467', NULL, 'f8Lq1648100818', 'Pending', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:46:58', '2022-03-24 12:46:58', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Korce', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '19', NULL, 0, NULL, 0),
(242, 22, '{\"totalQty\":1,\"totalPrice\":320,\"items\":{\"168\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":6345,\"price\":320,\"item\":{\"id\":168,\"user_id\":\"13\",\"slug\":\"revel-real-estate-huuu-tbs53803yh1\",\"name\":\"Revel - Real Estate Huuu\",\"photo\":\"1648013500i2EEZrBt.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":320,\"stock\":\"6346\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":320,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Flutter Wave', 'shipto', 'Azampur', '1', 320, '3245000', NULL, 'm72i1648100865', 'Completed', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:49:17', '2022-03-24 12:49:17', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Fier', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '18', NULL, 0, NULL, 0),
(243, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"170\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Mercadopago', 'shipto', 'Azampur', '1', 110, '1247049909', NULL, 'PIri1648101051', 'Completed', 'user@gmail.com', 'User', 'Austria', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:50:52', '2022-03-24 12:50:52', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Styria', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '23', NULL, 0, NULL, 0),
(244, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"170\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Authorize.Net', 'shipto', 'Azampur', '1', 110, '40085659585', NULL, 'BSSm1648101212', 'Completed', 'user@gmail.com', 'User', 'Vatican City State', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:53:34', '2022-03-24 12:53:34', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Sancta Sedes', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '5', NULL, 0, NULL, 0),
(245, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"170\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Stripe', 'shipto', 'Azampur', '1', 110, 'txn_3KgjdSJlIV5dN9n701rCPadp', 'ch_3KgjdSJlIV5dN9n70ah4oscm', 'cOrz1648101301', 'Completed', 'user@gmail.com', 'User', 'Australia', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:55:03', '2022-03-24 12:55:03', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Tasmania', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '21', NULL, 0, NULL, 0),
(246, 22, '{\"totalQty\":1,\"totalPrice\":110,\"items\":{\"170\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":null,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":110,\"discount\":0,\"affilate_user\":0}}}', 'Paypal', 'shipto', 'Azampur', '1', 110, '72P16398AM419903W', NULL, 'WAnR1648101347', 'Completed', 'user@gmail.com', 'User', 'Albania', '34534534534', 'Test Address', 'Test City', '1231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-24 12:56:03', '2022-03-24 12:56:03', NULL, NULL, '$', '1', 1, 0, 0, 0, 'Korce', 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', '19', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(261, 209, 'complete', 'You have successfully placed your order.', '2021-12-14 12:48:01', '2021-12-14 12:49:45'),
(262, 210, 'Pending', 'You have successfully placed your order.', '2021-12-14 13:47:07', '2021-12-14 13:47:07'),
(263, 211, 'Pending', 'You have successfully placed your order.', '2021-12-14 17:37:54', '2021-12-14 17:37:54'),
(264, 211, 'Completed', 'fsd sdfdsf', '2021-12-14 17:39:20', '2021-12-14 17:39:20'),
(265, 212, 'Pending', 'You have successfully placed your order.', '2021-12-15 15:03:38', '2021-12-15 15:03:38'),
(266, 212, 'Completed', 'dfgfdg', '2021-12-15 15:06:49', '2021-12-15 15:06:49'),
(267, 213, 'Pending', 'You have successfully placed your order.', '2021-12-15 15:10:54', '2021-12-15 15:10:54'),
(268, 214, 'Pending', 'You have successfully placed your order.', '2021-12-15 02:51:49', '2021-12-15 02:51:49'),
(269, 213, 'On Delivery', 'order shifted', '2022-01-18 04:45:53', '2022-01-18 04:45:53'),
(270, 215, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:17:06', '2022-02-03 02:17:06'),
(271, 216, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:17:09', '2022-02-03 02:17:09'),
(272, 217, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:17:11', '2022-02-03 02:17:11'),
(273, 218, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:17:12', '2022-02-03 02:17:12'),
(274, 219, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:17:16', '2022-02-03 02:17:16'),
(275, 220, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:29:52', '2022-02-03 02:29:52'),
(276, 221, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:30:49', '2022-02-03 02:30:49'),
(277, 222, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:35:07', '2022-02-03 02:35:07'),
(278, 223, 'Pending', 'You have successfully placed your order.', '2022-02-03 02:40:00', '2022-02-03 02:40:00'),
(279, 224, 'Pending', 'You have successfully placed your order.', '2022-02-03 03:07:59', '2022-02-03 03:07:59'),
(280, 225, 'Pending', 'You have successfully placed your order.', '2022-02-08 23:22:01', '2022-02-08 23:22:01'),
(281, 226, 'Pending', 'You have successfully placed your order.', '2022-02-09 03:04:04', '2022-02-09 03:04:04'),
(282, 227, 'Pending', 'You have successfully placed your order.', '2022-02-09 03:20:53', '2022-02-09 03:20:53'),
(283, 228, 'Pending', 'You have successfully placed your order.', '2022-02-20 23:52:27', '2022-02-20 23:52:27'),
(284, 229, 'Pending', 'You have successfully placed your order.', '2022-02-27 00:38:23', '2022-02-27 00:38:23'),
(285, 230, 'Pending', 'You have successfully placed your order.', '2022-02-27 00:38:29', '2022-02-27 00:38:29'),
(286, 231, 'Pending', 'You have successfully placed your order.', '2022-02-27 00:45:34', '2022-02-27 00:45:34'),
(287, 232, 'Pending', 'You have successfully placed your order.', '2022-02-27 02:27:27', '2022-02-27 02:27:27'),
(288, 233, 'Pending', 'You have successfully placed your order.', '2022-02-27 02:44:13', '2022-02-27 02:44:13'),
(289, 234, 'Pending', 'You have successfully placed your order.', '2022-02-27 21:49:56', '2022-02-27 21:49:56'),
(290, 235, 'Pending', 'You have successfully placed your order.', '2022-03-01 03:39:16', '2022-03-01 03:39:16'),
(291, 236, 'Pending', 'You have successfully placed your order.', '2022-03-01 03:41:25', '2022-03-01 03:41:25'),
(292, 237, 'Pending', 'You have successfully placed your order.', '2022-03-06 02:40:56', '2022-03-06 02:40:56'),
(293, 237, 'Pending', 'You have successfully placed your order.', '2022-03-06 02:42:06', '2022-03-06 02:42:06'),
(294, 238, 'Pending', 'You have successfully placed your order.', '2022-03-06 02:42:53', '2022-03-06 02:42:53'),
(295, 239, 'Pending', 'You have successfully placed your order.', '2022-03-09 23:03:16', '2022-03-09 23:03:16'),
(296, 239, 'Completed', 'fgjdfjdj', '2022-03-24 11:13:37', '2022-03-24 11:13:37'),
(297, 240, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:46:07', '2022-03-24 12:46:07'),
(298, 241, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:46:58', '2022-03-24 12:46:58'),
(299, 242, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:49:17', '2022-03-24 12:49:17'),
(300, 243, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:50:52', '2022-03-24 12:50:52'),
(301, 244, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:53:34', '2022-03-24 12:53:34'),
(302, 245, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:55:03', '2022-03-24 12:55:03'),
(303, 246, 'Pending', 'You have successfully placed your order.', '2022-03-24 12:56:03', '2022-03-24 12:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0, 1),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15, 1),
(4, 22, 'Large box', 'Large box', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `photo`, `meta_tag`, `meta_description`, `header`, `footer`, `language_id`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></div>', '164593825554png.png', NULL, NULL, 1, 0, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593897354png.png', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593902254png.png', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1),
(4, 'معلومات عنا', 'about-arabic', '<div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div></div>', NULL, NULL, NULL, 1, 0, 2),
(5, 'سياسة خاصة', 'privacy-arabic', '<div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div></div>', NULL, 'test,test1,test2,test3', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.\r\nسيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم\r\n\r\nدولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت\r\n\r\nكياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي\r\n\r\nفوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي\r\n\r\nدولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم\r\n\r\nايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد\r\n\r\nكيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام\r\n\r\nألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم\r\n\r\nيلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي\r\n\r\nكونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي\r\n\r\nفيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو\r\n\r\nفوليوبتاس نيولا باراياتيور؟', 0, 1, 2),
(6, 'الشروط والأحكام', 'terms-arabic', '<div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.\r\nسيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم\r\n\r\nدولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت\r\n\r\nكياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي\r\n\r\nفوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي\r\n\r\nدولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم\r\n\r\nايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد\r\n\r\nكيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام\r\n\r\nألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم\r\n\r\nيلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي\r\n\r\nكونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي\r\n\r\nفيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو\r\n\r\nفوليوبتاس نيولا باراياتيور؟</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></div><div style=\"text-align: justify;\"><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\"><br></span></div><div><span style=\"font-size: 16px;\">وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم. سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي فيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو فوليوبتاس نيولا باراياتيور؟</span></div></div>', NULL, 't1,t2,t3,t4', 'وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور\r\n\r\nأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد\r\n\r\nأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس\r\n\r\nأيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت\r\n\r\nنيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا\r\n\r\nكيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم.\r\nسيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم\r\n\r\nدولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت\r\n\r\nكياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي\r\n\r\nفوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي\r\n\r\nدولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم\r\n\r\nايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد\r\n\r\nكيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام\r\n\r\nألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم\r\n\r\nيلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي\r\n\r\nكونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي\r\n\r\nفيلايت ايسسي كيوم نايهايل موليستايا كونسيكيواتيو,فيلايليوم كيواي دولوريم أيوم فيوجايات كيو\r\n\r\nفوليوبتاس نيولا باراياتيور؟', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner2` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink1` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink2` text COLLATE utf8mb4_unicode_ci,
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `arrival_section` tinyint(1) NOT NULL DEFAULT '1',
  `our_services` tinyint(1) NOT NULL DEFAULT '1',
  `second_left_banner` tinyint(1) NOT NULL DEFAULT '1',
  `popular_products` tinyint(1) NOT NULL DEFAULT '1',
  `third_left_banner` tinyint(1) NOT NULL DEFAULT '1',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '1',
  `deal_of_the_day` tinyint(1) NOT NULL DEFAULT '1',
  `best_sellers` tinyint(1) NOT NULL DEFAULT '1',
  `partner` tinyint(1) NOT NULL DEFAULT '1',
  `top_big_trending` tinyint(1) NOT NULL DEFAULT '0',
  `top_brand` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `arrival_section`, `our_services`, `second_left_banner`, `popular_products`, `third_left_banner`, `slider`, `flash_deal`, `deal_of_the_day`, `best_sellers`, `partner`, `top_big_trending`, `top_brand`) VALUES
(1, 'admin@geniusocean.com', '3584 Hickory Heights Drive , USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', '1639369899side-banner22png.png', 'http://google.com', '1639370813Bottom31png.png', 'http://google.com', '1639369899bottom3-bigg1png.png', 'http://google.com', '1573022053aside-banner1.jpg', 'http://google.com', '1573547281sm-banner.jpg', '1573547653sm-banner.jpg', 'https://codecanyon.net/user/geniusocean/portfolio', 'https://codecanyon.net/user/geniusocean/portfolio', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(8, '1571289601p2.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, '1571289608p3.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, '1571289614p4.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(11, '1571289621p5.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(12, '1571289627p6.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(13, '1571289634p7.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(14, '1571289642p8.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(15, '1571289650p9.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(16, '1571289657p10.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(18, '1571289669p12.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(19, '1571289675p13.jpg', 'https://codecanyon.net/user/geniusocean/portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '*',
  `checkout` int(191) NOT NULL DEFAULT '1',
  `deposit` int(191) NOT NULL DEFAULT '1',
  `subscription` int(191) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '*', 1, 0, 0),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', NULL, 'manual', NULL, NULL, '*', 1, 1, 1),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 1, 1, 1),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\",\"9\"]', 1, 1, 1),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 1, 1, 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 1, 1, 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 1, 1, 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 1, 1, 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 1, 1, 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 1, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1, 1, 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`, `language_id`) VALUES
(2, 'Azampur', 1),
(3, 'Dhaka', 1),
(4, 'Kazipara', 1),
(5, 'Kamarpara', 1),
(6, 'Uttara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL,
  `preordered` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_all` text,
  `size_all` text,
  `stock_check` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(95, 'pr495jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-95-pr495jsv1', '1568027732dTwHda8l.png', '1577617660xEcrWcwo.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 74, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 1, '2019-09-09 07:36:06', '2022-03-06 00:28:54', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru-arabic', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 22, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 0, 1, 1, '2019-09-09 12:07:43', '2022-10-27 20:29:06', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m-arabic', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 20, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 0, '2019-09-09 12:07:43', '2022-10-28 21:56:03', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1),
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 45, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '1.0E+25', NULL, 'edsfdsf', 'sdfsd', 'sdfsdfs', NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-09-09 12:25:20', '2022-10-28 20:23:03', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1),
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-', '1648013610nbbGKBia.png', '1648013611p5T1Ljor.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 23, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 0, '2019-09-09 12:25:20', '2022-10-26 14:51:35', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1),
(114, NULL, 'normal', NULL, 13, 10, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-', '1639452704vGVh3Hle.png', '1639452704LCoONyz3.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 17, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '1.0E+25', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, '2019-09-09 12:25:20', '2022-03-06 00:14:57', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1),
(116, 'pr496jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-116-pr496jsv1', '1568027684whVhJDrR.png', '1577617649gNetfByq.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 38, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-15 05:34:11', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(117, 'pr497jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-117-pr497jsv1', '1568027658Up0FIXsW.png', '1577617641ogGOi53N.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 7, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-10-11 04:18:13', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(118, 'pr498jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-118-pr498jsv1', '1568027631cnmEylRa.png', '1577617633KxEnzs97.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(119, 'pr499jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr499jsv1', '1568027603i5UAZiKB.png', '1577617624IKzGBL9L.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 12, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(120, 'pr500jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-120-pr500jsv1', '1568027558gLSECTIh.png', '1577617616ol3RAb6T.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(121, 'pr501jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-121-pr501jsv1', '1568027534O1QEBPpR.png', '1577617608MSgUIoEZ.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 17, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-11-04 04:21:51', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(122, 'pr502jsv1', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-122-pr502jsv1', '1568027493eLqHNoZP.png', '1577617600WtjwVRxD.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 28, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 12:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(128, 'pr613jsv1', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-pr613jsv1', '1639456384gCuvZIXe.png', '1639456386BpfFKqHN.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '98,100,99,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 27, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2022-11-14 21:11:35', 1, '2022-03-24', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(135, '3uZ9903ofs1', 'normal', NULL, 13, 11, NULL, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs1', '1639392738Dts57dc4.png', '1639392738TGJsX6up.jpg', NULL, NULL, NULL, NULL, NULL, 30, 50, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 395, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 105, 'lcd,tv,led', NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, 0, 1, 1, '2019-09-29 23:08:12', '2022-10-29 04:11:49', 1, '2022-03-23', '15,20,30,40,50', '10,15,20,25,30', 1, 0, 1, 0, NULL, NULL, NULL, 0),
(144, 'vrX2915O5c1', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"5\",\"10\",\"15\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\"],\"prices\":[\"10\",\"12\",\"15\",\"20\"],\"details_status\":1}}', '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c1', '1639392531ypne3xL8.png', '1639392531mZxqr9sa.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 396, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 61, 'lcd,tv,led', NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 0, 1, 1, '2019-10-02 21:21:58', '2022-11-12 22:02:34', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 135, 1, 0, '5', NULL, NULL, 0),
(159, 'zhv5144fRY1', 'normal', NULL, 13, 5, 6, NULL, '{\"warranty_type\":{\"values\":[\"No Warranty\",\"Local seller Warranty\",\"Non local warranty\"],\"prices\":[\"0\",\"5\",\"10\"],\"details_status\":1}}', 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-zhv5144fry1', '1639392452QopalU8v.png', '16393924528O19PHvm.jpg', NULL, NULL, NULL, NULL, NULL, 300, 346, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 34634, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 31, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 0, '2019-10-03 00:47:25', '2022-11-13 05:09:44', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 1, 0, '5', NULL, NULL, 0),
(160, 'o1L5621DiS1', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-o1l5621dis1', '1639392363pYiiT6Vy.png', '1639392364Li5C3bEO.jpg', NULL, NULL, NULL, NULL, NULL, 346, 346, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 34, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 66, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, 0, 1, '2019-10-03 00:54:14', '2022-11-14 06:18:21', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 1, 0, '5', NULL, NULL, 0),
(161, 'D2e6433Yi01', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\"],\"prices\":[\"10\",\"15\",\"20\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"EStore\",\"Infinix\"],\"prices\":[\"10\",\"15\",\"20\"],\"details_status\":1},\"ram\":{\"values\":[\"2 GB\",\"3 GB\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"color_family\":{\"values\":[\"White\",\"Sliver\",\"Red\",\"Dark Grey\"],\"prices\":[\"10\",\"15\",\"20\",\"25\"],\"details_status\":1}}', 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-d2e6433yi01', '16393784188Gm57Wu2.png', '1639378418BxWim5Uq.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 0, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 82, NULL, NULL, NULL, 2, '24 hour', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 1, 0, 0, '2019-10-03 01:07:59', '2022-10-26 04:18:40', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 1, 0, NULL, '#241c1c,#f52424,#437a0b', NULL, 0),
(162, 'tOC5844N0t1', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"10\",\"15\",\"20\",\"25\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Oppo\",\"EStore\",\"Infinix\",\"Apple\"],\"prices\":[\"5\",\"10\",\"15\",\"20\",\"25\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"Sliver\",\"Dark Grey\",\"Brown\"],\"prices\":[\"10\",\"15\",\"20\",\"35\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"22\",\"24\",\"32\",\"21\"],\"prices\":[\"120\",\"10\",\"20\",\"15\",\"60\"],\"details_status\":1}}', 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-toc5844n0t1', '1639378156F9SBl2Yx.png', '1639378156sxEgX2Pk.jpg', NULL, NULL, NULL, NULL, NULL, 400, 450, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 446, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 365, 'dsf,hgf', 'Test,test1', '#000000,#d14141', 2, '24', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 1, 0, 1, '2019-10-05 00:11:44', '2022-11-12 20:42:35', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 1, 0, NULL, '#c71f1f,#000000,#00c236', NULL, 0),
(163, '1ui8665inp1', 'normal', NULL, 13, 7, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-1ui8665inp1', '1648014087Du4NpEMJ.png', '16480140873qDlGgIK.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL', '100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5', 300, 464, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 734, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 99, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 0, 1, '2019-10-05 00:58:14', '2022-10-28 12:49:50', 1, '2022-06-10', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1),
(164, 'RXp8737LeV1', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737lev1', '1639378035iwML8B6F.png', '1639378035XJWgisPU.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL', '99,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 300, 548, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 4587, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 228, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, 1, '2019-10-05 00:59:33', '2022-10-20 22:16:29', 1, '2022-04-05', '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, NULL, NULL, 1);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(165, 'RXp8737Le1', 'normal', NULL, 13, 16, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737le1', '1648013669fVYfMbbZ.png', '1648013669ZDg86Ncm.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 4586, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 54, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 0, '2019-10-05 01:00:19', '2022-11-01 02:49:02', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 1, 0, NULL, NULL, NULL, 0),
(168, 'tbs53803yh1', 'normal', NULL, 13, 16, NULL, 1, '{\"brand\":{\"values\":[\"G-Shock\",\"Diesel\",\"Longines\",\"Hamilton\",\"Citizen\"],\"prices\":[\"5\",\"5\",\"5\",\"5\",\"5\"],\"details_status\":1},\"warrenty\":{\"values\":[\"Local Sell Warrenty\",\"Manufacture Warrenty\",\"International Warrenty\"],\"prices\":[\"5\",\"5\",\"5\"],\"details_status\":1},\"belt\":{\"values\":[\"Leather\",\"Stainless steel\",\"Rubber\",\"Normal\"],\"prices\":[\"5\",\"5\",\"5\",\"5\"],\"details_status\":1}}', 'Revel - Real Estate Huuu', 'revel-real-estate-huuu-tbs53803yh1', '1648013500i2EEZrBt.png', '1648013500IhrIbnTy.jpg', NULL, NULL, NULL, NULL, NULL, 300, 345, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', 6345, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 77, NULL, NULL, NULL, 0, '5-10 days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 1, '2019-10-12 04:17:25', '2022-10-26 04:18:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 1, 0, NULL, '#f10e0e,#3e5ee7,#139d1c', NULL, 0),
(169, 'TRg5938WNy1', 'normal', NULL, 13, 5, 6, NULL, '{\"warranty_type\":{\"values\":[\"No Warranty\",\"Local seller Warranty\",\"Non local warranty\",\"International Manufacturer Warranty\",\"International Seller Warranty\"],\"prices\":[\"0\",\"5\",\"0\",\"5\",\"5\"],\"details_status\":1}}', 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny1', '1639377739mqNT2g2x.png', '1639377739Zf2W38p8.jpg', NULL, NULL, NULL, NULL, NULL, 100, 500, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 86, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 0, '2019-10-12 04:26:18', '2022-11-01 12:36:21', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, 1, 0, NULL, NULL, '44,42,40', 0),
(170, '6Vb6172gWR1', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1', '16480134488OmlUgJN.png', '1648013448fKLXa8ZZ.jpg', NULL, NULL, NULL, NULL, NULL, 100, 500, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 137, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 0, 0, 1, '2019-10-12 04:29:55', '2022-11-17 06:24:26', 1, '2022-03-17', '10,20,30,40', '5,10,15,20', 0, 123, 1, 0, NULL, NULL, NULL, 0),
(175, '9gn6494iUN1', 'normal', NULL, 13, 5, 7, NULL, '{\"warranty_type\":{\"values\":[\"Local seller Warranty\",\"International Manufacturer Warranty\"],\"prices\":[\"5\",\"5\"],\"details_status\":1}}', 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun1', '1648013375aGqS3Zgd.png', '1648013376Q0pmYfnP.jpg', NULL, NULL, NULL, NULL, NULL, 100, 200, 'Donec condimentum\r\n\r\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\r\n           Aliquam ultricies\r\n\r\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 322, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 1, '2019-10-12 04:35:03', '2022-10-14 20:37:13', 1, '2022-03-17', '10,20,30,40', '5,10,15,20', 0, 102, 1, 0, NULL, '#14de0d,#000000,#f20c0c,#17eab7', NULL, 0),
(178, 'Tcv6794KXS1', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs1', '1639377187LerG6ypK.png', '1639377189b67fhAxf.jpg', NULL, NULL, NULL, NULL, NULL, 100, 200, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 442, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 0, 0, '2019-10-12 04:40:20', '2022-11-01 07:48:45', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 1, 0, NULL, NULL, NULL, 0),
(303, NULL, 'normal', NULL, 0, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639302744EMWNT4AG.png', '1639302744lgJWLCp6.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 44, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 0, '2019-09-09 01:07:43', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(304, 'pr495jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', 'arabic-1568026462TxRJ07FG.png', '1568027751AidGUyJv.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 56, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 1, '2019-09-09 01:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(305, 'pr601jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr601jsv1-a', 'arabic-1568026791NGCCXoMs.png', '1568025872thPsuRSJ.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 12, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-09-09 02:00:05', '2022-02-08 22:33:50', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(306, 'pr602jsv1-a', 'normal', NULL, 13, 21, 23, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'physical-product-title-title-will-be-here-97-pr602jsv1-a', 'arabic-1568026820NnXjzL5e.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 200, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 70, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, '2019-09-09 05:59:33', '2022-02-08 22:33:50', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(308, 'pr605jsv1-a', 'normal', NULL, 13, 21, 23, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'physical-product-title-title-will-be-here-100-pr605jsv1-a', 'arabic-1567943629ks0HLoXR.png', '1568026368CzWwfWLG.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 200, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 7, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 1, '2019-09-09 05:59:33', '2022-02-08 22:33:50', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(309, 'pr606jsv1-a', 'normal', NULL, 13, 21, 23, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'physical-product-title-title-will-be-here-101-pr606jsv1-a', 'arabic-1568017804wRS8y4Fi.png', '1568026326vMlslLz4.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 200, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 4, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 1, 0, '2019-09-09 05:59:33', '2022-02-08 22:33:50', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(310, 'pr607jsv1-a', 'normal', NULL, 13, 21, 23, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr607jsv1-a', '1639302110u8txi7rP.png', '1639302110kwpH7Via.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,XXL,XXL,XXL,XXL', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 200, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 12, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 0, '2019-09-09 05:59:33', '2022-02-08 22:33:50', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 2, 0, NULL, NULL, NULL, 1),
(311, NULL, 'normal', NULL, 13, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639301823v8cFUWyO.png', '16393018237BUfG1Do.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 46, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:07:43', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(312, NULL, 'normal', NULL, 13, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'digital-product-title-will-be-here-by-name-104-rwo312ped', 'arabic-1568025531RbQwgMZ5.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 1, 1, 0, '2019-09-09 06:07:43', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(314, NULL, 'normal', NULL, 13, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639301700FZTd8dab.png', '16393017005NflBkf1.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 7, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 1, '2019-09-09 06:07:43', '2022-02-08 22:33:50', 1, '2022-04-12', NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(315, NULL, 'normal', NULL, 13, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639301419tSAdILJr.png', '1639301420xEC2UMQF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 0, '2019-09-09 06:07:43', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(316, NULL, 'normal', NULL, 13, 29, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '16393001914GZzOopa.png', '1639300191PlpAa23d.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 7, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 1, 0, 1, '2019-09-09 06:07:43', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(317, NULL, 'normal', NULL, 13, 23, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639300134L7OjDyvR.png', '1639300134yEaM23pv.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 1, 0, 1, '2019-09-09 06:25:20', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(318, NULL, 'normal', NULL, 13, 23, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '1639300079250OnhSA.png', '16393000798tV1E44b.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 3, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 1, 0, 1, '2019-09-09 06:25:20', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(319, NULL, 'normal', NULL, 13, 23, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-', '16393022352Pjsr3MD.png', '1639302235PnJhLg7M.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, 1, '2019-09-09 06:25:20', '2022-02-08 22:33:50', 0, NULL, NULL, NULL, 0, 0, 2, 0, NULL, NULL, NULL, 1),
(320, 'pr496jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-116-pr496jsv1-a', 'arabic-1568026853LMtcb9he.png', '1576566313Pktf5sTt.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 1, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(321, 'pr497jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-117-pr497jsv1-a', 'arabic-1568026881R8KnUyJv.png', '1576566304kr0P1cEz.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 3, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(322, 'pr498jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-118-pr498jsv1-a', 'arabic-1568026899SLhVRzQv.png', '15765662971eKI7cqI.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 1, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(323, 'pr499jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr499jsv1-a', 'arabic-1568027493eLqHNoZP.png', '1576566291gtqiqbae.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 2, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(324, 'pr500jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-120-pr500jsv1-a', 'arabic-1568027534O1QEBPpR.png', '1576566286v4XPhXbc.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(325, 'pr501jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-121-pr501jsv1-a', 'arabic-1568027558gLSECTIh.png', '1576566277bzIlKDhk.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 3, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(326, 'pr502jsv1-a', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 20, NULL, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-122-pr502jsv1-a', 'arabic-1568027558gLSECTIh.png', '1576566248AHthJhP9.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 50, 100, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 55555, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 1, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, 1, 0, '2019-09-09 06:36:06', '2022-02-08 22:33:50', 1, '2021-06-30', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(327, 'pr608jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr608jsv1-a', 'arabic-1568027603i5UAZiKB.png', '1568025845bvB0Q0RE.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 8, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 1, '2019-09-09 07:00:05', '2022-02-08 22:33:50', 0, '2022-03-24', '10,20,30,40', '5,10,15,20', 1, 0, 2, 0, NULL, NULL, NULL, 1),
(328, 'pr609jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr609jsv1-a', '1639301941z6BfrkBZ.png', '163930194199lQpXFG.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 0, 0, 1, '2019-09-09 07:00:05', '2022-02-08 22:33:50', 1, '2022-04-07', '10,20,30,40', '5,10,15,20', 1, 0, 2, 0, NULL, NULL, NULL, 1),
(329, 'pr610jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'top-rated-product-title-will-be-here-according-to-your-wish-125-pr610jsv1-a', '1639392705q0WQNIW1.png', '1639392705BOqlfhd8.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 5, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 0, 1, 1, '2019-09-09 07:00:05', '2022-02-08 22:33:50', 1, '2022-03-23', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(330, 'pr611jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr611jsv1-a', '1639301732rjpKi5Bj.png', '1639301732xFme956W.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 17, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 1, '2019-09-09 07:00:05', '2022-02-08 22:33:50', 1, '2022-03-10', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(331, 'pr613jsv1-a', 'normal', NULL, 13, 21, 22, NULL, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-pr613jsv1-a', '1639299829GpA2fIPF.png', '1639299829LXsarmOA.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 100, 500, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', NULL, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 9, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 07:00:05', '2022-02-08 22:33:50', 0, '2022-04-28', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(359, '1233435611-a', 'affiliate', 'https://www.amazon.com/adidas-Girls-Sleeveless-Toddler-Little/dp/B07MTJL7ZT/ref=sr_1_1?keywords=dress&qid=1565068717&s=gateway&sr=8-1', 13, 20, 18, 17, NULL, 'يتم عرض المنتجات العربية هنا', 'ytm-aard-almntgat-alaarby-hna-1233435611-a', '1583379574IMgpJTkz.png', '1604463140YhqGpRI7.jpg', NULL, 'S,S,S,M,M,M,L,L,L,XL,XL,XL,Extra Large,Extra Large,Extra Large', '100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '1,2,3,1,2,3,1,2,3,1,2,3,1,2,3', '#000000,#f41c1c,#3c34d5,#c12ec8,#007137,#000000,#f41c1c,#3c34d5,#007137,#c12ec8,#f41c1c,#3c34d5,#007137,#000000,#c12ec8', 20, 25, 'Donec condimentum\n\n           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper at tristique ac, viverra at diam. Donec egestas eu odio tincidunt ultrices. Suspendisse egestas vulputate mauris non commodo. In convallis aliquam vulputate. Quisque varius est ac lorem venenatis lobortis. Fusce a iaculis mi, ut elementum ex. Mauris faucibus enim quis lacinia mollis. Vivamus in volutpat ante. Nullam nec vulputate mi. Fusce tempor cursus odio, nec cursus purus malesuada sit amet.\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           Aliquam ultricies\n\n           Fusce vitae lacinia mauris, eget vehicula augue. Phasellus efficitur felis non ligula dictum, sit amet faucibus nulla sollicitudin. Donec condimentum metus enim, id molestie urna ultrices sed. Nunc rhoncus purus venenatis nulla efficitur, a ultrices elit ornare. Donec vitae congue ante. Sed eleifend ex sit amet odio vestibulum, ac sagittis quam finibus. Ut egestas sit amet urna eu blandit. Duis iaculis ante vitae risus condimentum, vitae laoreet sem dapibus. Aliquam ultricies risus quis sagittis fermentum. Suspendisse interdum magna erat, viverra elementum sem sollicitudin eget\n           ', 10, '<h4 class=\"title\" style=\"font-weight: 600; line-height: 1.2381; font-size: 20px; color: rgb(5, 14, 51);\"><div class=\"product-services\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Services:</span><ul class=\"product-services-list\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; flex: 0 0 calc(100% - 115px); line-height: 28px;\"><li class=\"product-service-item\">30 Day Return Policy</li><li class=\"product-service-item\">Cash on Delivery available</li><li class=\"product-service-item\">Free Delivery</li></ul></div><div class=\"woocommerce-product-details__short-description\" style=\"display: flex; margin-top: 1.5em; color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px; font-weight: 400;\"><span style=\"width: 115px; font-weight: 600; padding-right: 0px;\">Highlights:</span><div class=\"short-description\" style=\"flex: 0 0 calc(100% - 115px);\"><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style-position: initial; list-style-image: initial; line-height: 28px;\"><li>Regular Fit.</li><li>Full sleeves.</li><li>70% cotton, 30% polyester.</li><li>Easy to wear and versatile as Casual.</li><li>Machine wash, tumble dry.</li></ul></div></div></h4>', 1, 4, 'CLOTHS,FASHION,WOMEN FASHION,DRESSES,MENSWEAR', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=7hx4gdlfamo', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-14 19:23:07', '2022-02-08 22:33:50', 0, '2022-03-23', '10,20,30,40', '5,10,15,20', 0, 0, 2, 0, NULL, NULL, NULL, 1),
(360, '1', 'affiliate', '', 0, 4, 2, NULL, NULL, '￼\n\n￼￼\n\n￼\n\n￼\n\nKARGO BEDAVA\n\nCOMBİNE MİCHAİL Siyah Renk Fermuarlı 3 Cepli Polar 1209\n\n', 'kargo-bedava-combine-michail-siyah-renk-fermuarli-3-cepli-polar-1209-1', '1668137841i6z1omrT.jpg', NULL, NULL, 'S,M,XL,X,3XL', '22,23', '5,8', '#000000,#9c1515', 30, 0, 'Öne Çıkan Bilgiler\n\n15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.\n\nBu ürün COMBINE MICHAIL tarafından gönderilecektir.\n\nSiyah Renk Fermuarlı 3 Cepli Polar 1209\n\nBu üründen en fazla 3 adet sipariş verilebilir. 3 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\n\nKampanya fiyatından satılmak üzere 100 adetten fazla stok sunulmuştur.\n\nİncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.\n\nListelenen fiyat 14 Kasım 2022 tarihine kadar geçerlidir.\n\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.\n\nSponsorlu ürünler reklam niteliğinde olup satıcıları tarafından öne çıkartılmaktadır.\n\n\n', 10, 'Test policy', 1, 6, 'CLOTHS,FASHION,WOMEN FASHION,DRESSES,MENSWEAR', NULL, NULL, 0, NULL, 0, '', '', 'https://www.youtube.com/watch?v=7hx4gdlfamo', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-11-11 10:37:21', '2022-11-15 23:48:17', 0, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 1);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(361, '123343561', 'affiliate', 'https://www.amazon.com/adidas-Girls-Sleeveless-Toddler-Little/dp/B07MTJL7ZT/ref=sr_1_1?keywords=dress&qid=1565068717&s=gateway&sr=8-1', 0, 4, 2, 1, NULL, 'Test CSV Product', 'test-csv-product-123343561', '1668138787YBktLbph.jpg', NULL, NULL, 'X,3XL', '22,23', '5,8', '#000000,#9c1515', 20, 25, 'This is product Description', 10, 'Test policy', 1, 0, 'CLOTHS,FASHION,WOMEN FASHION,DRESSES,MENSWEAR', NULL, NULL, 0, NULL, 0, '', '', 'https://www.youtube.com/watch?v=7hx4gdlfamo', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-11-11 10:53:07', '2022-11-11 10:53:07', 0, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1652, 169, '2020-11-15'),
(1694, 175, '2020-11-19'),
(1695, 175, '2020-11-19'),
(1707, 178, '2020-11-19'),
(1708, 178, '2020-11-19'),
(1709, 160, '2020-11-24'),
(1710, 160, '2020-11-24'),
(1711, 160, '2020-11-24'),
(1712, 160, '2020-11-24'),
(1713, 160, '2020-11-24'),
(1714, 160, '2020-11-24'),
(1715, 160, '2020-11-24'),
(1716, 160, '2020-11-24'),
(1717, 160, '2020-11-24'),
(1718, 160, '2020-11-24'),
(1719, 160, '2020-11-24'),
(1720, 160, '2020-11-24'),
(1721, 111, '2020-11-24'),
(1722, 111, '2020-11-24'),
(1723, 111, '2020-11-24'),
(1724, 111, '2020-11-24'),
(1725, 111, '2020-11-24'),
(1726, 111, '2020-11-24'),
(1727, 111, '2020-11-24'),
(1728, 111, '2020-11-24'),
(1729, 111, '2020-11-24'),
(1730, 119, '2020-11-24'),
(1731, 119, '2020-11-24'),
(1732, 119, '2020-11-24'),
(1733, 119, '2020-11-24'),
(1734, 119, '2020-11-24'),
(1736, 169, '2021-03-10'),
(1739, 175, '2021-07-28'),
(1740, 175, '2021-07-28'),
(1741, 175, '2021-07-28'),
(1742, 175, '2021-07-28'),
(1743, 175, '2021-07-28'),
(1744, 169, '2021-07-28'),
(1750, 175, '2021-08-02'),
(1752, 169, '2021-08-07'),
(1758, 175, '2021-08-14'),
(1763, 170, '2021-08-16'),
(1764, 170, '2021-08-16'),
(1767, 170, '2021-08-16'),
(1768, 170, '2021-08-16'),
(1769, 170, '2021-08-16'),
(1770, 169, '2021-08-16'),
(1771, 170, '2021-08-16'),
(1772, 170, '2021-08-17'),
(1773, 170, '2021-08-17'),
(1774, 170, '2021-08-17'),
(1775, 170, '2021-08-17'),
(1776, 169, '2021-08-17'),
(1777, 169, '2021-08-17'),
(1778, 169, '2021-08-17'),
(1779, 169, '2021-08-17'),
(1780, 170, '2021-08-17'),
(1781, 170, '2021-08-17'),
(1782, 114, '2021-08-18'),
(1783, 119, '2021-08-18'),
(1787, 175, '2021-08-18'),
(1790, 165, '2021-08-18'),
(1792, 178, '2021-08-21'),
(1801, 170, '2021-08-21'),
(1802, 170, '2021-08-21'),
(1804, 165, '2021-09-08'),
(1806, 109, '2021-09-08'),
(1807, 109, '2021-09-08'),
(1808, 122, '2021-09-11'),
(1811, 170, '2021-09-11'),
(1812, 175, '2021-09-11'),
(1813, 170, '2021-09-11'),
(1814, 170, '2021-09-12'),
(1815, 170, '2021-09-12'),
(1816, 170, '2021-09-12'),
(1817, 170, '2021-09-12'),
(1833, 165, '2021-10-18'),
(1834, 165, '2021-10-18'),
(1839, 111, '2021-12-12'),
(1841, 165, '2021-12-12'),
(1842, 175, '2021-12-12'),
(1844, 165, '2021-12-12'),
(1846, 135, '2021-12-12'),
(1847, 169, '2021-12-12'),
(1849, 144, '2021-12-12'),
(1850, 107, '2021-12-12'),
(1851, 331, '2021-12-12'),
(1852, 175, '2021-12-12'),
(1853, 331, '2021-12-12'),
(1854, 331, '2021-12-12'),
(1855, 325, '2021-12-12'),
(1856, 178, '2021-12-14'),
(1857, 178, '2021-12-14'),
(1858, 169, '2021-12-14'),
(1859, 165, '2021-12-14'),
(1860, 128, '2021-12-14'),
(1861, 128, '2021-12-14'),
(1862, 164, '2021-12-14'),
(1863, 170, '2021-12-15'),
(1864, 162, '2021-12-15'),
(1865, 170, '2021-12-20'),
(1866, 168, '2021-12-20'),
(1867, 165, '2021-12-20'),
(1868, 162, '2021-12-21'),
(1869, 175, '2021-12-22'),
(1870, 178, '2021-12-22'),
(1871, 114, '2021-12-22'),
(1872, 175, '2021-12-22'),
(1873, 178, '2021-12-22'),
(1874, 162, '2021-12-22'),
(1875, 168, '2021-12-22'),
(1876, 175, '2021-12-22'),
(1877, 178, '2021-12-22'),
(1878, 178, '2021-12-22'),
(1879, 178, '2021-12-22'),
(1880, 163, '2021-12-22'),
(1881, 163, '2021-12-22'),
(1882, 178, '2021-12-22'),
(1883, 165, '2021-12-22'),
(1884, 170, '2021-12-22'),
(1885, 175, '2021-12-22'),
(1886, 178, '2021-12-22'),
(1887, 161, '2021-12-22'),
(1888, 175, '2021-12-22'),
(1889, 169, '2021-12-22'),
(1890, 178, '2021-12-22'),
(1891, 170, '2021-12-22'),
(1892, 160, '2021-12-22'),
(1893, 169, '2021-12-22'),
(1894, 162, '2021-12-22'),
(1895, 178, '2021-12-22'),
(1896, 165, '2021-12-22'),
(1897, 162, '2021-12-22'),
(1898, 144, '2021-12-22'),
(1899, 162, '2021-12-22'),
(1900, 175, '2021-12-22'),
(1901, 175, '2021-12-22'),
(1902, 162, '2021-12-22'),
(1903, 162, '2021-12-22'),
(1904, 175, '2021-12-22'),
(1905, 169, '2021-12-22'),
(1906, 128, '2021-12-22'),
(1907, 178, '2021-12-22'),
(1908, 163, '2021-12-22'),
(1909, 160, '2021-12-22'),
(1910, 175, '2021-12-22'),
(1911, 163, '2021-12-22'),
(1912, 175, '2021-12-22'),
(1913, 159, '2021-12-22'),
(1914, 359, '2021-12-22'),
(1915, 162, '2021-12-22'),
(1916, 175, '2021-12-22'),
(1917, 329, '2021-12-22'),
(1918, 306, '2021-12-22'),
(1919, 161, '2021-12-22'),
(1920, 135, '2021-12-22'),
(1921, 325, '2021-12-22'),
(1922, 169, '2021-12-22'),
(1923, 144, '2021-12-22'),
(1924, 144, '2021-12-22'),
(1925, 175, '2021-12-22'),
(1926, 178, '2021-12-22'),
(1927, 175, '2021-12-22'),
(1928, 161, '2021-12-22'),
(1929, 163, '2021-12-22'),
(1930, 164, '2021-12-22'),
(1931, 161, '2021-12-22'),
(1932, 178, '2021-12-22'),
(1933, 175, '2021-12-22'),
(1934, 169, '2021-12-22'),
(1935, 119, '2021-12-22'),
(1936, 178, '2021-12-22'),
(1937, 165, '2021-12-22'),
(1938, 144, '2021-12-22'),
(1939, 163, '2021-12-22'),
(1940, 165, '2021-12-22'),
(1941, 175, '2021-12-22'),
(1942, 165, '2021-12-22'),
(1943, 175, '2021-12-22'),
(1944, 175, '2021-12-22'),
(1945, 163, '2021-12-22'),
(1946, 162, '2021-12-22'),
(1947, 178, '2021-12-22'),
(1948, 159, '2021-12-22'),
(1949, 175, '2021-12-22'),
(1950, 162, '2021-12-22'),
(1951, 170, '2021-12-22'),
(1952, 175, '2021-12-22'),
(1953, 175, '2021-12-22'),
(1954, 160, '2021-12-22'),
(1955, 160, '2021-12-22'),
(1956, 178, '2021-12-22'),
(1957, 178, '2021-12-22'),
(1958, 169, '2021-12-22'),
(1959, 178, '2021-12-22'),
(1960, 169, '2021-12-22'),
(1961, 160, '2021-12-22'),
(1962, 161, '2021-12-22'),
(1963, 161, '2021-12-22'),
(1964, 95, '2021-12-22'),
(1965, 95, '2021-12-22'),
(1966, 162, '2021-12-22'),
(1967, 162, '2021-12-22'),
(1968, 164, '2021-12-22'),
(1969, 175, '2021-12-22'),
(1970, 169, '2021-12-22'),
(1971, 159, '2021-12-22'),
(1972, 178, '2021-12-22'),
(1973, 178, '2021-12-22'),
(1974, 178, '2021-12-22'),
(1975, 178, '2021-12-22'),
(1976, 165, '2021-12-22'),
(1977, 178, '2021-12-22'),
(1978, 175, '2021-12-22'),
(1979, 329, '2021-12-22'),
(1980, 329, '2021-12-22'),
(1981, 163, '2021-12-22'),
(1982, 175, '2021-12-22'),
(1983, 163, '2021-12-22'),
(1984, 162, '2021-12-22'),
(1985, 161, '2021-12-22'),
(1986, 175, '2021-12-22'),
(1987, 175, '2021-12-22'),
(1988, 144, '2021-12-22'),
(1989, 163, '2021-12-22'),
(1990, 163, '2021-12-22'),
(1991, 175, '2021-12-22'),
(1992, 164, '2021-12-22'),
(1993, 159, '2021-12-22'),
(1994, 168, '2021-12-22'),
(1995, 168, '2021-12-22'),
(1996, 175, '2021-12-22'),
(1997, 161, '2021-12-22'),
(1998, 175, '2021-12-22'),
(1999, 162, '2021-12-22'),
(2000, 178, '2021-12-22'),
(2001, 175, '2021-12-22'),
(2002, 169, '2021-12-22'),
(2003, 175, '2021-12-22'),
(2004, 144, '2021-12-22'),
(2005, 161, '2021-12-22'),
(2006, 160, '2021-12-22'),
(2007, 178, '2021-12-22'),
(2008, 168, '2021-12-22'),
(2009, 178, '2021-12-22'),
(2010, 175, '2021-12-22'),
(2011, 178, '2021-12-22'),
(2012, 175, '2021-12-22'),
(2013, 169, '2021-12-22'),
(2014, 175, '2021-12-22'),
(2015, 175, '2021-12-22'),
(2016, 164, '2021-12-22'),
(2017, 327, '2021-12-22'),
(2018, 161, '2021-12-22'),
(2019, 161, '2021-12-22'),
(2020, 178, '2021-12-22'),
(2021, 161, '2021-12-22'),
(2022, 178, '2021-12-22'),
(2023, 178, '2021-12-22'),
(2024, 168, '2021-12-22'),
(2025, 165, '2021-12-22'),
(2026, 175, '2021-12-22'),
(2027, 321, '2021-12-22'),
(2028, 164, '2021-12-22'),
(2029, 161, '2021-12-22'),
(2030, 178, '2021-12-22'),
(2031, 175, '2021-12-22'),
(2032, 165, '2021-12-22'),
(2033, 329, '2021-12-22'),
(2034, 161, '2021-12-22'),
(2035, 144, '2021-12-22'),
(2036, 121, '2021-12-22'),
(2037, 128, '2021-12-22'),
(2038, 175, '2021-12-22'),
(2039, 161, '2021-12-22'),
(2040, 163, '2021-12-22'),
(2041, 160, '2021-12-22'),
(2042, 178, '2021-12-22'),
(2043, 175, '2021-12-22'),
(2044, 165, '2021-12-22'),
(2045, 161, '2021-12-22'),
(2046, 331, '2021-12-22'),
(2047, 128, '2021-12-22'),
(2048, 128, '2021-12-22'),
(2049, 161, '2021-12-22'),
(2050, 112, '2021-12-22'),
(2051, 112, '2021-12-22'),
(2052, 112, '2021-12-22'),
(2053, 112, '2021-12-22'),
(2054, 112, '2021-12-22'),
(2055, 112, '2021-12-22'),
(2056, 330, '2021-12-22'),
(2057, 330, '2021-12-22'),
(2058, 330, '2021-12-22'),
(2059, 323, '2021-12-22'),
(2060, 323, '2021-12-22'),
(2061, 121, '2021-12-22'),
(2062, 162, '2021-12-22'),
(2063, 175, '2021-12-22'),
(2064, 160, '2021-12-22'),
(2065, 161, '2021-12-22'),
(2066, 175, '2021-12-22'),
(2067, 175, '2021-12-22'),
(2068, 175, '2021-12-22'),
(2069, 322, '2021-12-22'),
(2070, 159, '2021-12-22'),
(2071, 175, '2021-12-22'),
(2072, 178, '2021-12-22'),
(2073, 178, '2021-12-22'),
(2074, 175, '2021-12-22'),
(2075, 162, '2021-12-22'),
(2076, 178, '2021-12-22'),
(2077, 168, '2021-12-22'),
(2078, 160, '2021-12-22'),
(2079, 163, '2021-12-22'),
(2080, 122, '2021-12-22'),
(2081, 168, '2021-12-22'),
(2082, 162, '2021-12-22'),
(2083, 168, '2021-12-22'),
(2084, 163, '2021-12-22'),
(2085, 162, '2021-12-22'),
(2086, 162, '2021-12-22'),
(2087, 162, '2021-12-22'),
(2088, 160, '2021-12-22'),
(2089, 128, '2021-12-22'),
(2090, 163, '2021-12-22'),
(2091, 163, '2021-12-22'),
(2092, 117, '2021-12-22'),
(2093, 117, '2021-12-22'),
(2094, 178, '2021-12-22'),
(2095, 162, '2021-12-22'),
(2096, 175, '2021-12-22'),
(2097, 330, '2021-12-22'),
(2098, 178, '2021-12-22'),
(2099, 175, '2021-12-22'),
(2100, 178, '2021-12-22'),
(2101, 162, '2021-12-22'),
(2102, 310, '2021-12-22'),
(2103, 163, '2021-12-22'),
(2104, 162, '2021-12-23'),
(2105, 310, '2021-12-23'),
(2106, 163, '2021-12-23'),
(2107, 175, '2021-12-23'),
(2108, 170, '2021-12-23'),
(2109, 163, '2021-12-23'),
(2110, 169, '2021-12-23'),
(2111, 175, '2021-12-23'),
(2112, 175, '2021-12-23'),
(2113, 175, '2021-12-23'),
(2114, 175, '2021-12-23'),
(2115, 175, '2021-12-23'),
(2116, 178, '2021-12-23'),
(2117, 162, '2021-12-23'),
(2118, 331, '2021-12-23'),
(2119, 121, '2021-12-23'),
(2120, 122, '2021-12-23'),
(2121, 175, '2021-12-23'),
(2122, 163, '2021-12-23'),
(2123, 163, '2021-12-23'),
(2124, 161, '2021-12-23'),
(2125, 165, '2021-12-23'),
(2126, 175, '2021-12-23'),
(2127, 121, '2021-12-23'),
(2128, 144, '2021-12-23'),
(2129, 163, '2021-12-23'),
(2130, 161, '2021-12-23'),
(2131, 162, '2021-12-23'),
(2132, 175, '2021-12-23'),
(2133, 135, '2021-12-23'),
(2134, 168, '2021-12-23'),
(2135, 175, '2021-12-23'),
(2136, 162, '2021-12-23'),
(2137, 168, '2021-12-23'),
(2138, 161, '2021-12-23'),
(2139, 320, '2021-12-23'),
(2140, 306, '2021-12-23'),
(2141, 160, '2021-12-23'),
(2142, 330, '2021-12-23'),
(2143, 330, '2021-12-23'),
(2144, 170, '2021-12-23'),
(2145, 175, '2021-12-23'),
(2146, 162, '2021-12-23'),
(2147, 170, '2021-12-23'),
(2148, 162, '2021-12-23'),
(2149, 162, '2021-12-23'),
(2150, 175, '2021-12-23'),
(2151, 163, '2021-12-23'),
(2152, 95, '2021-12-23'),
(2153, 160, '2021-12-23'),
(2154, 160, '2021-12-23'),
(2155, 144, '2021-12-23'),
(2156, 160, '2021-12-23'),
(2157, 169, '2021-12-23'),
(2158, 178, '2021-12-23'),
(2159, 121, '2021-12-23'),
(2160, 168, '2021-12-23'),
(2161, 135, '2021-12-23'),
(2162, 144, '2021-12-23'),
(2163, 119, '2021-12-23'),
(2164, 120, '2021-12-23'),
(2165, 121, '2021-12-23'),
(2166, 122, '2021-12-23'),
(2167, 114, '2021-12-23'),
(2168, 112, '2021-12-23'),
(2169, 111, '2021-12-23'),
(2170, 175, '2021-12-23'),
(2171, 178, '2021-12-23'),
(2172, 161, '2021-12-23'),
(2173, 159, '2021-12-23'),
(2174, 168, '2021-12-23'),
(2175, 128, '2021-12-23'),
(2176, 170, '2021-12-23'),
(2177, 169, '2021-12-23'),
(2178, 163, '2021-12-23'),
(2179, 160, '2021-12-23'),
(2180, 165, '2021-12-23'),
(2181, 164, '2021-12-23'),
(2182, 162, '2021-12-23'),
(2183, 162, '2021-12-23'),
(2184, 114, '2021-12-23'),
(2185, 114, '2021-12-23'),
(2186, 170, '2021-12-23'),
(2187, 128, '2021-12-23'),
(2188, 178, '2021-12-23'),
(2189, 169, '2021-12-23'),
(2190, 165, '2021-12-23'),
(2191, 175, '2021-12-23'),
(2192, 128, '2021-12-23'),
(2193, 163, '2021-12-23'),
(2194, 121, '2021-12-23'),
(2195, 175, '2021-12-23'),
(2196, 178, '2021-12-23'),
(2197, 162, '2021-12-23'),
(2198, 95, '2021-12-23'),
(2199, 160, '2021-12-23'),
(2200, 178, '2021-12-23'),
(2201, 178, '2021-12-23'),
(2202, 164, '2021-12-23'),
(2203, 164, '2021-12-23'),
(2204, 122, '2021-12-23'),
(2205, 175, '2021-12-23'),
(2206, 165, '2021-12-23'),
(2207, 159, '2021-12-23'),
(2208, 161, '2021-12-23'),
(2209, 169, '2021-12-23'),
(2210, 168, '2021-12-23'),
(2211, 175, '2021-12-23'),
(2212, 170, '2021-12-23'),
(2213, 169, '2021-12-23'),
(2214, 135, '2021-12-23'),
(2215, 163, '2021-12-23'),
(2216, 163, '2021-12-23'),
(2217, 161, '2021-12-23'),
(2218, 331, '2021-12-23'),
(2219, 161, '2021-12-23'),
(2220, 178, '2021-12-23'),
(2221, 321, '2021-12-23'),
(2222, 122, '2021-12-23'),
(2223, 170, '2021-12-23'),
(2224, 163, '2021-12-23'),
(2225, 163, '2021-12-23'),
(2226, 160, '2021-12-23'),
(2227, 122, '2021-12-23'),
(2228, 163, '2021-12-23'),
(2229, 178, '2021-12-23'),
(2230, 119, '2021-12-23'),
(2231, 116, '2021-12-23'),
(2232, 117, '2021-12-23'),
(2233, 118, '2021-12-23'),
(2234, 95, '2021-12-23'),
(2235, 107, '2021-12-23'),
(2236, 109, '2021-12-23'),
(2237, 169, '2021-12-23'),
(2238, 168, '2021-12-23'),
(2239, 162, '2021-12-23'),
(2240, 169, '2021-12-23'),
(2241, 178, '2021-12-23'),
(2242, 178, '2021-12-23'),
(2243, 163, '2021-12-23'),
(2244, 175, '2021-12-23'),
(2245, 163, '2021-12-23'),
(2246, 178, '2021-12-23'),
(2247, 161, '2021-12-23'),
(2248, 160, '2021-12-23'),
(2249, 135, '2021-12-23'),
(2250, 175, '2021-12-23'),
(2251, 162, '2021-12-23'),
(2252, 163, '2021-12-23'),
(2253, 175, '2021-12-23'),
(2254, 112, '2021-12-23'),
(2255, 135, '2021-12-23'),
(2256, 144, '2021-12-23'),
(2257, 144, '2021-12-23'),
(2258, 175, '2021-12-23'),
(2259, 160, '2021-12-23'),
(2260, 159, '2021-12-24'),
(2261, 175, '2021-12-24'),
(2262, 175, '2021-12-24'),
(2263, 175, '2021-12-24'),
(2264, 321, '2021-12-24'),
(2265, 160, '2021-12-24'),
(2266, 122, '2021-12-24'),
(2267, 328, '2021-12-24'),
(2268, 178, '2021-12-24'),
(2269, 162, '2021-12-24'),
(2270, 163, '2021-12-24'),
(2271, 175, '2021-12-24'),
(2272, 175, '2021-12-24'),
(2273, 163, '2021-12-24'),
(2274, 162, '2021-12-24'),
(2275, 116, '2021-12-24'),
(2276, 116, '2021-12-24'),
(2277, 170, '2021-12-24'),
(2278, 168, '2021-12-24'),
(2279, 122, '2021-12-24'),
(2280, 160, '2021-12-24'),
(2281, 163, '2021-12-24'),
(2282, 114, '2021-12-24'),
(2283, 178, '2021-12-24'),
(2284, 175, '2021-12-24'),
(2285, 163, '2021-12-24'),
(2286, 162, '2021-12-24'),
(2287, 175, '2021-12-24'),
(2288, 178, '2021-12-24'),
(2289, 175, '2021-12-24'),
(2290, 162, '2021-12-24'),
(2291, 144, '2021-12-24'),
(2292, 175, '2021-12-24'),
(2293, 330, '2021-12-24'),
(2294, 175, '2021-12-24'),
(2295, 175, '2021-12-24'),
(2296, 162, '2021-12-24'),
(2297, 168, '2021-12-24'),
(2298, 161, '2021-12-24'),
(2299, 161, '2021-12-24'),
(2300, 161, '2021-12-24'),
(2301, 121, '2021-12-24'),
(2302, 175, '2021-12-24'),
(2303, 175, '2021-12-24'),
(2304, 175, '2021-12-24'),
(2305, 163, '2021-12-24'),
(2306, 175, '2021-12-24'),
(2307, 178, '2021-12-24'),
(2308, 178, '2021-12-24'),
(2309, 169, '2021-12-24'),
(2310, 161, '2021-12-24'),
(2311, 175, '2021-12-24'),
(2312, 169, '2021-12-24'),
(2313, 178, '2021-12-24'),
(2314, 175, '2021-12-24'),
(2315, 175, '2021-12-24'),
(2316, 175, '2021-12-24'),
(2317, 169, '2021-12-24'),
(2318, 175, '2021-12-24'),
(2319, 175, '2021-12-24'),
(2320, 161, '2021-12-24'),
(2321, 170, '2021-12-24'),
(2322, 170, '2021-12-24'),
(2323, 170, '2021-12-24'),
(2324, 160, '2021-12-24'),
(2325, 135, '2021-12-24'),
(2326, 162, '2021-12-24'),
(2327, 163, '2021-12-24'),
(2328, 170, '2021-12-24'),
(2329, 160, '2021-12-24'),
(2330, 118, '2021-12-24'),
(2331, 161, '2021-12-24'),
(2332, 161, '2021-12-24'),
(2333, 178, '2021-12-24'),
(2334, 175, '2021-12-24'),
(2335, 168, '2021-12-24'),
(2336, 175, '2021-12-24'),
(2337, 175, '2021-12-24'),
(2338, 168, '2021-12-24'),
(2339, 175, '2021-12-24'),
(2340, 161, '2021-12-24'),
(2341, 161, '2021-12-24'),
(2342, 128, '2021-12-24'),
(2343, 160, '2021-12-24'),
(2344, 120, '2021-12-24'),
(2345, 168, '2021-12-24'),
(2346, 178, '2021-12-24'),
(2347, 160, '2021-12-24'),
(2348, 128, '2021-12-24'),
(2349, 178, '2021-12-24'),
(2350, 161, '2021-12-24'),
(2351, 175, '2021-12-24'),
(2352, 175, '2021-12-24'),
(2353, 163, '2021-12-24'),
(2354, 175, '2021-12-24'),
(2355, 175, '2021-12-24'),
(2356, 163, '2021-12-24'),
(2357, 163, '2021-12-24'),
(2358, 175, '2021-12-25'),
(2359, 164, '2021-12-25'),
(2360, 175, '2021-12-25'),
(2361, 122, '2021-12-25'),
(2362, 160, '2021-12-25'),
(2363, 175, '2021-12-25'),
(2364, 178, '2021-12-25'),
(2365, 175, '2021-12-25'),
(2366, 161, '2021-12-25'),
(2367, 159, '2021-12-25'),
(2368, 159, '2021-12-25'),
(2369, 120, '2021-12-25'),
(2370, 135, '2021-12-25'),
(2371, 164, '2021-12-25'),
(2372, 164, '2021-12-25'),
(2373, 164, '2021-12-25'),
(2374, 162, '2021-12-25'),
(2375, 169, '2021-12-25'),
(2376, 164, '2021-12-25'),
(2377, 122, '2021-12-25'),
(2378, 160, '2021-12-25'),
(2379, 175, '2021-12-25'),
(2380, 178, '2021-12-25'),
(2381, 175, '2021-12-25'),
(2382, 168, '2021-12-25'),
(2383, 170, '2021-12-25'),
(2384, 128, '2021-12-25'),
(2385, 178, '2021-12-25'),
(2386, 170, '2021-12-25'),
(2387, 161, '2021-12-25'),
(2388, 161, '2021-12-25'),
(2389, 162, '2021-12-25'),
(2390, 168, '2021-12-25'),
(2391, 121, '2021-12-25'),
(2392, 163, '2021-12-25'),
(2393, 160, '2021-12-25'),
(2394, 121, '2021-12-25'),
(2395, 168, '2021-12-25'),
(2396, 175, '2021-12-25'),
(2397, 178, '2021-12-25'),
(2398, 159, '2021-12-25'),
(2399, 170, '2021-12-25'),
(2400, 161, '2021-12-25'),
(2401, 175, '2021-12-25'),
(2402, 175, '2021-12-25'),
(2403, 175, '2021-12-25'),
(2404, 160, '2021-12-25'),
(2405, 178, '2021-12-25'),
(2406, 170, '2021-12-25'),
(2407, 178, '2021-12-25'),
(2408, 163, '2021-12-25'),
(2409, 111, '2021-12-25'),
(2410, 122, '2021-12-25'),
(2411, 112, '2021-12-25'),
(2412, 95, '2021-12-25'),
(2413, 119, '2021-12-25'),
(2414, 161, '2021-12-25'),
(2415, 160, '2021-12-25'),
(2416, 107, '2021-12-25'),
(2417, 175, '2021-12-25'),
(2418, 128, '2021-12-25'),
(2419, 109, '2021-12-25'),
(2420, 121, '2021-12-25'),
(2421, 162, '2021-12-25'),
(2422, 144, '2021-12-25'),
(2423, 116, '2021-12-25'),
(2424, 118, '2021-12-25'),
(2425, 117, '2021-12-25'),
(2426, 120, '2021-12-25'),
(2427, 165, '2021-12-25'),
(2428, 114, '2021-12-25'),
(2429, 164, '2021-12-25'),
(2430, 168, '2021-12-25'),
(2431, 170, '2021-12-25'),
(2432, 178, '2021-12-25'),
(2433, 159, '2021-12-25'),
(2434, 109, '2021-12-25'),
(2435, 135, '2021-12-25'),
(2436, 111, '2021-12-25'),
(2437, 169, '2021-12-25'),
(2438, 95, '2021-12-25'),
(2439, 175, '2021-12-25'),
(2440, 168, '2021-12-25'),
(2441, 168, '2021-12-25'),
(2442, 114, '2021-12-25'),
(2443, 169, '2021-12-25'),
(2444, 162, '2021-12-25'),
(2445, 175, '2021-12-25'),
(2446, 121, '2021-12-26'),
(2447, 122, '2021-12-26'),
(2448, 168, '2021-12-26'),
(2449, 175, '2021-12-26'),
(2450, 169, '2021-12-26'),
(2451, 163, '2021-12-26'),
(2452, 162, '2021-12-26'),
(2453, 170, '2021-12-26'),
(2454, 170, '2021-12-26'),
(2455, 122, '2021-12-26'),
(2456, 160, '2021-12-26'),
(2457, 160, '2021-12-26'),
(2458, 128, '2021-12-26'),
(2459, 175, '2021-12-26'),
(2460, 178, '2021-12-26'),
(2461, 159, '2021-12-26'),
(2462, 162, '2021-12-26'),
(2463, 178, '2021-12-26'),
(2464, 178, '2021-12-26'),
(2465, 121, '2021-12-26'),
(2466, 165, '2021-12-26'),
(2467, 175, '2021-12-26'),
(2468, 162, '2021-12-26'),
(2469, 161, '2021-12-26'),
(2470, 175, '2021-12-26'),
(2471, 175, '2021-12-26'),
(2472, 170, '2021-12-26'),
(2473, 144, '2021-12-26'),
(2474, 163, '2021-12-26'),
(2475, 168, '2021-12-26'),
(2476, 160, '2021-12-26'),
(2477, 163, '2021-12-26'),
(2478, 175, '2021-12-26'),
(2479, 178, '2021-12-26'),
(2480, 178, '2021-12-26'),
(2481, 168, '2021-12-26'),
(2482, 168, '2021-12-26'),
(2483, 161, '2021-12-26'),
(2484, 170, '2021-12-26'),
(2485, 162, '2021-12-26'),
(2486, 175, '2021-12-26'),
(2487, 95, '2021-12-26'),
(2488, 178, '2021-12-26'),
(2489, 178, '2021-12-26'),
(2490, 178, '2021-12-26'),
(2491, 178, '2021-12-26'),
(2492, 162, '2021-12-26'),
(2493, 325, '2021-12-26'),
(2494, 161, '2021-12-26'),
(2495, 175, '2021-12-26'),
(2496, 160, '2021-12-26'),
(2497, 162, '2021-12-26'),
(2498, 175, '2021-12-26'),
(2499, 170, '2021-12-26'),
(2500, 178, '2021-12-26'),
(2501, 161, '2021-12-26'),
(2502, 178, '2021-12-26'),
(2503, 178, '2021-12-26'),
(2504, 178, '2021-12-26'),
(2505, 163, '2021-12-26'),
(2506, 159, '2021-12-26'),
(2507, 178, '2021-12-26'),
(2508, 178, '2021-12-26'),
(2509, 168, '2021-12-26'),
(2510, 107, '2021-12-26'),
(2511, 175, '2021-12-26'),
(2512, 175, '2021-12-26'),
(2513, 175, '2021-12-26'),
(2514, 170, '2021-12-26'),
(2515, 162, '2021-12-26'),
(2516, 168, '2021-12-27'),
(2517, 175, '2021-12-27'),
(2518, 359, '2021-12-27'),
(2519, 178, '2021-12-27'),
(2520, 161, '2021-12-27'),
(2521, 168, '2021-12-27'),
(2522, 168, '2021-12-27'),
(2523, 170, '2021-12-27'),
(2524, 164, '2021-12-27'),
(2525, 128, '2021-12-27'),
(2526, 175, '2021-12-27'),
(2527, 160, '2021-12-27'),
(2528, 170, '2021-12-27'),
(2529, 178, '2021-12-27'),
(2530, 163, '2021-12-27'),
(2531, 164, '2021-12-27'),
(2532, 165, '2021-12-27'),
(2533, 160, '2021-12-27'),
(2534, 178, '2021-12-27'),
(2535, 175, '2021-12-27'),
(2536, 168, '2021-12-27'),
(2537, 175, '2021-12-27'),
(2538, 170, '2021-12-27'),
(2539, 135, '2021-12-27'),
(2540, 168, '2021-12-27'),
(2541, 175, '2021-12-27'),
(2542, 175, '2021-12-27'),
(2543, 162, '2021-12-27'),
(2544, 175, '2021-12-27'),
(2545, 175, '2021-12-27'),
(2546, 175, '2021-12-28'),
(2547, 175, '2021-12-28'),
(2548, 162, '2021-12-28'),
(2549, 162, '2021-12-28'),
(2550, 120, '2021-12-28'),
(2551, 161, '2021-12-28'),
(2552, 162, '2021-12-28'),
(2553, 175, '2021-12-28'),
(2554, 162, '2021-12-28'),
(2555, 175, '2021-12-28'),
(2556, 331, '2021-12-28'),
(2557, 162, '2021-12-28'),
(2558, 161, '2021-12-28'),
(2559, 175, '2021-12-28'),
(2560, 160, '2021-12-28'),
(2561, 160, '2021-12-28'),
(2562, 178, '2021-12-28'),
(2563, 175, '2021-12-28'),
(2564, 122, '2021-12-28'),
(2565, 165, '2021-12-28'),
(2566, 175, '2021-12-28'),
(2567, 175, '2021-12-28'),
(2568, 178, '2021-12-28'),
(2569, 178, '2021-12-28'),
(2570, 178, '2021-12-28'),
(2571, 178, '2021-12-28'),
(2572, 178, '2021-12-28'),
(2573, 178, '2021-12-28'),
(2574, 169, '2021-12-28'),
(2575, 175, '2021-12-28'),
(2576, 178, '2021-12-28'),
(2577, 160, '2021-12-28'),
(2578, 160, '2021-12-28'),
(2579, 162, '2021-12-28'),
(2580, 175, '2021-12-28'),
(2581, 178, '2021-12-28'),
(2582, 163, '2021-12-28'),
(2583, 178, '2021-12-28'),
(2584, 178, '2021-12-28'),
(2585, 170, '2021-12-28'),
(2586, 121, '2021-12-28'),
(2587, 175, '2021-12-28'),
(2588, 178, '2021-12-28'),
(2589, 163, '2021-12-28'),
(2590, 178, '2021-12-28'),
(2591, 162, '2021-12-28'),
(2592, 128, '2021-12-28'),
(2593, 161, '2021-12-28'),
(2594, 161, '2021-12-29'),
(2595, 175, '2021-12-29'),
(2596, 178, '2021-12-29'),
(2597, 162, '2021-12-29'),
(2598, 161, '2021-12-29'),
(2599, 178, '2021-12-29'),
(2600, 178, '2021-12-29'),
(2601, 178, '2021-12-29'),
(2602, 178, '2021-12-29'),
(2603, 175, '2021-12-29'),
(2604, 178, '2021-12-29'),
(2605, 175, '2021-12-29'),
(2606, 175, '2021-12-29'),
(2607, 162, '2021-12-29'),
(2608, 164, '2021-12-29'),
(2609, 135, '2021-12-29'),
(2610, 114, '2021-12-29'),
(2611, 111, '2021-12-29'),
(2612, 128, '2021-12-29'),
(2613, 178, '2021-12-29'),
(2614, 178, '2021-12-29'),
(2615, 178, '2021-12-29'),
(2616, 163, '2021-12-29'),
(2617, 163, '2021-12-29'),
(2618, 178, '2021-12-29'),
(2619, 164, '2021-12-29'),
(2620, 163, '2021-12-29'),
(2621, 119, '2021-12-29'),
(2622, 122, '2021-12-29'),
(2623, 175, '2021-12-29'),
(2624, 144, '2021-12-29'),
(2625, 165, '2021-12-29'),
(2626, 178, '2021-12-29'),
(2627, 160, '2021-12-29'),
(2628, 159, '2021-12-30'),
(2629, 178, '2021-12-30'),
(2630, 163, '2021-12-30'),
(2631, 175, '2021-12-30'),
(2632, 168, '2021-12-30'),
(2633, 121, '2021-12-30'),
(2634, 168, '2021-12-30'),
(2635, 163, '2021-12-30'),
(2636, 165, '2021-12-30'),
(2637, 160, '2021-12-30'),
(2638, 160, '2021-12-30'),
(2639, 168, '2021-12-30'),
(2640, 178, '2021-12-30'),
(2641, 163, '2021-12-30'),
(2642, 163, '2021-12-30'),
(2643, 163, '2021-12-30'),
(2644, 163, '2021-12-30'),
(2645, 163, '2021-12-30'),
(2646, 163, '2021-12-30'),
(2647, 163, '2021-12-30'),
(2648, 163, '2021-12-30'),
(2649, 163, '2021-12-30'),
(2650, 163, '2021-12-30'),
(2651, 163, '2021-12-30'),
(2652, 163, '2021-12-30'),
(2653, 163, '2021-12-30'),
(2654, 163, '2021-12-30'),
(2655, 163, '2021-12-30'),
(2656, 163, '2021-12-30'),
(2657, 163, '2021-12-30'),
(2658, 163, '2021-12-30'),
(2659, 163, '2021-12-30'),
(2660, 163, '2021-12-30'),
(2661, 163, '2021-12-30'),
(2662, 163, '2021-12-30'),
(2663, 163, '2021-12-30'),
(2664, 163, '2021-12-30'),
(2665, 163, '2021-12-30'),
(2666, 163, '2021-12-30'),
(2667, 163, '2021-12-30'),
(2668, 163, '2021-12-30'),
(2669, 175, '2021-12-30'),
(2670, 175, '2021-12-30'),
(2671, 175, '2021-12-30'),
(2672, 175, '2021-12-30'),
(2673, 175, '2021-12-30'),
(2674, 175, '2021-12-30'),
(2675, 175, '2021-12-30'),
(2676, 175, '2021-12-30'),
(2677, 162, '2021-12-30'),
(2678, 162, '2021-12-30'),
(2679, 162, '2021-12-30'),
(2680, 162, '2021-12-30'),
(2681, 162, '2021-12-30'),
(2682, 162, '2021-12-30'),
(2683, 162, '2021-12-30'),
(2684, 162, '2021-12-30'),
(2685, 162, '2021-12-30'),
(2686, 162, '2021-12-30'),
(2687, 144, '2022-01-02'),
(2688, 144, '2022-01-02'),
(2689, 144, '2022-01-02'),
(2690, 162, '2022-01-02'),
(2691, 162, '2022-01-02'),
(2692, 159, '2022-01-02'),
(2693, 159, '2022-01-02'),
(2694, 175, '2022-01-02'),
(2695, 175, '2022-01-02'),
(2696, 175, '2022-01-02'),
(2697, 175, '2022-01-02'),
(2698, 175, '2022-01-02'),
(2699, 175, '2022-01-02'),
(2700, 175, '2022-01-02'),
(2701, 175, '2022-01-02'),
(2702, 175, '2022-01-03'),
(2703, 178, '2022-01-11'),
(2704, 175, '2022-01-12'),
(2705, 175, '2022-01-13'),
(2706, 178, '2022-01-13'),
(2707, 178, '2022-01-18'),
(2708, 178, '2022-01-18'),
(2709, 178, '2022-01-18'),
(2710, 178, '2022-01-18'),
(2711, 178, '2022-01-18'),
(2712, 178, '2022-01-18'),
(2713, 178, '2022-01-18'),
(2714, 175, '2022-01-18'),
(2715, 175, '2022-01-18'),
(2716, 135, '2022-01-30'),
(2717, 175, '2022-01-30'),
(2718, 178, '2022-01-31'),
(2719, 164, '2022-01-31'),
(2720, 178, '2022-02-06'),
(2721, 178, '2022-02-06'),
(2722, 178, '2022-02-06'),
(2723, 178, '2022-02-06'),
(2724, 178, '2022-02-06'),
(2725, 162, '2022-02-06'),
(2726, 162, '2022-02-06'),
(2727, 162, '2022-02-06'),
(2728, 162, '2022-02-06'),
(2729, 178, '2022-02-06'),
(2730, 178, '2022-02-06'),
(2731, 178, '2022-02-06'),
(2732, 162, '2022-02-06'),
(2733, 162, '2022-02-06'),
(2734, 162, '2022-02-06'),
(2735, 162, '2022-02-06'),
(2736, 162, '2022-02-06'),
(2737, 162, '2022-02-06'),
(2738, 162, '2022-02-06'),
(2739, 162, '2022-02-06'),
(2740, 162, '2022-02-06'),
(2741, 162, '2022-02-06'),
(2742, 162, '2022-02-06'),
(2743, 162, '2022-02-06'),
(2744, 162, '2022-02-06'),
(2745, 162, '2022-02-06'),
(2746, 162, '2022-02-06'),
(2747, 162, '2022-02-06'),
(2748, 162, '2022-02-06'),
(2749, 162, '2022-02-06'),
(2750, 162, '2022-02-06'),
(2751, 162, '2022-02-06'),
(2752, 162, '2022-02-06'),
(2753, 162, '2022-02-06'),
(2754, 162, '2022-02-06'),
(2755, 162, '2022-02-06'),
(2756, 162, '2022-02-06'),
(2757, 162, '2022-02-06'),
(2758, 162, '2022-02-06'),
(2759, 162, '2022-02-06'),
(2760, 162, '2022-02-06'),
(2761, 162, '2022-02-06'),
(2762, 162, '2022-02-06'),
(2763, 162, '2022-02-06'),
(2764, 162, '2022-02-06'),
(2765, 162, '2022-02-06'),
(2766, 162, '2022-02-06'),
(2767, 162, '2022-02-06'),
(2768, 162, '2022-02-06'),
(2769, 162, '2022-02-06'),
(2770, 162, '2022-02-06'),
(2771, 162, '2022-02-06'),
(2772, 162, '2022-02-07'),
(2773, 162, '2022-02-07'),
(2774, 162, '2022-02-07'),
(2775, 162, '2022-02-07'),
(2776, 162, '2022-02-07'),
(2777, 162, '2022-02-07'),
(2778, 162, '2022-02-07'),
(2779, 162, '2022-02-07'),
(2780, 162, '2022-02-07'),
(2781, 162, '2022-02-07'),
(2782, 162, '2022-02-07'),
(2783, 162, '2022-02-07'),
(2784, 162, '2022-02-07'),
(2785, 162, '2022-02-07'),
(2786, 162, '2022-02-07'),
(2787, 162, '2022-02-07'),
(2788, 162, '2022-02-07'),
(2789, 162, '2022-02-07'),
(2790, 162, '2022-02-07'),
(2791, 162, '2022-02-07'),
(2792, 162, '2022-02-07'),
(2793, 162, '2022-02-07'),
(2794, 162, '2022-02-07'),
(2795, 162, '2022-02-07'),
(2796, 162, '2022-02-07'),
(2797, 162, '2022-02-07'),
(2798, 162, '2022-02-07'),
(2799, 162, '2022-02-07'),
(2800, 162, '2022-02-07'),
(2801, 162, '2022-02-07'),
(2802, 162, '2022-02-07'),
(2803, 178, '2022-02-07'),
(2811, 178, '2022-02-07'),
(2812, 178, '2022-02-07'),
(2813, 178, '2022-02-07'),
(2814, 178, '2022-02-07'),
(2815, 178, '2022-02-07'),
(2816, 178, '2022-02-07'),
(2817, 178, '2022-02-07'),
(2818, 178, '2022-02-07'),
(2819, 178, '2022-02-07'),
(2820, 178, '2022-02-07'),
(2821, 178, '2022-02-07'),
(2822, 178, '2022-02-07'),
(2823, 178, '2022-02-07'),
(2824, 178, '2022-02-07'),
(2825, 178, '2022-02-07'),
(2826, 178, '2022-02-07'),
(2827, 178, '2022-02-07'),
(2828, 178, '2022-02-07'),
(2829, 178, '2022-02-07'),
(2830, 178, '2022-02-07'),
(2831, 178, '2022-02-07'),
(2832, 178, '2022-02-07'),
(2833, 178, '2022-02-07'),
(2834, 178, '2022-02-07'),
(2835, 178, '2022-02-07'),
(2836, 178, '2022-02-07'),
(2837, 178, '2022-02-07'),
(2838, 178, '2022-02-07'),
(2839, 178, '2022-02-07'),
(2840, 178, '2022-02-07'),
(2841, 178, '2022-02-07'),
(2842, 178, '2022-02-07'),
(2843, 178, '2022-02-07'),
(2844, 178, '2022-02-07'),
(2845, 178, '2022-02-07'),
(2846, 178, '2022-02-07'),
(2847, 144, '2022-02-09'),
(2848, 144, '2022-02-09'),
(2849, 144, '2022-02-09'),
(2850, 144, '2022-02-09'),
(2851, 144, '2022-02-09'),
(2852, 144, '2022-02-09'),
(2853, 178, '2022-02-09'),
(2854, 178, '2022-02-09'),
(2855, 178, '2022-02-09'),
(2856, 178, '2022-02-09'),
(2857, 178, '2022-02-09'),
(2858, 178, '2022-02-09'),
(2859, 178, '2022-02-09'),
(2860, 178, '2022-02-09'),
(2861, 178, '2022-02-09'),
(2862, 178, '2022-02-09'),
(2863, 178, '2022-02-09'),
(2864, 178, '2022-02-09'),
(2865, 178, '2022-02-09'),
(2866, 178, '2022-02-09'),
(2867, 178, '2022-02-09'),
(2868, 178, '2022-02-09'),
(2869, 178, '2022-02-09'),
(2870, 178, '2022-02-09'),
(2871, 178, '2022-02-09'),
(2872, 178, '2022-02-09'),
(2873, 178, '2022-02-09'),
(2874, 178, '2022-02-09'),
(2875, 178, '2022-02-09'),
(2876, 178, '2022-02-09'),
(2877, 178, '2022-02-09'),
(2878, 170, '2022-02-09'),
(2879, 169, '2022-02-09'),
(2880, 168, '2022-02-09'),
(2881, 162, '2022-02-09'),
(2882, 170, '2022-02-09'),
(2883, 170, '2022-02-09'),
(2884, 170, '2022-02-09'),
(2885, 170, '2022-02-09'),
(2886, 170, '2022-02-09'),
(2887, 170, '2022-02-09'),
(2888, 170, '2022-02-09'),
(2889, 170, '2022-02-09'),
(2890, 170, '2022-02-09'),
(2891, 170, '2022-02-09'),
(2892, 170, '2022-02-09'),
(2893, 170, '2022-02-09'),
(2894, 170, '2022-02-09'),
(2895, 170, '2022-02-09'),
(2896, 170, '2022-02-09'),
(2897, 170, '2022-02-09'),
(2898, 170, '2022-02-09'),
(2899, 170, '2022-02-09'),
(2900, 170, '2022-02-09'),
(2901, 170, '2022-02-09'),
(2902, 170, '2022-02-09'),
(2903, 170, '2022-02-09'),
(2904, 170, '2022-02-09'),
(2905, 170, '2022-02-09'),
(2906, 170, '2022-02-09'),
(2907, 170, '2022-02-09'),
(2908, 170, '2022-02-09'),
(2909, 116, '2022-02-09'),
(2910, 116, '2022-02-09'),
(2911, 116, '2022-02-09'),
(2912, 116, '2022-02-09'),
(2913, 116, '2022-02-09'),
(2914, 116, '2022-02-09'),
(2915, 116, '2022-02-09'),
(2916, 116, '2022-02-09'),
(2917, 116, '2022-02-09'),
(2918, 116, '2022-02-09'),
(2919, 116, '2022-02-09'),
(2920, 116, '2022-02-09'),
(2921, 116, '2022-02-09'),
(2922, 116, '2022-02-09'),
(2923, 116, '2022-02-09'),
(2924, 116, '2022-02-09'),
(2925, 116, '2022-02-09'),
(2926, 116, '2022-02-09'),
(2927, 116, '2022-02-09'),
(2928, 116, '2022-02-09'),
(2929, 116, '2022-02-09'),
(2930, 116, '2022-02-09'),
(2931, 116, '2022-02-09'),
(2932, 116, '2022-02-09'),
(2933, 116, '2022-02-09'),
(2934, 116, '2022-02-09'),
(2935, 116, '2022-02-09'),
(2936, 116, '2022-02-09'),
(2937, 116, '2022-02-09'),
(2938, 116, '2022-02-09'),
(2939, 116, '2022-02-09'),
(2940, 116, '2022-02-09'),
(2941, 164, '2022-02-09'),
(2942, 175, '2022-02-09'),
(2943, 164, '2022-02-09'),
(2944, 178, '2022-02-09'),
(2945, 178, '2022-02-09'),
(2946, 162, '2022-02-09'),
(2947, 164, '2022-02-10'),
(2948, 164, '2022-02-10'),
(2949, 170, '2022-02-10'),
(2951, 164, '2022-02-13'),
(2952, 164, '2022-02-13'),
(2953, 164, '2022-02-13'),
(2956, 178, '2022-02-13'),
(2957, 178, '2022-02-13'),
(2958, 178, '2022-02-13'),
(2959, 178, '2022-02-13'),
(2960, 178, '2022-02-13'),
(2961, 178, '2022-02-13'),
(2962, 178, '2022-02-13'),
(2963, 178, '2022-02-13'),
(2964, 178, '2022-02-13'),
(2965, 178, '2022-02-13'),
(2966, 178, '2022-02-13'),
(2967, 178, '2022-02-13'),
(2968, 178, '2022-02-13'),
(2969, 178, '2022-02-13'),
(2970, 178, '2022-02-13'),
(2973, 178, '2022-02-13'),
(2974, 178, '2022-02-13'),
(2975, 178, '2022-02-13'),
(2976, 178, '2022-02-13'),
(2977, 178, '2022-02-13'),
(2978, 164, '2022-02-13'),
(2979, 164, '2022-02-13'),
(2980, 164, '2022-02-13'),
(2981, 164, '2022-02-13'),
(2982, 164, '2022-02-13'),
(2983, 164, '2022-02-13'),
(2984, 164, '2022-02-13'),
(2985, 164, '2022-02-13'),
(2986, 164, '2022-02-13'),
(2987, 164, '2022-02-13'),
(2988, 164, '2022-02-13'),
(2989, 164, '2022-02-13'),
(2990, 164, '2022-02-13'),
(2991, 164, '2022-02-13'),
(2992, 164, '2022-02-13'),
(2993, 164, '2022-02-13'),
(2994, 164, '2022-02-13'),
(2996, 178, '2022-02-13'),
(2997, 178, '2022-02-13'),
(2998, 178, '2022-02-13'),
(2999, 178, '2022-02-13'),
(3000, 178, '2022-02-13'),
(3001, 178, '2022-02-13'),
(3002, 178, '2022-02-13'),
(3003, 178, '2022-02-13'),
(3004, 178, '2022-02-13'),
(3005, 178, '2022-02-13'),
(3006, 178, '2022-02-13'),
(3007, 178, '2022-02-13'),
(3008, 178, '2022-02-13'),
(3009, 178, '2022-02-13'),
(3014, 175, '2022-02-13'),
(3015, 164, '2022-02-13'),
(3016, 169, '2022-02-13'),
(3017, 164, '2022-02-13'),
(3018, 164, '2022-02-13'),
(3019, 164, '2022-02-13'),
(3021, 175, '2022-02-13'),
(3022, 164, '2022-02-13'),
(3023, 175, '2022-02-13'),
(3024, 175, '2022-02-13'),
(3025, 164, '2022-02-13'),
(3026, 164, '2022-02-13'),
(3027, 164, '2022-02-13'),
(3028, 164, '2022-02-13'),
(3030, 164, '2022-02-13'),
(3031, 164, '2022-02-13'),
(3033, 164, '2022-02-13'),
(3035, 164, '2022-02-13'),
(3037, 164, '2022-02-13'),
(3039, 164, '2022-02-13'),
(3040, 164, '2022-02-13'),
(3041, 164, '2022-02-13'),
(3042, 164, '2022-02-13'),
(3043, 164, '2022-02-13'),
(3044, 164, '2022-02-13'),
(3045, 164, '2022-02-13'),
(3046, 164, '2022-02-13'),
(3047, 164, '2022-02-13'),
(3048, 164, '2022-02-13'),
(3049, 164, '2022-02-13'),
(3050, 164, '2022-02-13'),
(3051, 164, '2022-02-13'),
(3052, 164, '2022-02-13'),
(3053, 164, '2022-02-13'),
(3054, 164, '2022-02-13'),
(3055, 164, '2022-02-13'),
(3056, 164, '2022-02-13'),
(3059, 164, '2022-02-13'),
(3060, 164, '2022-02-13'),
(3061, 178, '2022-02-13'),
(3062, 164, '2022-02-13'),
(3063, 164, '2022-02-13'),
(3064, 164, '2022-02-13'),
(3065, 164, '2022-02-13'),
(3066, 164, '2022-02-13'),
(3067, 164, '2022-02-13'),
(3068, 164, '2022-02-13'),
(3069, 164, '2022-02-13'),
(3070, 164, '2022-02-13'),
(3071, 164, '2022-02-13'),
(3072, 164, '2022-02-13'),
(3073, 164, '2022-02-13'),
(3074, 164, '2022-02-13'),
(3075, 164, '2022-02-13'),
(3076, 164, '2022-02-13'),
(3077, 164, '2022-02-13'),
(3078, 164, '2022-02-13'),
(3086, 164, '2022-02-13'),
(3087, 164, '2022-02-13'),
(3088, 164, '2022-02-13'),
(3089, 164, '2022-02-13'),
(3090, 164, '2022-02-13'),
(3091, 164, '2022-02-13'),
(3092, 164, '2022-02-13'),
(3093, 164, '2022-02-13'),
(3094, 164, '2022-02-13'),
(3095, 164, '2022-02-13'),
(3096, 164, '2022-02-13'),
(3097, 164, '2022-02-13'),
(3098, 164, '2022-02-13'),
(3099, 164, '2022-02-13'),
(3100, 164, '2022-02-13'),
(3101, 164, '2022-02-13'),
(3102, 164, '2022-02-13'),
(3103, 164, '2022-02-13'),
(3104, 164, '2022-02-13'),
(3105, 164, '2022-02-13'),
(3106, 164, '2022-02-13'),
(3107, 164, '2022-02-13'),
(3108, 164, '2022-02-13'),
(3109, 164, '2022-02-13'),
(3110, 164, '2022-02-13'),
(3111, 164, '2022-02-13'),
(3112, 164, '2022-02-13'),
(3113, 164, '2022-02-13'),
(3114, 164, '2022-02-13'),
(3115, 164, '2022-02-13'),
(3116, 164, '2022-02-13'),
(3117, 164, '2022-02-13'),
(3118, 164, '2022-02-14'),
(3119, 164, '2022-02-14'),
(3120, 164, '2022-02-14'),
(3121, 164, '2022-02-14'),
(3122, 164, '2022-02-14'),
(3123, 164, '2022-02-14'),
(3124, 178, '2022-02-14'),
(3125, 178, '2022-02-14'),
(3126, 164, '2022-02-14'),
(3127, 164, '2022-02-14'),
(3128, 164, '2022-02-14'),
(3129, 164, '2022-02-14'),
(3130, 164, '2022-02-14'),
(3131, 164, '2022-02-14'),
(3132, 164, '2022-02-14'),
(3133, 164, '2022-02-14'),
(3134, 164, '2022-02-14'),
(3135, 164, '2022-02-14'),
(3136, 164, '2022-02-14'),
(3137, 164, '2022-02-14'),
(3138, 164, '2022-02-14'),
(3139, 164, '2022-02-14'),
(3140, 164, '2022-02-14'),
(3141, 164, '2022-02-14'),
(3142, 164, '2022-02-14'),
(3143, 164, '2022-02-14'),
(3144, 164, '2022-02-14'),
(3145, 164, '2022-02-14'),
(3146, 164, '2022-02-14'),
(3147, 164, '2022-02-14'),
(3148, 164, '2022-02-14'),
(3149, 164, '2022-02-14'),
(3150, 164, '2022-02-14'),
(3151, 164, '2022-02-14'),
(3152, 164, '2022-02-14'),
(3153, 164, '2022-02-14'),
(3154, 164, '2022-02-14'),
(3155, 164, '2022-02-14'),
(3156, 164, '2022-02-14'),
(3157, 164, '2022-02-14'),
(3158, 164, '2022-02-14'),
(3159, 164, '2022-02-14'),
(3160, 164, '2022-02-14'),
(3161, 164, '2022-02-14'),
(3162, 164, '2022-02-14'),
(3163, 164, '2022-02-14'),
(3164, 164, '2022-02-14'),
(3165, 164, '2022-02-14'),
(3166, 170, '2022-02-14'),
(3167, 164, '2022-02-14'),
(3168, 164, '2022-02-14'),
(3169, 164, '2022-02-14'),
(3170, 164, '2022-02-14'),
(3171, 164, '2022-02-14'),
(3172, 164, '2022-02-14'),
(3173, 164, '2022-02-14'),
(3174, 164, '2022-02-14'),
(3175, 164, '2022-02-14'),
(3176, 164, '2022-02-14'),
(3177, 164, '2022-02-14'),
(3178, 164, '2022-02-14'),
(3179, 164, '2022-02-14'),
(3180, 164, '2022-02-14'),
(3181, 164, '2022-02-14'),
(3182, 164, '2022-02-14'),
(3183, 164, '2022-02-14'),
(3184, 164, '2022-02-14'),
(3185, 164, '2022-02-14'),
(3186, 164, '2022-02-14'),
(3187, 164, '2022-02-14'),
(3188, 164, '2022-02-14'),
(3189, 164, '2022-02-14'),
(3190, 164, '2022-02-14'),
(3191, 164, '2022-02-14'),
(3192, 164, '2022-02-14'),
(3193, 164, '2022-02-14'),
(3194, 164, '2022-02-14'),
(3195, 164, '2022-02-14'),
(3196, 164, '2022-02-14'),
(3197, 164, '2022-02-14'),
(3198, 164, '2022-02-14'),
(3199, 164, '2022-02-14'),
(3200, 164, '2022-02-14'),
(3201, 164, '2022-02-14'),
(3202, 178, '2022-02-14'),
(3203, 178, '2022-02-14'),
(3204, 169, '2022-02-14'),
(3205, 170, '2022-02-14'),
(3206, 164, '2022-02-14'),
(3207, 164, '2022-02-14'),
(3208, 164, '2022-02-14'),
(3209, 178, '2022-02-14'),
(3210, 178, '2022-02-14'),
(3211, 178, '2022-02-14'),
(3212, 178, '2022-02-14'),
(3213, 178, '2022-02-14'),
(3214, 178, '2022-02-14'),
(3215, 178, '2022-02-14'),
(3216, 178, '2022-02-14'),
(3217, 178, '2022-02-14'),
(3218, 178, '2022-02-14'),
(3219, 178, '2022-02-14'),
(3220, 178, '2022-02-14'),
(3221, 178, '2022-02-14'),
(3222, 178, '2022-02-14'),
(3223, 178, '2022-02-14'),
(3224, 178, '2022-02-14'),
(3225, 178, '2022-02-14'),
(3226, 178, '2022-02-14'),
(3227, 178, '2022-02-14'),
(3228, 178, '2022-02-14'),
(3229, 164, '2022-02-14'),
(3230, 175, '2022-02-15'),
(3231, 178, '2022-02-15'),
(3232, 175, '2022-02-15'),
(3233, 161, '2022-02-15'),
(3234, 178, '2022-02-15'),
(3235, 178, '2022-02-15'),
(3236, 178, '2022-02-15'),
(3237, 178, '2022-02-15'),
(3238, 178, '2022-02-15'),
(3239, 178, '2022-02-15'),
(3240, 178, '2022-02-15'),
(3241, 178, '2022-02-15'),
(3242, 178, '2022-02-15'),
(3243, 178, '2022-02-15'),
(3244, 178, '2022-02-15'),
(3245, 178, '2022-02-15'),
(3246, 178, '2022-02-15'),
(3247, 178, '2022-02-15'),
(3248, 178, '2022-02-15'),
(3249, 178, '2022-02-15'),
(3250, 178, '2022-02-15'),
(3251, 178, '2022-02-15'),
(3252, 178, '2022-02-15'),
(3253, 178, '2022-02-15'),
(3254, 178, '2022-02-15'),
(3255, 178, '2022-02-15'),
(3256, 178, '2022-02-15'),
(3257, 164, '2022-02-15'),
(3258, 178, '2022-02-15'),
(3259, 178, '2022-02-15'),
(3260, 178, '2022-02-15'),
(3261, 178, '2022-02-15'),
(3262, 178, '2022-02-15'),
(3263, 178, '2022-02-15'),
(3264, 178, '2022-02-15'),
(3265, 178, '2022-02-15'),
(3266, 178, '2022-02-15'),
(3267, 178, '2022-02-15'),
(3268, 178, '2022-02-15'),
(3269, 178, '2022-02-15'),
(3270, 178, '2022-02-15'),
(3271, 178, '2022-02-15'),
(3272, 162, '2022-02-15'),
(3273, 162, '2022-02-15'),
(3274, 162, '2022-02-15'),
(3275, 162, '2022-02-15'),
(3276, 164, '2022-02-15'),
(3277, 164, '2022-02-15'),
(3278, 164, '2022-02-15'),
(3279, 162, '2022-02-15'),
(3280, 162, '2022-02-15'),
(3281, 162, '2022-02-15'),
(3282, 162, '2022-02-15'),
(3283, 162, '2022-02-15'),
(3284, 162, '2022-02-15'),
(3285, 162, '2022-02-15'),
(3286, 162, '2022-02-15'),
(3287, 162, '2022-02-15'),
(3288, 162, '2022-02-15'),
(3289, 162, '2022-02-15'),
(3290, 162, '2022-02-15'),
(3291, 162, '2022-02-15'),
(3292, 162, '2022-02-15'),
(3293, 162, '2022-02-15'),
(3294, 162, '2022-02-15'),
(3295, 162, '2022-02-15'),
(3296, 162, '2022-02-15'),
(3297, 162, '2022-02-15'),
(3298, 162, '2022-02-15'),
(3299, 162, '2022-02-15'),
(3300, 164, '2022-02-15'),
(3301, 162, '2022-02-15'),
(3302, 164, '2022-02-15'),
(3303, 162, '2022-02-15'),
(3304, 162, '2022-02-15'),
(3305, 162, '2022-02-15'),
(3306, 162, '2022-02-15'),
(3307, 162, '2022-02-15'),
(3308, 162, '2022-02-15'),
(3309, 162, '2022-02-15'),
(3310, 162, '2022-02-15'),
(3311, 162, '2022-02-15'),
(3312, 162, '2022-02-15'),
(3313, 162, '2022-02-15'),
(3314, 162, '2022-02-15'),
(3315, 162, '2022-02-15'),
(3316, 162, '2022-02-15'),
(3317, 162, '2022-02-15'),
(3318, 164, '2022-02-15'),
(3320, 175, '2022-02-15'),
(3321, 178, '2022-02-15'),
(3322, 162, '2022-02-15'),
(3323, 178, '2022-02-15'),
(3324, 162, '2022-02-15'),
(3325, 162, '2022-02-15'),
(3326, 162, '2022-02-15'),
(3327, 162, '2022-02-15'),
(3328, 162, '2022-02-15'),
(3329, 162, '2022-02-15'),
(3330, 162, '2022-02-15'),
(3331, 162, '2022-02-15'),
(3332, 162, '2022-02-15'),
(3333, 162, '2022-02-15'),
(3334, 162, '2022-02-15'),
(3335, 162, '2022-02-15'),
(3336, 162, '2022-02-15'),
(3337, 162, '2022-02-15'),
(3338, 162, '2022-02-15'),
(3339, 162, '2022-02-15'),
(3340, 162, '2022-02-15'),
(3341, 162, '2022-02-15'),
(3342, 162, '2022-02-15'),
(3343, 95, '2022-02-15'),
(3344, 95, '2022-02-15'),
(3345, 95, '2022-02-15'),
(3346, 95, '2022-02-15'),
(3347, 95, '2022-02-15'),
(3348, 95, '2022-02-15'),
(3349, 95, '2022-02-15'),
(3350, 169, '2022-02-15'),
(3351, 169, '2022-02-15'),
(3352, 169, '2022-02-15'),
(3353, 116, '2022-02-15'),
(3354, 116, '2022-02-15'),
(3355, 162, '2022-02-16'),
(3356, 162, '2022-02-16'),
(3357, 178, '2022-02-16'),
(3358, 161, '2022-02-16'),
(3359, 162, '2022-02-16'),
(3360, 162, '2022-02-16'),
(3361, 161, '2022-02-16'),
(3362, 162, '2022-02-16'),
(3363, 162, '2022-02-16'),
(3364, 144, '2022-02-16'),
(3365, 178, '2022-02-16'),
(3366, 178, '2022-02-16'),
(3367, 178, '2022-02-16'),
(3368, 178, '2022-02-16'),
(3370, 178, '2022-02-16'),
(3371, 112, '2022-02-17'),
(3372, 112, '2022-02-17'),
(3373, 178, '2022-02-17'),
(3374, 178, '2022-02-17'),
(3375, 178, '2022-02-17'),
(3376, 178, '2022-02-17'),
(3377, 170, '2022-02-17'),
(3378, 178, '2022-02-17'),
(3379, 162, '2022-02-17'),
(3380, 162, '2022-02-17'),
(3381, 162, '2022-02-17'),
(3382, 169, '2022-02-17'),
(3383, 162, '2022-02-17'),
(3384, 178, '2022-02-17'),
(3385, 178, '2022-02-17'),
(3386, 162, '2022-02-17'),
(3387, 162, '2022-02-17'),
(3388, 178, '2022-02-21'),
(3389, 178, '2022-02-21'),
(3390, 178, '2022-02-21'),
(3391, 178, '2022-02-21'),
(3392, 178, '2022-02-21'),
(3393, 175, '2022-02-21'),
(3394, 170, '2022-02-21'),
(3395, 162, '2022-02-21'),
(3396, 162, '2022-02-21'),
(3397, 162, '2022-02-21'),
(3398, 162, '2022-02-21'),
(3399, 162, '2022-02-21'),
(3400, 178, '2022-02-24'),
(3401, 170, '2022-02-24'),
(3402, 168, '2022-02-24'),
(3404, 114, '2022-02-24'),
(3405, 178, '2022-02-24'),
(3407, 114, '2022-02-24'),
(3408, 114, '2022-02-24'),
(3409, 135, '2022-02-24'),
(3410, 135, '2022-02-24'),
(3411, 135, '2022-02-24'),
(3412, 144, '2022-02-24'),
(3413, 114, '2022-02-24'),
(3414, 175, '2022-02-24'),
(3415, 175, '2022-02-24'),
(3416, 170, '2022-02-24'),
(3417, 178, '2022-02-27'),
(3418, 178, '2022-02-27'),
(3419, 178, '2022-02-27'),
(3420, 178, '2022-02-27'),
(3421, 178, '2022-02-27'),
(3422, 178, '2022-02-27'),
(3423, 135, '2022-02-27'),
(3424, 178, '2022-02-28'),
(3425, 178, '2022-02-28'),
(3426, 178, '2022-02-28'),
(3427, 178, '2022-02-28'),
(3428, 178, '2022-02-28'),
(3429, 178, '2022-02-28'),
(3430, 178, '2022-02-28'),
(3431, 178, '2022-02-28'),
(3432, 178, '2022-02-28'),
(3433, 178, '2022-02-28'),
(3434, 178, '2022-02-28'),
(3435, 178, '2022-02-28'),
(3438, 178, '2022-02-28'),
(3439, 175, '2022-02-28'),
(3440, 170, '2022-02-28'),
(3441, 169, '2022-02-28'),
(3442, 168, '2022-02-28'),
(3443, 175, '2022-03-01'),
(3445, 178, '2022-03-01'),
(3446, 178, '2022-03-01'),
(3447, 178, '2022-03-01'),
(3448, 178, '2022-03-01'),
(3449, 178, '2022-03-01'),
(3450, 178, '2022-03-01'),
(3451, 178, '2022-03-01'),
(3452, 178, '2022-03-01'),
(3453, 178, '2022-03-01'),
(3454, 178, '2022-03-01'),
(3455, 178, '2022-03-01'),
(3456, 178, '2022-03-01'),
(3457, 178, '2022-03-01'),
(3458, 178, '2022-03-01'),
(3459, 178, '2022-03-01'),
(3460, 178, '2022-03-01'),
(3461, 178, '2022-03-01'),
(3462, 178, '2022-03-01'),
(3463, 170, '2022-03-01'),
(3464, 170, '2022-03-01'),
(3465, 170, '2022-03-01'),
(3466, 170, '2022-03-01'),
(3467, 170, '2022-03-01'),
(3468, 170, '2022-03-01'),
(3469, 170, '2022-03-01'),
(3470, 170, '2022-03-01'),
(3471, 170, '2022-03-01'),
(3472, 170, '2022-03-01'),
(3473, 170, '2022-03-01'),
(3474, 170, '2022-03-01'),
(3475, 170, '2022-03-01'),
(3476, 170, '2022-03-01'),
(3477, 170, '2022-03-01'),
(3478, 170, '2022-03-01'),
(3479, 170, '2022-03-01'),
(3480, 178, '2022-03-01'),
(3481, 178, '2022-03-01'),
(3482, 178, '2022-03-01'),
(3483, 160, '2022-03-01'),
(3484, 178, '2022-03-01'),
(3485, 160, '2022-03-01'),
(3486, 175, '2022-03-01'),
(3487, 160, '2022-03-01'),
(3488, 164, '2022-03-01'),
(3489, 159, '2022-03-01'),
(3490, 178, '2022-03-03'),
(3491, 178, '2022-03-03'),
(3492, 178, '2022-03-03'),
(3493, 178, '2022-03-03'),
(3494, 178, '2022-03-03'),
(3495, 178, '2022-03-03'),
(3496, 169, '2022-03-03'),
(3497, 169, '2022-03-03'),
(3498, 169, '2022-03-03'),
(3499, 168, '2022-03-03'),
(3501, 165, '2022-03-03'),
(3502, 165, '2022-03-03'),
(3503, 165, '2022-03-03'),
(3504, 165, '2022-03-03'),
(3505, 175, '2022-03-03'),
(3506, 175, '2022-03-03'),
(3507, 175, '2022-03-03'),
(3508, 175, '2022-03-03'),
(3509, 175, '2022-03-03'),
(3510, 175, '2022-03-03'),
(3511, 175, '2022-03-03'),
(3512, 175, '2022-03-03'),
(3513, 178, '2022-03-03'),
(3514, 178, '2022-03-03'),
(3515, 175, '2022-03-03'),
(3516, 175, '2022-03-03'),
(3517, 175, '2022-03-03'),
(3518, 175, '2022-03-03'),
(3519, 178, '2022-03-03'),
(3520, 178, '2022-03-03'),
(3521, 178, '2022-03-03'),
(3522, 178, '2022-03-03'),
(3523, 169, '2022-03-03'),
(3524, 178, '2022-03-03'),
(3525, 178, '2022-03-03'),
(3526, 178, '2022-03-03'),
(3527, 178, '2022-03-03'),
(3528, 178, '2022-03-03'),
(3529, 178, '2022-03-03'),
(3530, 178, '2022-03-03'),
(3531, 178, '2022-03-03'),
(3532, 178, '2022-03-03'),
(3533, 178, '2022-03-03'),
(3534, 107, '2022-03-03'),
(3535, 178, '2022-03-03'),
(3536, 178, '2022-03-03'),
(3537, 178, '2022-03-03'),
(3538, 178, '2022-03-03'),
(3539, 178, '2022-03-03'),
(3540, 178, '2022-03-03'),
(3541, 178, '2022-03-03'),
(3542, 178, '2022-03-03'),
(3543, 178, '2022-03-03'),
(3544, 178, '2022-03-03'),
(3545, 178, '2022-03-03'),
(3546, 178, '2022-03-03'),
(3547, 178, '2022-03-03'),
(3548, 170, '2022-03-03'),
(3549, 162, '2022-03-03'),
(3550, 162, '2022-03-03'),
(3551, 175, '2022-03-03'),
(3552, 175, '2022-03-03'),
(3553, 175, '2022-03-03'),
(3554, 175, '2022-03-03'),
(3555, 175, '2022-03-03'),
(3556, 175, '2022-03-03'),
(3557, 175, '2022-03-03'),
(3558, 175, '2022-03-03'),
(3559, 178, '2022-03-06'),
(3560, 178, '2022-03-06'),
(3561, 170, '2022-03-06'),
(3562, 168, '2022-03-06'),
(3563, 168, '2022-03-06'),
(3564, 175, '2022-03-06'),
(3565, 170, '2022-03-06'),
(3566, 175, '2022-03-06'),
(3567, 175, '2022-03-06'),
(3568, 175, '2022-03-06'),
(3569, 175, '2022-03-06'),
(3570, 175, '2022-03-06'),
(3571, 175, '2022-03-06'),
(3572, 175, '2022-03-06'),
(3573, 175, '2022-03-06'),
(3574, 175, '2022-03-06'),
(3575, 175, '2022-03-06'),
(3576, 162, '2022-03-06'),
(3577, 169, '2022-03-06'),
(3578, 169, '2022-03-06'),
(3579, 169, '2022-03-06'),
(3580, 169, '2022-03-06'),
(3581, 169, '2022-03-06'),
(3582, 169, '2022-03-06'),
(3583, 169, '2022-03-06'),
(3584, 169, '2022-03-06'),
(3585, 169, '2022-03-06'),
(3586, 169, '2022-03-06'),
(3587, 169, '2022-03-06'),
(3588, 169, '2022-03-06'),
(3589, 169, '2022-03-06'),
(3590, 178, '2022-03-06'),
(3591, 178, '2022-03-06'),
(3592, 163, '2022-03-06'),
(3593, 111, '2022-03-06'),
(3594, 109, '2022-03-06'),
(3595, 109, '2022-03-06'),
(3596, 112, '2022-03-06'),
(3597, 114, '2022-03-06'),
(3598, 111, '2022-03-06'),
(3599, 111, '2022-03-06'),
(3600, 178, '2022-03-06'),
(3601, 170, '2022-03-06'),
(3602, 175, '2022-03-06'),
(3603, 178, '2022-03-06'),
(3604, 178, '2022-03-06'),
(3605, 95, '2022-03-06'),
(3606, 178, '2022-03-06'),
(3607, 162, '2022-03-06'),
(3609, 178, '2022-03-06'),
(3610, 178, '2022-03-06'),
(3611, 178, '2022-03-06'),
(3612, 178, '2022-03-06'),
(3613, 178, '2022-03-06'),
(3614, 178, '2022-03-06'),
(3615, 178, '2022-03-06'),
(3616, 178, '2022-03-06'),
(3617, 175, '2022-03-06'),
(3618, 128, '2022-03-06'),
(3619, 128, '2022-03-06'),
(3620, 164, '2022-03-06'),
(3622, 169, '2022-03-06'),
(3623, 178, '2022-03-06'),
(3624, 178, '2022-03-06'),
(3625, 178, '2022-03-06'),
(3626, 170, '2022-03-06'),
(3627, 165, '2022-03-06'),
(3628, 178, '2022-03-06'),
(3629, 178, '2022-03-06'),
(3630, 175, '2022-03-06'),
(3631, 175, '2022-03-06'),
(3632, 170, '2022-03-07'),
(3633, 178, '2022-03-08'),
(3634, 178, '2022-03-08'),
(3635, 178, '2022-03-08'),
(3636, 175, '2022-03-08'),
(3637, 165, '2022-03-08'),
(3638, 170, '2022-03-08'),
(3639, 170, '2022-03-08'),
(3640, 170, '2022-03-08'),
(3641, 170, '2022-03-08'),
(3642, 169, '2022-03-08'),
(3643, 169, '2022-03-08'),
(3644, 169, '2022-03-08'),
(3645, 175, '2022-03-09'),
(3646, 175, '2022-03-09'),
(3647, 178, '2022-03-09'),
(3648, 175, '2022-03-10'),
(3649, 175, '2022-03-10'),
(3650, 175, '2022-03-10'),
(3651, 175, '2022-03-10'),
(3652, 175, '2022-03-10'),
(3653, 170, '2022-03-10'),
(3654, 175, '2022-03-10'),
(3655, 168, '2022-03-10'),
(3656, 164, '2022-03-10'),
(3657, 170, '2022-03-10'),
(3658, 170, '2022-03-10'),
(3659, 170, '2022-03-10'),
(3660, 175, '2022-03-10'),
(3661, 170, '2022-03-10'),
(3662, 170, '2022-03-10'),
(3663, 175, '2022-03-10'),
(3664, 175, '2022-03-10'),
(3665, 175, '2022-03-10'),
(3666, 175, '2022-03-10'),
(3667, 175, '2022-03-14'),
(3668, 175, '2022-03-14'),
(3669, 175, '2022-03-14'),
(3670, 175, '2022-03-14'),
(3671, 175, '2022-03-14'),
(3672, 175, '2022-03-14'),
(3673, 175, '2022-03-14'),
(3674, 175, '2022-03-14'),
(3675, 175, '2022-03-14'),
(3676, 175, '2022-03-14'),
(3677, 165, '2022-03-14'),
(3678, 165, '2022-03-14'),
(3679, 165, '2022-03-14'),
(3680, 165, '2022-03-14'),
(3681, 165, '2022-03-14'),
(3682, 165, '2022-03-14'),
(3683, 178, '2022-03-14'),
(3684, 178, '2022-03-14'),
(3685, 170, '2022-03-14'),
(3686, 170, '2022-03-14'),
(3687, 170, '2022-03-14'),
(3688, 170, '2022-03-14'),
(3689, 175, '2022-03-16'),
(3690, 178, '2022-03-16'),
(3691, 128, '2022-03-16'),
(3692, 164, '2022-03-22'),
(3693, 170, '2022-03-23'),
(3694, 170, '2022-03-23'),
(3695, 175, '2022-03-23'),
(3696, 170, '2022-03-23'),
(3697, 168, '2022-03-23'),
(3698, 112, '2022-03-23'),
(3699, 165, '2022-03-23'),
(3700, 165, '2022-03-23'),
(3701, 163, '2022-03-23'),
(3702, 163, '2022-03-23'),
(3703, 162, '2022-03-24'),
(3704, 162, '2022-03-24'),
(3705, 162, '2022-03-24'),
(3706, 162, '2022-03-24'),
(3707, 178, '2022-03-24'),
(3708, 169, '2022-03-24'),
(3709, 128, '2022-03-24'),
(3710, 128, '2022-03-24'),
(3711, 175, '2022-03-24'),
(3712, 175, '2022-03-24'),
(3713, 175, '2022-03-24'),
(3714, 168, '2022-03-24'),
(3715, 175, '2022-03-24'),
(3716, 178, '2022-03-24'),
(3717, 178, '2022-03-24'),
(3718, 178, '2022-03-24'),
(3719, 169, '2022-03-24'),
(3720, 163, '2022-03-24'),
(3721, 163, '2022-03-24'),
(3722, 178, '2022-03-24'),
(3723, 178, '2022-03-24'),
(3724, 178, '2022-03-24'),
(3725, 170, '2022-03-24'),
(3726, 170, '2022-03-24'),
(3727, 170, '2022-03-24'),
(3728, 170, '2022-03-24'),
(3729, 164, '2022-03-24'),
(3730, 175, '2022-03-24'),
(3731, 175, '2022-03-24'),
(3732, 175, '2022-03-24'),
(3733, 162, '2022-03-24'),
(3734, 175, '2022-03-24'),
(3735, 178, '2022-03-24'),
(3736, 178, '2022-03-24'),
(3737, 175, '2022-03-24'),
(3738, 168, '2022-03-24'),
(3739, 168, '2022-03-24'),
(3740, 164, '2022-03-24'),
(3741, 160, '2022-03-24'),
(3742, 169, '2022-03-24'),
(3743, 169, '2022-03-24'),
(3744, 178, '2022-10-09'),
(3745, 178, '2022-10-10'),
(3746, 117, '2022-10-10'),
(3747, 175, '2022-10-12'),
(3748, 175, '2022-10-14'),
(3749, 159, '2022-10-17'),
(3750, 160, '2022-10-20'),
(3751, 111, '2022-10-20'),
(3752, 135, '2022-10-20'),
(3753, 107, '2022-10-20'),
(3754, 170, '2022-10-20'),
(3755, 164, '2022-10-20'),
(3756, 112, '2022-10-20'),
(3757, 144, '2022-10-20'),
(3758, 161, '2022-10-20'),
(3759, 163, '2022-10-20'),
(3760, 112, '2022-10-21'),
(3761, 107, '2022-10-22'),
(3762, 178, '2022-10-22'),
(3763, 169, '2022-10-22'),
(3764, 144, '2022-10-22'),
(3765, 165, '2022-10-22'),
(3766, 112, '2022-10-22'),
(3767, 111, '2022-10-22'),
(3768, 163, '2022-10-22'),
(3769, 107, '2022-10-23'),
(3770, 144, '2022-10-23'),
(3771, 107, '2022-10-23'),
(3772, 111, '2022-10-23'),
(3773, 135, '2022-10-23'),
(3774, 112, '2022-10-23'),
(3775, 163, '2022-10-23'),
(3776, 144, '2022-10-23'),
(3777, 107, '2022-10-24'),
(3778, 107, '2022-10-24'),
(3779, 109, '2022-10-24'),
(3780, 135, '2022-10-24'),
(3781, 144, '2022-10-24'),
(3782, 165, '2022-10-24'),
(3783, 112, '2022-10-24'),
(3784, 144, '2022-10-24'),
(3785, 107, '2022-10-24'),
(3786, 169, '2022-10-24'),
(3787, 135, '2022-10-25'),
(3788, 178, '2022-10-25'),
(3789, 112, '2022-10-25'),
(3790, 144, '2022-10-25'),
(3791, 107, '2022-10-25'),
(3792, 169, '2022-10-25'),
(3793, 111, '2022-10-25'),
(3794, 165, '2022-10-25'),
(3795, 163, '2022-10-25'),
(3796, 135, '2022-10-25'),
(3797, 111, '2022-10-25'),
(3798, 161, '2022-10-25'),
(3799, 109, '2022-10-25'),
(3800, 178, '2022-10-25'),
(3801, 170, '2022-10-25'),
(3802, 169, '2022-10-25'),
(3803, 168, '2022-10-25'),
(3804, 160, '2022-10-25');
INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(3805, 159, '2022-10-25'),
(3806, 165, '2022-10-25'),
(3807, 109, '2022-10-26'),
(3808, 111, '2022-10-26'),
(3809, 144, '2022-10-26'),
(3810, 178, '2022-10-26'),
(3811, 163, '2022-10-26'),
(3812, 107, '2022-10-26'),
(3813, 111, '2022-10-26'),
(3814, 112, '2022-10-26'),
(3815, 111, '2022-10-26'),
(3816, 144, '2022-10-26'),
(3817, 163, '2022-10-26'),
(3818, 109, '2022-10-26'),
(3819, 107, '2022-10-26'),
(3820, 107, '2022-10-26'),
(3821, 111, '2022-10-27'),
(3822, 163, '2022-10-27'),
(3823, 111, '2022-10-27'),
(3824, 144, '2022-10-27'),
(3825, 135, '2022-10-27'),
(3826, 111, '2022-10-27'),
(3827, 107, '2022-10-27'),
(3828, 163, '2022-10-27'),
(3829, 111, '2022-10-27'),
(3830, 111, '2022-10-28'),
(3831, 163, '2022-10-28'),
(3832, 111, '2022-10-28'),
(3833, 178, '2022-10-28'),
(3834, 169, '2022-10-28'),
(3835, 165, '2022-10-28'),
(3836, 135, '2022-10-28'),
(3837, 111, '2022-10-28'),
(3838, 109, '2022-10-28'),
(3839, 135, '2022-10-28'),
(3840, 169, '2022-10-29'),
(3841, 165, '2022-10-29'),
(3842, 178, '2022-10-29'),
(3843, 178, '2022-10-29'),
(3844, 165, '2022-10-29'),
(3845, 169, '2022-10-29'),
(3846, 178, '2022-10-30'),
(3847, 169, '2022-10-30'),
(3848, 165, '2022-10-30'),
(3849, 178, '2022-10-30'),
(3850, 169, '2022-10-30'),
(3851, 165, '2022-10-31'),
(3852, 178, '2022-10-31'),
(3853, 178, '2022-10-31'),
(3854, 165, '2022-10-31'),
(3855, 178, '2022-10-31'),
(3856, 169, '2022-10-31'),
(3857, 165, '2022-10-31'),
(3858, 178, '2022-11-01'),
(3859, 169, '2022-11-01'),
(3860, 121, '2022-11-03'),
(3861, 159, '2022-11-10'),
(3862, 162, '2022-11-10'),
(3863, 128, '2022-11-10'),
(3864, 144, '2022-11-11'),
(3865, 159, '2022-11-12'),
(3866, 162, '2022-11-12'),
(3867, 144, '2022-11-12'),
(3868, 159, '2022-11-12'),
(3869, 170, '2022-11-12'),
(3870, 160, '2022-11-13'),
(3871, 128, '2022-11-14'),
(3872, 360, '2022-11-15'),
(3873, 360, '2022-11-15'),
(3874, 360, '2022-11-15'),
(3875, 360, '2022-11-15'),
(3876, 360, '2022-11-15'),
(3877, 360, '2022-11-15'),
(3878, 170, '2022-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(32, 22, 26, 'Nice one', '2021-12-23 21:49:00', '2021-12-23 21:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `product_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 22, 169, 'rywtetu', 'tereuryureyu', '2022-03-05 23:44:04', '2022-03-05 23:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL,
  `order_amount` double NOT NULL DEFAULT '0',
  `reward` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `order_amount`, `reward`) VALUES
(13, 200, 15),
(14, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , categories , products , affilate_products , bulk_product_upload , product_discussion , set_coupons , customers , customer_deposits , vendors , vendor_subscriptions , vendor_verifications , vendor_subscription_plans , messages , general_settings , home_page_settings , menu_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`, `meta_description`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,SeaGenius', 'dsjhdeykfuyoty');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`, `language_id`) VALUES
(10, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019546si1.png', 1),
(11, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019563si1.png', 1),
(12, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019576si1.png', 1),
(13, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019589si1.png', 1),
(14, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019598si1.png', 1),
(15, 13, 'FREE SHIPPING', 'TEST', '1575875429brand1.png', 1),
(16, 13, 'PAYMENT METHOD', 'Secure Payment', '1575875467brand2.png', 1),
(17, 13, '30 DAY RETURNS', '30-Day Return Policy', '1575875488brand3.png', 1),
(18, 13, 'HELP CENTER', '24/7 Support System', '1575875506brand4.png', 1),
(19, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400756si1.png', 2),
(20, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400752si1.png', 2),
(21, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400746si1.png', 2),
(22, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400740si1.png', 2),
(23, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400734si1.png', 2),
(24, 13, 'الشحن مجانا', 'الشحن مجانا', '1576402404brand1.png', 2),
(25, 13, 'طريقة الدفع او السداد\r\n', 'دفع امن\r\n', '1576402421brand2.png', 2),
(26, 13, '30 يوم عوائد\r\n', '30 يوما عودة السياسة', '1576402428brand3.png', 2),
(27, 13, 'مركز المساعدة', '24/7 نظام الدعم', '1576402434brand4.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0, 1),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10, 1),
(5, 22, 'EMS', '8-15 Days', 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`, `language_id`) VALUES
(8, 'Best Accessories', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Gadget for everyday to make your life more interesting and easier even smarter.', '16', '#1f224f', 'slideInLeft', '16474305667png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio', 1),
(9, 'Fresh Foods', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Buy the best Organic Food for your Healthy Future and Family.', '16', '#1f224f', 'slideInDown', '164743050917png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio', 1),
(10, 'Best Furniture', '24', '#1f224f', 'slideInUp', 'Get Up to 40% Off', '60', '#1f224f', 'slideInDown', 'Furniture must have personality, as well as be beautiful and make your home Gorgeous.', '16', '#1f224f', 'slideInRight', '164743055618png.png', 'left', 'https://codecanyon.net/user/geniusocean/portfolio', 1),
(11, 'عالم الموضة', '24', '#1f224f', 'slideInUp', 'الحصول على ما يصل إلى 40 ٪ من', '60', '#1f224f', 'slideInDown', 'تسليط الضوء على شخصيتك وإلقاء نظرة على هذه الأزياء الرائعة والرائعة.', '16', '#1f224f', 'slideInLeft', '1639306988Slider3jpg.jpg', 'left', 'https://codecanyon.net/user/geniusocean/portfolio', 2),
(12, 'عالم الموضة', '24', '#1f224f', 'slideInUp', 'الحصول على ما يصل إلى 40 ٪ من', '60', '#1f224f', 'slideInDown', 'تسليط الضوء على شخصيتك وإلقاء نظرة على هذه الأزياء الرائعة والرائعة.', '16', '#1f224f', 'slideInDown', '1639307153slider4jpg.jpg', 'center', 'https://codecanyon.net/user/geniusocean/portfolio', 2),
(13, 'عالم الموضة', '24', '#1f224f', 'slideInUp', 'الحصول على ما يصل إلى 40 ٪ من', '60', '#1f224f', 'slideInDown', 'تسليط الضوء على شخصيتك وإلقاء نظرة على هذه الأزياء الرائعة والرائعة.', '16', '#1f224f', 'slideInRight', '1639307213slider5jpg.jpg', 'left', 'https://codecanyon.net/user/geniusocean/portfolio', 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://dev.geniusocean.net/xcart/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://dev.geniusocean.net/xcart/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(2, 0, 'https://twitter.com/', 'fab fa-twitter', 1),
(3, 0, 'https://linkedin.com/', 'fab fa-linkedin-in', 1),
(4, 0, 'https://www.google.com/', 'fab fa-google-plus-g', 1),
(5, 0, 'https://dribbble.com/', 'fab fa-dribbble', 1),
(6, 13, 'https://www.google.com/', 'fab fa-google', 1),
(7, 13, 'https://twitter.com/', 'fab fa-twitter', 1),
(8, 13, 'https://www.facebook.com/', 'fab fa-facebook', 1),
(9, 13, 'https://linkedin.com/', 'fab fa-linkedin', 1),
(10, 22, 'https://www.google.com/', 'fab fa-google', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `state` varchar(111) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `owner_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(2, 245, 'New Youk', 2, 1, 0),
(4, 246, 'Virginia', 4, 1, 0),
(5, 237, 'Sancta Sedes', 0, 1, 0),
(6, 246, 'Harare', 0, 1, 0),
(7, 245, 'Lusaka', 0, 1, 0),
(8, 244, 'Zinjibar', 0, 1, 0),
(9, 244, 'Mukalla', 0, 1, 0),
(10, 243, 'Smara', 0, 1, 0),
(11, 243, 'Hawza', 0, 1, 0),
(12, 242, 'Vaitupu', 0, 1, 0),
(13, 242, 'Leava', 0, 1, 0),
(14, 18, 'Dhaka', 0, 1, 0),
(15, 18, 'Comilla', 0, 1, 0),
(16, 1, 'Kabul', 0, 1, 0),
(17, 1, 'Kapisa', 0, 1, 0),
(18, 2, 'Fier', 0, 1, 0),
(19, 2, 'Korce', 0, 1, 0),
(20, 13, 'Victoria', 0, 1, 0),
(21, 13, 'Tasmania', 0, 1, 0),
(22, 14, 'Vienna', 0, 1, 0),
(23, 14, 'Styria', 0, 1, 0),
(24, 20, 'Brest Oblast', 0, 1, 0),
(25, 20, 'Vitebsk Oblast', 0, 1, 0),
(26, 100, 'Assam', 0, 1, 0),
(27, 100, 'Bihar', 0, 1, 0),
(28, 100, 'Bombay', 0, 1, 0),
(29, 183, 'Adygea', 0, 1, 0),
(30, 183, 'Buryatia', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `language_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`, `language_id`) VALUES
(2, 4, 'TELEVISION', 'television', 1, 1),
(3, 4, 'REFRIGERATOR', 'refrigerator', 1, 1),
(4, 4, 'WASHING MACHINE', 'washing-machine', 1, 1),
(5, 4, 'AIR CONDITIONERS', 'air-conditioners', 1, 1),
(6, 5, 'ACCESSORIES', 'accessories', 1, 1),
(7, 5, 'BAGS', 'bags', 1, 1),
(8, 5, 'CLOTHINGS', 'clothings', 1, 1),
(9, 5, 'SHOES', 'shoes', 1, 1),
(10, 7, 'APPLE', 'apple', 1, 1),
(11, 7, 'SAMSUNG', 'samsung', 1, 1),
(12, 7, 'LG', 'lg', 1, 1),
(13, 7, 'SONY', 'sony', 1, 1),
(14, 6, 'DSLR', 'dslr', 1, 1),
(15, 6, 'Camera Phone', 'camera-phone', 1, 1),
(16, 6, 'Action Camera', 'animation-camera', 1, 1),
(17, 6, 'Digital Camera', 'digital-camera', 1, 1),
(18, 20, 'التلفاز', 'television-arabic', 1, 2),
(19, 20, 'ثلاجة\r\n', 'refrigerator-arabic', 1, 2),
(20, 20, 'غسالة', 'washing-machine-arabic', 1, 2),
(21, 20, 'مكيفات الهواء\r\n', 'air-conditioners-arabic', 1, 2),
(22, 21, 'مستلزمات', 'accessories-arabic', 1, 2),
(23, 21, 'أكياس', 'bags-arabic', 1, 2),
(24, 21, 'ملابس\r\n', 'clothings-arabic', 1, 2),
(25, 21, 'أحذية', 'shoes-arabic', 1, 2),
(26, 23, 'تفاحة', 'apple-arabic', 1, 2),
(27, 23, 'سامسونج', 'samsung-arabic', 1, 2),
(28, 23, 'إل جي\r\n', 'lg-arabic', 1, 2),
(29, 23, 'سوني', 'sony-arabic', 1, 2),
(30, 22, 'الدي اس الر', 'dslr-arabic', 1, 2),
(31, 22, 'هاتف ذو كاميرا', 'camera-phone-arabic', 1, 2),
(32, 22, 'عمل الكاميرا\r\n', 'animation-camera-arabic', 1, 2),
(33, 22, 'كاميرا رقمية', 'digital-camera-arabic', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(8, 'shaon@gmail.com'),
(9, 'test@gmail.com'),
(10, 'shaoneel@gmail.com'),
(11, 'mojibur@gmail.com'),
(12, 'tretr@ter.d'),
(13, 'shaons@gmail.com'),
(14, 'shaon@gmail.coms'),
(15, 'junnuns@gmail.com'),
(16, 'admin@gmail.com'),
(17, 'user7@gmail.com'),
(18, 'farhadwts@gmail.com'),
(19, 'pronobsarker16@gmail.com'),
(20, 'shourav@gmail.com'),
(21, 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `reward_point` double DEFAULT '0',
  `reward_dolar` double NOT NULL DEFAULT '0',
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double DEFAULT '0',
  `currency_sign` blob,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(71, 13, 0, 0, 's0174260rM', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', 'Payment Deposit', 'plus', '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(72, 13, 0, 0, 'qZg7485l5Z', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', 'Payment Deposit', 'plus', '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(73, 13, 0, 0, 'Evg9026jfN', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:17:06', '2020-11-08 23:17:06'),
(74, 13, 0, 0, 'ouI90992fw', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:18:19', '2020-11-08 23:18:19'),
(75, 13, 0, 0, 'CdS9733uNm', 100, 0x24, 'USD', 1, 'Mobile Money', '23423423432432', 'Payment Deposit', 'plus', '2020-11-08 23:28:53', '2020-11-08 23:28:53'),
(76, 22, 0, 0, 'BoT8052pwK', 500, 0x24, 'USD', 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', 'Payment Deposit', 'plus', '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(77, 22, 0, 0, 'gEu8363Jvw', 137.8, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 21:59:23', '2020-11-18 21:59:23'),
(78, 22, 0, 0, 'POb0758IGl', 362.2, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 22:39:18', '2020-11-18 22:39:18'),
(79, 22, 0, 0, 'NeT2693yEB', 1000, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-18 23:11:33', '2020-11-18 23:11:33'),
(80, 22, 0, 0, 'Z5k2860vix', 412, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 23:14:20', '2020-11-18 23:14:20'),
(81, 22, 0, 0, 'o4G6881KtE', 6.6879357201938, 0x24, 'USD', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-15 22:08:01', '2021-08-15 22:08:01'),
(82, 22, 0, 0, '1kl4166N9X', 20, 0x24, '1', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:09:26', '2021-08-18 02:09:26'),
(83, 22, 0, 0, 'be74667HIy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:17:47', '2021-08-18 02:17:47'),
(84, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:14:48', '2021-08-18 05:14:48'),
(85, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:15:24', '2021-08-18 05:15:24'),
(86, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:19:12', '2021-08-18 05:19:12'),
(87, 22, 0, 0, 'wXy43082Oc', 30, 0x24, 'USD', 1, 'Paypal', '73C78619CF978200E', 'Payment Deposit', 'plus', '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(88, 31, 0, 0, 'vbO7527HMB', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:18:47', '2021-09-10 23:18:47'),
(89, 22, 0, 0, 'Mtc7543oEI', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:19:03', '2021-09-10 23:19:03'),
(90, 22, 0, 0, 'b2d7569b7D', 100, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'minus', '2021-09-10 23:19:29', '2021-09-10 23:19:29'),
(91, 22, 0, 0, '2sw73324zy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:28:52', '2021-09-11 21:28:52'),
(92, 22, 0, 0, 'sCV7503GHU', 92, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:31:43', '2021-09-11 21:31:43'),
(93, 22, 0, 0, '3i58366j66', 400455, 0x24, 'USD', 1, 'Paypal', '3KX550288A083143D', 'Payment Deposit', 'plus', '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(94, 22, 23, 46, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:22', '2021-12-12 15:44:22'),
(95, 22, 25, 50, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:36', '2021-12-12 15:44:36'),
(96, 36, 0, 0, 'QDY399707p', 1, 0x24, 'USD', 1, NULL, NULL, 'asdf dasdf', 'minus', '2021-12-12 17:13:17', '2021-12-12 17:13:17'),
(97, 22, 0, 0, 'GNM0761Vws', 100, 0x24, 'USD', 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', 'Payment Deposit', 'plus', '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(98, 22, 0, 0, 'lbU2350IW6', 100, 0x24, 'USD', 1, 'Paypal', '7DD5252950230501K', 'Payment Deposit', 'plus', '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(99, 22, 0, 0, '2cp2380HGJ', 100, 0x24, 'USD', 1, 'Molly Payment', 'tr_sFs2rBK6sT', 'Payment Deposit', 'plus', '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(100, 22, 0, 0, NULL, 100, 0x24, 'USD', 1, 'Authorize.net', '40079231225', 'Payment Deposit', 'plus', '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(101, 22, 0, 0, '1Jy25000Hr', 100, 0x24, 'USD', 1, 'Mercadopago', '1244588594', 'Payment Deposit', 'plus', '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(102, 22, 0, 0, 'ed13101X6A', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', 'Payment Deposit', 'plus', '2021-12-14 16:11:41', '2021-12-14 16:11:41'),
(103, 22, 0, 0, 'DzI31274jM', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', 'Payment Deposit', 'plus', '2021-12-14 16:12:07', '2021-12-14 16:12:07'),
(104, 22, 15, 22.5, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-14 17:21:23', '2021-12-14 17:21:23'),
(105, 22, 0, 0, 'sj38839CrG', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168951203256029', 'Payment Deposit', 'plus', '2021-12-14 17:47:19', '2021-12-14 17:47:19'),
(106, 22, 0, 0, 'tgr0114viQ', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', 'Payment Deposit', 'plus', '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(107, 22, 0, 0, 'xcS0235yIs', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168630103261249', 'Payment Deposit', 'plus', '2021-12-14 18:10:35', '2021-12-14 18:10:35'),
(108, 22, 0, 0, 'zpP0262WPs', 0.2747864222533, 0xe282a6, 'NGN', 363.919, 'Paystack', NULL, 'Payment Deposit', 'plus', '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(109, 22, 0, 0, 'n7w71945Cx', 50, 0x24, 'USD', 1, 'Flutterwave', '2699723', 'Payment Deposit', 'plus', '2021-12-15 02:33:14', '2021-12-15 02:33:14'),
(110, 22, 0, 0, '3Xm7707QgS', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', 'Payment Deposit', 'plus', '2021-12-15 02:41:47', '2021-12-15 02:41:47'),
(111, 22, 0, 0, '3r67988yvO', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', 'Payment Deposit', 'plus', '2021-12-15 02:46:28', '2021-12-15 02:46:28'),
(112, 22, 0, 0, 'mBS8309q0j', 110, 0xe0a7b3, 'BDT', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-12-15 02:51:49', '2021-12-15 02:51:49'),
(113, 22, 10, 15, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-22 11:49:34', '2021-12-22 11:49:34'),
(114, 22, 142, 213, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-27 19:59:45', '2021-12-27 19:59:45'),
(115, 22, 100, 150, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2022-02-16 00:06:29', '2022-02-16 00:06:29'),
(116, 22, 0, 0, 'Py338798q8', 100, 0x24, 'USD', 1, 'Paypal', '0RR72967LE978735V', 'Payment Deposit', 'plus', '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(117, 22, 0, 0, 'IsT600908v', 10, 0x24, 'USD', 1, 'Paypal', '00554153MA792844F', 'Payment Deposit', 'plus', '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(118, 22, 0, 0, 'Lou6145az7', 2000, 0x24, 'USD', 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', 'Payment Deposit', 'plus', '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(119, 22, 0, 0, NULL, 10, 0x24, 'USD', 1, 'Authorize.net', '40085654964', 'Payment Deposit', 'plus', '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(120, 22, 0, 0, '5ci68408AS', 400, 0x24, 'USD', 1, 'Mercadopago', '1247049741', 'Payment Deposit', 'plus', '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(121, 22, 0, 0, 'mN37049ONM', 400, 0x24, 'USD', 1, 'Flutterwave', '3244951', 'Payment Deposit', 'plus', '2022-03-24 11:44:09', '2022-03-24 11:44:09'),
(71, 13, 0, 0, 's0174260rM', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', 'Payment Deposit', 'plus', '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(72, 13, 0, 0, 'qZg7485l5Z', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', 'Payment Deposit', 'plus', '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(73, 13, 0, 0, 'Evg9026jfN', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:17:06', '2020-11-08 23:17:06'),
(74, 13, 0, 0, 'ouI90992fw', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:18:19', '2020-11-08 23:18:19'),
(75, 13, 0, 0, 'CdS9733uNm', 100, 0x24, 'USD', 1, 'Mobile Money', '23423423432432', 'Payment Deposit', 'plus', '2020-11-08 23:28:53', '2020-11-08 23:28:53'),
(76, 22, 0, 0, 'BoT8052pwK', 500, 0x24, 'USD', 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', 'Payment Deposit', 'plus', '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(77, 22, 0, 0, 'gEu8363Jvw', 137.8, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 21:59:23', '2020-11-18 21:59:23'),
(78, 22, 0, 0, 'POb0758IGl', 362.2, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 22:39:18', '2020-11-18 22:39:18'),
(79, 22, 0, 0, 'NeT2693yEB', 1000, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-18 23:11:33', '2020-11-18 23:11:33'),
(80, 22, 0, 0, 'Z5k2860vix', 412, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 23:14:20', '2020-11-18 23:14:20'),
(81, 22, 0, 0, 'o4G6881KtE', 6.6879357201938, 0x24, 'USD', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-15 22:08:01', '2021-08-15 22:08:01'),
(82, 22, 0, 0, '1kl4166N9X', 20, 0x24, '1', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:09:26', '2021-08-18 02:09:26'),
(83, 22, 0, 0, 'be74667HIy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:17:47', '2021-08-18 02:17:47'),
(84, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:14:48', '2021-08-18 05:14:48'),
(85, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:15:24', '2021-08-18 05:15:24'),
(86, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:19:12', '2021-08-18 05:19:12'),
(87, 22, 0, 0, 'wXy43082Oc', 30, 0x24, 'USD', 1, 'Paypal', '73C78619CF978200E', 'Payment Deposit', 'plus', '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(88, 31, 0, 0, 'vbO7527HMB', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:18:47', '2021-09-10 23:18:47'),
(89, 22, 0, 0, 'Mtc7543oEI', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:19:03', '2021-09-10 23:19:03'),
(90, 22, 0, 0, 'b2d7569b7D', 100, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'minus', '2021-09-10 23:19:29', '2021-09-10 23:19:29'),
(91, 22, 0, 0, '2sw73324zy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:28:52', '2021-09-11 21:28:52'),
(92, 22, 0, 0, 'sCV7503GHU', 92, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:31:43', '2021-09-11 21:31:43'),
(93, 22, 0, 0, '3i58366j66', 400455, 0x24, 'USD', 1, 'Paypal', '3KX550288A083143D', 'Payment Deposit', 'plus', '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(94, 22, 23, 46, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:22', '2021-12-12 15:44:22'),
(95, 22, 25, 50, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:36', '2021-12-12 15:44:36'),
(96, 36, 0, 0, 'QDY399707p', 1, 0x24, 'USD', 1, NULL, NULL, 'asdf dasdf', 'minus', '2021-12-12 17:13:17', '2021-12-12 17:13:17'),
(97, 22, 0, 0, 'GNM0761Vws', 100, 0x24, 'USD', 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', 'Payment Deposit', 'plus', '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(98, 22, 0, 0, 'lbU2350IW6', 100, 0x24, 'USD', 1, 'Paypal', '7DD5252950230501K', 'Payment Deposit', 'plus', '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(99, 22, 0, 0, '2cp2380HGJ', 100, 0x24, 'USD', 1, 'Molly Payment', 'tr_sFs2rBK6sT', 'Payment Deposit', 'plus', '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(100, 22, 0, 0, NULL, 100, 0x24, 'USD', 1, 'Authorize.net', '40079231225', 'Payment Deposit', 'plus', '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(101, 22, 0, 0, '1Jy25000Hr', 100, 0x24, 'USD', 1, 'Mercadopago', '1244588594', 'Payment Deposit', 'plus', '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(102, 22, 0, 0, 'ed13101X6A', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', 'Payment Deposit', 'plus', '2021-12-14 16:11:41', '2021-12-14 16:11:41'),
(103, 22, 0, 0, 'DzI31274jM', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', 'Payment Deposit', 'plus', '2021-12-14 16:12:07', '2021-12-14 16:12:07'),
(104, 22, 15, 22.5, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-14 17:21:23', '2021-12-14 17:21:23'),
(105, 22, 0, 0, 'sj38839CrG', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168951203256029', 'Payment Deposit', 'plus', '2021-12-14 17:47:19', '2021-12-14 17:47:19'),
(106, 22, 0, 0, 'tgr0114viQ', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', 'Payment Deposit', 'plus', '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(107, 22, 0, 0, 'xcS0235yIs', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168630103261249', 'Payment Deposit', 'plus', '2021-12-14 18:10:35', '2021-12-14 18:10:35'),
(108, 22, 0, 0, 'zpP0262WPs', 0.2747864222533, 0xe282a6, 'NGN', 363.919, 'Paystack', NULL, 'Payment Deposit', 'plus', '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(109, 22, 0, 0, 'n7w71945Cx', 50, 0x24, 'USD', 1, 'Flutterwave', '2699723', 'Payment Deposit', 'plus', '2021-12-15 02:33:14', '2021-12-15 02:33:14'),
(110, 22, 0, 0, '3Xm7707QgS', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', 'Payment Deposit', 'plus', '2021-12-15 02:41:47', '2021-12-15 02:41:47'),
(111, 22, 0, 0, '3r67988yvO', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', 'Payment Deposit', 'plus', '2021-12-15 02:46:28', '2021-12-15 02:46:28'),
(112, 22, 0, 0, 'mBS8309q0j', 110, 0xe0a7b3, 'BDT', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-12-15 02:51:49', '2021-12-15 02:51:49'),
(113, 22, 10, 15, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-22 11:49:34', '2021-12-22 11:49:34'),
(114, 22, 142, 213, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-27 19:59:45', '2021-12-27 19:59:45'),
(115, 22, 100, 150, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2022-02-16 00:06:29', '2022-02-16 00:06:29'),
(116, 22, 0, 0, 'Py338798q8', 100, 0x24, 'USD', 1, 'Paypal', '0RR72967LE978735V', 'Payment Deposit', 'plus', '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(117, 22, 0, 0, 'IsT600908v', 10, 0x24, 'USD', 1, 'Paypal', '00554153MA792844F', 'Payment Deposit', 'plus', '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(118, 22, 0, 0, 'Lou6145az7', 2000, 0x24, 'USD', 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', 'Payment Deposit', 'plus', '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(119, 22, 0, 0, NULL, 10, 0x24, 'USD', 1, 'Authorize.net', '40085654964', 'Payment Deposit', 'plus', '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(120, 22, 0, 0, '5ci68408AS', 400, 0x24, 'USD', 1, 'Mercadopago', '1247049741', 'Payment Deposit', 'plus', '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(121, 22, 0, 0, 'mN37049ONM', 400, 0x24, 'USD', 1, 'Flutterwave', '3244951', 'Payment Deposit', 'plus', '2022-03-24 11:44:09', '2022-03-24 11:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `reward` double NOT NULL DEFAULT '0',
  `email_token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `reward`, `email_token`) VALUES
(13, 'Vendor', NULL, '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'FZZT79vFSHr5AmVKwnXqxA0kngg49oMItd1ob9zlR6Z1eKsjgLz3hsdh9sZH', '2018-03-07 12:05:44', '2022-03-24 11:13:37', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4920.8, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 91152.459, '2023-11-11', 0, 699.79, 0, NULL),
(22, 'User', '16429180191556780563userpng.png', '1231', 'Test City', 'Algeria', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$SoiCG9/MlJIvAir5tUKAjevXO0N4P0qEUb27vFMc53uCWMfgd.FLm', '8HxvpJXHRgnVDSBzsRs7Fh88brqTUMYQyv2hxV31nD9Wxaxj04k5th4gcOnH', '2019-06-20 06:26:24', '2022-03-24 12:56:03', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4298.635, 'Test Shops', 'Saxena', '213213', 'fgfg', '123213', NULL, NULL, '1640498386Wonderland-AhoraMisma-Ajpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-04-02', 0, 395114.10139024, 205, NULL),
(35, 'showrav Hasan', NULL, NULL, NULL, NULL, NULL, 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', NULL, 'pronobsarker16@gmail.com', '$2y$10$K7Zq0OsXBmsRLugLtnqJX.cL.Cz69/7TWpJCNeBsCOuaTkLSXrQzK', NULL, '2021-10-19 00:27:40', '2022-02-15 22:35:31', 0, 0, '27a8c9cd108ba4301b6824aba325d2ce', 'Yes', 'ebcb396cecb581099407a110df63661b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'f65bfb1d7acffca1a7d8564518826565'),
(36, 'showrav Hasan', '16393041212048px-UnofficialJavaScriptlogo2svgpng.png', '23', 'Test City245', 'Afghanistan', 'tredt', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', 'srfgt', 'test1@gmail.com', '$2y$10$UtMvX5N0dNGL.yZ0G/1vIutziL6RG9QUd1.QDBXNKqH2Kan6fSsPC', NULL, '2021-10-19 00:31:25', '2021-12-12 17:19:13', 0, 0, '0b7e92e13eaf56dedb42479049f415b7', 'Yes', 'fdaaf550a789bf77a17eeb1507c2b4ec', 8.88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-12', 0, -1, 0, NULL),
(38, 'ssssss', NULL, NULL, NULL, NULL, NULL, 'ddsd', '0545858558', NULL, 's@s', '$2y$10$8TUIlWjLRf5OpRzo3vQtQOuwEgk6Y/hnb7AhaDDqNTEdDDhghK.mq', NULL, '2021-12-22 21:54:46', '2021-12-22 21:54:46', 0, 0, '72b14b2a830d555193f7f6fd7805c745', 'Yes', '65d78a6168e1c033f3a1aec480e9894e', 0, 'zakariaerf', 'ddd', '2', 'test', '066', 's@s', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(39, 'Okwor Uchenna Prosper', NULL, NULL, NULL, NULL, NULL, 'Lagos', '08156029288', NULL, 'ichiegroup@gmail.com', '$2y$10$H0dDyKbqK36GJp5s27bsBuWWgE93eDjmWNL5B5euoADA0PRHcaiWO', NULL, '2021-12-23 06:08:08', '2021-12-23 06:08:08', 0, 0, 'eedf5d020194d9fa9a4c3351c6c5fc4f', 'Yes', 'd7956d6e2d9b05d03a284ecb5aa220e9', 0, 'Best Tech Inc', 'Uchenna', '538552', '10 Good Street', '5173637', 'Hello', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(40, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil111saidi@gmail.com', '$2y$10$70zdJVqwhJhl.lslMbG1keA3ckotdHOW5K/2B1/PoPwaTaRroN50C', NULL, '2021-12-24 04:37:39', '2021-12-24 04:37:39', 0, 0, '374bdcb3d7e53ae11d9bb4aa13a0b5bb', 'Yes', '824c7685f05c9f1446d2fdfab08d6f44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(41, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil11saidi@gmail.com', '$2y$10$mZLl/cGiXVsQ3OWeFNTgZuVNc3JxYOH8jVSLETqHymyO1.C1DlKYC', NULL, '2021-12-24 04:40:08', '2021-12-24 04:40:08', 0, 0, 'd3e21b6f95d0b1b989ba9cbb9fa1c682', 'Yes', '469d650212fd97195be96f13490d7132', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(42, 'Oluwakayode Adetunji', NULL, NULL, NULL, NULL, NULL, 'Akute', 'Bsnenenenen', NULL, 'adetunjioluwakayode@gmail.com', '$2y$10$4V0prJ/2K64iNtIGVDKwaek/uUvxjpMbh0XOWhrFB57ZrvKrLchEu', NULL, '2021-12-25 21:59:23', '2021-12-25 21:59:23', 0, 0, '6c099f71d964b8bd229958ecb0231ae2', 'Yes', '0cc73a4e45b3a2ef4f7f15117b0c5360', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(43, 'Abir Ahmad', NULL, NULL, NULL, NULL, NULL, 'Dhaka', '01324328709', NULL, 'abir.ahmad007@gmail.com', '$2y$10$C6eFY4k4PTfByYbDp72sYumdcxrqNCHraOLrc7bte86UdyD4VpK46', NULL, '2021-12-26 17:24:45', '2021-12-26 17:24:45', 0, 0, '084cb036885439b9824cf2f73c0808e6', 'Yes', '3579e3920eb10843964414d7bbcb65bd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(44, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, '16103080@iubat.edu', '$2y$10$TVqsAD0oNwpCPXkb4hs.0eUloi87wIepxfyzKKfedUReDyXkDNLA6', NULL, '2022-02-15 23:27:04', '2022-02-15 23:27:04', 0, 0, '75495f47f7ece002b3dd44fec3256f72', 'Yes', 'f01df4a53899ac429064fc04c9bb79fe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(45, 'ambarish', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'ambarish@gmail.com', '$2y$10$qJgZsgQCXylgfop1Mw0E9e3cbOiuliIex4nxs3rYNarhlPMZeKmNW', NULL, '2022-02-20 23:35:10', '2022-02-20 23:35:10', 0, 0, 'f10477ef6511e0037f44edab0befd1dd', 'Yes', '04ebaffe1a58c39d7cbf6650ef2b22a6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(46, 'sourav', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'sourav@gmail.com', '$2y$10$Z0JFCmjCnw4DpvkdIfKz4eu9pQvvaYin6D4RmMmSwR03XOUpXVwj2', NULL, '2022-02-20 23:42:05', '2022-02-20 23:42:05', 0, 0, 'bfe211786bb6ba1d1b36e74ec458b772', 'Yes', 'c8c867523d788b9e87cee9a41f0f6b65', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(47, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'pronob@gmail.com', '$2y$10$L1XFtjYrwYMNQHqFAi1XYO7.cFdtyNT61Ic8pH7IfxpYU.rLR6eWy', NULL, '2022-03-09 06:05:13', '2022-03-09 06:05:13', 0, 0, '23d9dac630ed1533c423e96e26c5a30a', 'Yes', 'a1895b3701351b175b086d2abf37fd85', 0, 'pro store', 'pronob', '12345', 'comilla', '12345', 'This is my store', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(13, 'Vendor', NULL, '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'FZZT79vFSHr5AmVKwnXqxA0kngg49oMItd1ob9zlR6Z1eKsjgLz3hsdh9sZH', '2018-03-07 12:05:44', '2022-03-24 11:13:37', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4920.8, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 91152.459, '2023-11-11', 0, 699.79, 0, NULL),
(22, 'User', '16429180191556780563userpng.png', '1231', 'Test City', 'Algeria', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$SoiCG9/MlJIvAir5tUKAjevXO0N4P0qEUb27vFMc53uCWMfgd.FLm', '8HxvpJXHRgnVDSBzsRs7Fh88brqTUMYQyv2hxV31nD9Wxaxj04k5th4gcOnH', '2019-06-20 06:26:24', '2022-03-24 12:56:03', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4298.635, 'Test Shops', 'Saxena', '213213', 'fgfg', '123213', NULL, NULL, '1640498386Wonderland-AhoraMisma-Ajpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-04-02', 0, 395114.10139024, 205, NULL),
(35, 'showrav Hasan', NULL, NULL, NULL, NULL, NULL, 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', NULL, 'pronobsarker16@gmail.com', '$2y$10$K7Zq0OsXBmsRLugLtnqJX.cL.Cz69/7TWpJCNeBsCOuaTkLSXrQzK', NULL, '2021-10-19 00:27:40', '2022-02-15 22:35:31', 0, 0, '27a8c9cd108ba4301b6824aba325d2ce', 'Yes', 'ebcb396cecb581099407a110df63661b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'f65bfb1d7acffca1a7d8564518826565'),
(36, 'showrav Hasan', '16393041212048px-UnofficialJavaScriptlogo2svgpng.png', '23', 'Test City245', 'Afghanistan', 'tredt', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', 'srfgt', 'test1@gmail.com', '$2y$10$UtMvX5N0dNGL.yZ0G/1vIutziL6RG9QUd1.QDBXNKqH2Kan6fSsPC', NULL, '2021-10-19 00:31:25', '2021-12-12 17:19:13', 0, 0, '0b7e92e13eaf56dedb42479049f415b7', 'Yes', 'fdaaf550a789bf77a17eeb1507c2b4ec', 8.88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-12', 0, -1, 0, NULL),
(38, 'ssssss', NULL, NULL, NULL, NULL, NULL, 'ddsd', '0545858558', NULL, 's@s', '$2y$10$8TUIlWjLRf5OpRzo3vQtQOuwEgk6Y/hnb7AhaDDqNTEdDDhghK.mq', NULL, '2021-12-22 21:54:46', '2021-12-22 21:54:46', 0, 0, '72b14b2a830d555193f7f6fd7805c745', 'Yes', '65d78a6168e1c033f3a1aec480e9894e', 0, 'zakariaerf', 'ddd', '2', 'test', '066', 's@s', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(39, 'Okwor Uchenna Prosper', NULL, NULL, NULL, NULL, NULL, 'Lagos', '08156029288', NULL, 'ichiegroup@gmail.com', '$2y$10$H0dDyKbqK36GJp5s27bsBuWWgE93eDjmWNL5B5euoADA0PRHcaiWO', NULL, '2021-12-23 06:08:08', '2021-12-23 06:08:08', 0, 0, 'eedf5d020194d9fa9a4c3351c6c5fc4f', 'Yes', 'd7956d6e2d9b05d03a284ecb5aa220e9', 0, 'Best Tech Inc', 'Uchenna', '538552', '10 Good Street', '5173637', 'Hello', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(40, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil111saidi@gmail.com', '$2y$10$70zdJVqwhJhl.lslMbG1keA3ckotdHOW5K/2B1/PoPwaTaRroN50C', NULL, '2021-12-24 04:37:39', '2021-12-24 04:37:39', 0, 0, '374bdcb3d7e53ae11d9bb4aa13a0b5bb', 'Yes', '824c7685f05c9f1446d2fdfab08d6f44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(41, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil11saidi@gmail.com', '$2y$10$mZLl/cGiXVsQ3OWeFNTgZuVNc3JxYOH8jVSLETqHymyO1.C1DlKYC', NULL, '2021-12-24 04:40:08', '2021-12-24 04:40:08', 0, 0, 'd3e21b6f95d0b1b989ba9cbb9fa1c682', 'Yes', '469d650212fd97195be96f13490d7132', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(42, 'Oluwakayode Adetunji', NULL, NULL, NULL, NULL, NULL, 'Akute', 'Bsnenenenen', NULL, 'adetunjioluwakayode@gmail.com', '$2y$10$4V0prJ/2K64iNtIGVDKwaek/uUvxjpMbh0XOWhrFB57ZrvKrLchEu', NULL, '2021-12-25 21:59:23', '2021-12-25 21:59:23', 0, 0, '6c099f71d964b8bd229958ecb0231ae2', 'Yes', '0cc73a4e45b3a2ef4f7f15117b0c5360', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(43, 'Abir Ahmad', NULL, NULL, NULL, NULL, NULL, 'Dhaka', '01324328709', NULL, 'abir.ahmad007@gmail.com', '$2y$10$C6eFY4k4PTfByYbDp72sYumdcxrqNCHraOLrc7bte86UdyD4VpK46', NULL, '2021-12-26 17:24:45', '2021-12-26 17:24:45', 0, 0, '084cb036885439b9824cf2f73c0808e6', 'Yes', '3579e3920eb10843964414d7bbcb65bd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(44, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, '16103080@iubat.edu', '$2y$10$TVqsAD0oNwpCPXkb4hs.0eUloi87wIepxfyzKKfedUReDyXkDNLA6', NULL, '2022-02-15 23:27:04', '2022-02-15 23:27:04', 0, 0, '75495f47f7ece002b3dd44fec3256f72', 'Yes', 'f01df4a53899ac429064fc04c9bb79fe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(45, 'ambarish', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'ambarish@gmail.com', '$2y$10$qJgZsgQCXylgfop1Mw0E9e3cbOiuliIex4nxs3rYNarhlPMZeKmNW', NULL, '2022-02-20 23:35:10', '2022-02-20 23:35:10', 0, 0, 'f10477ef6511e0037f44edab0befd1dd', 'Yes', '04ebaffe1a58c39d7cbf6650ef2b22a6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(46, 'sourav', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'sourav@gmail.com', '$2y$10$Z0JFCmjCnw4DpvkdIfKz4eu9pQvvaYin6D4RmMmSwR03XOUpXVwj2', NULL, '2022-02-20 23:42:05', '2022-02-20 23:42:05', 0, 0, 'bfe211786bb6ba1d1b36e74ec458b772', 'Yes', 'c8c867523d788b9e87cee9a41f0f6b65', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(47, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'pronob@gmail.com', '$2y$10$L1XFtjYrwYMNQHqFAi1XYO7.cFdtyNT61Ic8pH7IfxpYU.rLR6eWy', NULL, '2022-03-09 06:05:13', '2022-03-09 06:05:13', 0, 0, '23d9dac630ed1533c423e96e26c5a30a', 'Yes', 'a1895b3701351b175b086d2abf37fd85', 0, 'pro store', 'pronob', '12345', 'comilla', '12345', 'This is my store', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(55, 13, 'GJIR1605427368', 1, '2020-11-15 02:02:53', '2021-12-27 05:11:43'),
(56, 13, 'DNJa1605437957', 1, '2020-11-15 04:59:19', '2021-12-27 05:11:43'),
(57, 13, 'jTnc1605497801', 1, '2020-11-15 21:36:43', '2021-12-27 05:11:43'),
(58, 13, 'aM3v1605497852', 1, '2020-11-15 21:37:32', '2021-12-27 05:11:43'),
(59, 13, 'fD7V1605505676', 1, '2020-11-15 23:47:56', '2021-12-27 05:11:43'),
(60, 13, 'XuOe1605758092', 1, '2020-11-18 21:54:53', '2021-12-27 05:11:43'),
(61, 13, 'exVe1605758363', 1, '2020-11-18 21:59:23', '2021-12-27 05:11:43'),
(62, 13, 'slPl1605760756', 1, '2020-11-18 22:39:18', '2021-12-27 05:11:43'),
(63, 13, 'ZYZm1605762860', 1, '2020-11-18 23:14:20', '2021-12-27 05:11:43'),
(64, 13, 'hvKS1605763356', 1, '2020-11-18 23:22:36', '2021-12-27 05:11:43'),
(65, 13, 'txAu1605773022', 1, '2020-11-19 02:03:46', '2021-12-27 05:11:43'),
(66, 13, 'Nyt21605775483', 1, '2020-11-19 02:44:58', '2021-12-27 05:11:43'),
(67, 13, 'znys1605775558', 1, '2020-11-19 02:47:01', '2021-12-27 05:11:43'),
(68, 13, '98fm1605775658', 1, '2020-11-19 02:47:38', '2021-12-27 05:11:43'),
(69, 13, 'KPma1605775845', 1, '2020-11-19 02:50:49', '2021-12-27 05:11:43'),
(70, 13, 'oXwG1605776045', 1, '2020-11-19 02:54:10', '2021-12-27 05:11:43'),
(71, 13, 'pXea1605776622', 1, '2020-11-19 03:03:45', '2021-12-27 05:11:43'),
(72, 13, 'gsh21606208213', 1, '2020-11-24 02:56:53', '2021-12-27 05:11:43'),
(73, 13, 'tmC11627449792', 1, '2021-07-27 23:23:12', '2021-12-27 05:11:43'),
(74, 13, 'LGWb1629106077', 1, '2021-08-16 03:28:23', '2021-12-27 05:11:43'),
(75, 13, 'hdvp1629117683', 1, '2021-08-16 06:41:49', '2021-12-27 05:11:43'),
(76, 13, 'l5WP1629118063', 1, '2021-08-16 06:47:59', '2021-12-27 05:11:43'),
(77, 13, 'oHtb1629178227', 1, '2021-08-16 23:30:48', '2021-12-27 05:11:43'),
(78, 13, 'NO5X1629178367', 1, '2021-08-16 23:33:05', '2021-12-27 05:11:43'),
(79, 13, 'd0Ho1629178447', 1, '2021-08-16 23:34:23', '2021-12-27 05:11:43'),
(80, 13, 'vzK51629178927', 1, '2021-08-16 23:42:28', '2021-12-27 05:11:43'),
(81, 13, 'oSDf1629179544', 1, '2021-08-16 23:52:54', '2021-12-27 05:11:43'),
(82, 13, 'uslT1629180266', 1, '2021-08-17 00:04:42', '2021-12-27 05:11:43'),
(83, 13, '6wsB1629180943', 1, '2021-08-17 00:16:00', '2021-12-27 05:11:43'),
(84, 13, 'R1HI1629181102', 1, '2021-08-17 00:18:38', '2021-12-27 05:11:43'),
(85, 13, 'fzkJ1629262135', 1, '2021-08-17 22:49:04', '2021-12-27 05:11:43'),
(86, 13, 'XQqY1629274145', 1, '2021-08-18 02:09:26', '2021-12-27 05:11:43'),
(87, 13, 'w6XM1629274666', 1, '2021-08-18 02:17:47', '2021-12-27 05:11:43'),
(88, 13, 'VC6q1631339529', 1, '2021-09-10 23:52:11', '2021-12-27 05:11:43'),
(89, 13, 'YoPn1631340268', 1, '2021-09-11 00:04:30', '2021-12-27 05:11:43'),
(90, 13, 'NTQz1631340864', 1, '2021-09-11 00:14:27', '2021-12-27 05:11:43'),
(91, 13, 'hGBt1631346683', 1, '2021-09-11 21:26:54', '2021-12-27 05:11:43'),
(92, 13, 'Vcth1631417332', 1, '2021-09-11 21:28:52', '2021-12-27 05:11:43'),
(93, 13, 'Qnid1631417500', 1, '2021-09-11 21:31:43', '2021-12-27 05:11:43'),
(94, 13, 'WZyT1631417894', 1, '2021-09-11 21:38:17', '2021-12-27 05:11:43'),
(95, 13, '9dTo1631418889', 1, '2021-09-11 21:54:51', '2021-12-27 05:11:43'),
(96, 13, 'JFJe1634625568', 1, '2021-10-19 00:39:31', '2021-12-27 05:11:43'),
(97, 13, 'c4KQ1639297122', 1, '2021-12-12 15:19:12', '2021-12-27 05:11:43'),
(98, 13, '4mCN1639297215', 1, '2021-12-12 15:20:29', '2021-12-27 05:11:43'),
(99, 13, 'MU131639297525', 1, '2021-12-12 15:25:27', '2021-12-27 05:11:43'),
(100, 13, 'DjDE1639297841', 1, '2021-12-12 15:30:42', '2021-12-27 05:11:43'),
(101, 13, 'f97J1639303759', 1, '2021-12-12 17:09:21', '2021-12-27 05:11:43'),
(102, 13, 'Xk9Z1639460878', 1, '2021-12-14 12:48:01', '2021-12-27 05:11:43'),
(103, 13, 'v86x1639464424', 1, '2021-12-14 13:47:07', '2021-12-27 05:11:43'),
(104, 13, 'rvvt1639478271', 1, '2021-12-14 17:37:54', '2021-12-27 05:11:43'),
(105, 13, 'qsyr1639555416', 1, '2021-12-15 15:03:38', '2021-12-27 05:11:43'),
(106, 13, 'lRjO1639555840', 1, '2021-12-15 15:10:54', '2021-12-27 05:11:43'),
(107, 13, 'VgYy1639558309', 1, '2021-12-15 02:51:49', '2021-12-27 05:11:43'),
(108, 13, '39MT1643876226', 0, '2022-02-03 02:17:06', '2022-02-03 02:17:06'),
(109, 13, 'L2Ft1643876229', 0, '2022-02-03 02:17:09', '2022-02-03 02:17:09'),
(110, 13, 'WYTj1643876231', 0, '2022-02-03 02:17:11', '2022-02-03 02:17:11'),
(111, 13, 'g4Z81643876231', 0, '2022-02-03 02:17:12', '2022-02-03 02:17:12'),
(112, 13, 'ODaE1643876236', 0, '2022-02-03 02:17:16', '2022-02-03 02:17:16'),
(113, 13, 'DqRq1643877049', 0, '2022-02-03 02:30:49', '2022-02-03 02:30:49'),
(114, 13, 'B6Nu1643877305', 0, '2022-02-03 02:35:07', '2022-02-03 02:35:07'),
(115, 13, 'nn7o1643877597', 0, '2022-02-03 02:40:00', '2022-02-03 02:40:00'),
(116, 13, 'tbpp1643879252', 0, '2022-02-03 03:07:59', '2022-02-03 03:07:59'),
(117, 13, 'IOLf1644384107', 0, '2022-02-08 23:22:01', '2022-02-08 23:22:01'),
(118, 13, 'L6y81644397444', 0, '2022-02-09 03:04:04', '2022-02-09 03:04:04'),
(119, 13, '7QiH1644398294', 0, '2022-02-09 03:20:54', '2022-02-09 03:20:54'),
(120, 13, 'hG5a1645422741', 0, '2022-02-20 23:52:27', '2022-02-20 23:52:27'),
(121, 13, 'gxMi1645943903', 0, '2022-02-27 00:38:23', '2022-02-27 00:38:23'),
(122, 13, 'rNaD1645943909', 0, '2022-02-27 00:38:29', '2022-02-27 00:38:29'),
(123, 13, 'NzKp1645944334', 0, '2022-02-27 00:45:34', '2022-02-27 00:45:34'),
(124, 13, '8Zwo1645950447', 0, '2022-02-27 02:27:27', '2022-02-27 02:27:27'),
(125, 13, 'u8An1645951432', 0, '2022-02-27 02:44:13', '2022-02-27 02:44:13'),
(126, 13, 'a1Jb1646020193', 0, '2022-02-27 21:49:56', '2022-02-27 21:49:56'),
(127, 13, 'ffB71646888596', 0, '2022-03-09 23:03:16', '2022-03-09 23:03:16'),
(128, 13, 'y0oH1648100767', 0, '2022-03-24 12:46:07', '2022-03-24 12:46:07'),
(129, 13, 'f8Lq1648100818', 0, '2022-03-24 12:46:58', '2022-03-24 12:46:58'),
(130, 13, 'm72i1648100865', 0, '2022-03-24 12:49:17', '2022-03-24 12:49:17'),
(131, 13, 'PIri1648101051', 0, '2022-03-24 12:50:52', '2022-03-24 12:50:52'),
(132, 13, 'BSSm1648101212', 0, '2022-03-24 12:53:34', '2022-03-24 12:53:34'),
(133, 13, 'cOrz1648101301', 0, '2022-03-24 12:55:03', '2022-03-24 12:55:03'),
(134, 13, 'WAnR1648101347', 0, '2022-03-24 12:56:03', '2022-03-24 12:56:03'),
(55, 13, 'GJIR1605427368', 1, '2020-11-15 02:02:53', '2021-12-27 05:11:43'),
(56, 13, 'DNJa1605437957', 1, '2020-11-15 04:59:19', '2021-12-27 05:11:43'),
(57, 13, 'jTnc1605497801', 1, '2020-11-15 21:36:43', '2021-12-27 05:11:43'),
(58, 13, 'aM3v1605497852', 1, '2020-11-15 21:37:32', '2021-12-27 05:11:43'),
(59, 13, 'fD7V1605505676', 1, '2020-11-15 23:47:56', '2021-12-27 05:11:43'),
(60, 13, 'XuOe1605758092', 1, '2020-11-18 21:54:53', '2021-12-27 05:11:43'),
(61, 13, 'exVe1605758363', 1, '2020-11-18 21:59:23', '2021-12-27 05:11:43'),
(62, 13, 'slPl1605760756', 1, '2020-11-18 22:39:18', '2021-12-27 05:11:43'),
(63, 13, 'ZYZm1605762860', 1, '2020-11-18 23:14:20', '2021-12-27 05:11:43'),
(64, 13, 'hvKS1605763356', 1, '2020-11-18 23:22:36', '2021-12-27 05:11:43'),
(65, 13, 'txAu1605773022', 1, '2020-11-19 02:03:46', '2021-12-27 05:11:43'),
(66, 13, 'Nyt21605775483', 1, '2020-11-19 02:44:58', '2021-12-27 05:11:43'),
(67, 13, 'znys1605775558', 1, '2020-11-19 02:47:01', '2021-12-27 05:11:43'),
(68, 13, '98fm1605775658', 1, '2020-11-19 02:47:38', '2021-12-27 05:11:43'),
(69, 13, 'KPma1605775845', 1, '2020-11-19 02:50:49', '2021-12-27 05:11:43'),
(70, 13, 'oXwG1605776045', 1, '2020-11-19 02:54:10', '2021-12-27 05:11:43'),
(71, 13, 'pXea1605776622', 1, '2020-11-19 03:03:45', '2021-12-27 05:11:43'),
(72, 13, 'gsh21606208213', 1, '2020-11-24 02:56:53', '2021-12-27 05:11:43'),
(73, 13, 'tmC11627449792', 1, '2021-07-27 23:23:12', '2021-12-27 05:11:43'),
(74, 13, 'LGWb1629106077', 1, '2021-08-16 03:28:23', '2021-12-27 05:11:43'),
(75, 13, 'hdvp1629117683', 1, '2021-08-16 06:41:49', '2021-12-27 05:11:43'),
(76, 13, 'l5WP1629118063', 1, '2021-08-16 06:47:59', '2021-12-27 05:11:43'),
(77, 13, 'oHtb1629178227', 1, '2021-08-16 23:30:48', '2021-12-27 05:11:43'),
(78, 13, 'NO5X1629178367', 1, '2021-08-16 23:33:05', '2021-12-27 05:11:43'),
(79, 13, 'd0Ho1629178447', 1, '2021-08-16 23:34:23', '2021-12-27 05:11:43'),
(80, 13, 'vzK51629178927', 1, '2021-08-16 23:42:28', '2021-12-27 05:11:43'),
(81, 13, 'oSDf1629179544', 1, '2021-08-16 23:52:54', '2021-12-27 05:11:43'),
(82, 13, 'uslT1629180266', 1, '2021-08-17 00:04:42', '2021-12-27 05:11:43'),
(83, 13, '6wsB1629180943', 1, '2021-08-17 00:16:00', '2021-12-27 05:11:43'),
(84, 13, 'R1HI1629181102', 1, '2021-08-17 00:18:38', '2021-12-27 05:11:43'),
(85, 13, 'fzkJ1629262135', 1, '2021-08-17 22:49:04', '2021-12-27 05:11:43'),
(86, 13, 'XQqY1629274145', 1, '2021-08-18 02:09:26', '2021-12-27 05:11:43'),
(87, 13, 'w6XM1629274666', 1, '2021-08-18 02:17:47', '2021-12-27 05:11:43'),
(88, 13, 'VC6q1631339529', 1, '2021-09-10 23:52:11', '2021-12-27 05:11:43'),
(89, 13, 'YoPn1631340268', 1, '2021-09-11 00:04:30', '2021-12-27 05:11:43'),
(90, 13, 'NTQz1631340864', 1, '2021-09-11 00:14:27', '2021-12-27 05:11:43'),
(91, 13, 'hGBt1631346683', 1, '2021-09-11 21:26:54', '2021-12-27 05:11:43'),
(92, 13, 'Vcth1631417332', 1, '2021-09-11 21:28:52', '2021-12-27 05:11:43'),
(93, 13, 'Qnid1631417500', 1, '2021-09-11 21:31:43', '2021-12-27 05:11:43'),
(94, 13, 'WZyT1631417894', 1, '2021-09-11 21:38:17', '2021-12-27 05:11:43'),
(95, 13, '9dTo1631418889', 1, '2021-09-11 21:54:51', '2021-12-27 05:11:43'),
(96, 13, 'JFJe1634625568', 1, '2021-10-19 00:39:31', '2021-12-27 05:11:43'),
(97, 13, 'c4KQ1639297122', 1, '2021-12-12 15:19:12', '2021-12-27 05:11:43'),
(98, 13, '4mCN1639297215', 1, '2021-12-12 15:20:29', '2021-12-27 05:11:43'),
(99, 13, 'MU131639297525', 1, '2021-12-12 15:25:27', '2021-12-27 05:11:43'),
(100, 13, 'DjDE1639297841', 1, '2021-12-12 15:30:42', '2021-12-27 05:11:43'),
(101, 13, 'f97J1639303759', 1, '2021-12-12 17:09:21', '2021-12-27 05:11:43'),
(102, 13, 'Xk9Z1639460878', 1, '2021-12-14 12:48:01', '2021-12-27 05:11:43'),
(103, 13, 'v86x1639464424', 1, '2021-12-14 13:47:07', '2021-12-27 05:11:43'),
(104, 13, 'rvvt1639478271', 1, '2021-12-14 17:37:54', '2021-12-27 05:11:43'),
(105, 13, 'qsyr1639555416', 1, '2021-12-15 15:03:38', '2021-12-27 05:11:43'),
(106, 13, 'lRjO1639555840', 1, '2021-12-15 15:10:54', '2021-12-27 05:11:43'),
(107, 13, 'VgYy1639558309', 1, '2021-12-15 02:51:49', '2021-12-27 05:11:43'),
(108, 13, '39MT1643876226', 0, '2022-02-03 02:17:06', '2022-02-03 02:17:06'),
(109, 13, 'L2Ft1643876229', 0, '2022-02-03 02:17:09', '2022-02-03 02:17:09'),
(110, 13, 'WYTj1643876231', 0, '2022-02-03 02:17:11', '2022-02-03 02:17:11'),
(111, 13, 'g4Z81643876231', 0, '2022-02-03 02:17:12', '2022-02-03 02:17:12'),
(112, 13, 'ODaE1643876236', 0, '2022-02-03 02:17:16', '2022-02-03 02:17:16'),
(113, 13, 'DqRq1643877049', 0, '2022-02-03 02:30:49', '2022-02-03 02:30:49'),
(114, 13, 'B6Nu1643877305', 0, '2022-02-03 02:35:07', '2022-02-03 02:35:07'),
(115, 13, 'nn7o1643877597', 0, '2022-02-03 02:40:00', '2022-02-03 02:40:00'),
(116, 13, 'tbpp1643879252', 0, '2022-02-03 03:07:59', '2022-02-03 03:07:59'),
(117, 13, 'IOLf1644384107', 0, '2022-02-08 23:22:01', '2022-02-08 23:22:01'),
(118, 13, 'L6y81644397444', 0, '2022-02-09 03:04:04', '2022-02-09 03:04:04'),
(119, 13, '7QiH1644398294', 0, '2022-02-09 03:20:54', '2022-02-09 03:20:54'),
(120, 13, 'hG5a1645422741', 0, '2022-02-20 23:52:27', '2022-02-20 23:52:27'),
(121, 13, 'gxMi1645943903', 0, '2022-02-27 00:38:23', '2022-02-27 00:38:23'),
(122, 13, 'rNaD1645943909', 0, '2022-02-27 00:38:29', '2022-02-27 00:38:29'),
(123, 13, 'NzKp1645944334', 0, '2022-02-27 00:45:34', '2022-02-27 00:45:34'),
(124, 13, '8Zwo1645950447', 0, '2022-02-27 02:27:27', '2022-02-27 02:27:27'),
(125, 13, 'u8An1645951432', 0, '2022-02-27 02:44:13', '2022-02-27 02:44:13'),
(126, 13, 'a1Jb1646020193', 0, '2022-02-27 21:49:56', '2022-02-27 21:49:56'),
(127, 13, 'ffB71646888596', 0, '2022-03-09 23:03:16', '2022-03-09 23:03:16'),
(128, 13, 'y0oH1648100767', 0, '2022-03-24 12:46:07', '2022-03-24 12:46:07'),
(129, 13, 'f8Lq1648100818', 0, '2022-03-24 12:46:58', '2022-03-24 12:46:58'),
(130, 13, 'm72i1648100865', 0, '2022-03-24 12:49:17', '2022-03-24 12:49:17'),
(131, 13, 'PIri1648101051', 0, '2022-03-24 12:50:52', '2022-03-24 12:50:52'),
(132, 13, 'BSSm1648101212', 0, '2022-03-24 12:53:34', '2022-03-24 12:53:34'),
(133, 13, 'cOrz1648101301', 0, '2022-03-24 12:55:03', '2022-03-24 12:55:03'),
(134, 13, 'WAnR1648101347', 0, '2022-03-24 12:56:03', '2022-03-24 12:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency_sign`, `currency_code`, `currency_value`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(84, 13, 5, 'Standard', '$', 'NGN', '1', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(151, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HlTPfJlIV5dN9n72gC9N5YJ', 'ch_1HlTPfJlIV5dN9n7dUMT6rYg', NULL, '2020-11-08 23:59:35', '2020-11-08 23:59:35', 1, NULL),
(152, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '6KD881488A1277949', NULL, NULL, '2020-11-09 00:00:38', '2020-11-09 00:00:38', 1, NULL),
(153, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '0R5121086C3908633', NULL, NULL, '2020-11-09 00:05:48', '2020-11-09 00:05:48', 1, NULL),
(154, 13, 5, 'Standard', '₦', 'NGN', '363.919', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '949523367', NULL, NULL, '2020-11-09 00:06:35', '2020-11-09 00:06:35', 1, NULL),
(155, 31, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-09 02:00:24', '2020-11-09 02:00:24', 1, NULL),
(156, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-10 22:48:58', '2020-11-10 22:48:58', 1, NULL),
(157, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:22:09', '2020-11-11 00:22:09', 1, NULL),
(158, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:23:42', '2020-11-11 00:23:42', 1, NULL),
(159, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_GujuVzTkBB', NULL, NULL, '2021-09-11 22:00:44', '2021-09-11 22:00:44', 1, NULL),
(160, 36, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-12-12 17:14:01', '2021-12-12 17:14:01', 1, NULL),
(161, 36, 6, 'Premium', '$', 'USD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2021-12-12 17:18:17', '2021-12-12 17:18:17', 1, NULL),
(162, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1097bc27', NULL, NULL, '2021-12-15 04:18:49', '2021-12-15 04:18:53', 1, NULL),
(163, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ub5JlIV5dN9n70iNV3Ozl', 'ch_3K6ub5JlIV5dN9n70DG2D5OL', NULL, '2021-12-15 04:20:32', '2021-12-15 04:20:32', 1, NULL),
(164, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ubRJlIV5dN9n70sRXFljG', 'ch_3K6ubRJlIV5dN9n70ckCrcKK', NULL, '2021-12-15 04:20:54', '2021-12-15 04:20:54', 1, NULL),
(165, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1968d008', NULL, NULL, '2021-12-15 04:21:10', '2021-12-15 04:21:13', 1, NULL),
(166, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c212dc758', NULL, NULL, '2021-12-15 04:23:14', '2021-12-15 04:23:18', 1, NULL),
(167, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c2fc010c8', NULL, NULL, '2021-12-15 04:27:08', '2021-12-15 04:27:11', 1, NULL),
(168, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c31b72a00', NULL, NULL, '2021-12-15 04:27:39', '2021-12-15 04:27:42', 1, NULL),
(169, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c510f4116', NULL, NULL, '2021-12-15 04:36:01', '2021-12-15 04:36:04', 1, NULL),
(170, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c58ea2995', NULL, NULL, '2021-12-15 04:38:06', '2021-12-15 04:38:09', 1, NULL),
(171, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c5cc649ce', NULL, NULL, '2021-12-15 04:39:08', '2021-12-15 04:39:11', 1, NULL),
(172, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_3KTjT0JlIV5dN9n70jJxJUry', 'ch_3KTjT0JlIV5dN9n70b9oPU0r', NULL, '2022-02-16 03:06:31', '2022-02-16 03:06:31', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', '1', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(151, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HlTPfJlIV5dN9n72gC9N5YJ', 'ch_1HlTPfJlIV5dN9n7dUMT6rYg', NULL, '2020-11-08 23:59:35', '2020-11-08 23:59:35', 1, NULL),
(152, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '6KD881488A1277949', NULL, NULL, '2020-11-09 00:00:38', '2020-11-09 00:00:38', 1, NULL),
(153, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '0R5121086C3908633', NULL, NULL, '2020-11-09 00:05:48', '2020-11-09 00:05:48', 1, NULL),
(154, 13, 5, 'Standard', '₦', 'NGN', '363.919', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '949523367', NULL, NULL, '2020-11-09 00:06:35', '2020-11-09 00:06:35', 1, NULL),
(155, 31, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-09 02:00:24', '2020-11-09 02:00:24', 1, NULL),
(156, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-10 22:48:58', '2020-11-10 22:48:58', 1, NULL),
(157, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:22:09', '2020-11-11 00:22:09', 1, NULL),
(158, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:23:42', '2020-11-11 00:23:42', 1, NULL),
(159, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_GujuVzTkBB', NULL, NULL, '2021-09-11 22:00:44', '2021-09-11 22:00:44', 1, NULL),
(160, 36, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-12-12 17:14:01', '2021-12-12 17:14:01', 1, NULL),
(161, 36, 6, 'Premium', '$', 'USD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2021-12-12 17:18:17', '2021-12-12 17:18:17', 1, NULL),
(162, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1097bc27', NULL, NULL, '2021-12-15 04:18:49', '2021-12-15 04:18:53', 1, NULL),
(163, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ub5JlIV5dN9n70iNV3Ozl', 'ch_3K6ub5JlIV5dN9n70DG2D5OL', NULL, '2021-12-15 04:20:32', '2021-12-15 04:20:32', 1, NULL),
(164, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ubRJlIV5dN9n70sRXFljG', 'ch_3K6ubRJlIV5dN9n70ckCrcKK', NULL, '2021-12-15 04:20:54', '2021-12-15 04:20:54', 1, NULL),
(165, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1968d008', NULL, NULL, '2021-12-15 04:21:10', '2021-12-15 04:21:13', 1, NULL),
(166, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c212dc758', NULL, NULL, '2021-12-15 04:23:14', '2021-12-15 04:23:18', 1, NULL),
(167, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c2fc010c8', NULL, NULL, '2021-12-15 04:27:08', '2021-12-15 04:27:11', 1, NULL),
(168, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c31b72a00', NULL, NULL, '2021-12-15 04:27:39', '2021-12-15 04:27:42', 1, NULL),
(169, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c510f4116', NULL, NULL, '2021-12-15 04:36:01', '2021-12-15 04:36:04', 1, NULL),
(170, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c58ea2995', NULL, NULL, '2021-12-15 04:38:06', '2021-12-15 04:38:09', 1, NULL),
(171, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c5cc649ce', NULL, NULL, '2021-12-15 04:39:08', '2021-12-15 04:39:11', 1, NULL),
(172, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_3KTjT0JlIV5dN9n70jJxJUry', 'ch_3KTjT0JlIV5dN9n70b9oPU0r', NULL, '2022-02-16 03:06:31', '2022-02-16 03:06:31', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`, `created_at`) VALUES
(263, 13, 209, 1, 110, 'Xk9Z1639460878', 'pending', '2021-12-14 05:48:01'),
(264, 13, 210, 1, 110, 'v86x1639464424', 'pending', '2021-12-14 06:47:07'),
(265, 13, 211, 1, 110, 'rvvt1639478271', 'pending', '2021-12-14 10:37:54'),
(266, 13, 212, 1, 110, 'qsyr1639555416', 'pending', '2021-12-15 08:03:38'),
(267, 13, 213, 1, 110, 'lRjO1639555840', 'pending', '2021-12-15 08:10:54'),
(268, 13, 214, 1, 110, 'VgYy1639558309', 'pending', '2021-12-15 08:51:49'),
(269, 13, 215, 1, 570, '39MT1643876226', 'pending', '2022-02-03 08:17:06'),
(270, 13, 216, 1, 570, 'L2Ft1643876229', 'pending', '2022-02-03 08:17:09'),
(271, 13, 217, 1, 570, 'WYTj1643876231', 'pending', '2022-02-03 08:17:11'),
(272, 13, 218, 1, 570, 'g4Z81643876231', 'pending', '2022-02-03 08:17:12'),
(273, 13, 219, 1, 570, 'ODaE1643876236', 'pending', '2022-02-03 08:17:16'),
(274, 13, 221, 1, 110, 'DqRq1643877049', 'pending', '2022-02-03 08:30:49'),
(275, 13, 222, 1, 110, 'B6Nu1643877305', 'pending', '2022-02-03 08:35:07'),
(276, 13, 223, 1, 110, 'nn7o1643877597', 'pending', '2022-02-03 08:40:00'),
(277, 13, 224, 1, 110, 'tbpp1643879252', 'pending', '2022-02-03 09:07:59'),
(278, 13, 225, 1, 110, 'IOLf1644384107', 'pending', '2022-02-09 05:22:01'),
(279, 13, 226, 1, 321, 'L6y81644397444', 'pending', '2022-02-09 09:04:04'),
(280, 13, 227, 1, 110, '7QiH1644398294', 'pending', '2022-02-09 09:20:54'),
(281, 13, 228, 1, 110, 'hG5a1645422741', 'pending', '2022-02-21 05:52:27'),
(282, 13, 229, 1, 110, 'gxMi1645943903', 'pending', '2022-02-27 06:38:23'),
(283, 13, 230, 1, 110, 'rNaD1645943909', 'pending', '2022-02-27 06:38:29'),
(284, 13, 231, 1, 110, 'NzKp1645944334', 'pending', '2022-02-27 06:45:34'),
(285, 13, 232, 1, 110, '8Zwo1645950447', 'pending', '2022-02-27 08:27:27'),
(286, 13, 233, 1, 110, 'u8An1645951432', 'pending', '2022-02-27 08:44:13'),
(287, 13, 234, 1, 110, 'a1Jb1646020193', 'pending', '2022-02-28 03:49:56'),
(288, 13, 239, 2, 220, 'ffB71646888596', 'pending', '2022-03-10 05:03:16'),
(289, 13, 240, 1, 111, 'y0oH1648100767', 'pending', '2022-03-24 05:46:07'),
(290, 13, 241, 1, 110, 'f8Lq1648100818', 'pending', '2022-03-24 05:46:58'),
(291, 13, 242, 1, 320, 'm72i1648100865', 'pending', '2022-03-24 05:49:17'),
(292, 13, 243, 1, 110, 'PIri1648101051', 'pending', '2022-03-24 05:50:52'),
(293, 13, 244, 1, 110, 'BSSm1648101212', 'pending', '2022-03-24 05:53:34'),
(294, 13, 245, 1, 110, 'cOrz1648101301', 'pending', '2022-03-24 05:55:03'),
(295, 13, 246, 1, 110, 'WAnR1648101347', 'pending', '2022-03-24 05:56:03'),
(263, 13, 209, 1, 110, 'Xk9Z1639460878', 'pending', '2021-12-14 05:48:01'),
(264, 13, 210, 1, 110, 'v86x1639464424', 'pending', '2021-12-14 06:47:07'),
(265, 13, 211, 1, 110, 'rvvt1639478271', 'pending', '2021-12-14 10:37:54'),
(266, 13, 212, 1, 110, 'qsyr1639555416', 'pending', '2021-12-15 08:03:38'),
(267, 13, 213, 1, 110, 'lRjO1639555840', 'pending', '2021-12-15 08:10:54'),
(268, 13, 214, 1, 110, 'VgYy1639558309', 'pending', '2021-12-15 08:51:49'),
(269, 13, 215, 1, 570, '39MT1643876226', 'pending', '2022-02-03 08:17:06'),
(270, 13, 216, 1, 570, 'L2Ft1643876229', 'pending', '2022-02-03 08:17:09'),
(271, 13, 217, 1, 570, 'WYTj1643876231', 'pending', '2022-02-03 08:17:11'),
(272, 13, 218, 1, 570, 'g4Z81643876231', 'pending', '2022-02-03 08:17:12'),
(273, 13, 219, 1, 570, 'ODaE1643876236', 'pending', '2022-02-03 08:17:16'),
(274, 13, 221, 1, 110, 'DqRq1643877049', 'pending', '2022-02-03 08:30:49'),
(275, 13, 222, 1, 110, 'B6Nu1643877305', 'pending', '2022-02-03 08:35:07'),
(276, 13, 223, 1, 110, 'nn7o1643877597', 'pending', '2022-02-03 08:40:00'),
(277, 13, 224, 1, 110, 'tbpp1643879252', 'pending', '2022-02-03 09:07:59'),
(278, 13, 225, 1, 110, 'IOLf1644384107', 'pending', '2022-02-09 05:22:01'),
(279, 13, 226, 1, 321, 'L6y81644397444', 'pending', '2022-02-09 09:04:04'),
(280, 13, 227, 1, 110, '7QiH1644398294', 'pending', '2022-02-09 09:20:54'),
(281, 13, 228, 1, 110, 'hG5a1645422741', 'pending', '2022-02-21 05:52:27'),
(282, 13, 229, 1, 110, 'gxMi1645943903', 'pending', '2022-02-27 06:38:23'),
(283, 13, 230, 1, 110, 'rNaD1645943909', 'pending', '2022-02-27 06:38:29'),
(284, 13, 231, 1, 110, 'NzKp1645944334', 'pending', '2022-02-27 06:45:34'),
(285, 13, 232, 1, 110, '8Zwo1645950447', 'pending', '2022-02-27 08:27:27'),
(286, 13, 233, 1, 110, 'u8An1645951432', 'pending', '2022-02-27 08:44:13'),
(287, 13, 234, 1, 110, 'a1Jb1646020193', 'pending', '2022-02-28 03:49:56'),
(288, 13, 239, 2, 220, 'ffB71646888596', 'pending', '2022-03-10 05:03:16'),
(289, 13, 240, 1, 111, 'y0oH1648100767', 'pending', '2022-03-24 05:46:07'),
(290, 13, 241, 1, 110, 'f8Lq1648100818', 'pending', '2022-03-24 05:46:58'),
(291, 13, 242, 1, 320, 'm72i1648100865', 'pending', '2022-03-24 05:49:17'),
(292, 13, 243, 1, 110, 'PIri1648101051', 'pending', '2022-03-24 05:50:52'),
(293, 13, 244, 1, 110, 'BSSm1648101212', 'pending', '2022-03-24 05:53:34'),
(294, 13, 245, 1, 110, 'cOrz1648101301', 'pending', '2022-03-24 05:55:03'),
(295, 13, 246, 1, 110, 'WAnR1648101347', 'pending', '2022-03-24 05:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(1, 13, '157096738015693932021.jpg,157096738015693932022.jpg', 'Declined', 'TEST', 0, NULL, '2019-10-13 05:49:40', '2021-12-12 17:19:55'),
(7, 13, NULL, NULL, NULL, 1, 'Check', '2021-10-19 21:32:20', '2021-10-19 21:32:20'),
(8, 36, NULL, NULL, NULL, 1, '324', '2021-12-12 17:18:25', '2021-12-12 17:18:25'),
(1, 13, '157096738015693932021.jpg,157096738015693932022.jpg', 'Declined', 'TEST', 0, NULL, '2019-10-13 05:49:40', '2021-12-12 17:19:55'),
(7, 13, NULL, NULL, NULL, 1, 'Check', '2021-10-19 21:32:20', '2021-10-19 21:32:20'),
(8, 36, NULL, NULL, NULL, 1, '324', '2021-12-12 17:18:25', '2021-12-12 17:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:43:25', '2020-11-16 10:44:32', 'rejected', 'vendor'),
(2, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:44:38', '2020-11-16 10:46:39', 'completed', 'vendor'),
(3, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:46:50', '2020-11-16 10:52:00', 'completed', 'vendor'),
(4, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:52:44', '2020-11-16 10:52:54', 'completed', 'vendor'),
(5, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:53:07', '2020-11-16 10:53:13', 'completed', 'vendor'),
(6, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:32', '2020-11-16 10:53:50', 'completed', 'user'),
(7, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:35', '2020-11-16 10:53:48', 'rejected', 'user'),
(8, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:37', '2020-11-16 10:53:45', 'completed', 'user'),
(9, 22, 'Paypal', 'amabarishdas1610@gmail.com', NULL, NULL, NULL, NULL, NULL, 'df', 33, 7, '2021-12-12 08:45:19', '2021-12-12 10:17:17', 'completed', 'user'),
(10, 22, 'Paypal', 'farhadwts@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, '2021-12-14 08:57:37', '2021-12-14 08:57:58', 'rejected', 'user'),
(11, 22, 'Payoneer', 'nn@g.com', NULL, NULL, NULL, NULL, NULL, NULL, 25.4, 6.6, '2021-12-25 22:14:16', '2021-12-25 22:14:16', 'pending', 'user'),
(12, 22, 'Paypal', 'shourav@gmail.com', NULL, NULL, NULL, NULL, NULL, 'fdgujrtyity', 945, 55, '2022-01-19 10:05:54', '2022-01-19 10:06:20', 'completed', 'user'),
(13, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sdfgasesesedfg', 375, 25, '2022-03-24 04:50:56', '2022-03-24 04:50:56', 'pending', 'user'),
(1, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:43:25', '2020-11-16 10:44:32', 'rejected', 'vendor'),
(2, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:44:38', '2020-11-16 10:46:39', 'completed', 'vendor'),
(3, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:46:50', '2020-11-16 10:52:00', 'completed', 'vendor'),
(4, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:52:44', '2020-11-16 10:52:54', 'completed', 'vendor'),
(5, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:53:07', '2020-11-16 10:53:13', 'completed', 'vendor'),
(6, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:32', '2020-11-16 10:53:50', 'completed', 'user'),
(7, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:35', '2020-11-16 10:53:48', 'rejected', 'user'),
(8, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:37', '2020-11-16 10:53:45', 'completed', 'user'),
(9, 22, 'Paypal', 'amabarishdas1610@gmail.com', NULL, NULL, NULL, NULL, NULL, 'df', 33, 7, '2021-12-12 08:45:19', '2021-12-12 10:17:17', 'completed', 'user'),
(10, 22, 'Paypal', 'farhadwts@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, '2021-12-14 08:57:37', '2021-12-14 08:57:58', 'rejected', 'user'),
(11, 22, 'Payoneer', 'nn@g.com', NULL, NULL, NULL, NULL, NULL, NULL, 25.4, 6.6, '2021-12-25 22:14:16', '2021-12-25 22:14:16', 'pending', 'user'),
(12, 22, 'Paypal', 'shourav@gmail.com', NULL, NULL, NULL, NULL, NULL, 'fdgujrtyity', 945, 55, '2022-01-19 10:05:54', '2022-01-19 10:06:20', 'completed', 'user'),
(13, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sdfgasesesedfg', 375, 25, '2022-03-24 04:50:56', '2022-03-24 04:50:56', 'pending', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3879;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
