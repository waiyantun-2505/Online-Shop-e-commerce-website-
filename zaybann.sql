-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 03:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaybann`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `created_at`, `updated_at`) VALUES
(13, 'image/brand/dell_logo.jpg', 'Dell', '2020-02-11 16:24:21', '2020-02-11 16:24:21'),
(14, 'image/brand/lenovo-logo.jpg', 'Lenovo', '2020-02-11 16:27:30', '2020-02-11 16:27:30'),
(15, 'image/brand/MSI_logo.jpg', 'MSI', '2020-02-11 16:28:34', '2020-02-11 16:28:34'),
(16, 'image/brand/razer_logo.jpg', 'Razer', '2020-02-11 16:30:02', '2020-02-11 16:30:02'),
(17, 'image/brand/acer_logo.jpg', 'Acer', '2020-02-11 16:32:52', '2020-02-11 16:32:52'),
(18, 'image/brand/apple_logo.jpg', 'Apple', '2020-02-11 16:35:09', '2020-02-11 16:35:09'),
(19, 'image/brand/samsung_logo.jpg', 'Samsung', '2020-02-11 16:35:58', '2020-02-11 16:35:58'),
(20, 'image/brand/mi_logo.jpg', 'MI', '2020-02-11 16:37:12', '2020-02-11 16:37:12'),
(21, 'image/brand/canon_logo.jpg', 'Canon', '2020-02-11 16:38:36', '2020-02-11 16:38:36'),
(22, 'image/brand/nikon_logo.jpg', 'Nikon', '2020-02-11 16:39:57', '2020-02-11 16:39:57'),
(23, 'image/brand/sony_logo.jpg', 'Sony', '2020-02-11 16:40:38', '2020-02-11 16:40:38'),
(24, 'image/brand/ASUS_brand.png', 'ASUS', '2020-02-12 05:20:05', '2020-02-12 05:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `photo`, `name`, `created_at`, `updated_at`) VALUES
(28, 'image/category/542551.jpg', 'Sport And Accessories', '2020-02-11 15:44:19', '2020-02-11 15:44:19'),
(29, 'image/category/774535.jpg', 'Electronic Devices', '2020-02-11 15:44:51', '2020-02-11 15:44:51'),
(30, 'image/category/823318.jpg', 'Watches', '2020-02-11 15:45:35', '2020-02-11 15:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `codeno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `brand_id`, `subcategory_id`) VALUES
(10, 'ZB_553042', 'Dell 14\" Latitude 7400 Laptop', 'image/item/548275.jpg', 1300000, 1200000, '<p>Intel Core i5-8265U | 8GB | 256GB</p>', 13, 6),
(11, 'ZB_775668', 'Lenovo 14\" ThinkPad X1 Carbon Laptop (Gen 7, Black Paint)', 'image/item/374973.jpg', 1700000, 1650000, '<p><span style=\"background-color: rgba(118, 158, 45, 0.15); color: rgb(51, 51, 51); font-family: OpenSans, &quot;Segoe UI&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 14px;\">14\" FHD 1920 x 1080 Low Power IPS</span><br></p>', 14, 6),
(12, 'ZB_626222', 'MSI 15.6\" GL65 Gaming Laptop', 'image/item/860380.jpg', 1200000, 1100000, '<ul class=\"list_22p_DbxsLr4MV-m3EOA_5T\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.0625rem; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap; display: flex;', 15, 6),
(13, 'ZB_517710', 'Iphone 11 Pro max (Midnight Green)', 'image/item/473833.png', 2400000, 2350000, '<p><span style=\"color: rgb(51, 51, 51); font-family: Nunito, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">6.5-inch Super Retina XDR OLED display</span><span style=\"hyphens: none; position: relative; font-size: 9.28572px; lin', 18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `voucherno` text COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `voucherno`, `qty`, `item_id`, `created_at`, `updated_at`) VALUES
(1, '1581447409', 7, 5, '2020-02-12 06:56:49', '2020-02-12 06:56:49'),
(2, '1581447409', 7, 7, '2020-02-12 06:56:49', '2020-02-12 06:56:49'),
(3, '1581465997', 7, 5, '2020-02-12 12:06:37', '2020-02-12 12:06:37'),
(4, '1581465997', 7, 7, '2020-02-12 12:06:37', '2020-02-12 12:06:37'),
(5, '1581468591', 7, 8, '2020-02-12 12:49:51', '2020-02-12 12:49:51'),
(6, '1581468593', 7, 8, '2020-02-12 12:49:53', '2020-02-12 12:49:53'),
(7, '1581468594', 7, 8, '2020-02-12 12:49:54', '2020-02-12 12:49:54'),
(8, '1581476880', 9, 8, '2020-02-12 15:08:00', '2020-02-12 15:08:00'),
(9, '1581560734', 7, 5, '2020-02-13 02:25:34', '2020-02-13 02:25:34'),
(10, '1581560734', 8, 7, '2020-02-13 02:25:34', '2020-02-13 02:25:34'),
(11, '1581570857', 1, 8, '2020-02-13 05:14:17', '2020-02-13 05:14:17'),
(12, '1581570858', 1, 8, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(13, '1581570858', 1, 8, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(14, '1581570858', 1, 8, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(15, '1581570859', 1, 8, '2020-02-13 05:14:19', '2020-02-13 05:14:19'),
(16, '1581570859', 1, 8, '2020-02-13 05:14:19', '2020-02-13 05:14:19'),
(17, '1581570861', 1, 8, '2020-02-13 05:14:21', '2020-02-13 05:14:21'),
(18, '1581570861', 1, 8, '2020-02-13 05:14:21', '2020-02-13 05:14:21'),
(19, '1581570862', 1, 8, '2020-02-13 05:14:22', '2020-02-13 05:14:22'),
(26, '1581574020', 9, 8, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(27, '1581574020', 11, 7, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(28, '1581574020', 13, 5, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(29, '1581574020', 9, 8, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(30, '1581574020', 11, 7, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(31, '1581574020', 13, 5, '2020-02-13 06:07:00', '2020-02-13 06:07:00'),
(32, '1581574077', 9, 8, '2020-02-13 06:07:57', '2020-02-13 06:07:57'),
(33, '1581574077', 11, 7, '2020-02-13 06:07:57', '2020-02-13 06:07:57'),
(34, '1581574077', 13, 5, '2020-02-13 06:07:57', '2020-02-13 06:07:57'),
(35, '1581574079', 9, 8, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(36, '1581574079', 11, 7, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(37, '1581574079', 13, 5, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(38, '1581574079', 9, 8, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(39, '1581574079', 11, 7, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(40, '1581574079', 13, 5, '2020-02-13 06:07:59', '2020-02-13 06:07:59'),
(41, '1581574080', 9, 8, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(42, '1581574080', 11, 7, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(43, '1581574080', 13, 5, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(44, '1581574080', 9, 8, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(45, '1581574080', 11, 7, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(46, '1581574080', 13, 5, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(47, '1581574080', 9, 8, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(48, '1581574080', 11, 7, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(49, '1581574080', 13, 5, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(50, '1581574141', 10, 8, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(51, '1581574141', 11, 7, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(52, '1581574141', 13, 5, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(53, '1581574141', 10, 8, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(54, '1581574141', 11, 7, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(55, '1581574141', 13, 5, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(56, '1581574142', 10, 8, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(57, '1581574142', 11, 7, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(58, '1581574142', 13, 5, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(59, '1581574142', 10, 8, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(60, '1581574142', 11, 7, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(61, '1581574142', 13, 5, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(62, '1581574172', 10, 8, '2020-02-13 06:09:32', '2020-02-13 06:09:32'),
(63, '1581574172', 11, 7, '2020-02-13 06:09:32', '2020-02-13 06:09:32'),
(64, '1581574172', 13, 5, '2020-02-13 06:09:32', '2020-02-13 06:09:32'),
(65, '1581574227', 10, 8, '2020-02-13 06:10:27', '2020-02-13 06:10:27'),
(66, '1581574227', 11, 7, '2020-02-13 06:10:27', '2020-02-13 06:10:27'),
(67, '1581574227', 13, 5, '2020-02-13 06:10:27', '2020-02-13 06:10:27'),
(68, '1581574260', 10, 8, '2020-02-13 06:11:00', '2020-02-13 06:11:00'),
(69, '1581574260', 11, 7, '2020-02-13 06:11:00', '2020-02-13 06:11:00'),
(70, '1581574260', 6, 5, '2020-02-13 06:11:00', '2020-02-13 06:11:00'),
(71, '1581532645', 10, 8, '2020-02-13 06:37:25', '2020-02-13 06:37:25'),
(72, '1581532645', 11, 7, '2020-02-13 06:37:25', '2020-02-13 06:37:25'),
(73, '1581532645', 6, 5, '2020-02-13 06:37:25', '2020-02-13 06:37:25'),
(74, '1581532662', 8, 8, '2020-02-13 06:37:42', '2020-02-13 06:37:42'),
(75, '1581532690', 1, 8, '2020-02-13 06:38:10', '2020-02-13 06:38:10'),
(76, '1581532825', 1, 8, '2020-02-13 06:40:25', '2020-02-13 06:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `voucherno` text COLLATE utf8_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `total` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `voucherno`, `orderdate`, `total`, `note`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1581447409', '2020-01-12', 183400000, '', 0, 2, '2020-02-12 06:56:49', '2020-02-12 06:56:49'),
(2, '1581465997', '2020-01-12', 183400000, '', 0, 2, '2020-02-12 12:06:37', '2020-02-12 12:06:37'),
(3, '1581468591', '2020-02-12', 5250000, '', 0, 2, '2020-02-12 12:49:51', '2020-02-12 12:49:51'),
(4, '1581468593', '2020-02-12', 5250000, '', 0, 2, '2020-02-12 12:49:53', '2020-02-12 12:49:53'),
(5, '1581468594', '2020-03-12', 5250000, '', 0, 2, '2020-02-12 12:49:54', '2020-02-12 12:49:54'),
(6, '1581476880', '2020-03-12', 6480000, '', 0, 2, '2020-02-12 15:08:00', '2020-02-12 15:08:00'),
(7, '1581560734', '2020-04-13', 184600000, '', 0, 2, '2020-02-13 02:25:34', '2020-02-13 02:25:34'),
(8, '1581570857', '2020-04-13', 720000, '', 0, 2, '2020-02-13 05:14:17', '2020-02-13 05:14:17'),
(9, '1581570858', '2020-05-13', 720000, '', 0, 2, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(10, '1581570858', '2020-05-13', 720000, '', 0, 2, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(11, '1581570858', '2020-06-13', 720000, '', 0, 2, '2020-02-13 05:14:18', '2020-02-13 05:14:18'),
(12, '1581570859', '2020-07-13', 720000, '', 0, 2, '2020-02-13 05:14:19', '2020-02-13 05:14:19'),
(13, '1581570859', '2020-07-13', 720000, '', 0, 2, '2020-02-13 05:14:19', '2020-02-13 05:14:19'),
(14, '1581570861', '2020-08-13', 720000, '', 0, 2, '2020-02-13 05:14:21', '2020-02-13 05:14:21'),
(15, '1581570861', '2020-08-13', 720000, '', 0, 2, '2020-02-13 05:14:21', '2020-02-13 05:14:21'),
(16, '1581570862', '2020-08-13', 720000, '', 0, 2, '2020-02-13 05:14:22', '2020-02-13 05:14:22'),
(17, '1581570862', '2020-08-13', 720000, '', 0, 2, '2020-02-13 05:14:22', '2020-02-13 05:14:22'),
(18, '1581570862', '2020-09-13', 720000, '', 0, 2, '2020-02-13 05:14:22', '2020-02-13 05:14:22'),
(19, '1581570863', '2020-09-13', 720000, '', 0, 2, '2020-02-13 05:14:23', '2020-02-13 05:14:23'),
(20, '1581574005', '2020-10-13', 344680000, '', 0, 2, '2020-02-13 06:06:45', '2020-02-13 06:06:45'),
(26, '1581574080', '2020-02-13', 344680000, '', 0, 2, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(27, '1581574080', '2020-02-13', 344680000, '', 0, 2, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(28, '1581574080', '2020-02-13', 344680000, '', 0, 2, '2020-02-13 06:08:00', '2020-02-13 06:08:00'),
(29, '1581574141', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(30, '1581574141', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:09:01', '2020-02-13 06:09:01'),
(31, '1581574142', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(32, '1581574142', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:09:02', '2020-02-13 06:09:02'),
(33, '1581574172', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:09:32', '2020-02-13 06:09:32'),
(34, '1581574227', '2020-02-13', 345400000, '', 0, 2, '2020-02-13 06:10:27', '2020-02-13 06:10:27'),
(35, '1581574260', '2020-02-13', 170400000, '', 0, 2, '2020-02-13 06:11:00', '2020-02-13 06:11:00'),
(36, '1581532645', '2020-02-13', 170400000, '', 0, 2, '2020-02-13 06:37:25', '2020-02-13 06:37:25'),
(37, '1581532662', '2020-02-13', 5760000, '', 0, 2, '2020-02-13 06:37:42', '2020-02-13 06:37:42'),
(38, '1581532690', '2020-02-13', 720000, '', 0, 2, '2020-02-13 06:38:10', '2020-02-13 06:38:10'),
(39, '1581532825', '2020-02-13', 720000, '', 0, 2, '2020-02-13 06:40:25', '2020-02-13 06:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-02-10 08:11:02', '2020-02-10 08:11:02'),
(2, 'Customer', '2020-02-10 08:11:02', '2020-02-10 08:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'Laptop', 29, '2020-02-11 15:46:12', '2020-02-11 15:46:12'),
(7, 'Mobile Phones', 29, '2020-02-11 15:46:42', '2020-02-11 15:46:42'),
(8, 'Tablets', 29, '2020-02-11 15:47:05', '2020-02-11 15:47:05'),
(9, 'Digital Cameras', 29, '2020-02-11 15:47:35', '2020-02-11 15:47:35'),
(10, 'Men\'s Watches', 30, '2020-02-11 15:48:09', '2020-02-11 15:48:09'),
(11, 'Women\'s Watches', 30, '2020-02-11 15:48:21', '2020-02-11 15:48:21'),
(12, 'Sport Outfits', 28, '2020-02-11 15:48:51', '2020-02-11 15:48:51'),
(13, 'Sport Shoes', 28, '2020-02-11 15:49:22', '2020-02-11 15:49:22'),
(14, 'Sport Bag', 28, '2020-02-11 15:49:49', '2020-02-11 15:49:49'),
(15, 'Smart Watches', 30, '2020-02-11 15:50:49', '2020-02-11 15:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created-at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `email`, `password`, `address`, `phone`, `role_id`, `created-at`, `updated_at`) VALUES
(1, 'Admin', '', 'admin@gmail.com', '412578', 'Yangon', 942099, 1, '2020-02-10 08:19:46', '2020-02-10 08:19:46'),
(2, 'waiyan', '', 'waiyan@gmail.com', 'password', 'Mandalay', 5127, 2, '2020-02-10 08:19:46', '2020-02-10 08:19:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
