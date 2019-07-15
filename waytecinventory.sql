-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 03:35 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waytecinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Flash Disks', 'Flash Memory Disks'),
(2, 'Gaming', 'Gaming accesories, PS2, PS3 ,PS4'),
(3, 'HDMI 20M', 'HDMI 20 metres'),
(4, 'HDMI 10 M', 'HDMI 10 Metres');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `description`, `updated_at`, `created_at`) VALUES
(1, 'China Logistics', NULL, '2019-05-22 06:51:31', '2019-05-22 06:51:31'),
(2, 'China Stores', '0727088016', '2019-05-22 15:19:01', '2019-05-22 15:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `categories_id` int(10) UNSIGNED DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `quantity` int(10) DEFAULT '0',
  `buying_price` decimal(19,2) UNSIGNED DEFAULT '0.00',
  `selling_price` decimal(19,2) UNSIGNED DEFAULT '0.00',
  `cost_total` decimal(19,2) UNSIGNED DEFAULT '0.00',
  `income_total` decimal(19,2) UNSIGNED DEFAULT '0.00',
  `location` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `categories_id`, `code`, `quantity`, `buying_price`, `selling_price`, `cost_total`, `income_total`, `location`, `description`, `created_at`, `updated_at`) VALUES
(1, 'San Disk Flash Test', 1, '4539T', 30, '3500.00', '4500.00', '105000.00', '0.00', 'Nairobi', 'Test Item Flash drive by Shawn', '2019-05-22 06:55:00', '2019-05-22 06:55:00'),
(2, 'Hard Disk Casing', 1, '20TT50', 45, '4500.00', '6700.00', '225000.00', '33500.00', 'Nairobi', NULL, '2019-05-22 06:46:39', '2019-05-22 06:46:39'),
(3, 'HDMI 20 metres', 3, '1250HDM', 680, '450.00', '600.00', '337500.00', '42000.00', 'Nairobi Tomboya', 'Connects PC to TV', '2019-05-22 15:06:18', '2019-05-22 15:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED DEFAULT NULL,
  `log` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(152, 'view_users', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'view_roles', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'add_users', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'edit_users', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'delete_users', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'edit_self', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'view_categories', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'add_categories', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'edit_categories', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'delete_categories', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'view_contacts', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'add_contacts', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'edit_contacts', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'delete_contacts', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'view_groups', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'view_settings', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'edit_settings', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'view_items', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'view_item_edits', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'view_checkin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'view_checkout', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'add_checkin', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'add_checkout', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'add_items', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'edit_items', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'delete_items', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'upload_item_images', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'delete_item_images', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'view_transactions', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'delete_transactions', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'edit_transactions', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(134, 152, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 153, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 158, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 159, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 160, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 161, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 162, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 163, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 164, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 165, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 167, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 169, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 170, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 173, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 174, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 175, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 176, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 177, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 180, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 181, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 182, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 157, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 158, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 162, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 169, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 170, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 180, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 157, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 158, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 162, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 169, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 170, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 174, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 178, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 179, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 180, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 157, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 158, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 159, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 160, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 161, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 162, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 163, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 164, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 165, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 169, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 170, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 173, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 174, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 175, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 176, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 177, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 178, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 179, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 180, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 181, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 182, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 152, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 153, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 154, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 155, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 156, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 157, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 158, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 159, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 160, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 161, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 162, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 163, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 164, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 165, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 167, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 168, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 169, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 170, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 173, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 174, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 175, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 176, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 177, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 178, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 179, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 180, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 181, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 182, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 179, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, 10, '2013-03-17 17:13:47', '2013-03-17 17:13:47'),
(2, 'Admin', NULL, 9, '2013-03-17 17:54:24', '2013-03-17 17:54:24'),
(4, 'Seller', NULL, 7, '2013-03-17 18:00:42', '2013-03-17 18:00:42'),
(5, 'Viewer', NULL, 6, '2013-03-17 18:00:42', '2013-03-17 18:00:42'),
(6, 'Manager', NULL, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Demo', NULL, 0, '2013-03-23 03:16:35', '2013-03-23 03:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(16, 1, 2, '2013-03-24 00:53:16', '2013-03-24 00:53:16'),
(18, 6, 6, '2019-05-13 12:43:11', '2019-05-13 12:43:11'),
(19, 7, 2, '2019-05-22 15:01:50', '2019-05-22 15:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(40) NOT NULL,
  `last_activity` int(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `last_activity`, `data`) VALUES
('Y97eaK6r8RCP34zldF2wXKnsoyeuQSp0ffrLxby3', 1562415057, 'a:4:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"qKHScFlsHZwkm1Q3aYBtcd87TYkCYM94NIOAm8S7";s:12:"verify_login";i:1;}'),
('UGZ0dMbNZR8uN1i4AxMkDtXBir5O9uwFWVpFss9x', 1561115686, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"NbxV1ghccAfu3aQ9uDOUAcP5grwIRnhrqEw882OQ";}'),
('IQkPc0yIqX8l7qzdoyjExcZlt8Hjn7CELFE2tIfp', 1561704737, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"chDRJnJNzSVFH57bA2JyIP2t1fZEdBb0YfhsG6gL";}'),
('hyoUIGL4UHZ9cT9rlXXoshhGXlUxQk5pNpxcYGDm', 1559226694, 'a:4:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"Wyz308ZXr5cHgFWfN1YMYmh6ea4a9J7kyepOuLnI";s:12:"verify_login";i:1;}'),
('Nt8Q79nQcoc2UlPlGHhz7poVTt43C1UngL8TEip9', 1560408206, 'a:3:{s:5:":new:";a:0:{}s:5:":old:";a:0:{}s:10:"csrf_token";s:40:"9HCwDlKj90fsXCvVYOoXdUnaRAn3m8JOPAyo7yoi";}');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `field` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `name`, `value`) VALUES
(1, 'language', 'application.language', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `items_id` int(10) UNSIGNED NOT NULL,
  `transactions_types_id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `contacts_id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(19,2) UNSIGNED DEFAULT '0.00',
  `sum` decimal(19,2) DEFAULT '0.00',
  `note` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `items_id`, `transactions_types_id`, `date`, `contacts_id`, `users_id`, `quantity`, `price`, `sum`, `note`, `created_at`) VALUES
(1, 1, 2, '2019-05-13', NULL, 1, 30, '3500.00', '-105000.00', '30 pieces for test', '2019-05-13 12:47:53'),
(2, 2, 2, '2019-05-22', 1, 1, 50, '4500.00', '-225000.00', NULL, '2019-05-22 06:51:31'),
(3, 2, 1, '2019-05-22', NULL, 1, -5, '6700.00', '33500.00', NULL, '2019-05-22 06:52:02'),
(4, 3, 2, '2019-05-22', 2, 1, 700, '450.00', '-315000.00', NULL, '2019-05-22 15:08:13'),
(5, 3, 1, '2019-05-22', NULL, 1, -50, '600.00', '30000.00', 'Sold success test', '2019-05-22 15:09:19'),
(6, 3, 1, '2019-05-22', NULL, 1, -20, '600.00', '12000.00', NULL, '2019-05-22 15:10:49'),
(7, 3, 2, '2019-05-22', NULL, 1, 50, '450.00', '-22500.00', NULL, '2019-05-22 15:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `type`, `name`, `description`) VALUES
(1, 'out', 'Out', 'Outbound transaction'),
(2, 'in', 'In', 'Inbound transaction');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `salt`, `email`, `verified`, `disabled`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Shawn Mbuvi', '$2a$08$9k7EjV3cFJutdmJBBYYpMO47tbq4dh0iaKMFruRPTQbEqkYwyhKbu', '59585e6ae27e8c196135355b56ad92bc', 'shawnmbuvi@gmail.com', 1, 0, 0, '2013-03-17 17:13:47', '2019-05-29 07:17:19'),
(6, 'manager', 'mbuvi', '$2a$08$1qG17zA34Wh62zxw7Bw0COxbvum6CiN6miQCSyV0If2D69/l/thgu', '287005c1c5cb80211244051b4910be07', 'seanmbuvi5@gmail.com', 1, 0, 0, '2019-05-13 12:43:11', '2019-05-22 06:41:35'),
(7, 'Sam', 'Samuel Musili', '$2a$08$5Vz8Q6D4NLY3SmJuc1qB5O49cQfurn5ZqYO8d2Bm5NKiDzgP0nC66', '22739e0866bcb0bf137b4dd0972467b8', 'samusili92@gmail.com', 1, 0, 0, '2019-05-22 15:01:50', '2019-05-22 15:01:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_items_categories` (`categories_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_name_index` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_name_index` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_index` (`user_id`),
  ADD KEY `role_user_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transactions_transactions_types1_idx` (`transactions_types_id`),
  ADD KEY `fk_transactionsitems_idx` (`items_id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_password_index` (`password`),
  ADD KEY `users_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_items` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_transactions_transactions_types1` FOREIGN KEY (`transactions_types_id`) REFERENCES `transaction_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
