-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 08:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `user`, `name`, `note`, `slug`, `image`, `start_date`, `end_date`, `extra`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'test', 'test', NULL, NULL, NULL, '{\"media_url\":null}', 0, '2021-11-09 16:09:38', '2021-11-09 16:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user`, `customer`, `extra`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2021-11-06 21:55:43', '2021-11-06 21:55:43'),
(2, 1, 2, NULL, '2021-11-07 21:37:48', '2021-11-07 21:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetPassword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activateCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `storeuser`, `email`, `avatar`, `resetPassword`, `activateCode`, `active`, `name`, `status`, `password`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'alfzfz2015@hotmail.com', 'users-5.svg', NULL, '3JImy', 0, NULL, 1, '$2y$10$K3H6scfQw8yAvmNEJz8Ps.AbWNyeUTUOyAk9wW.v2ADPUHOSXaEl2', NULL, '2021-11-06 21:53:48', '2021-11-07 21:36:56'),
(2, 1, 'hh@gmail.com', 'users-16.svg', NULL, NULL, 1, 'Zaid', 1, '', NULL, '2021-11-07 21:37:33', '2021-11-07 21:37:33'),
(3, 1, 'tt@h.com', '7.png', NULL, 'Khufd', 0, NULL, 1, '$2y$10$X/jBjD8U14CMutUhGo2gCe6GogLNvRdz6WWS7w61sjrY7OTOE6oQe', NULL, '2021-11-07 21:38:34', '2021-11-07 21:38:59'),
(4, 1, 'gg@gg.com', '2.png', 'rcSng', NULL, 1, 'gg', 1, '', NULL, '2021-11-16 16:31:22', '2021-11-16 16:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers_logs`
--

CREATE TABLE `customers_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `what` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `wildcard` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `scheme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linker`
--

CREATE TABLE `linker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linker`
--

INSERT INTO `linker` (`id`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'https://ecom.kw.sharee3.net/admin123/product/1', 'zqZojQ', '2021-11-06 21:44:11', '2021-11-06 21:44:11'),
(2, 'https://ecom.kw.sharee3.net/admin123/blog/1', 'NM2gVy', '2021-11-09 16:10:02', '2021-11-09 16:10:02'),
(3, 'https://ecom.kw.sharee3.net/admin123/product/2', 'C2xP8r', '2021-11-16 15:43:05', '2021-11-16 15:43:05'),
(4, 'https://api.whatsapp.com/send?phone=+962776460077', 'pW2kWP', '2021-11-16 16:30:41', '2021-11-16 16:30:41'),
(5, 'https://altaleb.jo', '2ihZzo', '2021-11-16 16:30:41', '2021-11-16 16:30:41'),
(6, 'https://ecom.kw.sharee3.net/admin123/product/3', '8vCCJW', '2021-11-16 17:19:19', '2021-11-16 17:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'store',
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `from`, `user_id`, `type`, `data`, `extra`, `created_at`, `updated_at`) VALUES
(1, 1, 'store', 1, 'text', 'jkkkjkjkjk', NULL, '2021-11-06 21:55:52', '2021-11-06 21:55:52'),
(2, 1, 'store', 1, 'link', 'jkkkjkjkjkjkk.com', NULL, '2021-11-06 21:56:15', '2021-11-06 21:56:15'),
(3, 1, 'store', 1, 'link', 'mnjz.sa', NULL, '2021-11-06 21:56:31', '2021-11-06 21:56:31'),
(4, 1, 'store', 1, 'text', 'jhhjhjhj', NULL, '2021-11-07 21:34:52', '2021-11-07 21:34:52'),
(5, 2, 'store', 1, 'text', 'jhjhjhj', NULL, '2021-11-07 21:37:55', '2021-11-07 21:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_12_182924_tables', 1),
(5, '2020_09_18_113034_store_orders', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` int(11) NOT NULL DEFAULT 0,
  `is_global` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `user`, `name`, `product`, `type`, `is_required`, `is_global`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'M', 1, 'checkbox', 1, 0, 0, '2021-11-06 21:43:57', '2021-11-06 21:43:57'),
(2, 1, 'size', 2, 'checkbox', 1, 0, 0, '2021-11-16 15:59:16', '2021-11-16 16:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `user`, `label`, `option_id`, `price`, `stock`, `price_type`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, NULL, 'fixed', 0, NULL, NULL),
(2, 1, 'xs', 2, 3.00, NULL, 'fixed', 0, NULL, NULL),
(3, 1, 'xxs', 2, 4.00, NULL, 'fixed', 0, NULL, NULL),
(4, 1, 'xxxl', 2, 5.00, NULL, 'fixed', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domains` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateways` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `slug`, `status`, `price`, `settings`, `domains`, `gateways`, `created_at`, `updated_at`) VALUES
(1, 'الذهبيه', '', '1', '{\"month\":\"20\",\"quarter\":\"120\",\"annual\":\"1200\"}', '{\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"add_to_head\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"gateways\":true,\"products_limit\":\"10\",\"blogs_limits\":\"20\",\"custom_domain_limit\":\"1\"}', '\"1\"', '[\"paypal\",\"stripe\",\"paystack\",\"razor\",\"midtrans\",\"mercadopago\",\"bank\",\"paytm\"]', '2021-11-07 00:49:35', NULL),
(2, 'tttttttt', 'tttttttt', '1', '{\"month\":\"50\",\"quarter\":\"130\",\"annual\":\"399\"}', '{\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"add_to_head\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"gateways\":true,\"products_limit\":\"1\",\"blogs_limits\":\"1\",\"custom_domain_limit\":\"1\"}', '\"1\"', '[\"paypal\",\"bank\"]', '2021-11-08 00:45:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'internal',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_categories`
--

CREATE TABLE `pages_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_sections`
--

CREATE TABLE `pages_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `block_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_sections`
--

INSERT INTO `pages_sections` (`id`, `user`, `page_id`, `name`, `theme`, `status`, `block_slug`, `data`, `extra`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'zoa', 1, 'enhanced_preset', '{\"banner\":{\"type\":\"image\",\"value\":\"\"},\"banner_subtitle\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\"},\"about_banner\":{\"type\":\"image\",\"value\":\"\"},\"short_about\":{\"type\":\"textarea\",\"value\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"}}', NULL, 0, '2021-10-13 21:16:32', '2021-10-13 21:16:32'),
(2, 1, 2, NULL, 'zoa', 1, 'products', '{\"number_of_products\":{\"type\":\"select\",\"value\":999},\"show_search\":{\"type\":\"select\",\"value\":1}}', NULL, 0, '2021-10-13 21:16:32', '2021-10-13 21:16:32'),
(3, 1, 4, NULL, 'zoa', 1, 'products_banner_1', '{\"number_of_products\":{\"type\":\"select\",\"value\":\"2\"}}', NULL, 0, '2021-11-17 17:34:04', '2021-11-17 17:34:04'),
(4, 1, 4, NULL, 'zoa', 1, 'blogs_list', '{\"number_of_blogs\":{\"type\":\"select\",\"value\":\"999\"}}', NULL, 0, '2021-11-17 17:35:09', '2021-11-17 17:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pending_payments`
--

CREATE TABLE `pending_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bank',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `otheruser` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `salePrice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_type` int(11) NOT NULL DEFAULT 0,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `product_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_url_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_management` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user`, `otheruser`, `title`, `slug`, `price`, `status`, `salePrice`, `stock`, `product_type`, `tags`, `featured`, `product_condition`, `media`, `external_url_name`, `stock_management`, `stock_status`, `sku`, `files`, `external_url`, `categories`, `description`, `variation`, `extra`, `position`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'nescafe red mug', 'nescafe_red_mug', '1', 1, '0.5', 0, 0, NULL, 0, 'new', '[\"t1O0ks7Xosj8zqaDJVFqQToYcbXqIo9oyZsQi6Aj.jpg\",\"Lwrnh3NCsnDCqSnQiObXiBwbQ1vmxBAChqkUahj4.jpg\",\"ckXq5KfbATWrwlZ9509Lb0WOXvP9lDvruiKyUD7X.jpg\"]', NULL, 1, 0, '7616100262267', NULL, NULL, '[\"nescafe\"]', NULL, NULL, '{\"shipping\":\"999\"}', 0, '2021-11-16 15:40:53', '2021-11-16 17:28:08'),
(3, 1, NULL, 'nnn', 'nnn', '1', 1, NULL, NULL, 0, NULL, 0, 'new', '[\"yp3Lkry703VfIKCKGRDsAo82bcJlFSjelgOB1QiK.png\"]', NULL, 0, 0, NULL, NULL, NULL, '[\"nescafe\"]', '<p>gghhg</p>', NULL, '{\"shipping\":null}', 1, '2021-11-16 17:19:10', '2021-11-16 17:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `user`, `title`, `slug`, `status`, `description`, `media`, `extra`, `position`, `created_at`, `updated_at`) VALUES
(2, 1, 'nescafe', 'nescafe', 1, 'قهوة', 't0r5ze3CRslqvv1meybHtP7O5PvAPDSErT6Y7UIQ.png', NULL, 0, '2021-11-16 15:39:54', '2021-11-16 15:39:54'),
(3, 1, 'fhf', 'fhf', 1, NULL, 'wejVDXmAYmHt9PUkHJkJkXFD6vBkfrWFxjG99O0T.jpg', NULL, 0, '2021-11-16 17:20:14', '2021-11-16 17:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `customer` int(11) DEFAULT NULL,
  `send_email` int(11) NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `products` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `storeuser`, `customer`, `send_email`, `order_status`, `products`, `details`, `currency`, `gateway`, `ref`, `price`, `extra`, `delivered`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, '{\"1\":{\"qty\":\"1\",\"price\":890,\"name\":\"\\u062c\\u0646\\u0632 \\u0627\\u0633\\u0648\\u062f\",\"options\":\"\"}}', '{\"first_name\":\"Noelani\",\"last_name\":\"Ochoa\",\"email\":\"hepu@mailinator.com\",\"phone\":\"+1 (677) 646-7341\",\"house_number\":\"800\",\"city\":\"Neque reiciendis par\",\"state\":\"Eiusmod occaecat id\",\"street\":\"Possimus sed quia d\",\"postal_code\":\"Ut distinctio Proid\",\"country\":\"Saudi Arabia\",\"shipping\":\"none\",\"note\":\"Itaque eius aut rem\"}', 'AED', 'Bank', 'NsQ6RfooeB', 890.00, NULL, 0, '0', '2021-11-08 00:41:07', '2021-11-16 16:11:51'),
(2, 1, NULL, 0, 1, '{\"2\":{\"qty\":\"1\",\"price\":12,\"name\":\"nescafe red mug\",\"options\":\"size - xs, xxs, xxxl, \"}}', '{\"first_name\":\"zaid\",\"last_name\":\"altaleb\",\"email\":\"zaidaltaleb3@gmail.com\",\"phone\":\"776460077\",\"house_number\":\"ds\",\"city\":\"alpalqa\",\"state\":\"ds\",\"street\":\"alsalt\",\"postal_code\":\"11910\",\"country\":\"Saudi Arabia\",\"shipping\":\"none\",\"note\":\"sdsd\"}', 'AED', 'Bank', 'pptvFZEU4m', 12.00, NULL, 0, '0', '2021-11-16 19:05:10', '2021-11-16 16:11:23'),
(3, 1, NULL, 0, 1, '{\"2\":{\"qty\":4,\"price\":12,\"name\":\"nescafe red mug\",\"options\":\"size - xs, xxs, xxxl, \"}}', '{\"first_name\":\"zaid\",\"last_name\":\"altaleb\",\"email\":\"zaidaltaleb3@gmail.com\",\"phone\":\"776460077\",\"house_number\":null,\"city\":\"alpalqa\",\"state\":\"ds\",\"street\":\"alsalt\",\"postal_code\":\"11910\",\"country\":\"Saudi Arabia\",\"shipping\":\"none\",\"note\":null}', 'AED', 'Bank', 'vq16m5jVlD', 48.00, NULL, 0, '0', '2021-11-16 19:07:12', '2021-11-16 16:10:54'),
(4, 1, NULL, 0, 1, '{\"2\":{\"qty\":4,\"price\":12,\"name\":\"nescafe red mug\",\"options\":\"size - xs, xxs, xxxl, \"}}', '{\"first_name\":\"zaid\",\"last_name\":\"altaleb\",\"email\":\"zaidaltaleb3@gmail.com\",\"phone\":\"776460077\",\"house_number\":\"ds\",\"city\":\"alpalqa\",\"state\":\"ds\",\"street\":\"alsalt\",\"postal_code\":\"11910\",\"country\":\"Saudi Arabia\",\"shipping\":\"reee\",\"note\":null}', 'AED', 'Bank', 'LDhK21ZVJz', 48.00, NULL, 0, '0', '2021-11-16 19:19:23', '2021-11-16 16:19:44'),
(5, 1, NULL, 0, 2, '{\"2\":{\"qty\":4,\"price\":12,\"name\":\"nescafe red mug\",\"options\":\"size - xs, xxs, xxxl, \"}}', '{\"first_name\":\"zaid\",\"last_name\":\"altaleb\",\"email\":\"zaidaltaleb3@gmail.com\",\"phone\":\"776460077\",\"house_number\":null,\"city\":\"alpalqa\",\"state\":\"ds\",\"street\":\"alsalt\",\"postal_code\":\"11910\",\"country\":\"Saudi Arabia\",\"shipping\":\"gggg\",\"note\":null}', 'AED', 'Bank', 'gEk2dnBkCP', 48.00, NULL, 0, '0', '2021-11-16 19:20:39', NULL),
(6, 1, NULL, 0, 2, '{\"2\":{\"qty\":4,\"price\":12,\"name\":\"nescafe red mug\",\"options\":\"size - xs, xxs, xxxl, \"}}', '{\"first_name\":\"zaid\",\"last_name\":\"altaleb\",\"email\":\"zaidaltaleb3@gmail.com\",\"phone\":\"776460077\",\"house_number\":null,\"city\":\"alpalqa\",\"state\":\"ds\",\"street\":\"alsalt\",\"postal_code\":\"11910\",\"country\":\"Saudi Arabia\",\"shipping\":\"jedda\",\"note\":null}', 'AED', 'Bank', 'OI1BGbKidv', 48.00, NULL, 0, '0', '2021-11-16 19:25:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_refunds`
--

CREATE TABLE `product_refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `review` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_wishlists`
--

CREATE TABLE `product_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `storeuser` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'ads', '{\"enabled\":\"0\",\"store_header\":null,\"store_footer\":null,\"site_header\":null,\"site_footer\":null}'),
(2, 'email', 'admin@ecom.me'),
(3, 'email_activation', '0'),
(4, 'logo', 'logo.png'),
(5, 'favicon', 'logo.png'),
(6, 'timezone', 'Asia/Riyadh'),
(7, 'registration', '1'),
(8, 'custom_home', ''),
(9, 'privacy', ''),
(10, 'terms', ''),
(11, 'package_free', '{\"id\":\"free\",\"name\":\"Free\",\"slug\":\"free\",\"status\":\"1\",\"price\":{\"month\":\"FREE\",\"quarter\":\"FREE\",\"annual\":\"FREE\"},\"settings\":{\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"blogs_limits\":true,\"products_limit\":\"-1\"},\"domains\":\"\\\"1\\\"\"}'),
(12, 'package_trial', '{\"id\":\"trial\",\"name\":\"Trial\",\"slug\":\"trial\",\"status\":\"1\",\"price\":{\"month\":\"FREE\",\"quarter\":\"FREE\",\"annual\":\"FREE\",\"expiry\":\"7\"},\"settings\":{\"expiry\":true,\"ads\":true,\"custom_branding\":true,\"statistics\":true,\"verified\":true,\"social\":true,\"custom_background\":true,\"domains\":true,\"google_analytics\":true,\"facebook_pixel\":true,\"blogs\":true,\"blogs_limits\":true,\"products_limit\":\"-1\",\"trial\":true},\"domains\":\"\\\"1\\\"\"}'),
(13, 'business', '{\"enabled\":\"1\",\"name\":null,\"address\":null,\"city\":null,\"county\":null,\"zip\":null,\"country\":null,\"email\":null,\"phone\":null,\"tax_type\":null,\"tax_id\":null,\"custom_key_one\":null,\"custom_value_one\":null,\"custom_key_two\":null,\"custom_value_two\":null}'),
(14, 'captcha', ''),
(15, 'social', '{\"facebook\":\"gg\",\"instagram\":\"gg\",\"youtube\":\"gg\",\"whatsapp\":\"+962776460077\",\"twitter\":null}'),
(16, 'custom_code', '{\"enabled\":false,\"head\":\",hfgiufhg \\r\\n\\r\\nfdfgdf dgfd tryt\"}'),
(17, 'currency', ''),
(18, 'email_notify', '{\"emails\":null,\"user\":false,\"payment\":false,\"bank_transfer\":false}'),
(19, 'location', 'alsalt'),
(20, 'contact', '0'),
(21, 'payment_system', '1'),
(22, 'site', '{\"store_count\":\"0\",\"show_pages\":\"0\"}'),
(23, 'user', '{\"domains_restrict\":\"0\",\"demo_user\":\"1\",\"products_image_size\":\"19\",\"products_image_limit\":\"9\"}');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE `store_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_orders`
--

INSERT INTO `store_orders` (`id`, `slug`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'f6D9ToGth9', 1, '2021-11-08 00:41:07', NULL),
(2, 'vUDFkr3tF5', 2, '2021-11-16 19:05:10', NULL),
(3, 'i4zYaKqQgX', 3, '2021-11-16 19:07:12', NULL),
(4, 'BhTyWG3icu', 4, '2021-11-16 19:19:23', NULL),
(5, 'subyvD3tRL', 5, '2021-11-16 19:20:39', NULL),
(6, 'k1rpzwvp8W', 6, '2021-11-16 19:25:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `dyid` int(11) DEFAULT NULL,
  `visitor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`id`, `user`, `dyid`, `visitor_id`, `type`, `country`, `ip`, `os`, `browser`, `referer`, `count`, `date`) VALUES
(1, 1, NULL, '9470c64de641601941f7a05f214418d0', 'profile', 'US', '209.99.16.206', 'OS X', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '5', '2021-11-07 00:54:55'),
(2, 1, NULL, '0f4e64e5d3ecb7c8b1c27cfc7f316c87', 'profile', 'US', '209.99.16.206', 'OS X', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '1', '2021-11-08 00:33:34'),
(3, 1, NULL, 'bc2bb981bf0f654ce5f887baf8b2e157', 'profile', 'US', '209.99.16.206', 'iOS', 'Safari', 'https://ecom.kw.sharee3.net/admin123', '1', '2021-11-09 19:09:02'),
(4, 1, NULL, '2aaa8afc745823d9f719d4177ad80198', 'profile', 'US', '209.99.16.206', 'Windows', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '2', '2021-11-09 19:10:13'),
(5, 1, NULL, '4675af95610437c76a682b4845c16fb2', 'profile', 'JO', '94.249.60.77', 'Windows', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '4', '2021-11-16 19:33:14'),
(6, 1, NULL, '6f35c9a68a3941fa3ba65c2232a8d841', 'profile', 'JO', '94.249.60.77', 'Windows', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '1', '2021-11-16 20:26:02'),
(7, 1, 1, '99EyKixgk89Pa7', 'portfolio', 'JO', '94.249.60.77', 'Windows', 'Chrome', '', '4', '2021-11-17 20:36:11'),
(8, 1, NULL, '192d953537ac881f509a21b2ce0f92d8', 'profile', 'EG', '197.32.47.10', 'Windows', 'Chrome', 'https://ecom.kw.sharee3.net/admin123', '1', '2021-12-22 16:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `track_links`
--

CREATE TABLE `track_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'social',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_links`
--

INSERT INTO `track_links` (`id`, `user`, `type`, `slug`, `visitor_id`, `country`, `ip`, `os`, `browser`, `views`, `created_at`, `updated_at`) VALUES
(1, 1, 'profile', 'zqZojQ', '9470c64de641601941f7a05f214418d0', 'US', '51.36.222.78', 'OS X', 'Chrome', '1', '2021-11-07 00:44:21', '2021-11-06 21:44:21'),
(2, 1, 'profile', 'zqZojQ', '0f4e64e5d3ecb7c8b1c27cfc7f316c87', 'US', '51.36.219.243', 'OS X', 'Chrome', '1', '2021-11-08 00:33:44', '2021-11-07 21:33:44'),
(3, 1, 'profile', 'C2xP8r', '4675af95610437c76a682b4845c16fb2', 'JO', '94.249.60.77', 'Windows', 'Chrome', '2', '2021-11-16 18:43:09', '2021-11-16 19:07:55'),
(4, 1, 'profile', '2ihZzo', '4675af95610437c76a682b4845c16fb2', 'JO', '94.249.60.77', 'Windows', 'Chrome', '1', '2021-11-16 19:30:45', '2021-11-16 16:30:45'),
(5, 1, 'profile', 'pW2kWP', '4675af95610437c76a682b4845c16fb2', 'JO', '94.249.60.77', 'Windows', 'Chrome', '1', '2021-11-16 19:30:47', '2021-11-16 16:30:47'),
(6, 1, 'profile', '8vCCJW', '4675af95610437c76a682b4845c16fb2', 'JO', '94.249.60.77', 'Windows', 'Chrome', '1', '2021-11-16 20:19:24', '2021-11-16 17:19:24'),
(7, 1, 'profile', 'C2xP8r', '6f35c9a68a3941fa3ba65c2232a8d841', 'JO', '94.249.60.77', 'Windows', 'Chrome', '1', '2021-11-16 20:28:17', '2021-11-16 17:28:17'),
(8, 1, 'profile', 'NM2gVy', NULL, 'JO', '94.249.60.77', 'Windows', 'Chrome', '1', '2021-11-17 20:35:24', '2021-11-17 17:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `media` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_welcome_screen` int(11) NOT NULL DEFAULT 0,
  `enable_welcome_screen` int(11) NOT NULL DEFAULT 0,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `package_due` datetime DEFAULT NULL,
  `package_trial_done` int(11) NOT NULL DEFAULT 0,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `last_activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `role`, `email_token`, `email_verified_at`, `password`, `remember_token`, `name`, `verified`, `media`, `shipping`, `first_welcome_screen`, `enable_welcome_screen`, `package`, `package_due`, `package_trial_done`, `facebook_id`, `google_id`, `domain`, `address`, `gateway`, `socials`, `extra`, `active`, `last_activity`, `last_agent`, `created_at`, `updated_at`) VALUES
(1, 'ifawazsh@gmail.com', 'admin123', 1, NULL, NULL, '$2y$10$Ns5QzfeSW4uAspA62J1lcus9rQfd02jwNM2X72E.ZygnRjBWpWQHC', NULL, '{\"first_name\":\"Admin\",\"last_name\":null}', '0', '{\"avatar\":\"bNs1ZPnY4zZCbPVS9dlBJQ6C3CEEoRKi8MT0DN4s.jpg\"}', '{\"Saudi Arabia\":{\"jedda\":{\"type\":\"free\",\"cost\":\"1\"},\"reee\":{\"type\":\"flat\",\"cost\":\"2\"},\"gggg\":{\"type\":\"pickup\",\"cost\":\"3\"}},\"Worldwide\":[]}', 1, 0, '2', NULL, 0, NULL, NULL, 'main', 'الحسينية', '{\"currency\":\"AED\",\"paypal_status\":false,\"paypal_mode\":\"live\",\"paypal_client_id\":null,\"paypal_secret_key\":null,\"paystack_status\":false,\"paystack_secret_key\":null,\"bank_status\":true,\"bank_details\":\"434343434343434343434343\",\"stripe_status\":false,\"stripe_client\":null,\"stripe_secret\":null,\"razor_status\":false,\"razor_key_id\":null,\"razor_secret_key\":null,\"midtrans_mode\":null,\"midtrans_status\":false,\"cash_status\":false,\"midtrans_client_key\":null,\"midtrans_server_key\":null,\"mercadopago_status\":false,\"mercadopago_access_token\":null}', '{\"email\":null,\"whatsapp\":\"+962776460077\",\"facebook\":\"altaleb.jo\",\"instagram\":null,\"twitter\":null,\"youtube\":null}', '{\"banner_url\":null,\"shipping_types\":\"my_shipping\",\"invoicing\":\"1\",\"refund_request\":\"1\",\"custom_branding\":\"whalers\",\"guest_checkout\":\"1\",\"google_analytics\":null,\"facebook_pixel\":null,\"template\":\"zoa\",\"about\":null,\"background_text_color\":\"#22FF06\",\"background_color\":\"#FF0000\",\"headScript\":\"asdsad sda g fd g\"}', 1, '2021-12-22 16:47:03', 'Windows', '2021-10-13 21:16:05', '2021-12-22 11:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `what` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user`, `what`, `ip`, `os`, `browser`, `date`) VALUES
(1, 1, 'login successfully', '156.195.107.145', 'Windows', 'Chrome', '2021-10-13 22:16:31'),
(2, 1, 'login successfully', '51.36.222.78', 'OS X', 'Chrome', '2021-11-06 21:13:20'),
(3, 1, 'login successfully', '51.36.219.243', 'OS X', 'Chrome', '2021-11-08 00:33:14'),
(4, 1, 'login successfully', '94.249.60.77', 'Windows', 'Chrome', '2021-11-09 19:07:53'),
(5, 1, 'login successfully', '94.249.60.77', 'Windows', 'Chrome', '2021-11-16 18:17:20'),
(6, 1, 'login successfully', '94.249.60.77', 'Windows', 'Chrome', '2021-11-16 20:25:09'),
(7, 1, 'login successfully', '94.249.60.77', 'Windows', 'Chrome', '2021-11-17 20:32:18'),
(8, 1, 'login successfully', '94.249.60.77', 'Windows', 'Chrome', '2021-11-30 17:47:44'),
(9, 1, 'login successfully', '127.0.0.1', 'Windows', 'Chrome', '2021-12-22 16:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(11) NOT NULL DEFAULT 0,
  `is_home` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_pages`
--

INSERT INTO `user_pages` (`id`, `user`, `name`, `show_menu`, `is_home`, `total_views`, `slug`, `parent`, `image`, `theme`, `start_date`, `end_date`, `extra`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', 0, 1, 0, 'home', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-10-13 21:16:32', '2021-10-13 21:16:32'),
(2, 1, 'Products', 0, 0, 0, 'products', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-10-13 21:16:32', '2021-10-13 21:16:32'),
(3, 1, 'test', 0, 0, 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-09 16:11:15', '2021-11-09 16:11:15'),
(4, 1, 'g', 0, 1, 0, 'h', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-17 17:33:04', '2021-11-17 17:34:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_logs`
--
ALTER TABLE `customers_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linker`
--
ALTER TABLE `linker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
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
-- Indexes for table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_sections`
--
ALTER TABLE `pages_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_refunds`
--
ALTER TABLE `product_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wishlists`
--
ALTER TABLE `product_wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_links`
--
ALTER TABLE `track_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers_logs`
--
ALTER TABLE `customers_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linker`
--
ALTER TABLE `linker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_sections`
--
ALTER TABLE `pages_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_payments`
--
ALTER TABLE `pending_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_refunds`
--
ALTER TABLE `product_refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_wishlists`
--
ALTER TABLE `product_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `track_links`
--
ALTER TABLE `track_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
