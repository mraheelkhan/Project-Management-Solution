-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2019 at 01:41 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmenus`
--

CREATE TABLE `adminmenus` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `showinnav` tinyint(1) DEFAULT NULL,
  `setasdefault` tinyint(1) DEFAULT NULL,
  `iconclass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urllink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayorder` int(11) DEFAULT NULL,
  `mselect` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminmenus`
--

INSERT INTO `adminmenus` (`id`, `menutitle`, `slug`, `parentid`, `showinnav`, `setasdefault`, `iconclass`, `urllink`, `displayorder`, `mselect`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', NULL, 1, 1, 'fa fa-dashboard', '/dashboard', 0, 'dashboard', 1, '2018-08-09 14:00:00', '2018-08-10 06:11:19'),
(2, 'Staff', 'main-admins', NULL, 1, 1, 'fa fa-users', '#', 1, 'admins, admins.edit, admins.create, admins.show, resetpassword', 1, '2018-08-09 14:00:00', '2018-12-20 19:00:00'),
(3, 'Roles', 'roles-index', 5, 1, 1, NULL, '/roles', 0, 'roles, roles.edit, roles.create', 1, '2018-08-09 14:00:00', '2018-12-19 19:00:00'),
(4, 'Manage Staff', 'admins-index', 2, 1, 1, NULL, '/admins', 1, 'admins, admins.edit, admins.create, admins.show, resetpassword', 1, '2018-08-09 14:00:00', '2018-12-19 19:00:00'),
(5, 'Settings', 'settings', NULL, 1, 1, 'fa fa-gear', '#', 15, 'menu, menu.edit,, menu.create,roles, roles.edit, roles.create', 1, '2018-08-09 14:00:00', '2018-12-19 19:00:00'),
(6, 'Manage Menu', 'menu-index', 5, 1, 1, NULL, '/menu', 0, 'menu, menu.edit,, menu.create', 1, '2018-08-09 14:00:00', '2018-08-10 06:47:49'),
(7, 'Customers', 'customers', NULL, 1, 1, 'fa fa-users', '#', 3, 'customers, customers.edit, customers.create, customers.show, customer.resetpassword,leads,leads.edit,leads.create,createrecording,leads.show', 1, '2018-08-12 14:00:00', '2018-08-12 14:00:00'),
(8, 'Manage Customers', 'customers-index', 7, 1, 1, 'fa fa-users', '/customers', 0, 'customers, customers.edit, customers.create, customers.show, customer.resetpassword', 1, '2018-08-12 14:00:00', '2018-08-12 14:00:00'),
(28, 'Add Staff', 'create-staff', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(29, 'Staff Details', 'show-staff', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 22:10:17'),
(30, 'Edit Staff', 'edit-staff', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(31, 'Change Staff Status', 'status-staff', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(32, 'Delete Staff', 'delete-staff', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(33, 'Staff Reset Password', 'staff-reset-password', 2, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(34, 'Add Customer', 'create-customer', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(35, 'View Customer', 'show-customer', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(36, 'Edit Customer', 'edit-customer', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(37, 'Change Customer Status', 'status-customer', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(38, 'Delete Customer', 'delete-customer', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(39, 'Customer Reset Password', 'reset-customer-password', 7, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-21 14:00:00', '2018-09-21 14:00:00'),
(53, 'Show Dashboard Calendar', 'show-dashboard-calendar', 1, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-09-26 14:00:00', '2018-09-26 14:00:00'),
(56, 'Customer Projects', 'customer/projects', NULL, 1, NULL, 'fa fa-users', 'customer/projects', 2, 'customer/projects', 1, '2018-11-25 14:00:00', '2018-11-25 19:43:11'),
(57, 'Customer Project Index', 'customer-projects-index', 56, NULL, NULL, NULL, 'customer.projects.index', 0, 'customer.projects.index', 1, '2018-11-25 14:00:00', '2018-11-25 14:00:00'),
(58, 'Customer Fetch Projects', 'customer-fetch-projects', 56, NULL, NULL, NULL, 'customer.fetch.projects', 0, 'customer.fetch.projects', 1, '2018-11-25 14:00:00', '2018-11-25 14:00:00'),
(91, 'Manage Departments', 'departments-index', 5, 1, NULL, NULL, 'settings/departments', 0, 'departments, settings,', 1, '2018-12-20 19:00:00', '2018-12-21 00:36:05'),
(92, 'Add Department', 'create-department', 5, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-12-23 19:00:00', '2018-12-24 03:52:47'),
(93, 'Edit Department', 'edit-department', 5, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-12-23 19:00:00', '2018-12-23 19:00:00'),
(94, 'Delete Department', 'delete-department', 5, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-12-23 19:00:00', '2018-12-23 19:00:00'),
(95, 'Department Status', 'status-department', 5, NULL, NULL, NULL, '#', 0, NULL, 1, '2018-12-23 19:00:00', '2018-12-23 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_log`
--

CREATE TABLE `authentication_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authentication_log`
--

INSERT INTO `authentication_log` (`id`, `authenticatable_type`, `authenticatable_id`, `ip_address`, `user_agent`, `login_at`, `logout_at`) VALUES
(1, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', NULL, '2018-09-18 03:24:17'),
(2, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-09-18 03:24:25', NULL),
(3, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '2018-09-18 03:26:17', '2018-09-18 05:42:02'),
(4, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-09-18 03:55:28', '2018-09-18 23:56:09'),
(5, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '2018-09-18 05:42:17', '2018-09-18 05:42:35'),
(6, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '2018-09-18 05:42:46', '2018-09-19 19:18:37'),
(7, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-09-18 19:14:33', NULL),
(8, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-09-18 23:56:19', '2018-09-19 00:51:05'),
(9, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '2018-09-19 00:51:16', NULL),
(10, 'App\\User', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '2018-09-22 03:58:25', NULL),
(11, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', NULL, '2018-10-03 19:12:07'),
(12, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-03 19:12:33', '2018-10-04 04:46:01'),
(13, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-04 23:53:40', NULL),
(14, 'App\\User', 1, '192.168.5.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:04:02', NULL),
(15, 'App\\User', 1, '192.168.5.221', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:14', '2018-10-07 19:35:32'),
(16, 'App\\User', 1, '192.168.5.79', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:37', NULL),
(17, 'App\\User', 1, '192.168.5.213', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:40', '2018-10-07 19:35:16'),
(18, 'App\\User', 1, '192.168.5.175', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:41', NULL),
(19, 'App\\User', 1, '192.168.5.115', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:42', NULL),
(20, 'App\\User', 1, '192.168.5.220', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:44', NULL),
(21, 'App\\User', 1, '192.168.5.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:15:48', NULL),
(22, 'App\\User', 1, '192.168.5.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:16:14', NULL),
(23, 'App\\User', 1, '192.168.5.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:16:23', NULL),
(24, 'App\\User', 1, '192.168.5.212', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:16:26', NULL),
(25, 'App\\User', 1, '192.168.5.118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:16:41', NULL),
(26, 'App\\User', 1, '192.168.5.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-07 19:17:04', NULL),
(27, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '2018-10-10 05:11:40', NULL),
(28, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-01 22:50:04', NULL),
(29, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-01 22:55:03', NULL),
(30, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-01 22:58:32', NULL),
(31, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-01 23:02:46', NULL),
(32, 'App\\User', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', NULL, '2018-11-09 20:39:33'),
(33, 'App\\User', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '2018-11-09 20:39:47', '2018-11-09 20:39:51'),
(34, 'App\\User', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '2018-11-13 20:32:25', NULL),
(35, 'App\\User', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', '2018-11-27 03:53:46', NULL),
(36, 'App\\User', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', NULL, '2018-11-27 03:59:07'),
(37, 'App\\User', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', '2018-11-27 03:59:30', NULL),
(38, 'App\\User', 23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', NULL, '2018-11-27 04:18:16'),
(39, 'App\\User', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', '2018-11-27 04:18:51', NULL),
(40, 'App\\User', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-17 04:42:15', NULL),
(41, 'App\\User', 1, '192.168.5.95', 'Mozilla/5.0 (iPad; CPU OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G36 Safari/601.1', '2018-12-18 07:09:23', '2018-12-18 07:11:53'),
(42, 'App\\User', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-21 09:16:48', '2018-12-21 09:19:33'),
(43, 'App\\User', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-21 09:19:53', NULL),
(44, 'App\\User', 1, '192.168.5.218', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-29 07:25:20', NULL),
(45, 'App\\User', 1, '192.168.5.218', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-30 23:19:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `deptname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_modified_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `deptname`, `status`, `user_id`, `last_modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Directors', 1, 1, 1, '2018-12-24 00:14:45', '2018-12-24 00:14:45'),
(2, 'Higher Management', 1, 1, 1, '2018-12-24 00:15:03', '2018-12-24 00:15:03'),
(3, 'Management', 1, 1, 1, '2018-12-24 00:15:14', '2018-12-24 00:15:14'),
(4, 'Accounts & Finance', 1, 1, 1, '2018-12-24 00:15:40', '2018-12-24 00:15:40'),
(5, 'Human Resource', 1, 1, 1, '2018-12-24 00:15:56', '2018-12-24 00:15:56'),
(6, 'Administration', 1, 1, 1, '2018-12-24 00:16:21', '2018-12-24 00:16:21'),
(7, 'Information Technology', 1, 1, 1, '2018-12-24 00:16:33', '2018-12-24 00:16:33'),
(8, 'Software Development', 1, 1, 1, '2018-12-24 00:16:52', '2018-12-24 04:35:30'),
(9, 'Teaching Day', 1, 1, 1, '2018-12-24 00:17:12', '2018-12-24 00:17:12'),
(10, 'Teaching Night', 1, 1, 1, '2018-12-24 00:17:23', '2018-12-27 08:29:17'),
(11, 'Sales', 1, 1, 1, '2018-12-24 04:08:42', '2018-12-24 04:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_modified_by` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `user_id`, `last_modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sales Manager', 1, 1, 1, '2018-12-31 02:53:18', '2018-12-31 03:24:26'),
(2, 'PHP Developer', 1, 1, 1, '2018-12-31 02:53:38', '2018-12-31 02:53:38'),
(3, 'Designer', 1, 1, 1, '2018-12-31 02:53:46', '2018-12-31 03:24:15'),
(4, 'iOS Developer', 1, 1, 1, '2018-12-31 02:53:58', '2018-12-31 02:54:38'),
(5, 'Teacher', 1, 1, 1, '2019-01-11 01:42:43', '2019-01-11 01:42:43'),
(6, 'Quran Teacher', 1, 1, 1, '2019-01-11 01:42:53', '2019-01-11 01:42:53'),
(7, 'Sales Agent', 1, 1, 1, '2019-01-11 01:43:12', '2019-01-11 01:43:12'),
(8, 'Trainee', 1, 1, 1, '2019-01-11 01:43:22', '2019-01-11 01:43:22'),
(9, 'Internee', 1, 1, 1, '2019-01-11 01:43:30', '2019-01-11 01:43:30'),
(10, 'Accounts Manager', 1, 1, 1, '2019-01-11 01:43:47', '2019-01-11 01:43:47'),
(11, 'Accounts Officer', 1, 1, 1, '2019-01-11 01:43:56', '2019-01-11 01:43:56'),
(12, 'HR Manager', 1, 1, 1, '2019-01-11 01:44:07', '2019-01-11 01:44:07'),
(13, 'HR Assistant', 1, 1, 1, '2019-01-11 01:44:17', '2019-01-11 01:44:17'),
(14, 'HR Officer', 1, 1, 1, '2019-01-11 01:44:29', '2019-01-11 01:44:29'),
(15, 'IT Manager', 1, 1, 1, '2019-01-11 01:47:12', '2019-01-11 01:47:12'),
(16, 'IT Officer', 1, 1, 1, '2019-01-11 01:47:21', '2019-01-11 01:47:21'),
(17, 'Business Development Executive', 1, 1, 1, '2019-01-11 01:47:43', '2019-01-11 01:47:43'),
(18, 'Business Development Manager', 1, 1, 1, '2019-01-11 01:47:56', '2019-01-11 01:47:56'),
(19, 'Director Business Development', 1, 1, 1, '2019-01-11 01:48:11', '2019-01-11 01:48:11'),
(20, 'Team Lead', 1, 1, 1, '2019-01-11 01:51:46', '2019-01-11 01:51:46'),
(21, 'Shift Manager', 1, 1, 1, '2019-01-11 01:51:56', '2019-01-11 01:51:56'),
(22, 'Director', 1, 1, 1, '2019-01-11 01:52:06', '2019-01-11 01:52:06'),
(23, 'CEO', 1, 1, 1, '2019-01-11 01:52:39', '2019-01-11 01:52:39'),
(24, 'Personal Assistant', 1, 1, 1, '2019-01-11 01:52:50', '2019-01-11 01:52:50'),
(25, 'PRO', 1, 1, 1, '2019-01-11 01:54:11', '2019-01-11 01:54:11'),
(26, 'Office Boy', 1, 1, 1, '2019-01-11 01:54:21', '2019-01-11 01:54:21'),
(27, 'Electrician', 1, 1, 1, '2019-01-11 01:54:31', '2019-01-11 01:54:31'),
(28, 'Laravel Developer', 1, 1, 1, '2019-01-11 01:55:52', '2019-01-11 01:55:52'),
(29, 'Android Developer', 1, 1, 1, '2019-01-11 01:56:06', '2019-01-11 01:56:06'),
(30, 'Driver', 1, 1, 1, '2019-01-11 01:56:27', '2019-01-11 01:56:27'),
(31, 'Admin Incharge', 1, 1, 1, '2019-01-11 01:56:47', '2019-01-11 01:56:47'),
(32, 'Admin Officer', 1, 1, 1, '2019-01-11 01:56:58', '2019-01-11 01:56:58'),
(33, 'Quality Assurance Officer', 1, 1, 1, '2019-01-15 07:55:00', '2019-01-15 07:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('026e09d6-397f-4bc1-8227-9601d17a0a02', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:03:22', '2018-09-22 02:03:22'),
('16638554-b1e8-4380-bd41-cd7c769a563c', 'App\\Notifications\\AppointmentNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-25 17:56:47', '2018-09-22 02:00:15', '2018-09-25 17:56:47'),
('2619b465-bfb9-49da-ae7b-68e0f949f4b3', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-10-07 23:54:28', '2018-10-07 23:54:28'),
('2a8cfe52-0dc3-4038-8581-b0fb7f3bb038', 'App\\Notifications\\LeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/24\"}}', NULL, '2018-08-31 02:53:25', '2018-08-31 02:53:25'),
('2ac4f215-74d3-4e90-8ebd-50112337d399', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New proposal has been requested\",\"body\":\"A new proposal has been requested by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-20 19:49:50', '2018-09-20 19:49:50'),
('2dd7eb28-28e9-4b40-aa5f-ce8dcf1036d1', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New proposal has been requested\",\"body\":\"A new proposal has been requested by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', '2018-11-01 22:00:26', '2018-11-01 21:59:48', '2018-11-01 22:00:26'),
('2ff1aef7-9295-40c9-85eb-c93bd4694d9c', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:00:16', '2018-09-22 02:00:16'),
('36de9406-a8d0-4d31-bbfe-06371a845b20', 'App\\Notifications\\AppointmentNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-25 17:56:46', '2018-09-22 04:00:05', '2018-09-25 17:56:46'),
('451f5246-80fd-4a9c-830d-64839b19f983', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 04:00:06', '2018-09-22 04:00:06'),
('49903a12-40e0-4c07-82dc-1e724d5cdab2', 'App\\Notifications\\LeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/25\"}}', '2018-09-27 03:16:25', '2018-09-26 22:41:08', '2018-09-27 03:16:25'),
('4f5f3285-fd3c-422b-9f6c-94d722f21e84', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:01:20', '2018-09-22 02:01:20'),
('53bd4d86-b49d-4f6d-9826-4193e746642e', 'App\\Notifications\\ProjectNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new project has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost\\/erp\\/public\\/projects\\/12\"}}', '2018-12-26 00:58:39', '2018-11-27 04:19:57', '2018-12-26 00:58:39'),
('59c665c7-3c0d-46ad-a654-324cd648f17d', 'App\\Notifications\\AppointmentNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-18 03:56:02', '2018-08-31 17:43:07', '2018-09-18 03:56:02'),
('5a0e0464-3211-4757-8623-9433b3d679eb', 'App\\Notifications\\AppointmentNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-25 17:56:50', '2018-09-22 02:01:20', '2018-09-25 17:56:50'),
('5a6b3932-6201-40f7-b9ed-76f77c7a88c9', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-27 04:15:20', '2018-09-27 04:15:20'),
('60ffa688-2f21-4724-8f0d-a6c826cce348', 'App\\Notifications\\LeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/23\"}}', '2018-09-18 03:56:03', '2018-08-31 02:52:15', '2018-09-18 03:56:03'),
('61dbe1fb-3d32-4172-b91c-77f458aa3841', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-10-03 19:00:20', '2018-10-03 19:00:20'),
('65c6c4b0-4d19-4114-bba4-f0e7ded648a6', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 04:00:06', '2018-09-22 04:00:06'),
('6d487042-2f1e-4787-9fab-6f4f680fc97d', 'App\\Notifications\\RecordingNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New recording has been uploaded\",\"body\":\"A new recording has been uploaded by Shahid Umar on lead no.2, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-18 03:56:01', '2018-09-12 18:13:58', '2018-09-18 03:56:01'),
('83957c81-cf12-43ff-ba74-15134610ba9c', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"Proposal Uploaded\",\"body\":\"A proposal has been uploaded by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-21 21:55:10', '2018-09-20 20:02:43', '2018-09-21 21:55:10'),
('884024d8-9754-476d-88f2-ab4cd34f17a8', 'App\\Notifications\\ProjectTaskNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Task Assigned to you\",\"body\":\"A new task has been assigned to you by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/tasks\\/1\"}}', '2018-09-10 20:57:09', '2018-09-10 18:06:56', '2018-09-10 20:57:09'),
('887d49b6-daaa-4add-8d6c-5629201c6fca', 'App\\Notifications\\ProjectNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new project has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost\\/erp\\/public\\/projects\\/12\"}}', NULL, '2018-11-27 04:19:58', '2018-11-27 04:19:58'),
('897b8014-ea63-4e2a-952c-fd3c70e554b0', 'App\\Notifications\\ProjectTaskNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new task has been assigned to you by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/tasks\\/1\"}}', '2018-09-18 03:56:04', '2018-09-10 18:02:36', '2018-09-18 03:56:04'),
('8ee87562-1135-4387-8d24-78dd9dca78cc', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-10-07 23:54:30', '2018-10-07 23:54:30'),
('9486baff-33c4-43d6-bcc9-9e14e2778481', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"Proposal Uploaded\",\"body\":\"A proposal has been uploaded by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-18 03:56:01', '2018-08-31 17:46:35', '2018-09-18 03:56:01'),
('95cc3f44-e2a2-4a02-be5e-f0f0b965763b', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"Proposal Uploaded\",\"body\":\"A proposal has been uploaded by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-20 20:02:46', '2018-09-20 20:02:46'),
('a3f42fa8-22db-4693-9cad-e3233a82fda7', 'App\\Notifications\\RecordingNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New recording has been uploaded\",\"body\":\"A new recording has been uploaded by Shahid Umar on lead no.2, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-12 18:14:01', '2018-09-12 18:14:01'),
('a417b91f-466c-4e89-9d3f-6768be2c8220', 'App\\Notifications\\ProjectTaskNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new task has been assigned to you by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/tasks\\/1\"}}', '2018-09-18 03:56:04', '2018-09-09 23:14:17', '2018-09-18 03:56:04'),
('a43b1e17-3117-49f6-801e-385e55997b60', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New proposal has been requested\",\"body\":\"A new proposal has been requested by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-11-01 21:59:56', '2018-11-01 21:59:56'),
('a85be0d5-6f55-4b60-b60b-fc5aad5c592b', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New proposal has been requested\",\"body\":\"A new proposal has been requested by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-11-01 21:59:55', '2018-11-01 21:59:55'),
('a97ccc55-4f02-45c6-ac18-0571fd34ceaf', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:00:16', '2018-09-22 02:00:16'),
('aa8e730d-3f0e-4d36-9788-4416c066c6da', 'App\\Notifications\\LeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/24\"}}', '2018-09-18 03:56:02', '2018-08-31 02:53:23', '2018-09-18 03:56:02'),
('aba8d9fb-99a9-4e4b-a46b-7efdacb15d7d', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:03:21', '2018-09-22 02:03:21'),
('ad004681-e59d-4f0f-bf3e-db5d49efb71b', 'App\\Notifications\\LeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/25\"}}', NULL, '2018-09-26 22:41:09', '2018-09-26 22:41:09'),
('ad280b65-d7c6-4948-aa18-c77c9d4038f7', 'App\\Notifications\\ProjectTaskNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New Task Assigned to you\",\"body\":\"A new task has been assigned to you by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/tasks\\/1\"}}', NULL, '2018-09-12 23:40:10', '2018-09-12 23:40:10'),
('b79eb027-e0fe-42df-9198-7fcf6d229f96', 'App\\Notifications\\RecordingNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New recording has been uploaded\",\"body\":\"A new recording has been uploaded by Shahid Umar on lead no.2, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-18 03:56:00', '2018-09-14 02:27:46', '2018-09-18 03:56:00'),
('bac3c8e0-b8dd-405c-af2f-86bf4649bb26', 'App\\Notifications\\AppointmentNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-22 02:01:20', '2018-09-22 02:01:20'),
('bcc55c47-27bd-4979-a638-9eb1fabf8413', 'App\\Notifications\\ProjectTaskNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new task has been assigned to you by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/tasks\\/1\"}}', '2018-09-10 18:02:57', '2018-09-09 23:15:28', '2018-09-10 18:02:57'),
('bd321377-b1fc-45b7-a8aa-3b8b2f1b52e9', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-08-31 17:43:14', '2018-08-31 17:43:14'),
('cabc4993-10e9-490c-b893-18880a5f2354', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"Proposal Uploaded\",\"body\":\"A proposal has been uploaded by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-08-31 17:46:37', '2018-08-31 17:46:37'),
('cf960b81-b5da-40eb-9320-6df43c4115a4', 'App\\Notifications\\LeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar and assigned to you, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', '2018-09-27 03:31:32', '2018-09-27 03:31:22', '2018-09-27 03:31:32'),
('d212d8ca-3c37-4f4a-b6b8-ec8f095a2a15', 'App\\Notifications\\AppointmentNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New appointment has been scheduled\",\"body\":\"A new appointment has been schedule by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/28\"}}', NULL, '2018-10-03 19:00:18', '2018-10-03 19:00:18'),
('d5a2dc22-4abf-467c-bee4-dc73074f670d', 'App\\Notifications\\LeadNotification', 'App\\User', 47, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/25\"}}', NULL, '2018-09-26 22:41:09', '2018-09-26 22:41:09'),
('de1036a8-f99f-4a14-987f-1378dfc79cf2', 'App\\Notifications\\ProjectNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New Project\",\"body\":\"A new project has been created by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost\\/erp\\/public\\/projects\\/12\"}}', NULL, '2018-11-27 04:19:58', '2018-11-27 04:19:58'),
('e25f65a9-3b6a-45ad-9a83-c50bff9fb3c1', 'App\\Notifications\\LeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New Lead Created\",\"body\":\"A new lead has been created by Shahid Umar and assigned to you, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/27\"}}', '2018-09-27 03:16:25', '2018-09-26 23:22:50', '2018-09-27 03:16:25'),
('e73f52c1-792f-4cca-8c62-8755ca7559db', 'App\\Notifications\\RecordingNotification', 'App\\User', 13, '{\"letter\":{\"title\":\"New recording has been uploaded\",\"body\":\"A new recording has been uploaded by Shahid Umar on lead no.2, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', NULL, '2018-09-14 02:27:48', '2018-09-14 02:27:48'),
('f785bba7-d09d-4b33-8325-a21f9f120fc5', 'App\\Notifications\\ProposalLeadNotification', 'App\\User', 1, '{\"letter\":{\"title\":\"New proposal has been requested\",\"body\":\"A new proposal has been requested by Shahid Umar, please review it.\",\"redirectURL\":\"http:\\/\\/localhost:8000\\/leads\\/2\"}}', '2018-09-21 21:55:10', '2018-09-20 19:49:38', '2018-09-21 21:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0c4f7bfc18cec4379af3e2027c5833f493089e54089be49203dd99e32feff173086a677fc4e80ef5', 1, 1, 'MyApp', '[]', 0, '2018-09-04 22:35:08', '2018-09-04 22:35:08', '2019-09-05 08:35:08'),
('5262d65e8dadd7768a0dd11afb3745c943d54309471c245efa32a0a2905589f690494dda72360f74', 1, 1, 'MyApp', '[]', 0, '2018-09-04 22:34:08', '2018-09-04 22:34:08', '2019-09-05 08:34:08'),
('a38b3f192f6ad3457ecec5a02c49e7c127a52eefd99954752df745efbba797432b8c00453152e193', 1, 1, 'MyApp', '[]', 0, '2018-11-01 22:55:04', '2018-11-01 22:55:04', '2019-11-02 08:55:04'),
('bf3619a04058db6836d544a89c1012ec2bdff5c3b550ee40521367880555aa765905884732728f78', 1, 1, 'MyApp', '[]', 0, '2018-11-01 22:58:33', '2018-11-01 22:58:33', '2019-11-02 08:58:33'),
('cfb138825c2fcb8ea78b36be89ade30a61e364d87d632d13cc099d79ffadc91ffc8b3c395f82d5b1', 1, 1, 'MyApp', '[]', 0, '2018-09-04 22:36:30', '2018-09-04 22:36:30', '2019-09-05 08:36:30'),
('d4eee744c091bfda9b2cf68e199ccd0f70008e242ae35fee4f18a08f89fd9117b85ed1be59ef8c45', 1, 1, 'MyApp', '[]', 0, '2018-11-01 23:02:46', '2018-11-01 23:02:46', '2019-11-02 09:02:46'),
('e674bfe19b166f75c7d2464aeea46717a7e9ddaac50be0e682fd76264c86beefdca8d9f71f33cbc3', 1, 1, 'MyApp', '[]', 0, '2018-11-01 22:50:07', '2018-11-01 22:50:07', '2019-11-02 08:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'NSOL ERP Personal Access Client', 'Y3Y7swoBcoJWIqBdPfPMpSejkDU9nJrYzQZUayEQ', 'http://localhost', 1, 0, 0, '2018-09-04 18:42:57', '2018-09-04 18:42:57'),
(2, NULL, 'NSOL ERP Password Grant Client', 'HJR9EkDQtkQ5rr2CIF6i9yniuuHKmbKqZ5bSYEQb', 'http://localhost', 0, 1, 0, '2018-09-04 18:42:58', '2018-09-04 18:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-04 18:42:58', '2018-09-04 18:42:58');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shahid.umar@gmail.com', '$2y$10$qS66RTOxkWrFDh/X0KzI/eiXdu08UXmhRa.WyY6apxT4Vkv6TbxSW', '2018-08-09 04:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `permission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified_by` int(10) UNSIGNED NOT NULL,
  `modified_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_title`, `permissions`, `permission`, `user_id`, `created_ip`, `last_modified_by`, `modified_ip`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '{\"dashboard\":true,\"main-admins\":true,\"roles-index\":true,\"admins-index\":true,\"settings\":true,\"menu-index\":true,\"customers\":true,\"customers-index\":true,\"leads-index\":true,\"projects\":true,\"projects-index\":true,\"create-lead\":true,\"edit-lead\":true,\"status-lead\":true,\"show-lead\":true,\"delete-lead\":true,\"search-leads\":true,\"show-all-leads\":true,\"create-recording\":true,\"create-appointment\":true,\"create-doc\":true,\"create-proposal\":true,\"create-project\":true,\"upload-proposal\":true,\"edit-proposal\":true,\"create-staff\":true,\"show-staff\":true,\"edit-staff\":true,\"status-staff\":true,\"delete-staff\":true,\"staff-reset-password\":true,\"create-customer\":true,\"show-customer\":true,\"edit-customer\":true,\"status-customer\":true,\"delete-customer\":true,\"reset-customer-password\":true,\"approve-reject-lead\":true,\"for-training-lead\":true,\"training\":true,\"chapters-index\":true,\"topics\":true,\"stats-number\":true,\"lead-chart-10\":true,\"appointment-chart-10\":true,\"today-appointments\":true,\"latest-appointments\":true,\"latest-leads\":true,\"latest-recordings\":true,\"pending-proposal\":true,\"show-dashboard-calendar\":true,\"yccleads\":true,\"index-yccleads\":true,\"mytask\":true,\"mytask-index\":true,\"mytask-fetch\":true,\"todayMassage-index\":true,\"todayMassage-fetch\":true,\"finance\":true,\"budgetCategory-index\":true,\"budgetCategory-fetch\":true,\"budgetCategory-store\":true,\"budgetCategory-edit\":true,\"bank\":true,\"bank-index\":true,\"bank-fetch\":true,\"bank-store\":true,\"bank-edit\":true,\"payableCommitted\":true,\"payableCommitted-index\":true,\"payableCommitted-fetch\":true,\"payableCommitted-store\":true,\"payableCommitted-edit\":true,\"budgetSheet-index\":true,\"budgetSheet-fetch\":true,\"budgetSheet-edit\":true,\"budgetSheet-store\":true,\"ConsumeBudgetAmount-store\":true,\"budgetSheet-show\":true,\"payableCommitted-status\":true,\"complaint\":true,\"complaint-index\":true,\"complaint-fetch\":true,\"complaint-store\":true,\"complaint-edit\":true,\"departments-index\":true,\"create-department\":true,\"edit-department\":true,\"delete-department\":true,\"status-department\":true,\"main-hrleads\":true,\"index-hrleads\":true,\"create-hrleads\":true,\"edit-hrleads\":true,\"show-hrleads\":true,\"delete-hrleads\":true,\"upload-hrleads\":true,\"status-hrleads\":true,\"index-interviewees\":true,\"index-interviews\":true,\"complaint-show\":true,\"complaint-comment\":true,\"inventory\":true,\"inventoryCategory-index\":true,\"inventoryCategory-fetch\":true,\"inventoryCategory-store\":true,\"inventoryCategory-edit\":true,\"inventory-index\":true,\"inventory-fetch\":true,\"inventory-store\":true,\"inventory-edit\":true}', '1,45,46,47,48,49,50,51,52,53,2,4,28,29,30,31,32,33,5,3,6,91,92,93,94,95,7,8,9,12,13,14,15,16,18,20,21,22,23,24,26,27,34,35,36,37,38,39,40,41,10,11,25,42,43,44,54,55,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,106,107,96,97,98,99,100,101,102,103,104,105,108,109,110,111,112,113,114,115,116', 1, '::1', 1, '192.168.5.218', 1, '2018-08-10 14:00:00', '2018-12-31 19:00:00'),
(2, 'User', '{\"dashboard\":true,\"main-customers\":true,\"customer-index\":true,\"leads-index\":true}', '1,7,8,9', 1, '::1', 1, '127.0.0.1', 1, '2018-08-10 14:00:00', '2018-09-18 22:40:48'),
(3, 'Customer', '{\\\"customer\\\\/projects\\\":true,\\\"customer-projects-index\\\":true,\\\"customer-fetch-projects\\\":true,\\\"customer-show-projects\\\":true}', '56,57,58', 22, '1', 1, '::1', 1, '2018-11-25 14:00:00', '2018-11-26 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staffdetails`
--

CREATE TABLE `staffdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `salary` double(8,2) NOT NULL DEFAULT '0.00',
  `cstreetaddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cstreetaddress2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pstreetaddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pstreetaddress2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaurdianname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaurdianrelation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaurdiancontact` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloodgroup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `cnic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passportno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendanceid` int(11) DEFAULT NULL,
  `extension` int(11) DEFAULT NULL,
  `ccmsid` int(11) DEFAULT NULL,
  `skypeid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latecomming` int(11) DEFAULT NULL,
  `earlygoing` int(11) DEFAULT NULL,
  `attendancecheck` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` time NOT NULL,
  `starttime` time NOT NULL,
  `hrlead_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `endingdate` date DEFAULT NULL,
  `fileno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showinsalary` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffdetails`
--

INSERT INTO `staffdetails` (`id`, `user_id`, `salary`, `cstreetaddress`, `cstreetaddress2`, `ccity`, `pstreetaddress`, `pstreetaddress2`, `pcity`, `gaurdianname`, `gaurdianrelation`, `gaurdiancontact`, `landline`, `phonenumber`, `bloodgroup`, `dob`, `cnic`, `passportno`, `attendanceid`, `extension`, `ccmsid`, `skypeid`, `shift`, `latecomming`, `earlygoing`, `attendancecheck`, `endtime`, `starttime`, `hrlead_id`, `created_at`, `updated_at`, `joiningdate`, `endingdate`, `fileno`, `showinsalary`) VALUES
(1, 1, 10.00, 'House No 648 Street No 2, Sector I-9/1', NULL, 'Islamabad', 'House No 648 Street No 2, Sector I-9/1', NULL, 'Islamabad', 'Na', 'NA', '0', NULL, '03445000084', 'O+', '1980-04-21 19:00:00', '61101-9666288-9', 'NULL', 10437, NULL, NULL, NULL, 'day', NULL, NULL, 0, '18:00:00', '09:00:00', NULL, '2019-01-10 02:59:53', '2019-02-01 08:14:29', '2018-11-08', NULL, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isGoOnAppoints` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `iscustomer` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `updatedby` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phonenumber`, `avatar`, `status`, `remember_token`, `isGoOnAppoints`, `created_at`, `updated_at`, `otp`, `iscustomer`, `role_id`, `createdby`, `updatedby`) VALUES
(1, 'Shahid', 'Umar', 'shahnoman1001@gmail.com', '$2y$10$nR20zJtl9lrqHiguXCd82.4Lyo2ah.YbTYucpjcekWg..jocWqL.6', '03445000084', '1530012575shahid.jpg', 1, 'B5nx6EjXcrm4BBeigGpXf8MJE33sVUt4P2YZ4Ai74FdHGVNLa2DivqENkes0', 0, '2018-06-25 10:22:52', '2018-12-30 23:19:53', 0, 0, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmenus`
--
ALTER TABLE `adminmenus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminmenus_slug_unique` (`slug`),
  ADD KEY `adminmenus_parentid_foreign` (`parentid`);

--
-- Indexes for table `authentication_log`
--
ALTER TABLE `authentication_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_user_id_foreign` (`user_id`),
  ADD KEY `departments_last_modified_by_foreign` (`last_modified_by`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_user_id_foreign` (`user_id`),
  ADD KEY `designations_last_modified_by_foreign` (`last_modified_by`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_foreign` (`user_id`),
  ADD KEY `roles_last_modified_by_foreign` (`last_modified_by`);

--
-- Indexes for table `staffdetails`
--
ALTER TABLE `staffdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staffdetails_phonenumber_unique` (`phonenumber`),
  ADD UNIQUE KEY `staffdetails_cnic_unique` (`cnic`),
  ADD UNIQUE KEY `staffdetails_passportno_unique` (`passportno`),
  ADD KEY `staffdetails_user_id_foreign` (`user_id`),
  ADD KEY `staffdetails_hrlead_id_foreign` (`hrlead_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_createdby_foreign` (`createdby`),
  ADD KEY `users_updatedby_foreign` (`updatedby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminmenus`
--
ALTER TABLE `adminmenus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `authentication_log`
--
ALTER TABLE `authentication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffdetails`
--
ALTER TABLE `staffdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
