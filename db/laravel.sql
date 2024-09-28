-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2024 at 06:50 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Website Development', 'Software designing and Development', 'banner-20557.jpg', 0, NULL, NULL),
(15, 'UI-UX designing', 'UI-UX designing', 'banner-53195.jpg', 0, NULL, NULL),
(16, 'Woner', 'Best Brand', 'banner-82836.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint UNSIGNED NOT NULL,
  `location` int NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `location`, `logo`, `created_at`, `updated_at`) VALUES
(1, 1, 'header_logo.png', NULL, '2023-10-18 05:20:05'),
(2, 2, 'footer_logo.png', NULL, '2023-10-18 12:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_04_063737_create_socails_table', 2),
(6, '2023_09_04_163121_create_socials_table', 3),
(7, '2023_09_09_155643_create_logos_table', 4),
(8, '2023_09_09_161235_create_logos_table', 5),
(9, '2023_09_24_175257_create_banners_table', 6),
(10, '2023_09_24_185323_create_banners_table', 7),
(12, '2023_10_20_153044_create_services_table', 8),
(13, '2023_10_29_173116_create_projects_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Website Development', 'Website Make', 'project_photo-.png', 'test data', 0, NULL, NULL),
(2, 'Website Development', 'Website Make', 'project_photo-.png', 'test data', 1, NULL, '2024-05-27 09:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrioption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `status`, `cover_image`, `descrioption`, `created_at`, `updated_at`) VALUES
(1, 'Website Development', 'website-development.png', 0, 'website-developmentcover.jpg', '<h2><font color=\"#00ffff\">Web development </font></h2><p><br></p><p>Web development is in high demand and a top-five technology job, with an anticipated 30.3% increase in demand for web developers from 2021 to 2031. Keep ahead of the competition by enrolling in our Comprehensive Web Development Course to learn the latest trends from experienced web developers.</p><p>No matter what level of experience or technical knowledge you currently have, this course will help you master the Fundamentals of Web Development. In this comprehensive course, web developers gain an in-depth understanding of the web development process and life cycle. The goal of this course is to teach you how to create dynamic web pages with HTML, CSS, and JavaScript, apply essential programming concepts when designing HTML forms, select an appropriate web hosting service, and publish your webpages. The course will prepare you to start a glorious tech career as a Professional Web Developer. <br></p><p><br></p>', '2023-10-25 10:49:18', '2024-05-27 09:40:28'),
(2, 'Apps Development', 'apps-development.png', 0, 'apps-developmentcover.jpg', '<h1><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">&nbsp;<font color=\"#00ffff\">Apps Development</font></strong></span></h1><h2><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\"></strong></span></h2><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 12pt;\">Course Outline :</span><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">1.&nbsp; &nbsp; &nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">Object Oriented Programming (OOP) concept in JAVA</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create Class and its Object</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how class properties are initialized with parameterized Constructor</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn why should we overload Constructors</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn Collections in Java, why they are more useful than Arrays</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn Inheritance, why do we need Inheritance, relationship between a Super Class and a Child Class</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn Method Overriding – Simplify your code with Run Time Polymorphism</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn design principles – Abstract Classes and Methods, Singleton Class with factory method, the magic of ‘static’ and ‘final’</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn Interface and its implementations, the most powerful channel to connect unrelated components.</span></li></ul><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">2.&nbsp; &nbsp; &nbsp;&nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">Introduction to Android</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Android SDK and Platform specification, various SDK versions</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Android Studio – the most powerful and smartest IDE</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how Android projects are structured</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how Design and Logic parts are separated to build a scalable and extendable project</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Manifest and other Resource files</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how Android projects are built with a powerful build tool – Gradle.</span></li></ul><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">3.&nbsp; &nbsp; &nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">User Interface and Navigation</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to design your app screens with Layouts and Widgets</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to handle Events like Click and Touch</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to design effective navigation</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create swipe views with Tab, like the Phone app in your smart phone.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create Menu, Pop up Dialogs and custom Dialogs.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create Searching Interface, search anything with suggestions.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create Notifications, send direct reply through Notification like any messaging application.</span></li></ul><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">4.&nbsp; &nbsp; &nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">Activity</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn different states of an Activity, how activities are affected during its lifecycle.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to hold states / data within the activity, handle situations like configuration changes (Portrait to Landscape and vice versa).</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to pass data from one activity to another.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to interact with other applications.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create an App which can Call/Dial a number, send an SMS or view a website by using pre-built applications.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to launch Camera from your app, take picture, scale down and display.</span></li></ul><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">5.&nbsp;<span>&nbsp;</span></strong><strong style=\"box-sizing: border-box; font-weight: 700;\">&nbsp; &nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">&nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">Background Job</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create worker thread to do heavy / long running tasks.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to download an image, show progress in a ProgressBar using AsyncTask API.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to GET and POST data from remote server using Web APIs, learn how Retrofit can optimize your network operation by doing tasks asynchronously.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to play Music in background using Service. Learn why Intent Service is more efficient for tasks which you want to be done for once.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to start a task after your phone has completed its Boot Operation.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to check if your phone is connected to a network. You may also be interested in getting the incoming number, battery status of your phone.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to pass data to different applications.</span></li></ul><p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: rgb(62, 62, 62); outline: none; text-decoration: none; font-size: 16px; font-weight: 300; font-family: Roboto, sans-serif; line-height: 21px; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); text-align: justify; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">6.&nbsp; &nbsp;</strong><strong style=\"box-sizing: border-box; font-weight: 700;\">Storage</strong></span></p><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to save data inside your app database, query any data, update and delete information from database.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to save your login session (you don’t have to login every time you launch your app).</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to create and manage Firebase Cloud Real Time Database.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to register / login using Firebase Authentication. Learn how to sign in with Google.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to put any file on Firebase Cloud Storage.</span></li></ul><span style=\"color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">7.&nbsp; &nbsp; &nbsp;<span>&nbsp;</span></span><span style=\"box-sizing: border-box; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 10pt;\">&nbsp;<strong style=\"box-sizing: border-box; font-weight: 700;\">Google Play Services</strong></span><br style=\"box-sizing: border-box; color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><ul style=\"box-sizing: border-box; margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to load a Map, see your current location on Map, add Markers to Map.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to search nearby locations like restaurants, cafes etc and show them to Map. Learn how to filter your search.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to calculate distance between two locations.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to show direction on Map between two locations. You can also get alternative routes, travel time for driving, walking, bicycling etc.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to convert Latitude/Longitude to street address and vice versa using Geocoding and reverse Geocoding API.</span></li><li style=\"box-sizing: border-box; list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; font-family: Roboto, sans-serif; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); color: rgb(62, 62, 62); font-size: 16px; font-weight: 300; line-height: 23px;\"><span style=\"box-sizing: border-box; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important; font-size: 10pt;\">Learn how to get notified automatically when you check in a certain place.</span></li></ul><span style=\"box-sizing: border-box; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important; background-color: rgb(255, 255, 255); color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 10pt;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">8.</strong>&nbsp; &nbsp; &nbsp;&nbsp;<strong style=\"box-sizing: border-box; font-weight: 700;\">Test Application</strong></span><p></p>', '2023-10-25 10:54:04', '2024-05-27 09:40:31'),
(3, 'Web Designing', 'web-designing.png', 0, 'web-designingcover.jpg', '<h2><font color=\"#00ffff\">Web Designing</font><br></h2><p><br></p><p>No matter what level of experience or technical knowledge you currently have, this course will help you master the Fundamentals of Web Development. In this comprehensive course, web developers gain an in-depth understanding of the web development process and life cycle. The goal of this course is to teach you how to create dynamic web pages with HTML, CSS, and JavaScript, apply essential programming concepts when designing HTML forms, select an appropriate web hosting service, and publish your webpages. The course will prepare you to start a glorious tech career as a Professional Web Developer. <br></p>', '2023-10-25 10:56:14', '2024-05-27 09:40:33'),
(4, 'IT Support', 'it-support.png', 1, 'it-supportcover.jpg', '<h1 class=\"cmp-title__text\">What is IT support?\r\n        \r\n    </h1><p>IT support is a form of technical support that provides assistance with various technological issues like computers, printers, networks, and devices.</p><p><br></p><h3>WHAT Support DO ?</h3><p>Just as IT has become ubiquitous among businesses, the roles and responsibilities of IT support personnel are likewise extensive. On its most basic level, IT support is a broad term that encompasses any form of assistance with technology-related services and products. That means that IT support is equally responsible for installing new security software as helping forgetful employees recover lost passwords.<br><br>At the same time, effective IT support solutions provide employees with the resources to quickly resolve issues and get the work back on track. Employees can get IT support at any time, from anywhere, and count on a fast, reliable resolution. This means improved employee productivity, as well as increased job satisfaction and engagement.<br><br>With this in mind, the following are some of the more-common tasks associated with IT support:<br><br>&nbsp;&nbsp;&nbsp; Logging and processing support calls<br>&nbsp;&nbsp;&nbsp; Installing and configuring computer hardware, software, systems, networks, printers and scanners<br>&nbsp;&nbsp;&nbsp; Planning and undertaking scheduled maintenance upgrades<br>&nbsp;&nbsp;&nbsp; Setting up accounts for staff, ensuring that they know how to log in<br>&nbsp;&nbsp;&nbsp; Solving password problems<br>&nbsp;&nbsp;&nbsp; Talking to employees and computer users to determine the nature of any problems they encounter<br>&nbsp;&nbsp;&nbsp; Responding to breakdowns<br>&nbsp;&nbsp;&nbsp; Investigating, diagnosing and solving computer software and hardware faults<br>&nbsp;&nbsp;&nbsp; Repairing equipment and replacing parts<br><br>Advanced ServiceNow IT support takes things further, allowing IT agents to resolve repetitive IT tasks and requests using virtual-agent chatbots, employ predictive intelligence to automatically categorize and send cases to relevant teams, and incorporate service level management to improve visibility into commitments and set accurate business expectations. Finally, acomprehensive dashboard can provide service agents with a complete view of the entirety of IT support, backed by AI-informed recommendations and essential context. These advantages allow IT agents to resolve more cases, quickly and accurately.<br><br>Employees likewise benefit from improved IT support from ServiceNow. Omnichannel self-service options provide employees with reliable resources to find solutions, ask questions, and get accurate, consistent information at any time. Mobile options allow employees to get support through the Now Mobile application, available on any device. Collaboration tools integrate with Amazon Connect, Slack, Facebook Workplace, and Microsoft Teams. And, because support doesn’t only occur online, ServiceNow Walk-Up Experience streamlines face-to-face support requests, with online check-in, real-time queue estimates, and automated notifications.<br><br></p><p></p>', '2023-10-29 01:32:42', '2023-11-17 08:37:55');
INSERT INTO `services` (`id`, `title`, `icon`, `status`, `cover_image`, `descrioption`, `created_at`, `updated_at`) VALUES
(6, 'Data science', 'data-science.png', 1, 'data-sciencecover.jpg', '<div class=\"lb-none-v-margin lb-grid lb-small-pad lb-grid\" data-eb-item-id=\"seo-faq-pairs#what-is-data-science\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#what-is-data-science\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">What is data science?</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\">Data science is the study of data to extract meaningful insights for business. It is a multidisciplinary approach that combines principles and practices from the fields of mathematics, statistics, artificial intelligence, and computer engineering to analyze large amounts of data. This analysis helps data scientists to ask and answer questions like what happened, why it happened, what will happen, and what can be done with the results.</p></div></div></div></div><div class=\"lb-none-v-margin lb-grid lb-small-pad eb-bg-dark\" data-eb-item-id=\"seo-faq-pairs#why-is-data-science-important\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; background-color: rgb(251, 251, 251); color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#why-is-data-science-important\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">Why is data science important?</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\">Data science is important because it combines tools, methods, and technology to generate meaning from data. Modern organizations are inundated with data; there is a proliferation of devices that can automatically collect and store information. Online systems and payment portals capture more data in the fields of e-commerce, medicine, finance, and every other aspect of human life. We have text, audio, video, and image data available in vast quantities. &nbsp;</p></div></div></div></div><div class=\"lb-none-v-margin lb-grid lb-small-pad lb-grid\" data-eb-item-id=\"seo-faq-pairs#history-of-data-science\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#history-of-data-science\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">History of data science</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\">While the term data science is not new, the meanings and connotations have changed over time. The word first appeared in the ’60s as an alternative name for statistics. In the late ’90s, computer science professionals formalized the term. A proposed definition for data science saw it as a separate field with three aspects: data design, collection, and analysis. It still took another decade for the term to be used outside of academia.&nbsp;</p></div></div></div></div><div class=\"lb-none-v-margin lb-grid lb-small-pad eb-bg-dark\" data-eb-item-id=\"seo-faq-pairs#future-of-data-science\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; background-color: rgb(251, 251, 251); color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#future-of-data-science\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">Future of data science</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\">Artificial intelligence and machine learning innovations have made data processing faster and more efficient. Industry demand has created an ecosystem of courses, degrees, and job positions within the field of data science. Because of the cross-functional skillset and expertise required, data science shows strong projected growth over the coming decades.</p></div></div></div></div><div class=\"lb-none-v-margin lb-grid lb-small-pad lb-grid\" data-eb-item-id=\"seo-faq-pairs#what-is-data-science-used-for\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#what-is-data-science-used-for\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">What is data science used for?</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px;\">Data science is used to study data in four main ways:</p><h3 style=\"box-sizing: border-box;\">1. Descriptive analysis</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Descriptive analysis&nbsp;examines data to gain insights into what happened or what is happening in the&nbsp;data environment. It is characterized by data visualizations such as pie&nbsp;charts, bar charts, line graphs, tables, or generated narratives.&nbsp;For example, a flight booking service may record data like the number of tickets booked each day. Descriptive analysis will reveal booking spikes, booking slumps, and high-performing months for this service.</p><h3 style=\"box-sizing: border-box;\">2. Diagnostic analysis</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Diagnostic analysis is a deep-dive or detailed data examination to understand why something happened. It is characterized by techniques such as drill-down, data discovery, data mining, and correlations. Multiple data operations and transformations may be performed on a given data set to discover unique patterns in each of these techniques.For example, the flight service might drill down on a particularly high-performing month to better understand the booking spike. This may lead to the discovery that many customers visit a particular city to attend a monthly sporting event.</p><h3 style=\"box-sizing: border-box;\">3. Predictive analysis</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Predictive analysis uses historical data to make accurate forecasts about data patterns that may occur in the future. It is characterized by techniques such as machine learning, forecasting, pattern matching, and predictive modeling. In each of these techniques, computers are trained to reverse engineer causality connections in the data.For example, the flight service team might use data science to predict flight booking patterns for the coming year at the start of each year. The computer program or algorithm may look at past data and predict booking spikes for certain destinations in May. Having anticipated their customer’s future travel requirements, the company could start targeted advertising for those cities from February.</p><h3 style=\"box-sizing: border-box;\">4. Prescriptive analysis</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Prescriptive analytics takes predictive data to the next level. It not only predicts what is likely to happen but also suggests an optimum response to that outcome. It can analyze the potential implications of different choices and recommend the best course of action. It uses graph analysis, simulation, complex event processing, neural networks, and recommendation engines from machine learning.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 0px; padding-top: 5px;\">Back to the flight booking example, prescriptive analysis could look at historical marketing campaigns to maximize the advantage of the upcoming booking spike. A data scientist could project booking outcomes for different levels of marketing spend on various marketing channels. These data forecasts would give the flight booking company greater confidence in their marketing decisions.</p></div></div></div></div><div class=\"lb-none-v-margin lb-grid lb-small-pad eb-bg-dark\" data-eb-item-id=\"seo-faq-pairs#what-are-the-benefits-of-data-science-for-business\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 15px; background-color: rgb(251, 251, 251); color: rgb(51, 51, 51); font-family: AmazonEmber, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"lb-row lb-row-max-large lb-snap eb-active\" style=\"box-sizing: border-box; position: relative; width: auto; margin-left: -10px; margin-right: -10px; max-width: 1200px;\"><div class=\"lb-col lb-tiny-24 lb-mid-24\" style=\"box-sizing: border-box; padding-left: 10px; padding-right: 10px; width: 860px; min-height: 0px; float: left; position: relative;\"><h2 class=\"lb-txt-bold lb-txt-none lb-txt-28 lb-h2 lb-title\" id=\"seo-faq-pairs#what-are-the-benefits-of-data-science-for-business\" style=\"box-sizing: border-box; margin: 15px 0px; text-rendering: optimizelegibility; color: rgb(35, 47, 62); font-weight: 500; font-family: AmazonEmberBold, &quot;Helvetica Neue Bold&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 2.8rem; line-height: 1.3; overflow-wrap: break-word;\">What are the benefits of data science for business?</h2><div class=\"lb-txt-14 lb-rtxt\" style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px; overflow-wrap: break-word; font-size: 1.4rem; line-height: 1.6;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px;\">Data science is revolutionizing the way companies operate. Many businesses, regardless of size, need a robust data science strategy to drive growth and maintain a competitive edge. Some key benefits include:</p><h3 style=\"box-sizing: border-box;\">Discover unknown transformative patterns</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Data science allows businesses to uncover new patterns and relationships that have the potential to transform the organization. It can reveal low-cost changes to resource management for maximum impact on profit margins.For example, an e-commerce company uses data science to discover that too many customer queries are being generated after business hours. Investigations reveal that customers are more likely to purchase if they receive a prompt response instead of an answer the next business day. By implementing 24/7 customer service, the business grows its revenue by 30%.</p><h3 style=\"box-sizing: border-box;\">Innovate new products and solutions</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 15px;\">Data science can reveal gaps and problems that would otherwise go unnoticed. Greater insight about purchase decisions, customer feedback, and business processes can drive innovation in&nbsp;internal operations and external solutions.For example, an online payment solution uses data science to collate and analyze customer comments about the company on social media. Analysis reveals that customers&nbsp;forget passwords during peak purchase periods and are unhappy with the current password retrieval system. The company can innovate a better solution and see a significant increase in customer satisfaction.</p><h3 style=\"box-sizing: border-box;\">Real-time optimization</h3><p style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 0px;\">It’s very challenging for businesses, especially large-scale enterprises, to respond to changing conditions in real-time. This can cause significant losses or disruptions in business activity. Data science can help companies predict change and react optimally to different circumstances.For example, a truck-based shipping company uses data science to reduce downtime when trucks break down. They&nbsp;identify the routes and shift patterns that lead to faster breakdowns and tweak truck schedules. They also set up an inventory of common spare parts that need frequent replacement so trucks can be repaired faster.&nbsp; <br></p></div></div></div></div><p></p>', '2023-10-29 01:47:21', '2024-04-23 09:55:51'),
(7, 'ডিজিটাল মার্কেটিং (Digital marketing)', 'ডিজিটাল-মার্কেটিং-(digital-marketing).png', 1, 'ডিজিটাল-মার্কেটিং-(digital-marketing)cover.png', '<h2 id=\"mntl-sc-block_1-0\" class=\"comp mntl-sc-block finance-sc-block-heading mntl-sc-block-heading\"> <span class=\"mntl-sc-block-heading__text\"> What Is Digital Marketing? </span> </h2>\r\n<p id=\"mntl-sc-block_1-0-1\" class=\"comp mntl-sc-block finance-sc-block-html mntl-sc-block-html\">\r\nThe term digital marketing refers to the use of digital channels to market products and services to consumers. This type of marketing involves the use of websites, mobile devices, social media, search engines, and other similar channels. Digital marketing became popular with the advent of the internet in the 1990s.\r\n</p>\r\n<div id=\"mntl-sc-block_1-0-2\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\"></div>\r\n<p id=\"mntl-sc-block_1-0-3\" class=\"comp mntl-sc-block finance-sc-block-html mntl-sc-block-html\">\r\nDigital marketing involves some of the same principles as traditional \r\nmarketing and is often considered an additional way for companies to \r\napproach consumers and understand their behavior. Companies often \r\ncombine traditional and digital marketing techniques in their \r\nstrategies. But digital marketing comes with its own set of challenges, \r\nincluding implicit bias.\r\n</p><p></p>', '2023-10-29 03:05:04', '2023-11-22 09:31:37'),
(8, 'ক্লাউড কম্পিউটিং', 'ক্লাউড-কম্পিউটিং.webp', 0, 'ক্লাউড-কম্পিউটিংcover.jpg', '<h2>ক্লাউড কম্পিউটিং</h2><p>ক্লাউড কম্পিউটিং এর জগতে এখনকার হট টপিক হল অ্যামাজন ওয়েব সার্ভিস বা AWS.\r\n স্বল্পমূল্যে ক্লাউড সার্ভার আর প্রয়োজনীয় সব টুলস ব্যবহার করতে বিশ্বজুড়ে\r\n ছোট-বড় সব ব্যবসা প্রতিষ্ঠান এখন বেছে নিচ্ছে AWS কে। তাই চাহিদাসম্পন্ন \r\nএই সেক্টরে যদি আপনি AWS Developer হিসেবে ক্যারিয়ার গড়তে চান, তাহলে \r\nAmazon Web Service Course আপনারই জন্য।\r\n                  </p>', '2023-10-29 03:10:54', '2023-10-29 04:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fa-youtube', 'https://www.youtube.com/', 1, '2023-09-04 10:57:35', '2023-10-30 00:30:04'),
(3, 'fa-facebook-square', 'https://www.facebook.com/', 1, '2023-09-04 10:59:31', '2023-10-10 06:55:36'),
(4, 'fa-twitter', 'https://twitter.com/', 1, '2023-09-04 10:59:40', '2023-10-10 06:55:37'),
(5, 'fa-instagram', 'https://www.instagram.com/', 1, '2023-09-04 11:00:13', '2023-10-10 06:55:38'),
(6, 'fa-linkedin-square', 'https:/linkedin.com/', 1, '2023-09-04 11:00:47', '2023-10-10 06:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'মোঃ মশিউর রহমান', 'eng.moshiur.rahman@gmail.com', NULL, '$2y$10$6rB8hrEHDdrz4Oe6c43BReeu1YPSBJN1VD5hMqdDcb1EYoBF3qjkW', '4.jpg', NULL, NULL, '2023-08-24 11:25:50', '2023-08-29 04:26:42'),
(10, 'Clare Gislason', 'arohan@example.org', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'M53i674XMl', '2023-08-25 12:28:46', '2024-09-01 12:44:24'),
(13, 'Jayson Jakubowski', 'bailey02@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OUa6Rl2KB2', '2023-08-25 12:28:46', '2023-10-23 10:18:56'),
(16, 'Crawford Connelly', 'dsimonis@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'rRGNn0PQOM', '2023-08-25 12:28:46', '2024-09-01 12:44:24'),
(18, 'Miss Cassie Hill MD', 'qparisian@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3WDkecIhEd', '2023-08-25 12:28:46', '2024-07-21 12:38:40'),
(22, 'Alessandro Kihn', 'dena09@example.org', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4sZQGgSSHn', '2023-08-25 12:28:46', '2024-09-01 12:44:24'),
(26, 'Olaf Hansen', 'magnolia.donnelly@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YgMAH78f7L', '2023-08-25 12:28:46', '2024-09-01 12:44:24'),
(28, 'Chaim Hayes', 'stephon27@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'D52JwhRMZ2', '2023-08-25 12:28:46', '2024-04-23 09:53:42'),
(29, 'Mr. Frank Fahey', 'jaeden.labadie@example.org', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vrWd0QqSjr', '2023-08-25 12:28:46', '2023-10-16 09:48:00'),
(50, 'Elwyn Huel', 'antwon.kris@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TrYmith4B2', '2023-08-25 12:28:46', '2023-10-10 06:54:40'),
(51, 'Anabel Kuhn', 'jessie.lang@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pb9GzRZO6p', '2023-08-25 12:28:46', '2023-10-10 06:54:40'),
(52, 'Jamir Kessler', 'qkassulke@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MPtH4aDWrC', '2023-08-25 12:28:46', '2023-10-10 06:54:40'),
(53, 'Gina King', 'xmuller@example.org', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TzUBwsM2QM', '2023-08-25 12:28:46', '2023-10-10 06:54:40'),
(54, 'Jonathan Wolf', 'ldamore@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zn4pydpK2N', '2023-08-25 12:28:46', '2023-08-29 12:19:17'),
(55, 'Demarco Johnson', 'hills.samir@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'CJBGXI207D', '2023-08-25 12:28:46', '2023-08-29 12:19:17'),
(56, 'Teresa Zulauf', 'nitzsche.sonia@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xYdN9ALxhm', '2023-08-25 12:28:46', '2023-08-29 12:16:47'),
(57, 'Alison Frami', 'marilie14@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3BSLEoyLO8', '2023-08-25 12:28:46', '2023-08-29 12:16:16'),
(58, 'Sonia Kautzer', 'mylene.mohr@example.net', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'NLtvZFs4uE', '2023-08-25 12:28:46', '2023-08-29 12:05:24'),
(59, 'Dr. Alice Boyle', 'cecelia36@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Nslqz5s9sj', '2023-08-25 12:28:46', '2023-08-29 12:05:24'),
(60, 'Prof. Maurice Lehner DVM', 'rhahn@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'IOhq9HcyuJ', '2023-08-25 12:28:46', '2023-08-29 12:05:24'),
(64, 'Prof. Shanny Rutherford DDS', 'edmond87@example.org', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'rpaNW1pr0T', '2023-08-25 12:28:46', '2023-08-29 12:05:24'),
(65, 'Prof. Calista Buckridge', 'lavina.steuber@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MAfLfz0fr8', '2023-08-25 12:28:46', '2023-08-29 12:04:56'),
(67, 'Mr. Laurel Walter', 'alysa28@example.com', '2023-08-25 12:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WX2P6jzcLa', '2023-08-25 12:28:46', '2023-08-29 12:05:24'),
(70, 'মোঃ মশিউর রহমান', 'moshiur.it@hotmail.com', NULL, '$2y$10$1QqbBVcA51iNkBtM8ueWp.ZP8qQpeo/R1/QtwNGoDCvdc7v6BxzQu', '70.jpg', NULL, NULL, '2023-08-29 03:14:21', '2023-08-29 12:04:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
