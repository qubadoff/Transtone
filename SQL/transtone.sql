-- phpMyAdmin SQL Dump
-- version 5.2.1-1.fc38
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2023 at 08:59 AM
-- Server version: 10.5.21-MariaDB
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transtone`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `body` longtext NOT NULL,
  `width` text NOT NULL,
  `height` text NOT NULL,
  `length` text NOT NULL,
  `weight` text NOT NULL,
  `capacity` text NOT NULL,
  `pallets` text NOT NULL,
  `photo_1` text NOT NULL,
  `photo_2` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `description`, `body`, `width`, `height`, `length`, `weight`, `capacity`, `pallets`, `photo_1`, `photo_2`, `cat_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Soyuduculu (5m/5t)', 'Soyuduculu (5m/5t)', '<h2>Soyuduculu (5m/5t)</h2>', '11', '22', '33', '44', '55', '66', 'cars/September2023/nqHHG1rsTY3RjkJD5RIw.png', 'cars/September2023/AFsoQnV2wgY8ii1GIW4c.png', 2, 'soyuducu', '2023-09-11 03:55:12', '2023-09-11 03:55:12'),
(2, 'Liftli (5m/5t)', 'Liftli (5m/5t)', '<h2>Liftli (5m/5t)</h2>', '11', '22', '33', '12', '11', '89', 'cars/September2023/H79ZKr0p07YmAqms3PAn.png', 'cars/September2023/fxnHQxlsnkAHjWnuLZtP.png', 1, 'wrfgerghweg', '2023-09-11 03:56:04', '2023-09-11 03:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `car_category`
--

CREATE TABLE `car_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `photo` text NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_category`
--

INSERT INTO `car_category` (`id`, `name`, `description`, `photo`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Yük maşını', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'car-category/September2023/zPmlcCY1N4aWuEAw9njB.jpg', 'yuk', '2023-09-11 03:52:17', '2023-09-11 03:52:17'),
(2, 'Soyuduculu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'car-category/September2023/0hT3qDDYPiZUgrwWxJTs.jpg', 'ssss', '2023-09-11 03:52:34', '2023-09-11 03:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-09-11 03:28:40', '2023-09-11 03:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Şifrə', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Bərpa tokeni', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Yaradılma tarixi', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rol', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Yaradılma tarixi', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Yaradılma tarixi', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Təsvir olunan ad', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Rol', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Valideyn', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Çeşidləmə', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Ad', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug (İAU)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Yaradılma tarixi', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Müəllif', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Kateqoriya', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Adı', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Qısa məlumat', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Məzmun', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Məqalənin Şəkli', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug (İAU)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description (Təsvir)', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords (Açar sözlər)', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Statusu', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Yaradılma tarixi', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Adı', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Prioritetliləşdirib', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Müəllif', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Adı', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Qısa məlumat', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Məzmun', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug (İAU)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description (Təsvir)', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords (Açar sözlər)', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Statusu', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Yaradılma tarixi', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Yenilənmə tarixi', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Səhifənin şəkili', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text_area', 'Description', 1, 0, 1, 1, 1, 1, '{}', 3),
(59, 7, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 6),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(63, 7, 'updated_at', 'text', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 8),
(64, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(65, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 4),
(68, 8, 'order', 'text', 'Order', 0, 0, 1, 1, 1, 1, '{}', 5),
(69, 9, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(70, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(72, 9, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 5),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 7),
(76, 10, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(77, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(78, 10, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(79, 10, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 4),
(80, 10, 'width', 'text', 'Width', 1, 0, 1, 1, 1, 1, '{}', 5),
(81, 10, 'height', 'text', 'Height', 1, 0, 1, 1, 1, 1, '{}', 6),
(82, 10, 'length', 'text', 'Length', 1, 0, 1, 1, 1, 1, '{}', 7),
(83, 10, 'weight', 'text', 'Weight', 1, 0, 1, 1, 1, 1, '{}', 8),
(84, 10, 'capacity', 'text', 'Capacity', 1, 0, 1, 1, 1, 1, '{}', 9),
(85, 10, 'pallets', 'text', 'Pallets', 1, 0, 1, 1, 1, 1, '{}', 10),
(86, 10, 'photo_1', 'image', 'Photo 1', 1, 1, 1, 1, 1, 1, '{}', 11),
(87, 10, 'photo_2', 'image', 'Photo 2', 1, 1, 1, 1, 1, 1, '{}', 12),
(88, 10, 'cat_id', 'text', 'Cat Id', 1, 0, 1, 1, 1, 1, '{}', 13),
(89, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 14),
(90, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 15),
(91, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 16),
(92, 10, 'car_belongsto_car_category_relationship', 'relationship', 'Kateqoriya', 1, 1, 1, 1, 1, 1, '{\"scope\":\"active\",\"model\":\"App\\\\CarCategory\",\"table\":\"car_category\",\"type\":\"belongsTo\",\"column\":\"cat_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"car_category\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(93, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(94, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(96, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 4),
(97, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(98, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(99, 12, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(100, 12, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 4),
(101, 12, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, '{}', 5),
(102, 12, 'category_id', 'text', 'Category Id', 1, 0, 1, 1, 1, 1, '{}', 6),
(103, 12, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 7),
(104, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(105, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 9),
(106, 12, 'technique_belongsto_technique_category_relationship', 'relationship', 'Kateqoriya', 1, 1, 1, 1, 1, 1, '{\"scope\":\"active\",\"model\":\"App\\\\TechniqueCategory\",\"table\":\"technique_category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"car_category\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(107, 11, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 5),
(108, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(109, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 13, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(111, 13, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 4),
(112, 13, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 5),
(113, 13, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, '{}', 6),
(114, 13, 'photo_gallery', 'multiple_images', 'Photo Gallery', 0, 0, 1, 1, 1, 1, '{}', 7),
(115, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(116, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 9),
(117, 14, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(118, 14, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(119, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 3),
(120, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 4),
(121, 15, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(122, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(123, 15, 'surname', 'text', 'Surname', 1, 1, 1, 1, 1, 1, '{}', 3),
(124, 15, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(125, 15, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 5),
(126, 15, 'message', 'text_area', 'Message', 1, 0, 1, 1, 1, 1, '{}', 6),
(127, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(128, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'İsdifadəçi', 'İstifadəçilər', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, 'menus', 'menus', 'Menyu', 'Menyu', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(3, 'roles', 'roles', 'Rol', 'Rollar', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(4, 'categories', 'categories', 'Kateqoriya', 'Kateqoriyalar', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(5, 'posts', 'posts', 'Məqalə', 'Məqalələr', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(6, 'pages', 'pages', 'Səhifə', 'Səhifələr', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(7, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(8, 'slider', 'slider', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"order\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-11 03:48:18', '2023-09-11 03:48:34'),
(9, 'car_category', 'car-category', 'Car Category', 'Car Categories', NULL, 'App\\CarCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-11 03:51:39', '2023-09-11 03:51:49'),
(10, 'cars', 'cars', 'Car', 'Cars', NULL, 'App\\Car', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-11 03:53:20', '2023-09-11 03:54:21'),
(11, 'technique_category', 'technique-category', 'Technique Category', 'Technique Categories', NULL, 'App\\TechniqueCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-11 04:08:33', '2023-09-11 04:12:47'),
(12, 'techniques', 'techniques', 'Technique', 'Techniques', NULL, 'App\\Technique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-09-11 04:09:31', '2023-09-11 04:10:13'),
(13, 'sectors', 'sectors', 'Sector', 'Sectors', NULL, 'App\\Sector', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(14, 'gallery', 'gallery', 'Gallery', 'Galleries', NULL, 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(15, 'contact_messages', 'contact-messages', 'Contact Message', 'Contact Messages', NULL, 'App\\ContactMessage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-09-11 04:29:50', '2023-09-11 04:29:50');

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
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'gallery/September2023/c2THSSxB6IeRfu2FHN29.jpg', '2023-09-11 04:16:22', '2023-09-11 04:16:22'),
(2, 'gallery/September2023/EfiJ5tQXYwspnQQpBwvz.jpg', '2023-09-11 04:16:26', '2023-09-11 04:16:26'),
(3, 'gallery/September2023/RU420kTzuUIJoBABVu56.jpg', '2023-09-11 04:16:31', '2023-09-11 04:16:31'),
(4, 'gallery/September2023/pB9CM4jf6kG6rxP3tnS3.jpg', '2023-09-11 04:16:36', '2023-09-11 04:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-09-11 03:28:40', '2023-09-11 03:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'İdarəetmə paneli', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-09-11 03:28:40', '2023-09-11 03:28:40', 'voyager.dashboard', NULL),
(2, 1, 'Fayl buludu', '', '_self', 'voyager-images', '#000000', NULL, 11, '2023-09-11 03:28:40', '2023-09-11 04:30:32', 'voyager.media.index', 'null'),
(3, 1, 'İstifadəçilər', '', '_self', 'voyager-person', NULL, 5, 1, '2023-09-11 03:28:40', '2023-09-11 04:18:03', 'voyager.users.index', NULL),
(4, 1, 'Rollar', '', '_self', 'voyager-lock', NULL, 5, 2, '2023-09-11 03:28:40', '2023-09-11 04:18:03', 'voyager.roles.index', NULL),
(5, 1, 'İnstrumentlər', '', '_self', 'voyager-tools', NULL, NULL, 12, '2023-09-11 03:28:40', '2023-09-11 04:30:32', NULL, NULL),
(6, 1, 'Menyu konstruktoru', '', '_self', 'voyager-list', NULL, 5, 3, '2023-09-11 03:28:40', '2023-09-11 04:18:03', 'voyager.menus.index', NULL),
(7, 1, 'Verilənlər bazası', '', '_self', 'voyager-data', NULL, 5, 4, '2023-09-11 03:28:40', '2023-09-11 04:18:03', 'voyager.database.index', NULL),
(8, 1, 'Kompas', '', '_self', 'voyager-compass', NULL, 5, 6, '2023-09-11 03:28:40', '2023-09-11 04:18:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2023-09-11 03:28:40', '2023-09-11 04:18:05', 'voyager.bread.index', NULL),
(10, 1, 'Ayarlar', '', '_self', 'voyager-settings', NULL, NULL, 13, '2023-09-11 03:28:40', '2023-09-11 04:30:32', 'voyager.settings.index', NULL),
(11, 1, 'Kateqoriyalar', '', '_self', 'voyager-categories', NULL, 22, 2, '2023-09-11 03:28:40', '2023-09-11 04:17:50', 'voyager.categories.index', NULL),
(12, 1, 'Məqalələr', '', '_self', 'voyager-news', NULL, 22, 1, '2023-09-11 03:28:40', '2023-09-11 04:17:49', 'voyager.posts.index', NULL),
(13, 1, 'Səhifələr', '', '_self', 'voyager-file-text', NULL, NULL, 4, '2023-09-11 03:28:40', '2023-09-11 04:30:32', 'voyager.pages.index', NULL),
(14, 1, 'Xidmətlər', '', '_self', 'voyager-plus', '#000000', NULL, 6, '2023-09-11 03:44:04', '2023-09-11 04:30:32', 'voyager.services.index', 'null'),
(15, 1, 'Slayder ( Ana səhifə )', '', '_self', 'voyager-plus', '#000000', NULL, 5, '2023-09-11 03:48:18', '2023-09-11 04:30:32', 'voyager.slider.index', 'null'),
(16, 1, 'Kateqoriyalar', '', '_self', 'voyager-plus', '#000000', 23, 2, '2023-09-11 03:51:39', '2023-09-11 04:24:53', 'voyager.car-category.index', 'null'),
(17, 1, 'Avtopark', '', '_self', 'voyager-plus', '#000000', 23, 1, '2023-09-11 03:53:20', '2023-09-11 04:24:27', 'voyager.cars.index', 'null'),
(18, 1, 'Kateqoriyalar', '', '_self', 'voyager-plus', '#000000', 24, 2, '2023-09-11 04:08:33', '2023-09-11 04:25:02', 'voyager.technique-category.index', 'null'),
(19, 1, 'Texnikalar', '', '_self', 'voyager-plus', '#000000', 24, 1, '2023-09-11 04:09:31', '2023-09-11 04:24:43', 'voyager.techniques.index', 'null'),
(20, 1, 'Sektorlar', '', '_self', 'voyager-plus', '#000000', NULL, 9, '2023-09-11 04:14:23', '2023-09-11 04:30:32', 'voyager.sectors.index', 'null'),
(21, 1, 'Qalareya', '', '_self', 'voyager-plus', '#000000', NULL, 10, '2023-09-11 04:16:13', '2023-09-11 04:30:32', 'voyager.gallery.index', 'null'),
(22, 1, 'Xəbərlər', '#', '_self', 'voyager-news', '#000000', NULL, 3, '2023-09-11 04:17:42', '2023-09-11 04:30:32', NULL, ''),
(23, 1, 'Avtopark', '#', '_self', 'voyager-boat', '#000000', NULL, 7, '2023-09-11 04:24:20', '2023-09-11 04:30:32', NULL, ''),
(24, 1, 'Texnikalar', '#', '_self', 'voyager-boat', '#000000', NULL, 8, '2023-09-11 04:24:40', '2023-09-11 04:30:32', NULL, ''),
(25, 1, 'Mesajlar', '', '_self', 'voyager-file-text', '#000000', NULL, 2, '2023-09-11 04:29:50', '2023-09-11 04:30:47', 'voyager.contact-messages.index', 'null');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Haqqımızda', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'about-us', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-09-11 03:28:40', '2023-09-11 03:49:49'),
(2, 1, 'Niyə biz ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'pages/September2023/seVhWjxSNn5fxYgveafD.jpg', 'niy-biz', 'Turizm sahəsindəki Beynəlxalq Layihələrdəki uğurlu iştirakımız.  “Bakı 2015” Birinci Avropa Oyunlarının əsas mərhələsi olan “Alov festifalı”-nın simvolu, məşəlin 48 günlük səyahətinin nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  \"Bakı-2017\" IV İslam Həmrəyliyi Oyunlarının Xəzərdən başlayıb Astarada bitən su səyahətinin nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  “Tour d\'Azerbaidjan-2017” beynəlxalq velosiped turunun nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  Beynəlxalq Velosipedçilər İttifaqının (UCI) velosiped idmanının “BMX Racing” növü üzrə Azərbaycanda keçirilən 2018-ci il dünya çempionatının nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  2019 UEFA Avropa Liqası finalı Arsenal və Çelsi matçına gəlmiş VİP qonaqların nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi', 'Turizm sahəsindəki Beynəlxalq Layihələrdəki uğurlu iştirakımız.  “Bakı 2015” Birinci Avropa Oyunlarının əsas mərhələsi olan “Alov festifalı”-nın simvolu, məşəlin 48 günlük səyahətinin nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  \"Bakı-2017\" IV İslam Həmrəyliyi Oyunlarının Xəzərdən başlayıb Astarada bitən su səyahətinin nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  “Tour d\'Azerbaidjan-2017” beynəlxalq velosiped turunun nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  Beynəlxalq Velosipedçilər İttifaqının (UCI) velosiped idmanının “BMX Racing” növü üzrə Azərbaycanda keçirilən 2018-ci il dünya çempionatının nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi  2019 UEFA Avropa Liqası finalı Arsenal və Çelsi matçına gəlmiş VİP qonaqların nəqliyyat (avtobus, mini avtobus və minik avtomobili) dəstəyinin göstərilməsi', 'ACTIVE', '2023-09-11 03:50:19', '2023-09-11 03:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, 'browse_bread', NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(3, 'browse_database', NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(4, 'browse_media', NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(5, 'browse_compass', NULL, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(6, 'browse_menus', 'menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(7, 'read_menus', 'menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(8, 'edit_menus', 'menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(9, 'add_menus', 'menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(10, 'delete_menus', 'menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(11, 'browse_roles', 'roles', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(12, 'read_roles', 'roles', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(13, 'edit_roles', 'roles', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(14, 'add_roles', 'roles', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(15, 'delete_roles', 'roles', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(16, 'browse_users', 'users', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(17, 'read_users', 'users', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(18, 'edit_users', 'users', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(19, 'add_users', 'users', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(20, 'delete_users', 'users', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(21, 'browse_settings', 'settings', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(22, 'read_settings', 'settings', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(23, 'edit_settings', 'settings', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(24, 'add_settings', 'settings', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(25, 'delete_settings', 'settings', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(26, 'browse_categories', 'categories', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(27, 'read_categories', 'categories', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(28, 'edit_categories', 'categories', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(29, 'add_categories', 'categories', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(30, 'delete_categories', 'categories', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(31, 'browse_posts', 'posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(32, 'read_posts', 'posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(33, 'edit_posts', 'posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(34, 'add_posts', 'posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(35, 'delete_posts', 'posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(36, 'browse_pages', 'pages', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(37, 'read_pages', 'pages', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(38, 'edit_pages', 'pages', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(39, 'add_pages', 'pages', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(40, 'delete_pages', 'pages', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(41, 'browse_services', 'services', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(42, 'read_services', 'services', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(43, 'edit_services', 'services', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(44, 'add_services', 'services', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(45, 'delete_services', 'services', '2023-09-11 03:44:04', '2023-09-11 03:44:04'),
(46, 'browse_slider', 'slider', '2023-09-11 03:48:18', '2023-09-11 03:48:18'),
(47, 'read_slider', 'slider', '2023-09-11 03:48:18', '2023-09-11 03:48:18'),
(48, 'edit_slider', 'slider', '2023-09-11 03:48:18', '2023-09-11 03:48:18'),
(49, 'add_slider', 'slider', '2023-09-11 03:48:18', '2023-09-11 03:48:18'),
(50, 'delete_slider', 'slider', '2023-09-11 03:48:18', '2023-09-11 03:48:18'),
(51, 'browse_car_category', 'car_category', '2023-09-11 03:51:39', '2023-09-11 03:51:39'),
(52, 'read_car_category', 'car_category', '2023-09-11 03:51:39', '2023-09-11 03:51:39'),
(53, 'edit_car_category', 'car_category', '2023-09-11 03:51:39', '2023-09-11 03:51:39'),
(54, 'add_car_category', 'car_category', '2023-09-11 03:51:39', '2023-09-11 03:51:39'),
(55, 'delete_car_category', 'car_category', '2023-09-11 03:51:39', '2023-09-11 03:51:39'),
(56, 'browse_cars', 'cars', '2023-09-11 03:53:20', '2023-09-11 03:53:20'),
(57, 'read_cars', 'cars', '2023-09-11 03:53:20', '2023-09-11 03:53:20'),
(58, 'edit_cars', 'cars', '2023-09-11 03:53:20', '2023-09-11 03:53:20'),
(59, 'add_cars', 'cars', '2023-09-11 03:53:20', '2023-09-11 03:53:20'),
(60, 'delete_cars', 'cars', '2023-09-11 03:53:20', '2023-09-11 03:53:20'),
(61, 'browse_technique_category', 'technique_category', '2023-09-11 04:08:33', '2023-09-11 04:08:33'),
(62, 'read_technique_category', 'technique_category', '2023-09-11 04:08:33', '2023-09-11 04:08:33'),
(63, 'edit_technique_category', 'technique_category', '2023-09-11 04:08:33', '2023-09-11 04:08:33'),
(64, 'add_technique_category', 'technique_category', '2023-09-11 04:08:33', '2023-09-11 04:08:33'),
(65, 'delete_technique_category', 'technique_category', '2023-09-11 04:08:33', '2023-09-11 04:08:33'),
(66, 'browse_techniques', 'techniques', '2023-09-11 04:09:31', '2023-09-11 04:09:31'),
(67, 'read_techniques', 'techniques', '2023-09-11 04:09:31', '2023-09-11 04:09:31'),
(68, 'edit_techniques', 'techniques', '2023-09-11 04:09:31', '2023-09-11 04:09:31'),
(69, 'add_techniques', 'techniques', '2023-09-11 04:09:31', '2023-09-11 04:09:31'),
(70, 'delete_techniques', 'techniques', '2023-09-11 04:09:31', '2023-09-11 04:09:31'),
(71, 'browse_sectors', 'sectors', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(72, 'read_sectors', 'sectors', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(73, 'edit_sectors', 'sectors', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(74, 'add_sectors', 'sectors', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(75, 'delete_sectors', 'sectors', '2023-09-11 04:14:23', '2023-09-11 04:14:23'),
(76, 'browse_gallery', 'gallery', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(77, 'read_gallery', 'gallery', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(78, 'edit_gallery', 'gallery', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(79, 'add_gallery', 'gallery', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(80, 'delete_gallery', 'gallery', '2023-09-11 04:16:13', '2023-09-11 04:16:13'),
(81, 'browse_contact_messages', 'contact_messages', '2023-09-11 04:29:50', '2023-09-11 04:29:50'),
(82, 'read_contact_messages', 'contact_messages', '2023-09-11 04:29:50', '2023-09-11 04:29:50'),
(83, 'edit_contact_messages', 'contact_messages', '2023-09-11 04:29:50', '2023-09-11 04:29:50'),
(84, 'add_contact_messages', 'contact_messages', '2023-09-11 04:29:50', '2023-09-11 04:29:50'),
(85, 'delete_contact_messages', 'contact_messages', '2023-09-11 04:29:50', '2023-09-11 04:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-09-11 03:28:40', '2023-09-11 03:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, 'user', 'Adi istifadəçi', '2023-09-11 03:28:40', '2023-09-11 03:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `body` longtext NOT NULL,
  `slug` text NOT NULL,
  `photo` text NOT NULL,
  `photo_gallery` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `description`, `body`, `slug`, `photo`, `photo_gallery`, `created_at`, `updated_at`) VALUES
(1, 'Tikinti və İnşaat', 'Test sektor 1Test sektor 1Test sektor 1Test sektor 1', '<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1v</p>\n<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1</p>', 'sfgergergf', 'sectors/September2023/KoiW2qppmRzPElfAIkIe.jpg', NULL, '2023-09-11 04:14:47', '2023-09-11 04:14:59'),
(2, 'Test sector 2', 'Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2', '<p>Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2</p>\n<p>Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2Test sector 2</p>', 'gnthyjmetyj', 'sectors/September2023/08stEJYPS0ywO0DSGAAI.jpg', NULL, '2023-09-11 04:15:16', '2023-09-11 04:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `body` longtext NOT NULL,
  `image` text NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `body`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Transport', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services/September2023/byLI1vHgnj68tC7kWETy.jpg', 'transport', '2023-09-11 03:46:22', '2023-09-11 03:46:22'),
(2, 'Tikinti və İnşaat', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services/September2023/OX1ceanO6tp7j5AUPiKQ.jpg', 'yyyy', '2023-09-11 03:47:35', '2023-09-11 03:47:35'),
(3, 'Evakuasiya', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'services/September2023/6Gge1fqtIdgdAuv28ezl.jpg', 'efwrgegw', '2023-09-11 03:59:21', '2023-09-11 03:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Saytın taytlı', 'Transtone', '', 'text', 1, 'Site'),
(2, 'site.description', 'Saytın təsviri', 'Transtone Web Site', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Saytın loqosu', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin panel fon şəkli', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin panelin taytlı', 'Transtone', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin panelin təsviri', 'Burncode CMS', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin panelin loaderi', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin panelin ikonkası', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (Admin panel üçün istifadə olunur)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.location', 'Ofisin ünvanı', 'Azerbaijan, Baku, Yasamal, Caspian Plaza', NULL, 'text', 6, 'Site'),
(12, 'site.post_index', 'Poçt indeksi', 'AZ 1000', NULL, 'text', 7, 'Site'),
(13, 'site.phone', 'Ofis telefon nömrəsi', '+994508683623', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Ofis Emaili', 'admin@burncode.org', NULL, 'text', 9, 'Site'),
(15, 'site.phone_number_for_order', 'Sifariş üçün telefon nömrəsi', '+994508683623', NULL, 'text', 10, 'Site'),
(16, 'site.Email_adress_for_order', 'Sifariş üçün Email adresi', 'order@transtone.az', NULL, 'text', 11, 'Site'),
(17, 'site.Phone_number_for_ads', 'Reklam üçün telefon nömrəsi', '+994508683623', NULL, 'text', 12, 'Site'),
(18, 'site.Email_for_ads', 'Reklam üçün Email adresi', 'ads@transtone.az', NULL, 'text', 13, 'Site'),
(19, 'site.fb', 'Facebook', '', NULL, 'text', 14, 'Site'),
(20, 'site.instagram', 'Instagram', '', NULL, 'text', 15, 'Site'),
(21, 'site.linkedin', 'Linkedin', '', NULL, 'text', 16, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `created_at`, `updated_at`, `order`) VALUES
(1, 'slider/September2023/rGWIwhTkgiYLXBIYvqMk.jpg', '2023-09-11 03:48:46', '2023-09-11 04:22:49', 2),
(2, 'slider/September2023/XrqVMX9W0AjoONXdzuxC.jpg', '2023-09-11 03:48:50', '2023-09-11 04:22:49', 1),
(3, 'slider/September2023/LCDY2q3rs5obCiQCOP1T.jpg', '2023-09-11 03:49:00', '2023-09-11 03:49:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `techniques`
--

CREATE TABLE `techniques` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `body` longtext NOT NULL,
  `photo` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `techniques`
--

INSERT INTO `techniques` (`id`, `name`, `description`, `body`, `photo`, `category_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ekskovator ( Cat 200 )', 'Ekskovator ( Cat 200 )', '<p>Ekskovator ( Cat 200 )</p>', 'techniques/September2023/QdaEPXLZ7OYOuMrQHB4c.jpg', 2, 'ekkk', '2023-09-11 04:11:22', '2023-09-11 04:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `technique_category`
--

CREATE TABLE `technique_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technique_category`
--

INSERT INTO `technique_category` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Ağırtonajlı', '2023-09-11 04:08:49', '2023-09-11 04:12:59', 'eks3'),
(2, 'Ekskovator', '2023-09-11 04:08:58', '2023-09-11 04:12:54', 'eks');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-09-11 03:28:40', '2023-09-11 03:28:40'),
(31, 'data_rows', 'display_name', 64, 'en', 'Id', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(32, 'data_rows', 'display_name', 64, 'ru', 'Id', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(33, 'data_rows', 'display_name', 65, 'en', 'Image', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(34, 'data_rows', 'display_name', 65, 'ru', 'Image', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(35, 'data_rows', 'display_name', 66, 'en', 'Created At', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(36, 'data_rows', 'display_name', 66, 'ru', 'Created At', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(37, 'data_rows', 'display_name', 67, 'en', 'Updated At', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(38, 'data_rows', 'display_name', 67, 'ru', 'Updated At', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(39, 'data_rows', 'display_name', 68, 'en', 'Order', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(40, 'data_rows', 'display_name', 68, 'ru', 'Order', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(41, 'data_types', 'display_name_singular', 8, 'en', 'Slider', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(42, 'data_types', 'display_name_singular', 8, 'ru', 'Slider', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(43, 'data_types', 'display_name_plural', 8, 'en', 'Sliders', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(44, 'data_types', 'display_name_plural', 8, 'ru', 'Sliders', '2023-09-11 03:48:34', '2023-09-11 03:48:34'),
(45, 'pages', 'title', 1, 'en', 'Hello World', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(46, 'pages', 'title', 1, 'ru', 'Hello World', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(47, 'pages', 'body', 1, 'en', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(48, 'pages', 'body', 1, 'ru', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(49, 'pages', 'slug', 1, 'en', 'hello-world', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(50, 'pages', 'slug', 1, 'ru', 'hello-world', '2023-09-11 03:49:49', '2023-09-11 03:49:49'),
(51, 'data_rows', 'display_name', 69, 'en', 'Id', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(52, 'data_rows', 'display_name', 69, 'ru', 'Id', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(53, 'data_rows', 'display_name', 70, 'en', 'Name', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(54, 'data_rows', 'display_name', 70, 'ru', 'Name', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(55, 'data_rows', 'display_name', 71, 'en', 'Description', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(56, 'data_rows', 'display_name', 71, 'ru', 'Description', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(57, 'data_rows', 'display_name', 72, 'en', 'Photo', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(58, 'data_rows', 'display_name', 72, 'ru', 'Photo', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(59, 'data_rows', 'display_name', 73, 'en', 'Slug', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(60, 'data_rows', 'display_name', 73, 'ru', 'Slug', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(61, 'data_rows', 'display_name', 74, 'en', 'Created At', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(62, 'data_rows', 'display_name', 74, 'ru', 'Created At', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(63, 'data_rows', 'display_name', 75, 'en', 'Updated At', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(64, 'data_rows', 'display_name', 75, 'ru', 'Updated At', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(65, 'data_types', 'display_name_singular', 9, 'en', 'Car Category', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(66, 'data_types', 'display_name_singular', 9, 'ru', 'Car Category', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(67, 'data_types', 'display_name_plural', 9, 'en', 'Car Categories', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(68, 'data_types', 'display_name_plural', 9, 'ru', 'Car Categories', '2023-09-11 03:51:49', '2023-09-11 03:51:49'),
(69, 'data_rows', 'display_name', 76, 'en', 'Id', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(70, 'data_rows', 'display_name', 76, 'ru', 'Id', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(71, 'data_rows', 'display_name', 77, 'en', 'Name', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(72, 'data_rows', 'display_name', 77, 'ru', 'Name', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(73, 'data_rows', 'display_name', 78, 'en', 'Description', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(74, 'data_rows', 'display_name', 78, 'ru', 'Description', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(75, 'data_rows', 'display_name', 79, 'en', 'Body', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(76, 'data_rows', 'display_name', 79, 'ru', 'Body', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(77, 'data_rows', 'display_name', 80, 'en', 'Width', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(78, 'data_rows', 'display_name', 80, 'ru', 'Width', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(79, 'data_rows', 'display_name', 81, 'en', 'Height', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(80, 'data_rows', 'display_name', 81, 'ru', 'Height', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(81, 'data_rows', 'display_name', 82, 'en', 'Length', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(82, 'data_rows', 'display_name', 82, 'ru', 'Length', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(83, 'data_rows', 'display_name', 83, 'en', 'Weight', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(84, 'data_rows', 'display_name', 83, 'ru', 'Weight', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(85, 'data_rows', 'display_name', 84, 'en', 'Capacity', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(86, 'data_rows', 'display_name', 84, 'ru', 'Capacity', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(87, 'data_rows', 'display_name', 85, 'en', 'Pallets', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(88, 'data_rows', 'display_name', 85, 'ru', 'Pallets', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(89, 'data_rows', 'display_name', 86, 'en', 'Photo 1', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(90, 'data_rows', 'display_name', 86, 'ru', 'Photo 1', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(91, 'data_rows', 'display_name', 87, 'en', 'Photo 2', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(92, 'data_rows', 'display_name', 87, 'ru', 'Photo 2', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(93, 'data_rows', 'display_name', 88, 'en', 'Cat Id', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(94, 'data_rows', 'display_name', 88, 'ru', 'Cat Id', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(95, 'data_rows', 'display_name', 89, 'en', 'Slug', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(96, 'data_rows', 'display_name', 89, 'ru', 'Slug', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(97, 'data_rows', 'display_name', 90, 'en', 'Created At', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(98, 'data_rows', 'display_name', 90, 'ru', 'Created At', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(99, 'data_rows', 'display_name', 91, 'en', 'Updated At', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(100, 'data_rows', 'display_name', 91, 'ru', 'Updated At', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(101, 'data_rows', 'display_name', 92, 'en', 'car_category', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(102, 'data_rows', 'display_name', 92, 'ru', 'car_category', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(103, 'data_types', 'display_name_singular', 10, 'en', 'Car', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(104, 'data_types', 'display_name_singular', 10, 'ru', 'Car', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(105, 'data_types', 'display_name_plural', 10, 'en', 'Cars', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(106, 'data_types', 'display_name_plural', 10, 'ru', 'Cars', '2023-09-11 03:54:21', '2023-09-11 03:54:21'),
(107, 'data_rows', 'display_name', 97, 'en', 'Id', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(108, 'data_rows', 'display_name', 97, 'ru', 'Id', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(109, 'data_rows', 'display_name', 98, 'en', 'Name', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(110, 'data_rows', 'display_name', 98, 'ru', 'Name', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(111, 'data_rows', 'display_name', 99, 'en', 'Description', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(112, 'data_rows', 'display_name', 99, 'ru', 'Description', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(113, 'data_rows', 'display_name', 100, 'en', 'Body', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(114, 'data_rows', 'display_name', 100, 'ru', 'Body', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(115, 'data_rows', 'display_name', 101, 'en', 'Photo', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(116, 'data_rows', 'display_name', 101, 'ru', 'Photo', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(117, 'data_rows', 'display_name', 102, 'en', 'Category Id', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(118, 'data_rows', 'display_name', 102, 'ru', 'Category Id', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(119, 'data_rows', 'display_name', 103, 'en', 'Slug', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(120, 'data_rows', 'display_name', 103, 'ru', 'Slug', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(121, 'data_rows', 'display_name', 104, 'en', 'Created At', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(122, 'data_rows', 'display_name', 104, 'ru', 'Created At', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(123, 'data_rows', 'display_name', 105, 'en', 'Updated At', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(124, 'data_rows', 'display_name', 105, 'ru', 'Updated At', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(125, 'data_rows', 'display_name', 106, 'en', 'technique_category', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(126, 'data_rows', 'display_name', 106, 'ru', 'technique_category', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(127, 'data_types', 'display_name_singular', 12, 'en', 'Technique', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(128, 'data_types', 'display_name_singular', 12, 'ru', 'Technique', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(129, 'data_types', 'display_name_plural', 12, 'en', 'Techniques', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(130, 'data_types', 'display_name_plural', 12, 'ru', 'Techniques', '2023-09-11 04:10:13', '2023-09-11 04:10:13'),
(131, 'data_rows', 'display_name', 93, 'en', 'Id', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(132, 'data_rows', 'display_name', 93, 'ru', 'Id', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(133, 'data_rows', 'display_name', 94, 'en', 'Name', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(134, 'data_rows', 'display_name', 94, 'ru', 'Name', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(135, 'data_rows', 'display_name', 95, 'en', 'Created At', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(136, 'data_rows', 'display_name', 95, 'ru', 'Created At', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(137, 'data_rows', 'display_name', 96, 'en', 'Updated At', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(138, 'data_rows', 'display_name', 96, 'ru', 'Updated At', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(139, 'data_types', 'display_name_singular', 11, 'en', 'Technique Category', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(140, 'data_types', 'display_name_singular', 11, 'ru', 'Technique Category', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(141, 'data_types', 'display_name_plural', 11, 'en', 'Technique Categories', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(142, 'data_types', 'display_name_plural', 11, 'ru', 'Technique Categories', '2023-09-11 04:12:47', '2023-09-11 04:12:47'),
(143, 'technique_category', 'name', 2, 'en', 'Ekskovator', '2023-09-11 04:12:54', '2023-09-11 04:12:54'),
(144, 'technique_category', 'name', 2, 'ru', 'Ekskovator', '2023-09-11 04:12:54', '2023-09-11 04:12:54'),
(145, 'technique_category', 'name', 1, 'en', 'Ağırtonajlı', '2023-09-11 04:12:59', '2023-09-11 04:12:59'),
(146, 'technique_category', 'name', 1, 'ru', 'Ağırtonajlı', '2023-09-11 04:12:59', '2023-09-11 04:12:59'),
(147, 'sectors', 'name', 1, 'en', 'Test sektor 1', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(148, 'sectors', 'name', 1, 'ru', 'Test sektor 1', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(149, 'sectors', 'description', 1, 'en', 'Test sektor 1Test sektor 1Test sektor 1Test sektor 1', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(150, 'sectors', 'description', 1, 'ru', 'Test sektor 1Test sektor 1Test sektor 1Test sektor 1', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(151, 'sectors', 'body', 1, 'en', '<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1v</p>\n<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1</p>', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(152, 'sectors', 'body', 1, 'ru', '<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1v</p>\n<p>Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1Test sektor 1</p>', '2023-09-11 04:14:59', '2023-09-11 04:14:59'),
(153, 'menu_items', 'title', 14, 'en', 'Services', '2023-09-11 04:18:35', '2023-09-11 04:18:35'),
(154, 'menu_items', 'title', 14, 'ru', 'Services', '2023-09-11 04:18:35', '2023-09-11 04:18:35'),
(155, 'menu_items', 'title', 15, 'en', 'Sliders', '2023-09-11 04:19:02', '2023-09-11 04:19:02'),
(156, 'menu_items', 'title', 15, 'ru', 'Sliders', '2023-09-11 04:19:02', '2023-09-11 04:19:02'),
(157, 'menu_items', 'title', 16, 'en', 'Car Categories', '2023-09-11 04:19:25', '2023-09-11 04:19:25'),
(158, 'menu_items', 'title', 16, 'ru', 'Car Categories', '2023-09-11 04:19:25', '2023-09-11 04:19:25'),
(159, 'menu_items', 'title', 17, 'en', 'Cars', '2023-09-11 04:19:36', '2023-09-11 04:19:36'),
(160, 'menu_items', 'title', 17, 'ru', 'Cars', '2023-09-11 04:19:36', '2023-09-11 04:19:36'),
(161, 'menu_items', 'title', 19, 'en', 'Techniques', '2023-09-11 04:20:02', '2023-09-11 04:20:02'),
(162, 'menu_items', 'title', 19, 'ru', 'Techniques', '2023-09-11 04:20:02', '2023-09-11 04:20:02'),
(163, 'menu_items', 'title', 18, 'en', 'Technique Categories', '2023-09-11 04:20:23', '2023-09-11 04:20:23'),
(164, 'menu_items', 'title', 18, 'ru', 'Technique Categories', '2023-09-11 04:20:23', '2023-09-11 04:20:23'),
(165, 'menu_items', 'title', 20, 'en', 'Sectors', '2023-09-11 04:20:45', '2023-09-11 04:20:45'),
(166, 'menu_items', 'title', 20, 'ru', 'Sectors', '2023-09-11 04:20:45', '2023-09-11 04:20:45'),
(167, 'menu_items', 'title', 21, 'en', 'Galleries', '2023-09-11 04:20:56', '2023-09-11 04:20:56'),
(168, 'menu_items', 'title', 21, 'ru', 'Galleries', '2023-09-11 04:20:56', '2023-09-11 04:20:56'),
(169, 'menu_items', 'title', 2, 'en', 'Media', '2023-09-11 04:21:04', '2023-09-11 04:21:04'),
(170, 'menu_items', 'title', 2, 'ru', 'Media', '2023-09-11 04:21:04', '2023-09-11 04:21:04'),
(171, 'menu_items', 'title', 25, 'en', 'Contact Messages', '2023-09-11 04:30:47', '2023-09-11 04:30:47'),
(172, 'menu_items', 'title', 25, 'ru', 'Contact Messages', '2023-09-11 04:30:47', '2023-09-11 04:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@burncode.org', 'users/default.png', NULL, '$2y$10$OmrnuHQMqCVsIPWPgqTaGuxC6GogIzSkJ1oONaLATZZoADucgN5Vi', '0cZ6ka81UhYLyWgMn4x2ov0kRMTDadmJkUt72LkC3H5WwG3M1eIfwrZ4M0Ia', '{\"locale\":\"az\"}', '2023-09-11 03:28:40', '2023-09-11 03:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_category`
--
ALTER TABLE `car_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techniques`
--
ALTER TABLE `techniques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technique_category`
--
ALTER TABLE `technique_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_category`
--
ALTER TABLE `car_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `techniques`
--
ALTER TABLE `techniques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technique_category`
--
ALTER TABLE `technique_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
