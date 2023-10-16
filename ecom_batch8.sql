-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 10:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_batch8`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `featured_status`, `created_at`, `updated_at`) VALUES
(1, 'Perfume Center', 'Buy Authentic, Be Perfumed.We sell 100% Authentic Imported Perfumes.', 'upload/brand-images/brand2jpg.jpg', 0, '2023-08-26 08:48:14', '2023-09-04 11:30:08'),
(2, 'Bata', 'Summer new sneakers AIR MAX air cushion shoes comfortable shock-absorbing running', 'upload/brand-images/brand.jpg', 0, '2023-08-26 08:50:06', '2023-09-01 11:41:20'),
(5, 'Joypuri', 'This is joypuri dress', 'upload/brand-images/brand2.png', 0, '2023-08-26 08:57:15', '2023-09-01 11:43:06'),
(6, 'Patchee', 'We takes pride in providing the highest quality of trendiest bags from around the world', 'upload/brand-images/brandshoe.jpg', 0, '2023-08-26 12:29:48', '2023-09-01 12:21:05'),
(7, 'BD Bag Collection', 'A Variety of Styles to Choose', 'upload/brand-images/brand4.jpg', 0, '2023-09-06 12:02:04', '2023-09-06 12:02:43'),
(8, 'GoodyBro', 'Introducing GoodyBro Chinos: Elevate Your Style with Timeless Comfort\r\n\r\nElevate your wardrobe with the latest addition from GoodyBro – our impeccably crafted Chinos in three stunning variants: Black, Gold, and Olive. Designed to effortlessly blend style and comfort, these chinos are the perfect choice for the modern individual who demands both versatility and sophistication.', 'upload/brand-images/brand5.png', 0, '2023-09-06 13:23:29', '2023-09-06 13:27:04'),
(9, 'Closet', 'This is closet brand', 'upload/brand-images/brand3.jpg', 0, '2023-09-07 01:42:52', '2023-09-07 01:42:52'),
(10, 'Watch Zone', 'This is watch zone brand description', 'upload/brand-images/brandwatch.jpg', 0, '2023-09-26 03:42:27', '2023-09-26 03:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `featured_status`, `created_at`, `updated_at`) VALUES
(2, 'Women', 'This is women clothing', 'upload/category-images/category2.jpg', 0, '2023-08-23 09:57:06', '2023-09-04 23:40:24'),
(3, 'shoes', 'North Star VALERIO Casual Lace-Up Sneaker For Women', 'upload/category-images/showes.jpg', 0, '2023-08-25 06:42:10', '2023-09-04 10:33:00'),
(4, 'Perfume', 'This is perfume category', 'upload/category-images/category.jpg', 0, '2023-08-25 11:42:06', '2023-09-04 11:09:02'),
(6, 'bag', 'This is bag category', 'upload/category-images/bag2.jpg', 0, '2023-08-28 12:06:57', '2023-09-01 12:17:12'),
(7, 'Man Fashion', 'this i s man fashion', 'upload/category-images/category4.jpg', 0, '2023-09-06 13:08:50', '2023-09-06 13:09:28'),
(8, 'baby', 'sdfdsg', 'upload/category-images/p2.jpg', 0, '2023-09-11 08:26:41', '2023-09-11 08:26:41'),
(9, 'Watch', 'This is watch category', 'upload/category-images/watch.jpg', 0, '2023-09-26 03:15:55', '2023-09-26 03:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `nid`, `address`, `date_of_birth`, `blood_group`, `image`, `created_at`, `updated_at`) VALUES
(6, 'sadika', 'sadika@gmail.com', '01550554487', '$2y$10$mcUiBMZ2n8KCNjAemI8wUezclfAXi6.66JmLbvX8LFkyBgAHbQoMi', NULL, NULL, NULL, NULL, NULL, '2023-09-13 09:52:45', '2023-09-13 09:52:45'),
(19, 'Toma', 'toma@gmail.com', '0132459077', '$2y$10$WPzDsUKzXLFaKxmN827sQOVBARFpjxCwbVGXsMehwLlxu8yt8HpES', NULL, NULL, NULL, NULL, NULL, '2023-09-18 04:13:19', '2023-09-18 04:13:19');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_18_190326_create_sessions_table', 1),
(7, '2023_08_23_091416_create_categories_table', 2),
(8, '2023_08_25_170308_create_sub_categories_table', 3),
(9, '2023_08_26_123025_create_brands_table', 4),
(10, '2023_08_28_181247_create_units_table', 5),
(11, '2023_08_31_071053_create_products_table', 6),
(12, '2023_09_01_180250_create_other_images_table', 6),
(13, '2023_09_13_101338_create_orders_table', 7),
(14, '2023_09_13_101411_create_customers_table', 7),
(15, '2023_09_13_101439_create_order_details_table', 7),
(16, '2023_09_20_152531_add_courier_id_colum_to_orders_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_amount` varchar(255) NOT NULL DEFAULT '0',
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `payment_method`, `payment_status`, `payment_amount`, `currency`, `transction_id`, `created_at`, `updated_at`, `courier_id`) VALUES
(1, 5, 7345, 945, 100, '2023-09-13', '1694563200', 'Pending', 'mugdha', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-09-13 09:50:57', '2023-09-13 09:50:57', 0),
(2, 6, 7345, 945, 100, '2023-09-13', '1694563200', 'Pending', 'mugda', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-09-13 09:52:45', '2023-09-13 09:52:45', 0),
(3, 6, 7345, 945, 100, '2023-09-13', '1694563200', 'Pending', 'mugda', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-09-13 11:43:05', '2023-09-13 11:43:05', 0),
(4, 6, 2170, 270, 100, '2023-09-17', '1694908800', 'Pending', 'nadfd', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-09-17 02:39:34', '2023-09-17 02:39:34', 0),
(6, 19, 100, 0, 100, '2023-09-23', '1695427200', 'Pending', 'japan', 'Pending', 'cash', 'Pending', '0', 'BDT', NULL, '2023-09-23 03:14:30', '2023-09-23 03:14:30', 0),
(8, 19, 560, 60, 100, '2023-09-23', '1695427200', 'Pending', 'jlads', 'Pending', 'online', 'Pending', '0', 'BDT', '650f2a4004bce', '2023-09-23 12:11:12', '2023-09-23 12:11:12', 0),
(9, 19, 100, 0, 100, '2023-09-23', '1695427200', 'Pending', 'gfsfd', 'Pending', 'online', 'Pending', '0', 'BDT', '650f2a4a9ed1c', '2023-09-23 12:11:22', '2023-09-23 12:11:22', 0),
(10, 19, 100, 0, 100, '2023-09-23', '1695427200', 'Pending', 'nondipara', 'Pending', 'online', 'Pending', '0', 'BDT', '650f2a76a5133', '2023-09-23 12:12:06', '2023-09-23 12:12:06', 0),
(11, 19, 100, 0, 100, '2023-09-23', '1695427200', 'Pending', 'fgsdf', 'Pending', 'online', 'Pending', '0', 'BDT', '650f369bbcc21', '2023-09-23 13:03:55', '2023-09-23 13:03:55', 0),
(13, 19, 100, 0, 100, '2023-09-23', '1695427200', 'Pending', 'gfdhf', 'Pending', 'online', 'Pending', '0', 'BDT', '650f3a03da578', '2023-09-23 13:18:27', '2023-09-23 13:18:27', 0),
(14, 19, 560, 60, 100, '2023-09-23', '1695427200', 'Pending', 'fdads', 'Pending', 'online', 'Pending', '0', 'BDT', '650f43007bd45', '2023-09-23 13:56:48', '2023-09-23 13:56:48', 0),
(15, 6, 560, 60, 100, '2023-09-23', '1695427200', 'Cancel', 'fsfd', 'Cancel', 'online', 'Cancel', '0', 'BDT', '650f43fd3cd3d', '2023-09-23 14:01:01', '2023-09-27 08:18:59', 1),
(16, 6, 1825, 225, 100, '2023-09-25', '1695600000', 'Complete', 'feni', 'Complete', 'online', 'Complete', '1825', 'BDT', '65119590432a6', '2023-09-25 08:13:36', '2023-09-27 07:01:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '3 peacies', '1500', '3', '2023-09-13 09:50:57', '2023-09-13 09:50:57'),
(2, 1, 5, 'North Star', '1800', '1', '2023-09-13 09:50:57', '2023-09-13 09:50:57'),
(3, 2, 1, '3 peacies', '1500', '3', '2023-09-13 09:52:45', '2023-09-13 09:52:45'),
(4, 2, 5, 'North Star', '1800', '1', '2023-09-13 09:52:45', '2023-09-13 09:52:45'),
(5, 3, 1, '3 peacies', '1500', '3', '2023-09-13 11:43:05', '2023-09-13 11:43:05'),
(6, 3, 5, 'North Star', '1800', '1', '2023-09-13 11:43:05', '2023-09-13 11:43:05'),
(7, 4, 2, 'GUCCI INTENSE OUD', '1800', '1', '2023-09-17 02:39:34', '2023-09-17 02:39:34'),
(9, 8, 6, 'Premium Ladies Wallet', '400', '1', '2023-09-23 12:11:12', '2023-09-23 12:11:12'),
(10, 14, 6, 'Premium Ladies Wallet', '400', '1', '2023-09-23 13:56:48', '2023-09-23 13:56:48'),
(11, 15, 6, 'Premium Ladies Wallet', '400', '1', '2023-09-23 14:01:01', '2023-09-23 14:01:01'),
(12, 16, 1, '3 peacies', '1500', '1', '2023-09-25 08:13:36', '2023-09-25 08:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(5, 2, 'upload/product-other-images/perfume3.jpg', '2023-09-04 11:49:17', '2023-09-04 11:49:17'),
(6, 2, 'upload/product-other-images/perfume4.jpg', '2023-09-04 11:49:17', '2023-09-04 11:49:17'),
(7, 2, 'upload/product-other-images/perfume5.jpg', '2023-09-04 11:49:17', '2023-09-04 11:49:17'),
(8, 1, 'upload/product-other-images/kamij3.jpg', '2023-09-05 00:29:12', '2023-09-05 00:29:12'),
(9, 1, 'upload/product-other-images/kamij4.jpg', '2023-09-05 00:29:12', '2023-09-05 00:29:12'),
(10, 1, 'upload/product-other-images/kamij5.jpg', '2023-09-05 00:29:12', '2023-09-05 00:29:12'),
(11, 3, 'upload/product-other-images/sneker5jpg.jpg', '2023-09-05 01:49:54', '2023-09-05 01:49:54'),
(12, 3, 'upload/product-other-images/sneker7.jpg', '2023-09-05 01:49:54', '2023-09-05 01:49:54'),
(15, 5, 'upload/product-other-images/sneakers.jpg', '2023-09-06 10:51:29', '2023-09-06 10:51:29'),
(16, 5, 'upload/product-other-images/sneker5jpg.jpg', '2023-09-06 10:51:29', '2023-09-06 10:51:29'),
(17, 5, 'upload/product-other-images/sneker7.jpg', '2023-09-06 10:51:29', '2023-09-06 10:51:29'),
(18, 6, 'upload/product-other-images/walet.jpg', '2023-09-06 11:32:25', '2023-09-06 11:32:25'),
(19, 6, 'upload/product-other-images/walet2.jpg', '2023-09-06 11:32:25', '2023-09-06 11:32:25'),
(20, 6, 'upload/product-other-images/walet3.jpg', '2023-09-06 11:32:25', '2023-09-06 11:32:25'),
(21, 6, 'upload/product-other-images/walet4.jpg', '2023-09-06 11:32:25', '2023-09-06 11:32:25'),
(22, 7, 'upload/product-other-images/tshart2.jpg', '2023-09-06 13:49:09', '2023-09-06 13:49:09'),
(23, 7, 'upload/product-other-images/tshart3.jpg', '2023-09-06 13:49:09', '2023-09-06 13:49:09'),
(24, 7, 'upload/product-other-images/tshart4.jpg', '2023-09-06 13:49:09', '2023-09-06 13:49:09'),
(25, 7, 'upload/product-other-images/tshart5.jpg', '2023-09-06 13:49:09', '2023-09-06 13:49:09'),
(26, 8, 'upload/product-other-images/sari2.jpg', '2023-09-07 01:52:35', '2023-09-07 01:52:35'),
(27, 8, 'upload/product-other-images/sari3.jpg', '2023-09-07 01:52:35', '2023-09-07 01:52:35'),
(28, 8, 'upload/product-other-images/sari4.jpg', '2023-09-07 01:52:35', '2023-09-07 01:52:35'),
(29, 9, 'upload/product-other-images/watch6.jpg', '2023-09-26 03:50:48', '2023-09-26 03:50:48'),
(30, 9, 'upload/product-other-images/watch7.jpg', '2023-09-26 03:50:48', '2023-09-26 03:50:48');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `trending_status` tinyint(4) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `image`, `trending_status`, `sales_count`, `hit_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 5, 1, '3 peacies', '12', 2000, 1500, 15, 'lSalwar,  dupatta contrast color nd pattern', '<ul style=\"margin-bottom: 25px; margin-left: 30px; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Harmonia Sans&quot;, sans-serif; font-size: 20px; letter-spacing: 0.5px;\"><li style=\"margin-bottom: 0px;\">We\'ve wrapped up our Cilla Broderie Anglaise and are waiting for you to put the bow on it.</li><li style=\"margin-bottom: 0px;\">This sweet, summery style fashions timeless broderie anglaise detailing in a flattering dress with a pair of cute cap sleeves</li><li style=\"margin-bottom: 0px;\">Practical side pockets and a self tie belt.</li><li style=\"margin-bottom: 0px;\">There\'s no doubting that this dress is set to be a fresh and feminine favourite for the season.</li><li style=\"margin-bottom: 0px;\">Dress</li><li style=\"margin-bottom: 0px;\">Fabric: cotton, broderie anglais, blue</li><li style=\"margin-bottom: 0px;\">Cap sleeves</li><li style=\"margin-bottom: 0px;\">Square neckline</li><li style=\"margin-bottom: 0px;\">Side pockets</li><li style=\"margin-bottom: 0px;\">Self-tie belt</li><li style=\"margin-bottom: 0px;\">Back zip fastening</li><li style=\"margin-bottom: 0px;\">Lined</li><li style=\"margin-bottom: 0px;\"><span style=\"font-weight: 700;\">Colour:&nbsp;</span>BLUE<br></li></ul><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; color: rgb(0, 0, 0); font-family: &quot;Harmonia Sans&quot;, sans-serif; font-size: 20px; letter-spacing: 0.5px;\"><span style=\"font-weight: 700;\">Fit:</span></p><ul style=\"margin-bottom: 25px; margin-left: 30px; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Harmonia Sans&quot;, sans-serif; font-size: 20px; letter-spacing: 0.5px;\"><li style=\"margin-bottom: 0px;\">Size 10 length is 108cm</li><li style=\"margin-bottom: 0px;\">Our model is 5ft10\" and wearing a UK Size 8</li></ul><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; color: rgb(0, 0, 0); font-family: &quot;Harmonia Sans&quot;, sans-serif; font-size: 20px; letter-spacing: 0.5px;\"><span style=\"font-weight: 700;\">Care &amp; Composition:</span></p><ul style=\"margin-bottom: 25px; margin-left: 30px; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Harmonia Sans&quot;, sans-serif; font-size: 20px; letter-spacing: 0.5px;\"><li style=\"margin-bottom: 0px;\">100% Cotton</li><li style=\"margin-bottom: 0px;\">Machine wash cold</li><li style=\"margin-bottom: 0px;\">Wash &amp; dry inside out</li><li style=\"margin-bottom: 0px;\">Wash with similar colours</li><li style=\"margin-bottom: 0px;\">Dry away from direct sunlight</li><li style=\"margin-bottom: 0px;\">Iron on reverse side</li><li style=\"margin-bottom: 0px;\">Avoid contact with light coloured fabrics and upholstery</li></ul>', 'upload/product-images/kamij2.jpg', 1, 0, 0, 1, '2023-09-02 05:28:57', '2023-09-05 00:30:18'),
(2, 4, 6, 1, 4, 'GUCCI INTENSE OUD', '04', 2000, 1800, 10, 'Buy Fragrances online at Chemist Warehouse and enjoy huge discounts across the entire range. Shop products online, in store or via click and collect today.', '<h2 style=\"color: rgb(0, 83, 163); font-size: 16px; font-family: Arial, Helvetica, &quot;Sans Serif&quot;;\">General Information</h2><div class=\"details\" itemprop=\"description\" style=\"font-size: 13px; color: rgb(45, 54, 65); font-family: Arial, Helvetica, &quot;Sans Serif&quot;;\"><p>Unconventional and slightly capricious - bruno banani Woman Eau de Toilette plays with contrasts and expresses pure joie de vivre. This irresistible scent combines notes of fruity-sweet orange, invigorating ivy and intoxicating water lily that create an energetic and joyful start. The heart unveils vibrant notes of peach, harmonised with extravagant freesia and tender lily of the valley. Finally, the drydown brings the aromas of vanilla and white musk to give the composition a sensuous twist.</p>Unconventional and slightly capricious - bruno banani Woman Eau de Toilette plays with contrasts and expresses pure joie de vivre. This irresistible scent combines notes of fruity-sweet orange, invigorating ivy and intoxicating water lily that create an energetic and joyful start. The heart unveils vibrant notes of peach, harmonised with extravagant freesia and tender lily of the valley. Finally, the drydown brings the aromas of vanilla and white musk to give the composition a sensuous twist.<p>Size: 100mL</p><p>KEY FEATURES</p>• It\'s a classic and feminine Eau de Toilette for Her.<br>• The scent is perfect for unconventional and self-assured women.<br>• Top notes of ivy contrast with peach and freesia as well as vanilla accords.<br>• This chypre fruity fragrance expresses a sweet and naughty character.</div>', 'upload/product-images/perfume2.jpg', 1, 0, 0, 1, '2023-09-04 11:49:17', '2023-09-04 11:49:17'),
(5, 3, 5, 2, 2, 'North Star', '1288', 2000, 1800, 156, 'Rock some retro colors and look good doin\' it. This pair of kicks has nubuck leather and suede in the upper for a plush look and feel. Nike Air in the sole keeps your every step light as&…well, air.', '<div style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(17, 17, 17);\"><div class=\"u-full-height d-sm-ib\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: inline-block; height: 68px;\"><img src=\"https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-mens-shoes-bvPSnj.png\" alt=\"\" class=\"css-ldouik\" style=\"box-sizing: inherit; max-width: 60px; max-height: 60px;\"></div><div class=\"pt2-sm pl3-sm pr7-sm d-sm-ib css-1ripog4\" data-test=\"product-detail-title\" style=\"box-sizing: inherit; margin: 0px; padding: 8px 28px 0px 12px; border: 0px; font: inherit; vertical-align: baseline; display: inline-block; width: 828px; max-width: calc(100% - 60px);\"><h1 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Air Jordan 1 Mid SE</h1><div class=\"product-price__wrapper css-13hq5b3\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><br></div></div></div><div data-test=\"inline-product-description\" class=\"pt5-sm pr5-sm  css-15fheo5\" style=\"box-sizing: inherit; margin: 0px; padding: 20px 20px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(17, 17, 17);\"><div class=\"pi-tier3\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"pi-pdpmainbody\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"headline-5\" style=\"box-sizing: inherit; line-height: calc(1.75);\">&nbsp;</span></p><br style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Rock some retro colors and look good doin\' it. This pair of kicks has nubuck leather and suede in the upper for a plush look and feel. Nike Air in the sole keeps your every step light as&amp;…well, air.</p><br style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"headline-5\" style=\"box-sizing: inherit; line-height: calc(1.75);\">Benefits</span></p><ul style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Leather and suede upper offers durability and structure.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Encapsulated Nike Air-Sole units provide lightweight cushioning.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Solid rubber outsoles give you traction on a variety of surfaces.</li></ul><br style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span class=\"headline-5\" style=\"box-sizing: inherit; line-height: calc(1.75);\">Product Details</span></p><ul style=\"box-sizing: inherit; border: 0px; font: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Wings logo stamped on collar</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Stitched-down Swoosh logo</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Jumpman Air design on tongue</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Shown: Black/Cardinal Red/White/Vivid Orange</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font: inherit; vertical-align: baseline; position: relative; list-style-type: none;\">Style: FJ4923-008</li></ul></div></div></div>', 'upload/product-images/snaker4.jpg', 1, 0, 0, 1, '2023-09-06 10:51:29', '2023-09-06 10:51:29'),
(6, 6, 4, 6, 3, 'Premium Ladies Wallet', '1121', 600, 400, 50, 'Mini Chain Decor Quilted Flap Fashionable Square Bag', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Ladies Coin Purse Mini Bag</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"list-style-position: initial; list-style-image: initial; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: PU</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Origin: CN(Origin)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Business Vintage Casual, Fashion</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wallet Length: Short</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Lining Material: Polyester</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Item Height:17cm</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Pattern Type: Solid</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li></ul></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap;\">Specifications of Ladies Coin Purse Mini Bag</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.3cf54957tXi4AU\" style=\"margin-top: 16px; margin-right: -15px; margin-left: -15px; list-style-position: initial; list-style-image: initial; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">252226834_BD-1197622402</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Outside Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">PU Leather</div></li></ul></div></div></div></div>', 'upload/product-images/walet5.jpg', 0, 0, 0, 1, '2023-09-06 11:32:25', '2023-09-06 11:32:25'),
(7, 7, 8, 8, 5, 'Mens Short sleeve t-shirt', '144', 800, 600, 30, 'Navy nNew Jp Desing Soft & Comfortable T-shirt For Men', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.6a961324ipzH1R\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Navy nNew Jp Desing Soft &amp; Comfortable T-shirt For Men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"list-style-position: initial; list-style-image: initial; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type:Tshirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Colour:multicolour</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric:silk cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Apparel Type: half Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men and women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Model: NEW Design</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand :no brand</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size measurement :[ M - Length 27\" - Chest 18\" ][ L - Length 28\" - Chest 19\" ][ XL - Length 29\" - Chest 20\" ][ XXL - Length 30\" - Chest 22\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Specifications of Navy nNew Jp Desing Soft &amp; Comfortable T-shirt For Men</li></ul></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin-top: 16px; margin-right: -15px; margin-left: -15px; list-style-position: initial; list-style-image: initial; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">292386028_BD-1299248729</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Jersey</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">T-shirt For Men</div></div></div></div></div>', 'upload/product-images/tshart.jpg', 0, 0, 0, 1, '2023-09-06 13:49:09', '2023-09-06 13:49:09'),
(8, 2, 2, 9, 6, 'Hit Collection Party  Sarees', '1436', 4000, 3700, 20, 'Hand Half Silk Marvelous Exclusive Comfortable Exquisite Saree For Women', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Batik print12 Hand Cotton saree For Women</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"list-style-position: initial; list-style-image: initial; margin-block-start: 1em; font-size: 14px; overflow: hidden; columns: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Saree</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Occasion: Casual</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><span style=\"margin: 0px; padding: 0px;\"></span></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap;\">Specifications of Batik print12 Hand Cotton saree For Women</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin-top: 16px; margin-right: -15px; margin-left: -15px; list-style-position: initial; list-style-image: initial; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">286609654_BD-1284860866</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.27685e35rFLkhU\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Cotton</div></li></ul></div></div></div></div>', 'upload/product-images/sari5.jpg', 0, 0, 0, 1, '2023-09-07 01:52:34', '2023-09-07 01:52:34'),
(9, 9, 10, 10, 7, 'Simple Vintage Women Watch', '1421', 2000, 1400, 20, 'Michael Kors Parker White MOP Dial Ladies Watch', '<div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Watch Shape:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Rectangle<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Case Material:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Zinc Alloy<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Strap Material:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Silicone<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Strap Color:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Brown<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Water Resistance:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">No Waterproof<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Gender:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Women<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Style:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Casual, Elegant, Gorgeous, Trendy Personality, Vintage<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Type:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Wrist Watches<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Scale Display:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Mixed Scale<span dir=\"ltr\"></span></div></div><div class=\"product-intro__description-table-item\" tabindex=\"0\" role=\"text\" style=\"margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><div class=\"key\" style=\"margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;\">Specular Material:</div><div class=\"val\" style=\"margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;\">Mineral Glass</div></div>', 'upload/product-images/watch6.jpg', 0, 0, 0, 1, '2023-09-26 03:50:48', '2023-09-26 03:50:48');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1sMxXfGzAoMYvKjWseC6Ro9hG0sMgY6E79aXlWFV', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVjYzNk9jTjFZcTFUN05iS3M5aDBmZWhmaWxUbEtyb1FUc0VjcU44MCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vbG9jYWxob3N0L2Vjb20tYmF0Y2g4L3B1YmxpYy9jYXRlZ29yeS9lZGl0LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEVmNUxVQmdkNlA2dW1qa3ZPZk1XQk8wbXhTV0l4d0pnTzdqMVdESWVPZGRLMnFFVWtiL3hXIjt9', 1696068847),
('6uaMaduBSX04Ex35Nk1hXzx51t43avYm2HRRVaVH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHBPSE1XVlBjRkRQUjRUZWE4TzNmZ0Z6a2tVNXJkQ3lLSDd1bE1WMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1697095850),
('IT3HxT7R2xNgo91w3ivPOPfeCU0mX5BiTRXLbnKS', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSjRSZHpoV21YVWx4cUhJVVBjYUo2WjB0M1dic2JGd25CZ3ZCY0NKQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkRWY1TFVCZ2Q2UDZ1bWprdk9mTVdCTzBteFNXSXh3SmdPN2oxV0RJZU9kZEsycUVVa2IveFciO30=', 1696600760),
('pUvDM2Goulu8uKSn4btb5QuM71tAzKJs2YEEb0Oo', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNkV4ZkxXRm5KdG5iUEU4bU1JZDdaM1dzdE1RaXptS3d2VVQzWkpoUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljL3N1Yi1jYXRlZ29yeS9tYW5hZ2UiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEVmNUxVQmdkNlA2dW1qa3ZPZk1XQk8wbXhTV0l4d0pnTzdqMVdESWVPZGRLMnFFVWtiL3hXIjt9', 1696090963),
('SxFDjPCP6mH4LH4RwNLei8ZvfxbwBr6t3VLvsITn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU56YnU2czZ4MzBVamRDYzNxQzJQZEJ1Skw1allyTVlTbjVRaTVKRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1696086024),
('Yh757kQickMkxNHsFCVIzWyic3LI47JyS7zNG4Jo', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZXRqY1VHc2lKNlRBMDRKSUZPcUtVTzQxZTM1V2M2YnVpZWdWNDZPaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkRWY1TFVCZ2Q2UDZ1bWprdk9mTVdCTzBteFNXSXh3SmdPN2oxV0RJZU9kZEsycUVVa2IveFciO30=', 1696264711),
('Zgsp5jWX28mx946V2sx0XpRXSxjXDNGZry6rxWP0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3JzVTFVTkVZUjViMUpwTDBJSkdBUDJNRE01THdtS2FwdThLU2E3ciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MToiaHR0cDovL2xvY2FsaG9zdC9lY29tLWJhdGNoOC9wdWJsaWMvY2F0ZWdvcnkvZWRpdC8yIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDgvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1696074216);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 2, 'saries', 'will i like saries', 'upload/sub-category-images/subcategory2.jpg', '2023-08-26 02:05:56', '2023-09-07 01:30:14'),
(3, 2, 'Women Dress', 'Original Joypuri 3ps  100% pure cotton Salwar', 'upload/sub-category-images/dress2.jpg', '2023-08-26 04:55:05', '2023-09-01 11:23:56'),
(4, 6, 'Walet', 'Large-capacity  Gallbladder Bag', 'upload/sub-category-images/category3.jpg', '2023-08-26 04:56:49', '2023-09-06 11:08:08'),
(5, 3, 'sneakers', 'This is women sneakers', 'upload/sub-category-images/sneakers.jpg', '2023-08-28 12:07:36', '2023-09-01 11:38:12'),
(6, 4, 'Women Perfume', 'Pure Perfume oil …!! (Attar) From the house of ARMAF', 'upload/sub-category-images/perfume.jpg', '2023-09-04 11:14:45', '2023-09-04 11:14:45'),
(7, 6, 'Party bag collection', 'High Quality Ladies Crossbody Hand Bags For Women Luxury Handbag And Shoulder Messenger Bag. - Bag -Bag For Women - Bag For Girls - Bag', 'upload/sub-category-images/subccategory.jpg', '2023-09-06 11:54:57', '2023-09-06 11:56:39'),
(8, 7, 'T-Shirt', 'Casual printed jersy tshirt for Men\'s - T Shirt', 'upload/sub-category-images/subcategory.jpg', '2023-09-06 13:12:37', '2023-09-06 13:12:37'),
(10, 9, 'Square Pointer Quartz Watch', 'Simple Vintage Women Small Dial Watch Sweet Leather Strap Wrist Watches Gift', 'upload/sub-category-images/watch2jpg.jpg', '2023-09-26 03:28:23', '2023-09-26 03:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Women Clothing Unit', '127', 'This is Women Clothing Unit Description', '2023-08-31 00:32:52', '2023-09-02 04:40:12'),
(2, 'This is Shoes Unit', '237', 'OUR HAND PICKED COLLECTION FOR YOU', '2023-08-31 00:43:10', '2023-09-05 01:12:15'),
(3, 'Walet unit', '175', 'Thus us Walet unit', '2023-09-01 01:18:28', '2023-09-06 11:10:55'),
(4, 'Perfume Unit', '1237', 'this is Perfume unit', '2023-09-01 01:27:29', '2023-09-04 11:37:21'),
(5, 'This is T-Shirt Unit', '1254', 'We will soon include our logo in most of our upcoming products through print and embroidery. You can proudly wear GoodyBro and make your statement on how much you care about the planet and the society. This will encourage others to do the same and form a like-minded GoodyBro family standing for the same cause! Look good while doing so with the great fit and comfort', '2023-09-06 13:34:06', '2023-09-06 13:34:06'),
(6, 'This is Women Sarees', '1432', 'Premium quality saree with bp', '2023-09-07 01:46:14', '2023-09-07 01:46:14'),
(7, 'Watch Unit', '1261', 'Enjoy free shipping promotion with minimum spend', '2023-09-26 03:43:11', '2023-09-26 03:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$Ef5LUBgd6P6umjkvOfMWBO0mxSWIxwJgO7j1WDIeOddK2qEUkb/xW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-18 14:09:46', '2023-08-18 14:09:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
